#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=salon --tuples-only -c"

echo -e "\n~~~~~ MY SALON ~~~~~\n"
echo -e "Welcome to My Salon, how can I help you?\n"

MAIN_MENU() {
  if [[ $1 ]]
  then
    echo -e "\n$1"
  fi

  # Tampilkan daftar layanan
  SERVICES=$($PSQL "SELECT service_id, name FROM services ORDER BY service_id")
  echo "$SERVICES" | while read SERVICE_ID BAR SERVICE_NAME
  do
    echo "$SERVICE_ID) $SERVICE_NAME"
  done

  # Membaca pilihan service_id
  read SERVICE_ID_SELECTED

  # Cek apakah service_id valid/ada di database
  SERVICE_EXIST=$($PSQL "SELECT service_id FROM services WHERE service_id = $SERVICE_ID_SELECTED")

  if [[ -z $SERVICE_EXIST ]]
  then
    MAIN_MENU "I could not find that service. What would you like today?"
  else
    # Minta nomor telepon pelanggan
    echo -e "\nWhat's your phone number?"
    read CUSTOMER_PHONE

    CUSTOMER_NAME=$($PSQL "SELECT name FROM customers WHERE phone = '$CUSTOMER_PHONE'")

    # Jika pelanggan belum terdaftar
    if [[ -z $CUSTOMER_NAME ]]
    then
      echo -e "\nI don't record for that phone number, what's your name?"
      read CUSTOMER_NAME

      # Masukkan pelanggan baru ke database
      INSERT_CUSTOMER_RESULT=$($PSQL "INSERT INTO customers(phone, name) VALUES('$CUSTOMER_PHONE', '$CUSTOMER_NAME')")
    fi

    # Dapatkan customer_id
    CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone = '$CUSTOMER_PHONE'")

    # Ambil nama layanan untuk pesan konfirmasi
    SERVICE_NAME=$($PSQL "SELECT name FROM services WHERE service_id = $SERVICE_ID_SELECTED")

    # Minta waktu janji temu
    echo -e "\nWhat time would you like your $(echo $SERVICE_NAME | sed -r 's/^ *| *$//g'), $(echo $CUSTOMER_NAME | sed -r 's/^ *| *$//g')?"
    read SERVICE_TIME

    # Masukkan janji temu ke tabel appointments
    INSERT_APPOINTMENT_RESULT=$($PSQL "INSERT INTO appointments(customer_id, service_id, time) VALUES($CUSTOMER_ID, $SERVICE_ID_SELECTED, '$SERVICE_TIME')")

    # Output konfirmasi akhir
    print_service_name=$(echo $SERVICE_NAME | sed -r 's/^ *| *$//g')
    print_customer_name=$(echo $CUSTOMER_NAME | sed -r 's/^ *| *$//g')
    echo -e "\nI have put you down for a $print_service_name at $SERVICE_TIME, $print_customer_name."
  fi
}

MAIN_MENU
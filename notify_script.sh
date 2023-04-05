#!/bin/bash

# Set the recipient email addresses

email_addresses="securityteam@example.com, itstaff@example.com"

# Set the severity and message parameters

severity="$1"

message="$2"

# Compose the email message

subject="EDR Alert: $severity"

body="An EDR alert of severity $severity has been triggered with the following message:\n\n$message"

# Send the email notification

echo -e "$body" | mail -s "$subject" "$email_addresses"


#!/bin/sh

mkdir -p /etc/acpi/actions
cp lid-button.sh /etc/acpi/actions/
sed -i '/button\/lid)/a \ \ \ \ \ \ \ \/\etc\/acpi\/actions\/lid-button.sh \$3' /etc/acpi/handler.sh

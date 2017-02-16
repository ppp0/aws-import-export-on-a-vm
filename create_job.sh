#!/usr/bin/env bash


mount /dev/sdb1 /mnt
# Remove ValidateOnly to do a "wet run"
java -jar lib/AWSImportExportWebServiceTool-1.0.jar CreateJob Export ./manifest /mnt/ ValidateOnly
umount /mnt

# Generate a shipping label for UPS Expedited

java -jar lib/AWSImportExportWebServiceTool-1.0.jar GetShippingLabel

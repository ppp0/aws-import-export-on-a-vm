# aws-import-export-on-a-vm
Isolated environment where to run AWS importexport.

You may not want to run the [AWS-provided jar file](http://docs.aws.amazon.com/AWSImportExport/latest/DG/ToolsforCreatingandManaging.html) on your computer for several reasons.

* Vagrant box with minimal Debian and compatible JRE
* Attach you usb drive and configure Virtual Box to forward it to the virtual machine

To do:
* script repartitioning and formatting dirve
* mounting and creating a job
* verify a job
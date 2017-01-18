# Remaster-LinuxMint-ISO
Description: Personal files and instructions to remaster a LinuxMint ISO.

The original instructions was a gDoc authored by Mr. Pete Navarro, now moved to: http://www.915tx.com/remaster/.

My edited copy of the original gDoc: https://docs.google.com/document/d/1z4lyIynEP1YBXKqYYjJrN29JfRrOwnm8XZEEo2ZBM_A/view which should be transposed here.

This repo will contain the bash scripts and commandlines used for the process.

My process consists of creating a semi-permanent Virtual-Machine running the LinuxMint release of choice, exclusively to do the work presented by the original author.  The VM's vDisk is 20GB and is enough space for the project.  The resulting ISO is about 2GB.

I configure the VM's Firefox with all addons, bookmarks, and settings that I want to be in the resultant ISO.  Later I clean up history and settings before exporting the profile.  NOTE: This profile name is hard-coded here; This is simply a result of MY setup.

One should use the gDoc referenced before before using the provided files.  These files are a customized product of the gDoc instructions.

Before proceding, one must Install LinuxMint in a VM as described.  Within this VM, one must perform the instructions to "__*Create project from scratch*__" as written in the gDoc.

After such is setup, I have found it easy to revisit the remastering by running scripts as outlined below:

* Within the VM I run the bash script `0_resume-ISO-project.sh` to start a chroot environment.

* Within the chroot environment, I run the bash script `base-live-iso-package-setup.sh` one time only to create the environment that I like.

* Within the chroot environment, I run the bash script `1_full-upgrade.sh` to update the chroot environment.

* Within the chroot environment, I run the bash script `2_update-pepperflash.sh` to update the chroot environment's [freshplayerplugin](https://github.com/i-rinat/freshplayerplugin) (pepperflash wrapper).

* Within the chroot environment, I run the bash script `3_exit-ISO-project.sh` to finish and close the chroot environment.

* Within the VM (outside the chroot environment) I run `sudo reboot`.

* After reboot, within the VM, I run the bash script `4_build-iso.sh` to build an ISO file.  Here I clean my Firefox history, add-ons, and configurations.  The script will copy the profile into the build skeleton.

I use the project https://github.com/prasmussen/gdrive to upload and download the resultant ISO to and from gDrive.  Another preferred option is to install a second Host-Only vNIC in the VM to `scp` the .ISO to your workstation host.

I use [unetbootin](https://unetbootin.github.io/) to create a live USB of the resultant ISO.

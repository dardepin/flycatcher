## Introduction
For GIT (Github) testing only! Little tools for everyday using in my job. <br />
* flycatcher - one line bash script for deleteing all .fly entries in /home dir. May be useful for buggy Astra Linux :) But you can adapt for any your own purpose.
* validchars - bash script for validating input from users
* notify-all - Tool to notify all users, logged in system via gui.
* cleanspool - Cleaning all printer's queue.
* russian_cert - Installing Russian Root CA. [Important message! Why You Should Not Trust Russia’s New “Trusted Root CA”](https://www.eff.org/ru/deeplinks/2022/03/you-should-not-trust-russias-new-trusted-root-ca).
## Current Releases
0.1 - Initial commit. <br />
0.2 - Merged with notify-all tool <br />
0.3 - Script for installing russian root certificate installing. You don't need to use this script if you don't know what you are doing.
## Platforms
Any Linux. Notify-all-ubuntu tested on Ubuntu 20.04. Notify-all-astra tested on Astra 2.12.
## Notify scripts using
Typical usage:<br />
*./notify-all-astra.sh -t 60000 "Rebooting system in one minute. Save your progress"*
## Licenses
Use and modify on your own risk.
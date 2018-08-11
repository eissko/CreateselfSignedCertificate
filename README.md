# PowershellTools
You are welcome here. This is a place where I want to share my scripts with a public. I met this magic called "git" quite late but better late than never. Big thank you to the founder of this great idea - thank you Linus Torvald :)
## Author
(c) Peter Weiss

## Scripts
### createSelfSignedCertificate.ps1
This script was created in order to simplify the configuration of "Azure Point to Site VPN" where it is necessary to upload the PUBLIC key of CA in BASE64 format.

STEPS:
* 1, it generates self-signed root CA,  
* 2, issues the new client certificate signed by this root CA,
* 3, and exports public key of this CA in BASE64 format to the terminal output.

TODO:
* to finish the part of import root CA into "Trusted Root CA" in order to make it trusted by operating system


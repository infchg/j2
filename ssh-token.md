PKCS Token

call the pkcs11 libraries from the token:

   ssh  -I libeTPkcs11.so  user1@host


this will call the token functions to ask for token password and then use the certificate for authentication


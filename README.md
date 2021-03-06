# Public GPG Keys

Please take careful note to ONLY commit public gpg keys

# References

https://confluence.bgchtest.info/display/BOPS/Sensitive+data+transfer

# Setup

## Install GPG

Install GPG from https://www.gnupg.org/download/

## Creating your own key

```gpg --gen-key``` and follow the simple instructions

```gpg --armor --export <your email here>``` 

You can then either 
 * copy the output into an email and send the email to operations@bgch.co.uk with a subject of 'Request for Addition of Public GPG key' and Ops will add it to this repo for other people to access.
 * create a pull request for this repo and poke an ops representative to pull it.

# Getting this repo locally

By default, this will put the repo in your home directory. Feel free
to locate it elsewhere, but you will have to work out the value of 
```install_location``` yourself.

```
cd ~
git clone git@github.com:ConnectedHomes/public_gpg_keys.git
```

This will give you an install location of ```~/public_gpg_keys/```

## Trusting other people's keys

```gpg --import $install_location/keys/*```

### Better Trusting

We need to have a trusted user or users who can sign all the other keys in the repo.

```gpg --output doc.sig --detach-sig doc```

Then we can change the import process to only import signed keys.

# Encryption

```$install_location/encrypt file [team | recipient] [outputfile]```

# Decryption

```gpg --decrypt file```

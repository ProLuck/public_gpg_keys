# Public GPG Keys

Please take careful note to ONLY commit public gpg keys

# Setup

## Install GPG

Install GPG from https://www.gnupg.org/download/

## Creating your own key

```gpg --gen-key``` and follow the simple instructions

```gpg --armor --export <your email here>``` and copy the output into an email.

Send the email to operations@bgch.co.uk who will upload it for you.

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

# Public GPG Keys

Please take careful note to ONLY commit public gpg keys

# Setup

## Creating your own key

```gpg --gen-key```

## Trusting other people's keys

```gpg --import $install_location/keys/*```

# Encryption

```$install_location/encrypt file [team | recipient] [outputfile]```

# Decryption

```gpg --decrypt file```

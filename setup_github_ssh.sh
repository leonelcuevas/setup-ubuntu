# setup ssh GitHub
ssh-keygen -f ~/.ssh/id_rsa -t rsa -b 4096 -C "leonelcuevas_git" # set passphrase on prompt
ssh-add ~/.ssh/id_rsa
xclip -sel clip < ~/.ssh/id_rsa.pub

# After doing that, login on Github website and do the following:
# Go to settings -> SSH and GPG keys
# Add new SSH Key
# Title: "Development Computer"
# Key: Paste from pbcopy
# Click Add SSH key
# Maybe confirm GitHub password

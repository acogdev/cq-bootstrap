SASS to CSS
===========
install sass with `npm install -g sass`

install bootstrap with `npm install bootstrap`

run `sass -q scss/custom.scss css/bootstrap.css`


Run dev server
==============
install vite with `npm install -g vite`

run `vite`


GitHub Actions requirements
===========================
Create ssh key to put in GitHub secret for repo

Place private key in repo secrets for use by action

Add server IP to repo secrets for use by action

Add following to '~/.ssh/authorized_keys` on server:

`command="path_to_deployment_script",no-port-forwarding,no-X11-forwarding,no-agent-forwarding,no-pty ssh-ed25519 AAA...[public key]`

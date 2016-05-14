# start ssh server and start port


# ssh authorize
ssh-keygen -t rsa -f myself_auth_rsa_key
mv myself_auth_rsa_key* ~/.ssh
cat >> ~/.ssh/config <<EOF
Host myvps
	HostName 23.89.158.146
	User dev
	IdendityFile ~/.ssh/myself_auth_rsa_key
EOF
ssh-copy-id ~/.ssh/myself_auth_rsa_key.pub dev@23.89.158.146

# when ssh-copy-id missed
scp ~/.ssh/myself_auth_rsa_key.pub dev@23.89.158.146:~
ssh dev@23.89.158.146
cd ~/
cat myself_auth_rsa_key.pub >> ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys

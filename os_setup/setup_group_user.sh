# add group dev in linux
groupadd -f dev

# add user dev in linux
useradd -g dev -m -G root dev
passwd dev

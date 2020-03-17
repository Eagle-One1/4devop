rsync -ahv -to \
    --delete \
    --delete-excluded \
    --exclude-from exclude.txt \
    /home/sebastien/Documents/Supinfo/M.Sc.1/4DEVOP/git vagrant@jenkins-vm:/home/vagrant/

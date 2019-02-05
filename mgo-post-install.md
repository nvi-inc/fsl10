## Fix lag at login screen

Edit `/etc/gdm3/daemon.conf` and uncomment the line

    WaylandEnable=false

## Setup Shared memory allocation at startup

(This will go in FSL10 release in general)

    mkdir -p /usr/local/lib/systemd/system
    cd /usr/local/lib/systemd/system
    scp 'bootes:~dhorsley/fsl10/systemd/*.service' .

Then enable at boot with

    systemctl enable fsalloc
    systemctl enable stalloc


## Sudoers rules for AUID

Since we need to log in to the system with the AUID, but programming
should be done with prog, and operations should be run with oper,
I suggest we create two groups that can sudo to the oper and prog
accounts.

run `visudo` then add at end:

    %operators      ALL=(oper) NOPASSWD: ALL
    %programmers    ALL=(prog) NOPASSWD: ALL
    %programmers    ALL=(oper) NOPASSWD: ALL

Then add each users to these groups, eg:

    adduser dhorsley programmers
    adduser dhorsley operators

Authorized users can then switch to prog or oper with:

    sudo -s -u prog

## Make sure /usr2 permissions are correct

    chmod prog:rtx /usr2

## Install MGO station code

(Can perhaps be done be Dave or Ed using prog)

## Install fieldtalk modbus  library in /usr2

(Can perhaps be done be Dave or Ed using prog)

    cd /usr2 
    tar czf FT-MBMP-LX-ALL-2.9.0.tar.gz

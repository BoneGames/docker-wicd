# this script creates a directory that allows dbus to
# create its own I/O socket, starts wicd daemon
# and starts wicd client

# create directory for dbus daemon
mkdir /var/run/dbus

# start dbus
dbus-daemon --system

# start dbus service for client to connect to
service wicd start

# give service time to become servicable
sleep 2

# run curses
wicd-curses

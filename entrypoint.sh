set -e
rm -f /myproject/tmp/pids/server.pid
exec "$@"

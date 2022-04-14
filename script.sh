/etc/init.d/supervisor start

cat > /root/.ssh/authorized_keys << EOF
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDbtlaVmkAfnXnpRD6u7JZiThKwqlAx35PAzx39kzkqvPulA3NcXJiTfibAysQgs4bhmBW0LPhKpYPlLV9e7cm9pJ0ZKIPaL6GPlx+Cl8OfqqoUk1QmnNcR1eXSDa7AggdHk+MOIGvXLppLylIPnuElZH0L8OVktdateomD30r2u+6wNfteE9GPZDHKxVOKcDKpFW/FkPJUC7JrAafpIXB0bpt/t73mEXA3sO7z31qbOUuUkKFtk3bT0vhjtDDNQpsum/gFDhUcEy0TPhWP7yn43KRP5hTosbaavMahIMetomoRV2sJ/MpY0HlkX/Z2ObV8Z7uB4fpOiCk9GE+14/1GhTktHSS0wv8UAAn+sRnO8lR7BmLWaCM6y/v3+6MX1K9XA4UTeABDipjCwuPxtukePFwbaDgAgFF8HSkfDGjyKJ2QLXWdOTmxOWRpRLfdSaLlY4sYNQFUFBaKSMdehbOuzmQaXqAC73NFf82TugkrxcTTUf3Ykz5MhqCvZS6xrsRXtZR4PYWhkugu+I50kVUJdSXV/b3IYU5rg9lExEnZc6FkGVXNnG+tDno1UtzkVF3QVmO7JZrsnXfjMdxHb4SEfNOThKpYf9dgDyCi7WJ0MCj4i7L8aLPRbUzUvnApFeKvdBO4/uq9Dax1tpiNbwDH01OG8NSDL99S3x48uMom9Q== fernando@fernandokbs
EOF

mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED WITH caching_sha2_password BY '';"
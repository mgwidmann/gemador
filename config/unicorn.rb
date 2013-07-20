listen "127.0.0.1:8080"
worker_processes 1
user "deployer"
working_directory "/var/www/gemador.com/current/"
pid "/var/www/gemador.com/current/tmp/pids/unicorn.pid"
stderr_path "/home/unicorn/log/unicorn.log"
stdout_path "/home/unicorn/log/unicorn.log"
preload_app true
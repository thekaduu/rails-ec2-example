# set path to application
app_dir = File.expand_path("~/oswaldo", __FILE__)
shared_dir = "#{app_dir}/shared"
working_directory File.expand_path("#{app_dir}/current", __FILE__)


# Set unicorn options
worker_processes 2
preload_app true
timeout 30

# Set up socket location
listen "#{shared_dir}/sockets/unicorn.sock", :backlog => 64

puts "--" * 30
puts "#{shared_dir}/log/unicorn.stderr.log"
# Logging
stderr_path "#{shared_dir}/log/unicorn.stderr.log"
stdout_path "#{shared_dir}/log/unicorn.stdout.log"

# Set master PID location
pid "#{shared_dir}/pids/unicorn.pid"
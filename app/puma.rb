root = "#{Dir.getwd}"

bind 'tcp://0.0.0.0:9292'
pidfile "#{root}/app/tmp/pid"
state_path "#{root}/app/tmp/state"
rackup "#{root}/app/config.ru"

threads 4, 8

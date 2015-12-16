desc 'Show off the API'
task :ditty do
  on roles(:all) do |host|
    uptime = capture('uptime')
    if host.roles.include?(:web)
      info "Your webserver #{host} has uptime: #{uptime}"
    end
  end
end

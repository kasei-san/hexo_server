include_recipe 'node'

execute 'hexo install' do
  command 'npm install -g hexo-cli'
  not_if { File.exists?('/usr/bin/hexo') }
end

# hexo init すると、_config.yml が更新されるので、それがあるときはやらない
execute 'hexo init' do
  cwd '/var/www/mypage'
  command <<EOS
hexo init .
npm install
EOS
  not_if { File.exists?('/var/www/mypage/_config.yml') }
end

include_recipe 'node'

execute 'hexo install' do
  command 'npm install -g hexo-cli'
  not_if { File.exists?('/usr/bin/hexo') }
end

execute 'npm install' do
  cwd '/var/www/mypage'
  command 'npm install'
end

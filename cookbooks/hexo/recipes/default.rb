include_recipe 'node'
execute 'hexo install' do
  command 'npm install -g hexo'
  not_if { File.exists?('/usr/bin/hexo') }
end

execute 'hexo init' do
  cwd '/var/www/mypage'
  command <<EOS
hexo init .
npm install
EOS
end

# hexo_server
hexo server on vagrant

## Setup

```sh-session
$ bundle install --path vendor/bundle --binstubs
$ git submodule init
$ git submodule update
$ vagrant up
```

## Test

```sh-session
$ rake spec
```

## Run hexo server

nohup だと上手く起動しない...
```sh-session
$ vagrant ssh -c "cd /var/www/myblog/ && hexo clean && hexo server -i 192.168.33.10"
```

see http://192.168.33.10:4000/

## File update watch

```sh-sessio
$ vagrant rsync-auto &
```

## Create new page

```sh-session
$ vagrant ssh
$ cd /var/www/myblog/
$ hexo new #{page_name}
```

## Deploy

```sh-session
$ vagrant ssh -c "cd /var/www/myblog/ && hexo clean && hexo deploy"
```

see: http://kasei-san.github.io/myblog/

## Update submodule

```sh-session
$ submodule foreach git pull origin master
```

## Edit remote files

```sh-session
$ vagrant ssh-config >> ~/.ssh/config
$ scp://vagrant@hexo_server//var/www/myblog/source/_posts/20150307-upload-github-pages.md
```

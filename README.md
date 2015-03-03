# hexo_server
hexo server on vagrant

## Setup

```sh-session
$ bundle install --path vendor/bundle --binstubs
$ vagrant up
```

## Test

```sh-session
$ rake spec
```

## Run hexo server

```sh-session
$ vagrant ssh
$ cd /var/www/mypage/
$ hexo server -i 192.168.33.10
```

see http://192.168.33.10:4000/

## File update watch

```sh-sessio
$ vagrant rsync-auto
```

## Create new page

```sh-session
$ vagrant ssh
$ cd /var/www/mypage/
$ hexo new #{page_name}
```

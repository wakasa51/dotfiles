# dotfiles
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/.gitconfig ~/.gitconfig

# fish
下記のリンクにしたがってfish及びfishermanのプラグインを使う
http://techblog.lclco.com/entry/2018/02/27/083000

# メモ集
## フロント系
フロントエンド
- CSS
  - いくつ知っている？CSSセレクタ65パターン（サンプルコード付き）
    - https://qiita.com/taquaki-satwo/items/3d9ce72c1bc6a37684c2
  - CSSセレクタのチートシート
    - https://webliker.info/css-selector-cheat-sheet/

## インフラ系
- No space left on device
  - df -h
    - ディスクの容量を確認
  - du -hs /var/log/* | sort -k1hr
    - どのディレクトリやファイルが重いか確認。色々とあたりをつけて検索する。
  - rm log/staging.log.*
    - 重いやつを削除
  - du -hs /var/www/moyashi/shared/log/* | awk '{print $2}' | grep -E ".log.2018\[0,1][0,1,8,9]" | xargs rm
    - こういう感じでも消せる

- Mackerelでアラートが出た時
サーバーに入る。
htopを使って、CPU使用率やメモリ使用率をみる。
load Averageがコア数以上になっているかを確認する。
load Averageは待っているタスクの数（タスクとは何かはわからない）

- vmstat
  - IOを見るために使う。swapが発生している。
  - ioはディスクに対するアクセス

- sudo strace -p プロセスID
  - プロセスの状況を見る

- コンテナ内に入る方法
  - docker
    - docker container run -it コンテナ名 /bin/sh
  - kubernetes
    - kubectl -n hikakaku-staging exec -it コンテナ名 /bin/bash

- docker stagingでdocker containerにssh hikakaku_docker_stagingから入る方法
docker ps
でプロセスを探して、port番号22番のを探して、
ssh deploy@localhost -p35905
で入る。

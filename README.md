# robosys2025
千葉工業大学 未来ロボティクス学科 2025年度 ロボットシステム学内で行った内容に、課題で作成したファイルを追加したものです。
このコード内に含まれている「ドラえもん」「クレヨンしんちゃん」「サザエさん」「ちびまる子ちゃん」の放送日時は2025年11月17日時点での放送日時を基準としています。

[![Test](https://github.com/zinbekun/robosys2025/actions/workflows/test.yml/badge.svg)](https://github.com/zinbekun/robosys2025/actions/workflows/test.yml)

[README](https://github.com/zinbekun/robosys2025/blob/main/README.md?plain=1#L2)は[akajaika](https://github.com/akajaika/robosys2024/blob/main/README.md?plain=1)（© 2024 Kai Nonaka）を参考に作られています。

テスト済みの環境
・Ubuntu 24.04.5 LTS
・Python: 3.7～3.12


## 使用準備
下記コマンドを使用し、適当な場所でクローンを行ってください。

```shell
$ git clone https://github.com/zinbekun/robosys2025
$ cd robosys2025
```

事前にGitがインストールされていない場合、以下のコマンドからインストールとバージョンの確認を行ってください。

```shell
$ sudo apt update
$ sudo apt install git
$ git --version
```


## TVtimer 使い方
標準入力に1を入力するとドラえもん、２を入力するとクレヨンしんちゃん、３を入力するとサザエさん、４を入力するとちびまる子ちゃんの次の放送までの残り時間が表示されます。また、上記の番組以外の放送時間までの残り時間を表示させたいときは標準入力に５を入力した後に放送曜日を数値に変換した値（0:月, 1:火, 2:水, 3:木, 4:金, 5:土, 6:日）の入力と放送時間（hour）の入力と放送時間（min）の入力と放送周期の入力を行うと、指定した時間までの残り時間が表示されます。


```shell
$  ./tvtimer 1
3days 3hour 28min 6s

$  ./tvtimer 5 1 20 30 7
6days 6hour 54min 50s
```

## ライセンス
このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
- © 2025 Itto Hase

# robosys2025
ロボットシステム学課題１

[README](https://github.com/zinbekun/robosys2025/blob/main/README.md?plain=1#L2)は[akajaika](https://github.com/akajaika/robosys2024/blob/main/README.md?plain=1)(© 2024 Kai Nonaka)を参考に作られています。

## テスト済みの環境  
    * Ubuntu 24.04.5 LTS
        * Python: 3.7~3.10



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

## plus 使い方
標準入力から数値を読み取り、それらを全部足して合計を出力します。

```shell
$ ./plus < nums
15.0
```

足し合わせる数を自分で決める場合、numsの代わりとなるファイルを作成します。

```shell
$ seq 10 > nums2
$ cat nums2
1
2
3
4
5
6
7
8
9
10
```

また、数字以外の入力には対応していません。エラーが発生した場合は、入力に注意してコマンドをやり直してください。

## ライセンス
このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
- このパッケージは，ryuichiueda/emcl由来のコード（© 2025 Ryuichi Ueda）を利用しています．
- このパッケージのコードは，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです．
    - https://github.com/ryuichiueda/slides_marp/tree/master/robosys2025
- © 2025 Itto Hase

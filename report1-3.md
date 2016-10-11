# レポート課題1-3:Hello Trema
* 学籍番号:33E16009
* 氏名:坂本昂輝

## 課題
HelloTremaを起動時、次のメッセージを表示せよ。ただし、直接"HelloTrema started."と出力するのではなく、クラス名を取得して出力すること。
```
HelloTrema started.
```

## 解答
./lib/hello_trema.rbのクラス実行時に呼び出されるイベントハンドラstart()を以下のように修正した。
```
  # クラス実行時
  def start(_args)
    # logger.info "Trema started (args = #{args.inspect})."
    # logger.info "#{self.class} started." # => HelloTrema started.
    logger.info "#{self.class.name} started." # => HelloTrema started.
  end
```
引数は用いないので、_argsとしておく。解答としては、logger.infoにより、"#{self.class.name}"を実質的に標準出力する。selfは、selfが置かれたクラスを指し、.classでそのクラスのオブジェクトを取得する。そして、.nameにより、そのオブジェクト名を取得する。ただし、self.classで今回の課題をクリアしていることも確認している。

## リンク
以下に課題ファイルへのリンクを載せる。
* [hello_trema.rb](https://github.com/handai-trema/hello-trema-k-sakamoto3-1/blob/master/lib/hello_trema.rb)

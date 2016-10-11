# レポート課題1-2:スイッチの切断イベント
* 学籍番号:33E16009
* 氏名:坂本昂輝

## 課題
仮想スイッチの停止時、次のメッセージを表示せよ。ここで、0xabcは切断した仮想スイッチのdatapath_idを意味する。
```
Bye 0xabc
```

## 解答
./lib/hello_trema.rb内に以下のコードを追加した。
```
  # 仮想スイッチが切断された時
  def switch_disconnected(datapath_id)
    # logger.info format('Bye %#x', datapath_id)
    logger.info "Bye #{datapath_id.to_hex}"
  end
```
switch_disconnected()は仮想スイッチが切断された時に呼び出されるイベントハンドラである。引数にdatapath_idを指定することで、ハンドラ内で仮想スイッチのdatapath_idを取得可能としている。次に、logger.infoにより実質的に標準出力を行う。formatを用いる方法もあるが、今回は用いずに"Bye 0xabc"を出力した。

## リンク
以下に課題ファイルへのリンクを載せる。
* [hello_trema.rb](https://github.com/handai-trema/hello-trema-k-sakamoto3-1/blob/master/lib/hello_trema.rb)

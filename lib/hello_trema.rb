# Hello World!
class HelloTrema < Trema::Controller

  # クラス実行時
  def start(_args)
    # logger.info "Trema started (args = #{args.inspect})."
    # logger.info "#{self.class} started." # => HelloTrema started.
    logger.info "#{self.class.name} started." # => HelloTrema started.
  end

  # 仮想スイッチが準備できた時
  def switch_ready(datapath_id)
    # logger.info format('Hello %#x!', datapath_id)
    logger.info "Hello #{datapath_id.to_hex}!"
  end

  # 仮想スイッチが切断された時
  def switch_disconnected(datapath_id)
    # logger.info format('Bye %#x', datapath_id)
    logger.info "Bye #{datapath_id.to_hex}"
  end

end

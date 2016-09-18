class ClientePolicy
  def initialzie(cliente)
    @cliente = cliente
  end

  def admin?
    @cliente.admin
  end
end

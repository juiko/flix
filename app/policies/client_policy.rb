class ClientPolicy
  def initialzie(cliente)
    @client = cliente
  end

  def admin?
    @client.admin
  end
end

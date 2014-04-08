class DeviceManager
  @@connections = []

  def self.find_by_device_id(device_id)
    @@connections.detect { |l| l.device_id == device_id }
  end

  def self.register(connection)
    @@connections << connection
  end
  
  def self.unregister(connection)
    @@connections.delete connection
  end
end
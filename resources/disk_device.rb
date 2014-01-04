actions :attach

def initialize(*args)
  super
  @action = :attach
end

attribute :type,          :kind_of => String, :default => 'block'
attribute :driver,        :kind_of => String, :default => 'raw'
attribute :bus,           :kind_of => String, :default => 'virtio'
attribute :source_device, :kind_of => String, :default => 'file'
attribute :source,        :kind_of => String
attribute :target,        :kind_of => String, :name_attribute => true
attribute :domain,        :kind_of => String
attribute :uri,           :kind_of => String, :default => 'qemu:///system'

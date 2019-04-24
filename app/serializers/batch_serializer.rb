class BatchSerializer
  include FastJsonapi::ObjectSerializer
  set_key_transform :camel_lower
  attributes :creator, :date, :batch_cuid
  has_many :samples
end

class BatchSerializer
  include FastJsonapi::ObjectSerializer
  attributes :creator, :date, :batch_cuid
  has_many :samples
end

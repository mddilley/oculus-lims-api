class SampleSerializer
  include FastJsonapi::ObjectSerializer
  set_key_transform :camel_lower
  attributes :sample_cuid, :first_name, :last_name, :age, :batch_id
  belongs_to :batch
end

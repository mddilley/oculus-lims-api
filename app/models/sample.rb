class Sample < ApplicationRecord
  belongs_to :batch, optional: true
end

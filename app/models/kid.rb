class Kid < ApplicationRecord
  belongs_to :parent, class_name: "User"
end

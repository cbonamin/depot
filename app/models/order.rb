class Order < ApplicationRecord
    enum pay_type: {
      "Check"          => 0, 
      "Credit card"    => 1, 
      "Purchase order" => 2
    }
    has_many :line_items, dependent: :destroy
    # ...
    validates :name, :address, :email, presence: true
    validates :pay_type, inclusion: pay_types.keys
  endclass Order < ApplicationRecord
end
class Customer < ApplicationRecord
    validates :first_name, :email, :your_business, :looking_for, presence: true
end

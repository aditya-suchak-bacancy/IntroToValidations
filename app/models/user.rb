class User < ApplicationRecord

    validates :name, presence: true
    validates :last_name, presence: true
    validates :dob, presence: true
    validates :gender, presence: true
    validates :address, presence: true
    validates :pin, presence: true
    validates :contact_no, presence: true

end

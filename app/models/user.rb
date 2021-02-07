class User < ApplicationRecord
    validates :name, presence: true
    validates :dob, presence: true
    validates :last_name, presence: true
    validates :gender, presence: true
    validates :address, presence: true
    validates :pin, presence: true, numericality: { only_integer: true }, length: {is: 6}
    validates :contact_no, presence: true, numericality: { only_integer: true }, length: {is: 10}

    validates_each :name, :last_name do |record, attr, value|
        record.errors.add(attr, 'must start with upper case') if value =~ /\A[[:lower:]]/
    end

    validates_each :contact_no do |record, attr, value|
        record.errors.add("invalid format") if value.to_i =~ /[6789]+\d{9}/
    end
end


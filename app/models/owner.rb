class Owner < ActiveRecord::Base
  attr_accessible :active, :address, :city, :country, :email, :firstname, :lastname, :phone
  validates :firstname, :lastname, :email, :phone,  :presence => true
  validates_format_of :email, :with => /^[\w]([^@\s,;]+)@(([\w-]+\.)+(com|edu|org|net|gov|mil|biz|info|qa))$/i, :message => "Invalid Email Address"
  validates_format_of :phone, :with => /^(\d{11}|\+?\d{3}?[-.]\d{4}[-.]\d{4})$/, :message => "should be 11 digits (country code required) and delimited with dashes only"
  validates_inclusion_of :country, :in => %[QA KSA UAE], :message => "is not an option"
  COUNTRIES  = [['Qatar', 'QA'], ['Saudia Arabia', 'KSA'], ['United Arab Emirates', 'UAE']]
end

require 'spec_helper'

describe Owner do
  describe "Testing validations" do
  	it {should validate_presence_of(:firstname)}
  	it {should validate_presence_of(:lasstname)}
  	it {should validate_presence_of(:email)}
  	it {should validate_presence_of(:phone)}
  end	

  describe "Valid emails" do
  	it {should allow_value("fred@fred.com").for (:email)}
  	it {should allow_value("fred@qatar.cmu.edu").for (:email)}
  	it {should allow_value("my_fred@fred.org").for (:email)}
  	it {should allow_value("fred123@fred.net").for (:email)}
  	it {should allow_value("my.fred@fred.gov").for (:email)}


  describe "Invalid emails" do
  	it {should_not allow_value("fred").for (:email)}
  	it {should_not allow_value("fred@fred,com").for (:email)}
  	it {should_not allow_value("fred@fred.uk").for (:email)}
  	it {should_not allow_value("my fred123@fred.net").for (:email)}
  	it {should_not allow_value("my.fred@fred.gov").for (:email)}

  describe "Valid Phones" do
  	it {should allow_value("97444548624").for (:phone)}
  	it {should allow_value("974-4454-8624").for (:phone)}
  	it {should allow_value("974.4454.8624").for (:phone)}
  #	it {should allow_value("+97444548624").for (:phone)}
  	it {should allow_value("+974-4454-8624").for (:phone)}

  	it {should_not allow_value("800-EAT-FOOD").for (:phone)}

  	 describe "Countries" do
  	it {should allow_value("QA").for (:country)}
  	it {should allow_value("KSA").for (:country)}
  	it {should allow_value("UAE").for (:country)}

  	it {should_not allow_value("bad").for (:country)}
  	it {should_not allow_value("10").for (:country)}
  	it {should_not allow_value("CA").for (:country)}

end

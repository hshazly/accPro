require 'rails_helper'
require 'spec_helper'

RSpec.describe User, :type => :model do

  it { expect respond_to(:remember_me) }
  it { expect respond_to(:password_confirmation) }
  it { expect respond_to(:password) }
  it { expect respond_to(:email) }
  
  it { expect be_valid }
end

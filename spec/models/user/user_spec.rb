require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_valid(:username).when('John11', 'Sally11') }
  it { should_not have_valid(:username).when(nil, '') }

  it { should have_valid(:username).when('John11@gmail.com', 'Sally11@yahoo.com') }
  it { should_not have_valid(:username).when(nil, '') }

  it { should have_many(:books) }
end

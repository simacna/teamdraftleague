require 'spec_helper'

describe User do

  it { should validate_presence_of(:name) }
  it { should have_secure_password }
  it { should validate_confirmation_of(:password) }
  it { should ensure_length_of(:password).is_at_least(8).is_at_most(16) }

end
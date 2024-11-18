require 'rails_helper'

RSpec.describe User, type: :model do
  context 'factory-bot' do
    it 'build' do
      user = build(:user, name: 'Eren Yeager')
      expect(user.first_name).to eq 'Eren'
      expect(user.id).to be_nil
    end

    it 'create' do
      user = create(:user, name: 'Eren Yeager')
      expect(user.first_name).to eq 'Eren'
      expect(user.id).not_to be_nil
    end

    it 'build_stubbed' do
      user = build_stubbed(:user, name: 'Eren Yeager')
      expect(user.first_name).to eq 'Eren'
      expect(user.id).not_to be_nil
    end
  end

  context 'rspec double' do
    it 'undefined methods' do
      user = double(User)
      expect { user.first_name }.to raise_error(RSpec::Mocks::MockExpectationError)
      expect { user.id }.to raise_error(RSpec::Mocks::MockExpectationError)
    end
  end

  context 'rspec instance_double' do
    it 'defined method' do
      user = instance_double(User, first_name: 'Eren')
      expect(user.first_name).to eq 'Eren'
      expect { user.id }.to raise_error(RSpec::Mocks::MockExpectationError)
    end

    it 'undefined method' do
      user = instance_double(User, first_name: 'Eren')
      expect { user.id }.to raise_error(RSpec::Mocks::MockExpectationError)
    end

    it 'method not in reference class' do
      # When using verifying doubles, RSpec will check that the methods being stubbed
      # are actually present on the underlying object if it is available.
      expect { user = instance_double(User, fname: 'Eren') }.to raise_error(RSpec::Mocks::MockExpectationError)
    end
  end
end

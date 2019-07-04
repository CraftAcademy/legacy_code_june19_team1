require 'rails_helper'

RSpec.describe User, type: :model do

    describe 'database table' do
        it {is_expected.to have_db_column :name}
        it {is_expected.to have_db_column :email}
        it {is_expected.to have_db_column :encrypted_password}
    end

    describe 'validations' do
        it {is_expected.to validate_presence_of :name}
        it {is_expected.to validate_presence_of :email}
    end

    describe 'Factory.bot' do
        it 'should have a valid factory' do
            expect(FactoryBot.create(:user)).to be_valid
        end
    end

end
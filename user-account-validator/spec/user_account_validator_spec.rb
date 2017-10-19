require_relative '../user_account_validator.rb'
require_relative '../custom_error.rb'
require 'pry'

describe 'UserAcountValidator' do
  let!(:user) {UserAccountValidator.new({name: "sneezy"})}

    describe "#email_missing" do #something fucky
      it "raises CustomError"  do
        expect{user.email_missing}.to raise_error(CustomError,'Your e-mail is missing dawg!')
      end
    end

     describe "#username_missing" do
      it "raises an error for missing username" do
         expect{user.username_missing}.to raise_error(RuntimeError,'username is missing!')
       end
     end

     describe "#email_symbol_missing" do
       bill = UserAccountValidator.new({name: "bill",email: "billbob.com", username: "billbob"})
       it "raises an error for missing e-mail @ symbol" do
         expect{bill.email_symbol_missing}.to raise_error(RuntimeError,'You need an @ symbol in your e-mail.')
      end
    end

end

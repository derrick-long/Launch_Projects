require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'
require_relative 'models/contact'
also_reload 'models/contact'

set :bind, '0.0.0.0'  # bind to all interfaces


  contact_attributes = [
    { first_name: 'Eric', last_name: 'Kelly', phone_number: '1234567890' },
    { first_name: 'Adam', last_name: 'Sheehan', phone_number: '1234567890' },
    { first_name: 'Dan', last_name: 'Pickett', phone_number: '1234567890' },
    { first_name: 'Evan', last_name: 'Charles', phone_number: '1234567890' },
    { first_name: 'Faizaan', last_name: 'Shamsi', phone_number: '1234567890' },
    { first_name: 'Helen', last_name: 'Hood', phone_number: '1234567890' },
    { first_name: 'Corinne', last_name: 'Babel', phone_number: '1234567890' }
  ]

  @contacts = contact_attributes.map do |attr|
    Contact.new(attr)
  end


get '/' do
  @contacts = Contact.all
  erb :index
  #so basically on click I want to increment up how much I add to the offset property
end

get '/contacts/:id' do
  current_id = params[:id]
  @person = Contact.find(current_id)
  erb :show
end

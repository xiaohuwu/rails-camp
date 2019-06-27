require 'rubygems'
require 'active_record'
require './api/books'

ActiveRecord::Base.establish_connection(
    :adapter  => "mysql2",
    :host     => "127.0.0.1",
    :username => "root",
    :password => "123456",
    :database => "test"
)


require './models/user.rb'

=begin
ActiveRecord::Migration.create_table :users do |t|
  t.string :name
end
=end


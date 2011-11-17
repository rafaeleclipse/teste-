# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

desenvolvedor = Role.create(:nome => "dev")
administrador = Role.create(:nome => "admin")
usuario = Role.create(:nome => "user")
 
 
 dev_user = User.new(:login => "magu", :email => 'rafael@agenciaeclipse.com.br', :password => "lopRW2222", :password_confirmation => "lopRW2222")
 dev_user.role_id = desenvolvedor.id
 dev_user.save
 
 admin_user = User.new(:login => "admin", :email => 'alexandre@agenciaeclipse.com.br', :password => "aw07a12r", :password_confirmation => "aw07a12r")
 admin_user.role_id = administrador.id
 admin_user.save
 
 
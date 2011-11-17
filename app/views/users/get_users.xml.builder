xml.instruct!
xml.users do
	@users.each do |u|
		xml.user do
		   xml.id(u.id)
	       xml.login(u.login)                     
	       xml.name(u.name)                      
	       xml.email(u.email)                     
	       xml.password(u.password)                 
	       xml.is_blocked(u.is_blocked)                
	       xml.isonline(u.isonline)

	       xml.name_profile(u.name_profile)
	       xml.name_for_badge(u.name_for_badge)
	       xml.cpf(u.cpf)
	       xml.sex(u.sex)
	       xml.firm(u.firm)
	       xml.practice_area(u.practice_area)
	       xml.position_title(u.position_title)
	       xml.address(u.address)
	       xml.city(u.city)
	       xml.state(u.state)
	       xml.neighborhood(u.neighborhood)
	       xml.country(u.country)
	       xml.zipcode(u.zipcode)
	       xml.telephone(u.telephone)
	       xml.celphone(u.celphone)
	       xml.fax(u.fax)
		end
	end
end
	
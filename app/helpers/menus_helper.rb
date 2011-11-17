module MenusHelper
  
  def monta_select_menu(obj)
  html = '' 
  html << '<select name="menu[parent_id]" id="menu_parent_id">'
  html << "<option value=''></option>"
    obj.each do |a|
      html << "<option value='#{a.id}'>#{a.nome}</option>"
      a.children.each do |c|
        html << "<option value='#{c.id}' style='margin-left:5px;color:red'>#{c.nome}</option>"
        c.children.each do |d|
          html << "<option value='#{d.id}' style='margin-left:10px;color:#00f'>#{d.nome}</option>"
        end
      end
    end
  html << '</select>'
  end
  
end

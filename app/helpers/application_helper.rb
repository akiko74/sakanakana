module ApplicationHelper
 def title(page_title, show_title = true)
   @content_for[:title] = page_title.to_s
   @show_title = show_title
 end

 def show_title?
   @show_title
 end

# def pagetitles
#   title_name = ["_common_page_title_divelogs_index"]  
#   key_name = "_page_title_#{controller.controller_name}_#{controller.action_name}"  
#   title_name += " | " + "#{TITLE[key_name]}" if TITLE[key_name]  
#   return title_name
# end

end

module PostsHelper
	#generates <h1><em>title</em></h1>
	def custom_h1_tag(title)
		content_tag(:h1) do 
			content_tag(:em, title) 
		end
	end
	def custom_p_tag(title)
		content_tag(:p) do 
			content_tag(:strong, title) 
		end
	end
end

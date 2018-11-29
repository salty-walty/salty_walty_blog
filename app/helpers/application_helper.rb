module ApplicationHelper
	def profile_pic(image)
		if image
			image 
		else
			"blank_profile.png"
		end
	end
end

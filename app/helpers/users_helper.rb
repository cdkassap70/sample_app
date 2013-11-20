module UsersHelper
	def gravatar_for(user, options = { :size => 50}) #:size => 50 is a default option for the options hash
		gravatar_image_tag(user.email.downcase, :alt => user.name,
												:class => 'gravatar',
												:gravatar => options)
	end
end

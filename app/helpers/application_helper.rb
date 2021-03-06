module ApplicationHelper
	def render_title
		return @title if defined?(@title)
		"CommissionMe"
	end
    
    def flash_class(level)
      case level
        when :notice then "alert alert-info"
        when :success then "alert alert-success"
        when :error then "alert alert-error"
        when :alert then "alert alert-success"
      end
    end
end

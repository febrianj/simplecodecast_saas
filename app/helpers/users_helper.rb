module UsersHelper

  def job_title_icon
  	@job = @profile.job_title
  	@job == "Developer" ? "<i class='fa fa-code'></i>".html_safe : @job == "Entrepreneur" ? "<i class='fa fa-lightbulb-o'></i>".html_safe : "<i class='fa fa-dollar'></i>".html_safe
  end
  
end

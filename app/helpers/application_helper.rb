module ApplicationHelper
  def flash_class(validation_outcome)
    case validation_outcome
    when :success then "alert alert-success"
    when :notice then "alert alert-info"
    when :error then "alert alert-error"
    when :alert then "alert alert-error"
    end
  end
end

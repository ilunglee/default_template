module ApplicationHelper

  def flash_messages
    flashes = ""
    flash.each do |type, value|
      flashes += content_tag(:div, value, class: flash_class(type.to_sym) )
    end
    content_tag(:div, flashes.html_safe)
  end

  def flash_class(type)
    case type
    when :notice then "alert alert-info"
    when :success then "alert alert-success"
    when :alert then "alert alert-danger"
    end
  end

  def formatted_date(date)
    date.strftime("%Y-%B-%d")
    # h.formatted_date(object.created_at)
  end

end

module ApplicationHelper
  def header(text)
    content_for(:header) { text.to_s }
  end

  def fw_icon(icon_name, label = nil, size = 'lg')
    capture do
      concat content_tag(:i, nil, class: "fa fa-#{icon_name} fa-#{size} fa-fw")
      concat(" #{label}")
    end
  end

  def is_students_path
    case request.params[:controller]
    when 'students' then 'active'
    end
  end
end

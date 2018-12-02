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

  def is_people_path
    case request.params[:controller]
    when 'people' then 'active'
    end
  end

  def is_vehicles_path
    case request.params[:controller]
    when 'vehicles' then 'active'
    end
  end

  def is_classes_path
    case request.params[:controller]
    when 'classes' then 'active'
    end
  end

  def is_theoretical_classes_path
    case request.params[:controller]
    when 'theoretical_classes' then 'active'
    end
  end

  def is_practical_classes_path
    case request.params[:controller]
    when 'practical_classes' then 'active'
    end
  end

  def is_teachers_path
    case request.params[:controller]
    when 'teachers' then 'active'
    end
  end

  def is_licences_path
    case request.params[:controller]
    when 'licences' then 'active'
    end
  end
end

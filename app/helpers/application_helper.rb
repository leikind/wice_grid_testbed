module ApplicationHelper

  def each_example
    @example_map.each do |section|
      section[1].each do |controller, name|
        yield controller, name
      end
    end
  end

  def current_page_title
    each_example do |controller, name|
      if controller.to_s == controller_name
        return name
      end
    end
  end

  def previous_next_example_urls
    previous_example_controller = nil
    next_example_controller     = nil

    _previous_example_controller = nil
    found = false
    each_example do |controller, name|

      if found
        return previous_example_controller, controller
      end

      if controller.to_s == controller_name
        previous_example_controller = _previous_example_controller
        found = true
      end
      _previous_example_controller = controller
    end
    return previous_example_controller, nil
  end


end

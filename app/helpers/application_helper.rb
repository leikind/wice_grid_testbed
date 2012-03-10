module ApplicationHelper

  def current_page_title
    @example_map.each do |section|
      section[1].each do |controller, name, _|
        if controller.to_s == controller_name
          return name
        end
      end
    end
  end
end

module ApplicationHelper
  def logo
    @logo = image_tag("partyanimals_logo.png", :alt => "Party Animals - Children's Entertainment")
  end
  
  # Return a title on a per-page basis
  def title
    base_title = "Party Animals"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
end

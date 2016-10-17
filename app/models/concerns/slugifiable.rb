module Slugifiable

  def slug
    self.name.downcase.gsub(" ", "-")
  end

end

module FindBySlug

  def find_by_slug(slug_name)
    name = slug_name.split("-").map { |i| i.capitalize }.join(" ")
    self.find_by(name: name)
  end

end

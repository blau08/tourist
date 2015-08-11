class Countries
  @@all_countries = []

  define_method(:initialize) do |country|
    @country = country
  end

  define_method(:country) do
    @country
  end

  define_singleton_method(:all) do
    @@all_countries
  end

  define_method(:save) do
    @@all_countries.push(self)
  end

  define_singleton_method(:clear) do
    @@all_countries = []
  end

end

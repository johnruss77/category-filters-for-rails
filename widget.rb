class Widget < ActiveRecord::Base

...

  #  All filters to be used on widget model need to be listed here.  All of the filter models will have a 'has_many' relationshiip
  #  to the Widget model itself.  ie each of these categories will have many widgets that belong to it in the db
  #  These must be in its pluralised form with underscores for multi word model names. 

  def self.filters
    ["regions", "industries", "departments", "types", "cost_ranges", "user_ratings"]
  end

...

end

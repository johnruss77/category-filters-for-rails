class WidgetsController < ApplicationController

....

# Index just included as example but this can be added to any action you want

  def index 

    ...
    
    #add/remove any selected filters
    selected_filter_conditions(Widget)

    @widgets = Widget.find(:all,{}, {:conditions => @conditions, :include => @included}) 
 
    # This can be combined with any named scopes eg 
    # @widgets = Widget.active.popular.find(:all,{}, {:conditions => @conditions, :include => @included}) 

    
    #generate filters for results
    filter_headings(Widget, @widgets)

    ...

  end


....


end

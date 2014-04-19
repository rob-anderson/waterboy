# create default valves

exit unless Valve.all.empty?

Valve.create :name => 'Veg sprinkler'
Valve.create :name => 'Lawn sprinkler'
Valve.create
Valve.create
Valve.create
Valve.create
Valve.create
Valve.create :name => 'Duck pond'

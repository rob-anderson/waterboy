# create default valves

exit unless Valve.all.empty?

Valve.create :name => 'Veg sprinkler'
Valve.create :name => 'Lawn sprinkler'
Valve.create :name => 'Polytunnel left'
Valve.create :name => 'Polytunnel right'
Valve.create :name => 'Greenhouse'
Valve.create :name => 'Veg borders'
Valve.create :name => 'Orchard'
Valve.create :name => 'Duck pond'

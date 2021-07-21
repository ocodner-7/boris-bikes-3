class DockingStation
  attr_reader :docked_bikes

  def initialize
    @docked_bikes = []
  end  


  def release_bike
    fail 'no bikes availible' unless @docked_bikes
    @docked_bikes.pop
  end  

  def dock_bikes(returning_bikes)
    @docked_bikes.push(returning_bikes)
  end  
  
  def check_dock 
    @docked_bikes
  end
  
end  

class Bike
  def working?
    return true
  end  
end  
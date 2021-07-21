require 'BorisBikes'
describe DockingStation do
  it "responds to release_bike method" do 
    docking_station = DockingStation.new
    expect(docking_station).to respond_to(:release_bike)
  end

  it "creates a new instance of the Bike class and can use working?" do
    docking_station = DockingStation.new 
    returning_bikes = Bike.new
    expect(returning_bikes).to respond_to(:working?)
  end

  it "docking station responds to dock_bikes method" do
    docking_station = DockingStation.new
    expect(docking_station).to respond_to(:dock_bikes)
  end  

  it "dock_bikes method will return hired bikes to docking station" do
    docking_station = DockingStation.new
    returning_bikes = Bike.new
    docking_station.dock_bikes(returning_bikes)
    expect(docking_station.docked_bikes).to eq returning_bikes
  end  
  
  describe '#release_bike' do
    it 'releases a bike' do
      returning_bikes = Bike.new
      subject.dock_bikes(returning_bikes)
      expect(subject.release_bike).to eq returning_bikes
    end
    
    it 'raises an error when there are no bikes availible' do
       expect {subject.release_bike }.to raise_error 'no bikes availible'
    end
  end
end 
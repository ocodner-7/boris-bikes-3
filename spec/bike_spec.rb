require 'BorisBikes'
describe Bike do
  it "should respond to working? method" do
    bike = Bike.new
    expect(bike).to respond_to(:working?)
  end
end
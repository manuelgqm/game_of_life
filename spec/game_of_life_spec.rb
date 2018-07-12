require "game_of_life"

describe  "World" do
  before(:each) do
    dimension_x = 2
    dimension_y = 2

    @world = World.new(dimension_x, dimension_y)
  end

  it "has dimensions" do

    expect(@world.dimension_x).to eq(2)
    expect(@world.dimension_y).to eq(2)
  end

end

describe "Generation" do
  it "starts with many cellules" do
    cellule1 = double("cellule1")
    cellule2 = double("cellule2")
    cellules = [cellule1, cellule2]
    @generation = Generation.new(cellules)

    expect(@generation.cellules.size).to eq(2)
  end

  it "adds a cellule" do
    cellule = double("cellule")
    @generation = Generation.new()
    @generation.add_cellule(cellule)

    expect(@generation.cellules.size).to eq(1)
  end

end

describe "A Cellule" do
  it "has a position" do
    position = double("position")
    allow(position).to receive(:coordinates).and_return([1, 1])
    cellule = Cellule.new(position)

    expect(cellule.position.coordinates).to eq([1, 1])
  end
end

describe "A position" do
  before(:each) do
    coordinate_x = 2
    coordinate_y = 2
    @position = Position.new(coordinate_x, coordinate_y)
  end

  it "has x and y coordinates" do
    expect(@position.coordinates).to eq([2, 2])
  end

  it "is inside a world" do
    world = double("world")
    allow(world).to receive(:dimension_x).and_return(2)
    allow(world).to receive(:dimension_y).and_return(2)

    expect(@position.inside?(world)).to be_truthy
  end

  it "is not inside a world" do
    world = double("world")
    allow(world).to receive(:dimension_x).and_return(1)
    allow(world).to receive(:dimension_y).and_return(1)

    expect(@position.inside?(world)).to be_falsy
  end
end

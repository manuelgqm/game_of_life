class World
  attr_reader :dimension_x, :dimension_y

  def initialize(dimension_x, dimension_y)
    @dimension_x = dimension_x
    @dimension_y = dimension_y
  end
end

class Generation
  attr_reader :cellules

  def initialize(cellules=[])
    @cellules = cellules
  end

  def add_cellule(cellule)
    @cellules << cellule
  end
end

class Cellule
  attr_reader :position

  def initialize(position)
    @position = position
  end

end

class Position
  attr_reader :coordinates

  def initialize(coordinate_x, coordinate_y)
    @coordinates = [coordinate_x, coordinate_x]
  end

  def inside?(world)
    coordinate_x = @coordinates[0]
    coordinate_y = @coordinates[1]
    coordinate_x.between?(1, world.dimension_x) && coordinate_y.between?(1, world.dimension_y)
  end

end

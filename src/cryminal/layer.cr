class Cryminal::Layer
  @data : Slice(Tile)

  getter width : UInt32
  getter height : UInt32

  def initialize(@width, @height)
    @data = Slice(Tile).new(@width * @height, Tile.new)
  end
end
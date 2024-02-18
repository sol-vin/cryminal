struct Cryminal::Tile
  property glyph  : UInt16 = 0x00_u16
  property color : UInt32 = 0x00_00_00_u32
  property rotation = Rotation::North
  property flip = Flip::None
end
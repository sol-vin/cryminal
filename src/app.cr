require "raylib-cr"
require "./cryminal"

alias R = Raylib

module Cryminal::App
  class_property camera : R::Camera2D = R::Camera2D.new
  @@camera.zoom = Screen::Zoom::DEFAULT
  @@camera.offset.x = Screen::WIDTH/2
  @@camera.offset.y = Screen::HEIGHT/2

  @@picture_render_texture = R::RenderTexture2D.new
  @@menu_render_texture = R::RenderTexture2D.new

  def self.run
  R.init_window(Screen::WIDTH, Screen::HEIGHT, "Cryminal")
    R.set_target_fps(60)

    until R.close_window?
      # Update Logic
      R.begin_drawing
      R.clear_background(R::BLACK)
      R.begin_texture_mode(@@menu_render_texture)
      # Draw menu
      R.end_texture_mode(@@menu_render_texture)
      R.begin_texture_mode(@@picture_render_texture)

      R.begin_mode_2d @@camera 
      # Draw picture
      R.end_mode_2d
      R.end_texture_mode(@@picture_render_texture)
      R.end_drawing
    end

    R.close_window
  end
end
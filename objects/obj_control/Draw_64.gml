/// Draw points text
draw_set_font(global.fnt_game)
draw_set_halign(fa_center)

draw_set_colour(c_black)
draw_text(display_get_gui_width() / 2 - 1, 8 - 1, global.points)
draw_text(display_get_gui_width() / 2 + 2, 8 + 2, global.points)
draw_set_colour(c_white)
draw_text(display_get_gui_width() / 2, 8, global.points)

draw_set_font(-1)
draw_set_halign(-1)

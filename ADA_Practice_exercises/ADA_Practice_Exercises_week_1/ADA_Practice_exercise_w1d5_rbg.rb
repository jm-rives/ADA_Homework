# SPEC https://github.com/Ada-C6/rainbows
# [x] TODO 1. jm_rives create a rainbow of colors as an array of hashes, where each hash contains the name of the color (key) and the RGB values (value).

colors = [
  {red: {r: 255, g: 0, b: 0}},
  {orange: {r: 255, g: 127, b: 0}},
  {yellow: {r: 255, g: 255, b: 0}},
  {green: {r: 0, g: 255, b: 0}},
  {blue: {r: 0, g: 0, b: 255}},
  {indigo: {r: 75, g: 0, b: 130}},
  {violet: {r: 143, g: 0, b: 255}}
]

color_lookup = {
  [255,0,0] => "red",
  [255,125,0] => "orange",
  [255,255,0] => "yellow",
  [125,255,0] => "spring green",
  [255,255,0] => "green",
  [0,255,125] => "turquoise",
  [0,255,255] => "cyan",
  [0,125,255] => "ocean",
  [0,0,255] => "blue",
  [125,0,255] => "violet",
  [255,0,255] => "magenta",
  [255,0,125] => "raspberry"
}
# [x] TODO 2. Use your rainbow array to print out each color name in sequence.

colors.each do |color|
	color.each do |k, v|
		puts k # repl.it has a secret variable named j that will return when run
  	end
end
# 1st attempt
# colors.each do |k|
#   puts |k|
# end

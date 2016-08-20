# bug_base = """

#  ---- \\----//
# /    \/ @ @ \\n
# L----L\__0__/

# """
# bug_butt = """
#  ----  
# /    \\
# l    l

# """
# bug = bug_base
# puts bug_butt + bug_base

# starts at initialization of class
def build_base_bug
  puts bug_line_1 = " ---- \\----//"
  puts bug_line_2 = "/    \/ @ @ \\"
  puts bug_line_3 = "l====L\__0__/"
end

# puts bug_line_1
# puts bug_line_2
# puts bug_line_3

# puts build_base_bug # print debuggin' # werks
# added after each won round

# TODO jm-rives l/u and utilize ruby raw strings

# one to be added after each successful round
# def build_bug_segment
#   puts extend_bug_line_1 = " ---- "
#   puts extend_bug_line_2 = "/    \\"
#   puts extend_bug_line_3 = "l====l"
# end

def build_bug_segment(win)
  win.times do
  puts extend_bug_line_1 = " ---- "
  puts extend_bug_line_2 = "/    \\"
  puts extend_bug_line_3 = "l====l"
  end
end

build_base_bug(3)
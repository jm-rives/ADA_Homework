# bug_base = "

#  ---- \\----//
# /    \/ @ @ \\n
# L----L\__0__/

# "
# bug_butt = "
#  ----  
# /    \\
# l    l

# "
# bug = bug_base
# puts bug_butt + bug_base

# starts at initialization of class
def basic_bug
  puts bug_line_1 = " ----\\----/"
  puts bug_line_2 = "/    \/ @ @ \\"
  puts bug_line_3 = "l====L\__v__/"
end

def dead_bug
  puts bug_line_1 = " ----\\----/"
  puts bug_line_2 = "/    \/ x x \\"
  puts bug_line_3 = "l====L\__^__/"
end

# puts bug_line_1
# puts bug_line_2
# puts bug_line_3

# puts build_base_bug # print debuggin" # werks
# added after each won round

# TODO jm-rives l/u and utilize ruby raw strings

# one to be added after each correct guess


def bug_segment(win, default=0)
  reward = win - default
  reward.times do
  puts extend_bug_line_1 = " ---- "
  puts extend_bug_line_2 = "/    \\"
  puts extend_bug_line_3 = "l====l"
  end
end

#begin testing 
# dead_bug
# bug_segment(2)

# basic_bug
# bug_segment(2)


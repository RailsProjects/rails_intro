line_width = 60

toc = ['Chapter 1: Getting Started', 'page  1', 'Chapter 2: Numbers', 'page  9', 'Chapter 3: Letters', 'page 13']

puts ("Table of Contents\n".center(line_width))
puts (toc[0].ljust(line_width/2) + toc[1].rjust(line_width/2))
puts (toc[2].ljust(line_width/2) + toc[3].rjust(line_width/2))
puts (toc[4].ljust(line_width/2) + toc[5].rjust(line_width/2))


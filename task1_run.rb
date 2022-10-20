require_relative 'task1.rb'

print 'Enter a b c values (space-separated):'
str = gets
exit if str.nil? || str.empty?
str.chomp!
a, b, c = str.split(' ')
a, b, c = a.to_f, b.to_f, c.to_f

print 'Enter x_begin x_end d_x values (space-separated):'
str = gets
exit if str.nil? || str.empty?
str.chomp!
x_begin, x_end, d_x = str.split(' ')
x_begin, x_end, d_x = x_begin.to_f, x_end.to_f, d_x.to_f

x = x_begin
while x <= x_end
  print x, "  =>  ", func_f(x, a, b, c), "\n"
  x += d_x
end

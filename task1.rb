def func_f(x, a, b, c)
  if c<0 && a!=0
    f = -a * x**2
  elsif c>0 && a==0
    f = (a-x) / (c*x)
  else
    f = x / c
  end

  a_c, b_c, c_c = a.floor, b.floor, c.floor
  if (((a_c+b_c) % 2) & ~(a_c|c_c)) != 0
    return f
  end
  f.floor
end

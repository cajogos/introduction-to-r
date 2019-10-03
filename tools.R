funA = function(v)
{
  s <- c()
  for (i in 1:length(v))
  {
    a <- i
    if (i < 5 || i > 90)
    {
      a <- i * 10
    }
    else
    {
      a <- i * 0.1
    }
    s[i] = a
  }
  return(s)
}

h = seq(from=1, to=100)
s = funA(h)

s

z = []
s, v, res = z[0], z[1], ""
for i in range(2, len(z), 2): res += " "*z[i+1] if z[i] == 0 else "*"*z[i+1]
for i in range(v): print(res[i*s:(i+1)*s])

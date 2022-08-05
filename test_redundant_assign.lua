 a = a
-- a = 1
-- a = a
-- b = {c = 1, a = a}
-- b.c = b.c
-- b.c, d = b.c, 1

for i = 1, 100 do
   -- Break statement is outside the `if` block,
   -- so that the loop always stops after the first iteration.
   if i == 1 then i = 2 end break
end

for i = #t, 1 do
   print(t[i])
end

-- This loop is okay.
for i = #t, 1, -1 do
   print(t[i])
end

-- Whitespace example.
print("Hello")                 

print("World ")
a = "234                "


local foo = expr1()
local bar

if condition() then
   foo = expr2()
   bar = expr3()
else
   foo = expr4()
   print(bar)
end

local function f(x)
   x = x or "default" -- bad
end

local function f(x)
   x = x or "default" -- good
end


local a, b, c = f(), g()

return c
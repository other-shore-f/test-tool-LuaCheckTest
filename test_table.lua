a = {b=1,[1] = 2, {}, 4, 5, "abc", function() end}
b = {}
b[1] = {b=1,[1] = 2, {}, 4, 5, "abc", function() end}
c = {{d=1,2}}
d = {123, b = 456, {789}, function() a = {1} end}
function foo()
end

foo {123, b = 456, {789}, function() a = {1} end}
foo {123, b = 456, c={789}, function() a = {1} end}

foo {123, b = 456, c={789}, function() a = {1, {123}, ddd=function() eee={2} end} end}

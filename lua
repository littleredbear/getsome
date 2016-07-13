
在使用非直接递归时，要先声明再定义，不然Lua会查找是否有这样的全局函数。导致编译无法通过
local f = function (n)
	//...
end

local f
f = function(n)
	//...
end

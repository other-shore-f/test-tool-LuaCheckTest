
-- 本文件case对应配置的特殊字符： @$! 
-- 主要检查是否符号化成功

--1. 函数名识别case
function @(k)
	-- body
end

function @$!(k)
	-- body
end

function _a12@$!(m)
	-- body	
end

--2. 参数调用case
function testFun1()
	--2.1 单个特殊字符变量
	local $ = 5
	--2.2 单个特殊字符变量被调用
    @($)  
    --2.3 混合字符类型变量
    local _$@&100b$ = 10
    --2.4 混合字符类型变量作为调用
    @$!(_$@100b$!)
    --2.5 混合字符类型变量,含数字
    local @100$2 = 20
    --2.6 fail case: 
    local 5a = 30 -- 预期识别不了，变量名错了
    local _a*b&6 -- 预期会被切割开，识别不了
    @$!(_a*b&6) -- 预期会被切割开，识别不了，调用参数的变量名错了

    print("wqqwehuafhudhfiahdihfoiahdfihahfdioahfhiodhfiaodfiaxnczhfohishaihfioahifohaijfkxniohahioiwehtihewoithwiejfisfdnsfnosdfoisifsdjif")
    --2.7 连续重复特殊字符变量
    local $data!!$$@ = {"a", "b"}
    --2.8 连续重复特殊字符变量，作为参数调用
    @$!($data$$$@)
    _a12@$!($data$$@[0])
    
    --2.9 涉及到 && (&不包含在特殊字符中)
    local _a@@@666
    local _a$$$555
    local _a5 = _a@@@666 && _a$$$555

    --2.10 成员调用
    local !!bns@@
    local test_ret = !!bns@@.&!kmn!& 
    local test_ret_1 = !!bns@@.&!kmn!&@@()

end

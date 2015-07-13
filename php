

php允许使用短标记<?和?>，但不鼓励使用。只有通过激活php.ini中的short_open_tag配置指令或者在编译php时使用了配置选项--enable-short-tags时才能使用短标记。

如果文件内容是纯php代码，最好在文件末尾删除php结束标记。可以避免在php结束标记之后万一意外加入了空格或者换行符，会导致php开始输出这些空白，而脚本中此时并无输出的意图。

类型：
标量：
boolean, integer, float, string
复合：
array, object
特殊：
resource, NULL
伪类型：
mixed, number, callback

$this 是一个特殊变量，它不能被赋值。
使用引用赋值，简单地将一个&符号加到要赋值的变量前。
$foo = 'bob;
$bar = &$foo;
$bar = "My name is $bar";	//$foo 的值也被修改

php中全局变量在函数中使用时必须声明为global。
超全局变量。
可变变量。

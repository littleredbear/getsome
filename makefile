
如果工程没有编译过，那么所有c文件都要编译并链接。
如果某几个c文件被修改，只编译被修改的c文件，并链接目标程序。
如果头文件被改变，编译引用了这几个头文件的c文件，并链接目标程序。

命令必须以tab开头
变量

makefile里主要包含。
显式规则，显式规则说明了，如何生成一个或多个目标文件，由书写着明显指出，要生成的文件，文件的依赖文件，生成的命令。

隐晦规则，由make自动推导得出。

变量定义，makefile中我们要定义一系列的变量，makefile被执行时，其中的变量都会被扩展到相应的引用位置。

文件指示，其包括了三个部分，一个是在一个makefile中引用另一个makefile，另一个是指根据某些情况指定makefile中的有效部分，还有就是定义一个多行的命令。

注释。makefile中只有行注释，用“＃”字符。

cd subdir && $(MAKE) 等价于 $(MAKE) -C subdir

条件表达式:
ifeq(a,b)...else...endif
ifneq(a,b)...else...endif
ifdef a...else...endif
ifndef a...else...endif

函数：
字符串操作函数：
1.字符串处理函数：$(subst <from>,<to>,<text>) 把字符串<text>中的<from>字符串替换成<to>. 返回被替换后的字符串
2.模式字符串替换：$(patsubst <pattern>,<replacement>,<text>) 查找字符串<text>中的单词是否符合模式<pattern>，如果匹配则以<replacement>替换，返回替换后字符串
3.去空格函数：$(strip <string>) 去掉<string>开头和结尾的空字符。返回去掉空字符的字符串
4.查找字符串函数：$(findstring <find>,<in>) 在字串<in>中查找<find>字串 如果找到则返回<find>，否则返回空字串
5.过滤函数；$(filter <pattern...>,<text>) 以<pattern>模式过滤<text>字符串中的单词，保留符合模式<pattern>的单词。 返回符合模式<pattern>的字串
6.反过滤函数 $(filter-out <pattern...>,<text>) 以<pattern>模式过滤<text>字串中的单词。 返回不符合模式<pattern>的字串
7.排序函数 $(sort <list>) 给字符串<list>中的单词排序（升序）返回排序后字串，会去掉相同单词
8.取单词函数 $(word <n>,<text>) 取字符串<text>中第<n>哥单词。（从1开始）
9.取单词串函数 $(wordlist <s>,<e>,<text>) 从字符串<text>中取从<s>到<e>的单词串
10.单词个数统计函数 $(words <text>) 统计<text>中单词的个数
11.首单词函数 $(firstword <text>) 取字符串<text>中的第一个单词

文件名操作函数：
1.取目录函数 $(dir <names...>) 从文件名序列<names>中取出目录部分
2.取文件函数 $(notdir <names...>) 从文件名序列<names>中取出非目录部分
3.取后缀函数 $(suffix <names...>) 从文件名序列<names>中取出各个文件名的后缀
4.取前缀函数 $(basename <names...>) 从文件名序列<names>中取出前缀部分
5.加后缀函数 $(addsuffix <suffix>,<names...>) 把<suffix>加到<names>中每个单词后面
6.加前缀函数 $(addprefix <prefix>,<names...>)
7.连接函数 $(join <list1>,<list2>) $(join aaa bb,111 222 333) 返回aaa111 bbb222 333

循环操作函数：
$(foreach <var>,<list>,<text>)	
names:=a b c d
files:=$(foreach n,$(names),$(n).o) $(files)的值是"a.o b.o c.o d.o"

shell函数：
shell函数把执行操作系统命令后的输出作为函数返回。
contents:=$(shell cat foo)







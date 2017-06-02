###SHELL DEMO

本仓库是学习shell的入门级demo集合，供个人备份和参考

Shell 函数的定义格式如下：
function_name () {
    list of commands
    [ return value ]
}

函数返回值，可以显式增加return语句；如果不加，会将最后一条命令运行结果作为返回值。

Shell 函数返回值只能是整数，一般用来表示函数执行成功与否，0表示成功，其他值表示失败。如果 return 其他数据，比如一个字符串，往往会得到错误提示：“numeric argument required”。

如果一定要让函数返回字符串，那么可以先定义一个变量，用来接收函数的计算结果，脚本在需要的时候访问这个变量来获得函数返回值。

像删除变量一样，删除函数也可以使用 unset 命令，不过要加上 .f 选项，如下所示：
纯文本复制
$unset .f function_name
选择一个有效的json，Ctrl + shift + P然后按Convert from Selection或搜索Convert from Selection to Code Generation supported classes。提供要保存的基类名称和位置。

复制有效的json 。按Ctrl +shift + P并搜索Convert from Clipboard或Convert from Clipboard to Code Generation supported classes。提供要保存的基类名称和位置。

按下Ctrl + P并搜索，Add Code Generation Libraries to pubspec.yaml然后按Enter。

使用捷径

从剪贴板转换（Shift + Ctrl + Alt + V）

从选择转换（Shift + Ctrl + Alt + S)

从剪贴板转换为代码生成支持的类（Shift + Ctrl + Alt + G）

从选择转换为代码生成支持的类（Shift + Ctrl + Alt + H）


1、Color(int value)
Color(0xFF3CAAFA),value接收的是一个十六进制（0x开头),FF表示的是十六进制透明度(00-FF),3CAAFA是十六进制色值。

2、Color.fromRGBO(int r, int g, int b, double opacity)
Color.fromRGBO(60, 170, 250, 1)，r、g、b分别表示red、green、blue，常规的红绿蓝三色，取值范围为0-255，opacity表示透明度，取值0.0-1.0。

3、Color.fromARGB(int a, int r, int g, int b)
Color.fromARGB(255, 60, 170, 250),a表示透明度，取值0-255，rgb同上一样。

4、Colors._()
Colors类定义了很多颜色，可以直接使用，例如 Colors.blue,其实就是第一种Color(int value)的封装


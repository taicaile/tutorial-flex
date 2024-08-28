# Flex 入门介绍

## Ubuntu 安装

```bash
sudo apt install flex
flex 2.6.4
```

## 在线文档

Online documentation,

<https://westes.github.io/flex/manual/index.html#SEC_Contents>

## Flex 输入文件格式

The flex input file consists of three sections, separated by a line containing only ‘%%’.

```flex
definitions
%%
rules
%%
user code
```

### The format of definitions section

<https://westes.github.io/flex/manual/Definitions-Section.html#Definitions-Section>

```bash
name definition
# for example,
DIGIT    [0-9]
ID       [a-z][a-z0-9]*
```

Any indented text or text enclosed in ‘%{’ and ‘%}’ is also copied verbatim to the output (with the %{ and %} symbols removed). The %{ and %} symbols must appear unindented on lines by themselves.

```flex
    int num_lines = 0, num_chars = 0; /*note this line is intended*/
%%
\n      ++num_lines; ++num_chars;
.       ++num_chars;
%%
```

Or

```flex
%{
int num_lines = 0, num_chars = 0;
%}
%%
\n      ++num_lines; ++num_chars;
.       ++num_chars;
%%
```

### The format of rules section

```bash
pattern   action
```

## 运行程序

生成可执行文件，默认输入是控制台，即从 stdin 读取输入，然后一直执行。 按下 `ctrl+c`可中断程序，

```bash
# convert to C
flex first.flex
# compile
gcc lex.yy.c -o first
# run the program
./first
```

如果想把文件作为可执行文件的输入，可以

```bash
./first < sample.in
```

也可以在其他的文件，例如 `main.c` 调用 `yylex` 方法（在生成的`yy.lex.c`文件中）,

```bash

```

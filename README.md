vimrc_for_android_project
=========================

vimrc for android project , including revision compare, new color scheme based on desert ...corresponding vim version:7.3/7.4

一个可以实现soureinsight常用功能的vimrc, 包括代码跳转、搜索（正则表达式）、文件查找、简单的版本比较（支持svn git）、常用的按键映射、vim状态保存等等


功能键说明:

Function key:


1 F2:切换上一个编辑的文件(buffer)

    switch between last file(buffer)

2 F3:保存当前的编辑状态，以便下次恢复(gvim -S)

    save current Session of Vim, you can restore this with "gvim -S"

3 F4:生成ctags文件并做设置

    create tag file && do "set tags"

5 F5:生成cscope文件并做设置

    create cscope database files && init cscope

6 F6:调用bcompare比较当前文件与版本库中文件(svn)

    compare current workspace file with the lastest verison in repository(svn only)

  C-F6:针对git版本库

    use <C-F6> if git repository

7 F7:调用bcompare比较当前文件与版本库中上一个版本文件(svn)

    compare current workspace file with previous version in repo

  C-F7:针对git版本库

    use <C-F7> if git repository

8 F8:调用bcompare比较版本库中当前版本与上一个版本(svn)

    compare lastest version with previous version in repo

  C-F8:针对git版本库

    use <C-F8> if git repository

9 F9:打开Taglist侧边栏

    open Taglist window

10 F10/F11: 打开/关闭quickfix窗口

    open/close quickfix window


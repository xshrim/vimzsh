# ranger命令

`ranger`主要用来在终端浏览文件的, 使用起来也比较优于平时常用的`cd`命令.

## 安装

```bash
sudo apt-get install ranger
```

## 配置

启动之后 `ranger` 会创建一个目录 `~/.config/ranger/`. 可以使用以下命令复制默认配置文件到这个目录:

```bash
ranger --copy-config=all
```

- `rc.conf` - 选项设置和快捷键
- `commands.py` - 能通过 : 执行的命令
- `rifle.conf` - 指定不同类型的文件的默认打开程序

## 使用

直接在终端输入`ranger`即可进入ranger模式

## 快捷键

在浏览时常用的快捷键 :

```bash
H   后退
L   前进
gg  跳到顶端
G   跳到底端
gh  go home
gn  新建标签
f   查找
/   搜素
g   快速进入目录
```

这些快捷键都是与`vim`的操作一样 :

```bash
yy      复制
dd      剪切
pp      粘贴
delete  删除
cw      重命名
A       在当前名称基础上重命名
I       类似A, 但是光标会跳到起始位置
Ctrl-f  向下翻页
Ctrl-b  向上翻页
```

书签 :

```bash
m       新建书签
`       打开书签
um      删除书签
```

标签:

```bash
gn / C-n        新建标签
TAB / S-TAB     切换标签
A-Right, A-Left 切换标签
gc / C-w        关闭标签
```

文件排序 :

```bash
on/ob   根据文件名进行排序(natural/basename)
oc      根据改变时间进行排序 (Change Time 文件的权限组别和文件自身数据被修改的时间)
os      根据文件大小进行排序(Size)
ot      根据后缀名进行排序 (Type)

oa      根据访问时间进行排序 (Access Time 访问文件自身数据的时间)
om      根据修改进行排序 (Modify time 文件自身内容被修改的时间)
```

其他 :

```bash
zh/退回键    显示隐藏文件
zp      	打开/关闭文件预览功能
zP      	打开目录预览功能
```
当然`ranger`也是直接支持终端的基本命令的, 比如可以直接使用`cd`.

其次也支持其他方便操作的快捷方式. 如 :` g`可以快速的通过按键进入指定的目录中. 还有`d`等操作

最后, `ranger`还是直接支持鼠标点击.

## 插件
`ranger`也有很多预览时用的插件 :

```bash
sudo apt-get install caca-utils # img2txt 图片
sudo apt-get install highlight  # 代码高亮
sudo apt-get install atool　    # 存档预览
sudo apt-get install w3m        # html页面预览
sudo apt-get install mediainfo  # 多媒体文件预览
```

当然还有其他文件格式的预览

```bash
sudo apt-get install catdoc     # doc预览
sudo apt-get install docx2txt   # docx预览
sudo apt-get install xlsx2csv   # xlsx预览
```

具体可参见[github官方文档](https://github.com/ranger/ranger/wiki)


## 命令

`ranger`还支持自定义命令, 自定义命令在`~/.config/ranger/commands.py`文件中定义, 以`:<命令>`的方式使用.

如将以下代码复制到`~/.config/ranger/commands.py`文件中(没有则新建), 在`ranger`模式下就可以通过`:code`用vscode打开当前目录.

```bash
from ranger.api.commands import Command

class code(Command):
    """
    :code
    Opens current directory in VSCode
    """

    def execute(self):
        dirname = self.fm.thisdir.path
        codecmd = ["code", dirname]
        self.fm.execute_command(codecmd)
```
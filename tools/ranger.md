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
sudo apt-get install ueberzug   # 图片预览
sudo apt-get install mediainfo  # 多媒体文件预览
sudo apt-get install ffmpegthumbnailer   # video预览
```

当然还有其他文件格式的预览

```bash
sudo apt-get install catdoc     # doc预览
sudo apt-get install docx2txt   # docx预览
sudo apt-get install xlsx2csv   # xlsx预览
```

此外ranger还支持图标显示:

```bash
git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons
echo "default_linemode devicons" >> ~/.config/ranger/rc.conf
```

具体可参见[github官方文档](https://github.com/ranger/ranger/wiki)


## 命令

`ranger`还支持自定义命令, 自定义命令在`~/.config/ranger/commands.py`文件中定义, 以`:<命令>`的方式使用.

如将以下代码复制到`~/.config/ranger/commands.py`文件中(没有则新建), 在`ranger`模式下就可以通过`:code`用vscode打开当前目录.

```bash
import os
from ranger.core.loader import CommandLoader
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

class mkcd(Command):
    """
    :mkcd <dirname>
    Creates a directory with the name <dirname> and enters it.
    """
    def execute(self):
        from os.path import join, expanduser, lexists
        from os import makedirs
        import re

        dirname = join(self.fm.thisdir.path, expanduser(self.rest(1)))
        if not lexists(dirname):
            makedirs(dirname)

            match = re.search('^/|^~[^/]*/', dirname)
            if match:
                self.fm.cd(match.group(0))
                dirname = dirname[match.end(0):]

            for m in re.finditer('[^/]+', dirname):
                s = m.group(0)
                if s == '..' or (s.startswith('.')
                                 and not self.fm.settings['show_hidden']):
                    self.fm.cd(s)
                else:
                    ## We force ranger to load content before calling `scout`.
                    self.fm.thisdir.load_content(schedule=False)
                    self.fm.execute_console('scout -ae ^{}$'.format(s))
        else:
            self.fm.notify("file/directory exists!", bad=True)


class fzf(Command):
    """
    :fzf
    Find a file using fzf.
    With a prefix argument select only directories.
    See: https://github.com/junegunn/fzf
    """
    def execute(self):
        import subprocess
        import os.path
        if self.quantifier:
            # match only directories
            command = "find -L . \( -path '*/\.*' -o -fstype 'dev' -o -fstype 'proc' \) -prune \
            -o -type d -print 2> /dev/null | sed 1d | cut -b3- | fzf +m"

        else:
            # match files and directories
            command = "find -L . \( -path '*/\.*' -o -fstype 'dev' -o -fstype 'proc' \) -prune \
            -o -print 2> /dev/null | sed 1d | cut -b3- | fzf +m"

        fzf = self.fm.execute_command(command,
                                      universal_newlines=True,
                                      stdout=subprocess.PIPE)
        stdout, stderr = fzf.communicate()
        if fzf.returncode == 0:
            fzf_file = os.path.abspath(stdout.rstrip('\n'))
            if os.path.isdir(fzf_file):
                self.fm.cd(fzf_file)
            else:
                self.fm.select_file(fzf_file)
                
class x(Command):
    def execute(self):
        """ Compress marked files to current directory """
        cwd = self.fm.thisdir
        marked_files = cwd.get_selection()

        if not marked_files:
            return

        def refresh(_):
            cwd = self.fm.get_directory(original_path)
            cwd.load_content()

        original_path = cwd.path
        parts = self.line.split()
        au_flags = parts[1:]

        descr = "compressing files in: " + os.path.basename(parts[1])
        obj = CommandLoader(args=['apack'] + au_flags + \
                [os.path.relpath(f.path, cwd.path) for f in marked_files], descr=descr)

        obj.signal_bind('after', refresh)
        self.fm.loader.add(obj)

    def tab(self):
        """ Complete with current folder name """

        extension = ['.zip', '.tar.gz', '.rar', '.7z']
        return ['compress ' + os.path.basename(self.fm.thisdir.path) + ext for ext in extension]
        
class ex(Command):
    """:extract <paths>
    Extract archives
    """
    def execute(self):
        import os
        fail=[]
        for i in self.fm.thistab.get_selection():
            ExtractProg='7z x'
            if i.path.endswith('.zip'):
                # zip encoding issue
                ExtractProg='unzip -O gbk'
            elif i.path.endswith('.tar.gz'):
                ExtractProg='tar xvf'
            elif i.path.endswith('.tar.xz'):
                ExtractProg='tar xJvf'
            elif i.path.endswith('.tar.bz2'):
                ExtractProg='tar xjvf'
            if os.system('{0} "{1}"'.format(ExtractProg, i.path)):
                fail.append(i.path)
        if len(fail) > 0:
            self.fm.notify("Fail to extract: {0}".format(' '.join(fail)), duration=10, bad=True)
        self.fm.redraw_window()
```
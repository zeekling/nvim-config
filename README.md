
## 安装方法

```bash
git clone https://git.zeekling.cn/linux/nvim-config.git ~/.config/nvim
# 或者
git clone ssh://git@git.zeekling.cn:222/linux/nvim-config.git ~/.config/nvim
```
打开nvim就可以自动安装插件了。

## 快捷键

### Buffer 相关

| 快捷键 | 用途 | 分类 |
|---- |---- |----|
| \<space>bn |  跳转到上一个buffer | Buffer |
| \<space>bp |  跳转到下一个buffer | Buffer |
| \<space>bd |  删除当前Buffer | Buffer |
| \<space>bj |  跳转到指定的Buffer | Buffer |

### 代码格式化

| 快捷键 | 用途 | 分类 |
|---- |---- |----|
| \<space>cf |  代码格式化 | Code |
| \<space>cr |  重命名 | Code |
| \<space>cgd |  跳转到函数定义的地方 | Code |
| \<space>cgf |  查找函数使用的位置 | Code |
| \<space>cgi |  跳转到代码实现的位置 | Code |

### 编程语言相关

| 快捷键 | 用途 | 分类 |
|---- |---- |----|
| \<space>gb | 显示git blame 信息 | Git |
| \<space>jm | 运行当前类的主函数 | Java |
| \<space>jp | 运行Java Profile | Java |
| \<space>jtc | 运行当前Test类 | Java |
| \<space>jtc | 运行当前Test类的当前函数 | Java |
| \<space>jtv | 查看最新的报告 | Java |
| \<space>jtdc | 以Debug运行当前Test类 | Java |
| \<space>jtdc | 以Debug运行当前Test类的当前函数 | Java |

### 其他

| 快捷键 | 用途 | 分类 |
|---- |---- |----|
| \<space>dt | 在左边显示或者关闭目录数 | Dir |
| \<space>mkp | 预览Markdown | Markdown |
| \<space>cf | 格式化代码 | Format |
| \<space>ff | 在当前目录下面查找文件。支持模糊匹配 | Find |
| \<space>fg | 在当前目录下的文件查找字符串 | Find |
| \<space>fb | 在打开的buffer中查找字符串 | Find |
| \<space>ls | 显示Lazy概览页面 | Lazy |

## 帮助

快捷键记不住的时候可以按\<space>弹出帮助的分类，按照分类查找快捷键。



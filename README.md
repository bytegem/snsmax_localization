# SNS Max 本地化仓库

这个仓库意在将 SNS Max 官方内置语言进行国际化使用。

> 目前已有问题：之前 SNS Max 使用内置翻译字符，这个仓库是新建，应用内容许多位置使用固定字符和内建翻译字符。

## 如何参与翻译

参与翻译可以操作的资源未 [localization-arb](localization-arb) 目录、[Issues](issues)以及 [Pull requests](pulls)。

### 直接翻译文件

[localization-arb/intl_messages.arb](localization-arb/intl_messages.arb) 文件是官方整理好的唯一有效且所有字符都在使用
的语言文件，源文件语言统一为**英语（美国）**且使用了 `en` 标记，如果你想翻译为简体中文。则在 `localization-arb` 下新建一个 `intl_zh_CN.arb`
文件。

文件内容复制 `intl_messages.arb` 文件的所有内容，文件内需要修改的信息为：

```json
"@@locale": "en",
```

上述两个字段，将 `@@locale` 的值修改为目标语言语言代码，如例则将值修改为 `zh_CN` 即可，内容为：

```json
{
  "@@locale": "zh_CN",
  "@@last_modified": "2020-04-13T12:30:01.867298",
  "cancel": "取消",
  "@cancel": {
    "type": "text",
    "placeholders": {}
  },
}
```

### 使用 Issues 翻译

你在提交翻译需求的时候请先搜索你要翻译的字符是否以及存在 Issues 或者 Pull requests 了，提交 Issues 范围需要准确描述应用内未翻译的页面位置，以及需要翻译和添加的语言应该是声明

### 使用 Pull requests 翻译

如同使用 Issues 翻译一样， PR 则是你直接参与 arb 文件的编辑，新增字符只需要增加 `intl_messages.arb` 文件内容即可。如果是翻译字符以及新增翻译，则源文件和目标文件都必须添加。

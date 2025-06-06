# codex
*  set `$env.DEEPSEEK_API_KEY`
*  `codex -m deepseek-chat -p deepseek`

# mdbook
## 初始化一个mdbook
* `mdbook init doc`
## 当前工作目录
* `doc/`
## 在浏览器打开预览
* `cd doc`
* `mdbook serve --open`
## 内容
* `src/SUMMARY.md`添加目录和文件
* 重新`mdbook serve --open`会在对应src目录下创建对应的目录文件
## gitpage
* 在github对应项目->Settings->Pages->Build and deployment->Github Actions
* 然后修改yml里的工作目录
  ``` 
    ...
    working-directory: ./doc
    ...
    path: ./doc/book
    ...
  ```
* 重新更新上传等待Actions完成即可

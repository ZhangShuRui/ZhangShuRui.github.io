#!/bin/bash

# 获取当前工作目录
current_dir=$(pwd)

# 获取当前文件夹名称
folder_name=$(basename "$current_dir")

# 遍历当前目录下的所有文件
for file in "$current_dir"/*; do
  # 如果是文件
  if [ -f "$file" ]; then
    # 获取文件名和文件名无后缀
    filename=$(basename "$file")
    filename_no_extension="${filename%.*}"

    # 排除以 `_` 开头和 README.md 文件
    if [[ "$filename" != "_*" && "$filename" != "README.md" ]]; then
      # 编码文件名和后缀
      encoded_filename_no_extension=$(python -c "import urllib.parse; print(urllib.parse.quote('$filename_no_extension'))")
      encoded_filename=$(python -c "import urllib.parse; print(urllib.parse.quote('$filename'))")

      # 输出格式化后的文件名
      echo "- [$filename_no_extension](/coding/$folder_name/$encoded_filename_no_extension.$encoded_filename)"
    fi
  fi
done

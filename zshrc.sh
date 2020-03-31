
# sorted `du -sh` :按照大小排序的 `du -sh` 替代命令
alias du="du -sk * | sort -nr | awk -F'\t' '{h=\"kMGTP\";c=1;while(\$1>1024){\$1/=1024;c++;}printf\"%.\"(\$1<10?1:0)\"f%s\t\t%-2s\n\",\$1,substr(h,c,1),\$2}'"
alias du="du -sk * | sort -nr | awk -F'\t' '{h=\"kMGTP\";c=1;while(\$1>1024){\$1/=1024;c++;}printf\"%.\"(\$1<10?1:0)\"f%s\t\t%-2s\n\",\$1,substr(h,c,1),\$2}'"

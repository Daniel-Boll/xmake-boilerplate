# My xmake boilerplate

This is a boilerplate for xmake projects.

## Usage

```bash
git clone https://github.com/Daniel-Boll/xmake-boilerplate.git
cd xmake-boilerplate
xmake
```

## Utility scripts

### `compile.sh`

This script compiles the project and runs it.

```bash
compile () {
  xmake && xmake project -k compile_commands
  if [ "$1" = "r" ] || [ "$1" = "run" ]
  then
    xmake run $2
  fi
}
```

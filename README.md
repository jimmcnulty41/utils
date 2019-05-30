# Utilities

Setup **should** be as easy as 

```bash
./init.sh # or mac_init.sh
```

This will create a file `.jim_utils_dir`
In $HOME that points to this root

# Env Vars

The .zshrc file should:
1. create the `$JIM_UTILS` env var, pointing to this root dir
2. add $JIM_UTILS/bin to $PATH

# sources

.zshrc is base, sources
* .bashrc
* .named_history

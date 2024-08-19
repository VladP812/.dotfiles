Windows version
===

- Treesitter requires Zig compiler. It **must** be installed. The easiest way 
is to install it via scoop.
- Zig compiler also must be selected as the only available for the 
*TreeSitter*. It can be done by adding following lines in the beginning 
of **after/plugin/treesitter.lua** :

``` lua
require'nvim-treesitter.install'.compilers = {'zig'}
```
- Packer must also be installed manually, following instructions 
from it's repository - github.com/wbthomason/packer.nvim


---
Linux Version
===

- In order for packer to work it must be properly set up according to the manual 
from it's repository - github.com/wbthomason/packer.nvim
- In most cases, simply executing the following bash command is enough.
``` bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```
- It installs packer's runtime (it is most likely to be missing on a fresh setup) 
and all further packer's setting are already located in the **lua/vlad/packer.lua**
- However, it is still recommended to check packer's repository for updates.

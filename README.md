# RM TRASH BIN
Script for add trash bin functionality to rm command.

### Install (For zsh )

```
  $ git clone https://github.com/matiri132/rm_trash_bin.sh
  $ chmod +x INSTALL.sh 
  $ ./INSTALL.sh
  $ source ./~zshrc
```

Note: if you're not using zsh set the SOURCE variable in INSTALL.sh to your profile script.

### Uninstall

To uninstall the script delete the added lines in the .zshrc file. And remove the /usr/local/bin/rm_trash_bin file.

### Use

- `rm` will ask you if you want to delete the file, and if you agree the file will be deleted (stored in /tmp/trash).
- `rm -f` will NOT ask to delete (store in /tmp/trash) the file.
- `rm -F` works as classic `rm -f` without using the trash bin.


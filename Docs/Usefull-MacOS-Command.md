# MacOS command line

https://explainshell.com/

## Common commands

```bash
ls (list files by default)
ls -1 (list files, one column)
ls -all (list files, all information)

mkdir directory (create directory)
rm -R directory (remove directory)

touch file.txt (create file)
rm file.txt (remove file)
cat file.txt (read content)

cp file.txt file2txt (copy)
mv file.txt file2txt (move)

sudo !! (repeat last command like root)

clear (clear screen)
CTRL + L (clear screen)

pwd (actual route)
```

## Advanced commands

```bash
history | grep something (search in history)

top (activity monitor)

locate finder (search)
locate updatedb

whereis dash (search bin)
```

## Kill port used by SuiteCommerce

```bash
sudo lsof -ti :7777 | xargs kill
```

## Sudo commands with TouchID

This needs to change some of the system files and requires at least macOS Sonoma to be done permanently.

Duplicate the new original file system template from Sonoma to create a new file:

```bash
sudo cp /etc/pam.d/sudo_local.template /etc/pam.d/sudo_local
```
Then, remove the comment on the last line of the file:

```bash
sudo nano /etc/pam.d/sudo_local (and remove last line comment)
```
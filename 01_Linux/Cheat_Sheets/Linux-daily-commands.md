# Linux Command Cheat-Sheet

## Basic Commands
- `pwd` - Print the current working directory.
  - **Example:** ``` pwd ```  
    Output: `/home/user`
- `ls` - List directory contents.
  - `ls -l` - Long listing format.
    - **Example:** `ls -l`  
      Output:  
      ```
      -rw-r--r-- 1 user user  4096 Aug 18 10:00 file.txt
      drwxr-xr-x 2 user user  4096 Aug 18 10:01 directory
      ```
  - `ls -a` - List all files including hidden files.
    - **Example:** `ls -a`  
      Output:  
      ```
      .  ..  .bashrc  file.txt  directory
      ```
- `cd` - Change directory.
  - **Example:** `cd /home/user/documents`
  - `cd ..` - Go up one directory level.
    - **Example:** `cd ..`
- `mkdir [dir]` - Create a new directory.
  - **Example:** `mkdir new_folder`
- `rmdir [dir]` - Remove an empty directory.
  - **Example:** `rmdir old_folder`
- `rm [file]` - Remove a file.
  - **Example:** `rm unwanted_file.txt`
  - `rm -r [dir]` - Remove a directory and its contents recursively.
    - **Example:** `rm -r old_folder`
- `cp [src] [dest]` - Copy files or directories.
  - **Example:** `cp file.txt /home/user/backup/`
  - `cp -r [src] [dest]` - Copy directories recursively.
    - **Example:** `cp -r /home/user/documents /home/user/backup/`
- `mv [src] [dest]` - Move or rename files or directories.
  - **Example:** `mv file.txt /home/user/documents/`
- `touch [file]` - Create an empty file or update the timestamp of an existing file.
  - **Example:** `touch newfile.txt`

## File Viewing & Editing
- `cat [file]` - Display the contents of a file.
  - **Example:** `cat file.txt`  
    Output:  
    ```
    This is the content of the file.
    ```
- `more [file]` - View file content one page at a time.
  - **Example:** `more largefile.txt`
- `less [file]` - Similar to `more`, but allows backward navigation.
  - **Example:** `less largefile.txt`
- `head [file]` - Display the first 10 lines of a file.
  - **Example:** `head file.txt`
  - `head -n [num] [file]` - Display the first `[num]` lines.
    - **Example:** `head -n 5 file.txt`
- `tail [file]` - Display the last 10 lines of a file.
  - **Example:** `tail file.txt`
  - `tail -n [num] [file]` - Display the last `[num]` lines.
    - **Example:** `tail -n 5 file.txt`
  - `tail -f [file]` - Follow the file as it grows.
    - **Example:** `tail -f logfile.txt`
- `nano [file]` - Simple text editor.
  - **Example:** `nano file.txt`
- `vim [file]` - Advanced text editor (requires knowledge of `vim` commands).
  - **Example:** `vim file.txt`

## File Permissions & Ownership
- `ls -l` - View file permissions.
  - **Example:** `ls -l`  
    Output:  
    ```
    -rw-r--r-- 1 user user 4096 Aug 18 10:00 file.txt
    ```
- `chmod [permissions] [file]` - Change file permissions.
  - **Example:** `chmod 755 script.sh`
- `chown [user]:[group] [file]` - Change file owner and group.
  - **Example:** `chown root:root file.txt`
- `umask` - Display the current mask.
  - **Example:** `umask`  
    Output: `0022`
- `umask [mask]` - Set default permissions for newly created files.
  - **Example:** `umask 077`

## System Information
- `uname -a` - Display all system information.
  - **Example:** `uname -a`  
    Output:  
    ```
    Linux hostname 5.4.0-26-generic #30-Ubuntu SMP Fri May 1 13:35:09 UTC 2020 x86_64 x86_64 x86_64 GNU/Linux
    ```
- `hostname` - Show or set the system hostname.
  - **Example:** `hostname`  
    Output: `my-computer`
- `df -h` - Display disk space usage.
  - **Example:** `df -h`  
    Output:  
    ```
    Filesystem      Size  Used Avail Use% Mounted on
    /dev/sda1        50G   25G   23G  53% /
    ```
- `du -sh [dir]` - Display the size of a directory and its contents.
  - **Example:** `du -sh /home/user/documents/`
- `free -h` - Display memory usage.
  - **Example:** `free -h`  
    Output:  
    ```
                 total        used        free      shared  buff/cache   available
    Mem:           7.8G        3.2G        1.2G        204M        3.4G        4.1G
    Swap:          2.0G        512M        1.5G
    ```
- `top` - Display running processes.
  - **Example:** `top`
- `htop` - Interactive process viewer (more user-friendly than `top`).
  - **Example:** `htop`
- `ps aux` - Display detailed information about all running processes.
  - **Example:** `ps aux | grep apache`
- `kill [PID]` - Kill a process by its process ID.
  - **Example:** `kill 1234`
- `killall [name]` - Kill processes by name.
  - **Example:** `killall firefox`
- `shutdown now` - Shut down the system immediately.
  - **Example:** `shutdown now`
- `reboot` - Reboot the system.
  - **Example:** `reboot`

## Package Management
- **Debian/Ubuntu:**
  - `sudo apt-get update` - Update package list.
    - **Example:** `sudo apt-get update`
  - `sudo apt-get upgrade` - Upgrade all packages.
    - **Example:** `sudo apt-get upgrade`
  - `sudo apt-get install [package]` - Install a package.
    - **Example:** `sudo apt-get install git`
  - `sudo apt-get remove [package]` - Remove a package.
    - **Example:** `sudo apt-get remove git`
  - `sudo apt-get autoremove` - Remove unnecessary packages.
    - **Example:** `sudo apt-get autoremove`
- **Red Hat/Fedora/CentOS:**
  - `sudo yum update` or `sudo dnf update` - Update packages.
    - **Example:** `sudo dnf update`
  - `sudo yum install [package]` or `sudo dnf install [package]` - Install a package.
    - **Example:** `sudo dnf install git`
  - `sudo yum remove [package]` or `sudo dnf remove [package]` - Remove a package.
    - **Example:** `sudo dnf remove git`

## Networking
- `ifconfig` or `ip addr` - Display network interfaces and IP addresses.
  - **Example:** `ip addr`
- `ping [host]` - Send ICMP echo requests to test connectivity.
  - **Example:** `ping google.com`
- `netstat -tuln` - Display active TCP/UDP ports.
  - **Example:** `netstat -tuln`
- `ss -tuln` - Another tool for displaying active TCP/UDP ports.
  - **Example:** `ss -tuln`
- `wget [url]` - Download files from the web.
  - **Example:** `wget http://example.com/file.zip`
- `curl -O [url]` - Another tool to download files from the web.
  - **Example:** `curl -O http://example.com/file.zip`
- `ssh [user]@[host]` - Securely connect to a remote machine.
  - **Example:** `ssh user@192.168.1.10`
- `scp [file] [user]@[host]:[path]` - Securely copy files to a remote machine.
  - **Example:** `scp file.txt user@192.168.1.10:/home/user/`

## Disk Management
- `fdisk -l` - List disk partitions.
  - **Example:** `fdisk -l`
- `mount [device] [dir]` - Mount a device to a directory.
  - **Example:** `mount /dev/sdb1 /mnt/usb`
- `umount [device]` - Unmount a device.
  - **Example:** `umount /mnt/usb`
- `mkfs.ext4 [device]` - Format a partition with the ext4 filesystem.
  - **Example:** `mkfs.ext4 /dev/sdb1`
- `df -h` - Display disk space usage.
  - **Example:** `df -h`
- `du -h [file/dir]` - Estimate file or directory space usage.
  - **Example:** `du -h /home/user/documents/`

## Search & File Management
- `find [path] -name [filename]` - Find files by name.
  - **Example:** `find /home/user/ -name "file.txt"`
- `grep [pattern] [file]` - Search for a pattern in a file.
  - **Example:** `grep "search term" file.txt`
  - `grep -r [pattern] [dir]` - Recursively search in directories.
    - **Example:** `grep -r "search term" /home/user/documents/`
- `locate [filename]` - Find files by name using a pre-built database.
  - **Example:** `locate file.txt`
- `which [command]` - Locate a command’s executable file.
  - **Example:** `which python3`
- `tar -cvf [archive.tar] [dir]` - Create a tarball archive.
  - **Example:** `tar -cvf backup.tar /home/user/documents/`
- `tar -xvf [archive.tar]` - Extract a tarball archive.
  - **Example:** `tar -xvf backup.tar`
- `zip [archive.zip] [file/dir]` - Create a ZIP archive.
  - **Example:** `zip -r archive.zip /home/user/documents/`
- `unzip [archive.zip]` - Extract a ZIP archive.
  - **Example:** `unzip archive.zip`

## User Management
- `whoami` - Display the current user.
  - **Example:** `whoami`  
    Output: `user`
- `adduser [username]` - Add a new user.
  - **Example:** `sudo adduser newuser`
- `passwd [username]` - Change a user's password.
  - **Example:** `passwd newuser`
- `usermod -aG [group] [user]` - Add a user to a group.
  - **Example:** `usermod -aG sudo newuser`
- `deluser [username]` - Delete a user.
  - **Example:** `sudo deluser olduser`
- `groups [username]` - Display the groups a user belongs to.
  - **Example:** `groups newuser`
- `sudo` - Execute a command as another user, typically root.
  - **Example:** `sudo apt-get update`

## Scripting Basics
- **Creating a Script:**
  - Create a script file with a `.sh` extension.
    - **Example:** `nano script.sh`
  - Add `#!/bin/bash` at the top of the file.
    - **Example:**
      ```bash
      #!/bin/bash
      echo "Hello, World!"
      ```
  - Write your commands below.
- **Making a Script Executable:**
  - **Example:** `chmod +x script.sh`
- **Running a Script:**
  - **Example:** `./script.sh`

## Process Management
- `ps aux` - List all running processes.
  - **Example:** `ps aux | grep apache`
- `top` or `htop` - Monitor system processes in real-time.
  - **Example:** `top`
- `kill [PID]` - Kill a process by its process ID.
  - **Example:** `kill 1234`
- `killall [name]` - Kill all processes with a specific name.
  - **Example:** `killall firefox`
- `bg` - Resume a stopped job in the background.
  - **Example:** `bg %1`
- `fg` - Bring a background job to the foreground.
  - **Example:** `fg %1`
- `&` - Run a command in the background.
  - **Example:** `./long_running_command &`

## Compression
- **tar Archives:**
  - `tar -cvf [archive.tar] [dir]` - Create a tarball.
    - **Example:** `tar -cvf backup.tar /home/user/documents/`
  - `tar -xvf [archive.tar]` - Extract a tarball.
    - **Example:** `tar -xvf backup.tar`
  - `tar -czvf [archive.tar.gz] [dir]` - Create a compressed tarball (gzip).
    - **Example:** `tar -czvf backup.tar.gz /home/user/documents/`
  - `tar -xzvf [archive.tar.gz]` - Extract a compressed tarball.
    - **Example:** `tar -xzvf backup.tar.gz`
- **zip Archives:**
  - `zip -r [archive.zip] [dir]` - Create a zip archive.
    - **Example:** `zip -r archive.zip /home/user/documents/`
  - `unzip [archive.zip]` - Extract a zip archive.
    - **Example:** `unzip archive.zip`
- **gzip:**
  - `gzip [file]` - Compress a file.
    - **Example:** `gzip file.txt`
  - `gunzip [file.gz]` - Decompress a file.
    - **Example:** `gunzip file.txt.gz`

## Additional Tips
- Use `man [command]` to view the manual for any command.
  - **Example:** `man ls`
- Use the `Tab` key for command and file name auto-completion.
- Use the `up` and `down` arrow keys to navigate through your command history.

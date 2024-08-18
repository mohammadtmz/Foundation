# Linux Command Cheat-Sheet

## Basic Commands
- `pwd` - Print the current working directory.
- `ls` - List directory contents.
  - `ls -l` - Long listing format.
  - `ls -a` - List all files including hidden files.
- `cd` - Change directory.
  - `cd ..` - Go up one directory level.
- `mkdir [dir]` - Create a new directory.
- `rmdir [dir]` - Remove an empty directory.
- `rm [file]` - Remove a file.
  - `rm -r [dir]` - Remove a directory and its contents recursively.
- `cp [src] [dest]` - Copy files or directories.
  - `cp -r [src] [dest]` - Copy directories recursively.
- `mv [src] [dest]` - Move or rename files or directories.
- `touch [file]` - Create an empty file or update the timestamp of an existing file.

## File Viewing & Editing
- `cat [file]` - Display the contents of a file.
- `more [file]` - View file content one page at a time.
- `less [file]` - Similar to `more`, but allows backward navigation.
- `head [file]` - Display the first 10 lines of a file.
  - `head -n [num] [file]` - Display the first `[num]` lines.
- `tail [file]` - Display the last 10 lines of a file.
  - `tail -n [num] [file]` - Display the last `[num]` lines.
  - `tail -f [file]` - Follow the file as it grows.
- `nano [file]` - Simple text editor.
- `vim [file]` - Advanced text editor (requires knowledge of `vim` commands).

## File Permissions & Ownership
- `ls -l` - View file permissions.
- `chmod [permissions] [file]` - Change file permissions.
  - Example: `chmod 755 [file]` - rwxr-xr-x
- `chown [user]:[group] [file]` - Change file owner and group.
- `umask` - Display the current mask.
- `umask [mask]` - Set default permissions for newly created files.

## System Information
- `uname -a` - Display all system information.
- `hostname` - Show or set the system hostname.
- `df -h` - Display disk space usage.
- `du -sh [dir]` - Display the size of a directory and its contents.
- `free -h` - Display memory usage.
- `top` - Display running processes.
- `htop` - Interactive process viewer (more user-friendly than `top`).
- `ps aux` - Display detailed information about all running processes.
- `kill [PID]` - Kill a process by its process ID.
- `killall [name]` - Kill processes by name.
- `shutdown now` - Shut down the system immediately.
- `reboot` - Reboot the system.

## Package Management
- **Debian/Ubuntu:**
  - `sudo apt-get update` - Update package list.
  - `sudo apt-get upgrade` - Upgrade all packages.
  - `sudo apt-get install [package]` - Install a package.
  - `sudo apt-get remove [package]` - Remove a package.
  - `sudo apt-get autoremove` - Remove unnecessary packages.
- **Red Hat/Fedora/CentOS:**
  - `sudo yum update` or `sudo dnf update` - Update packages.
  - `sudo yum install [package]` or `sudo dnf install [package]` - Install a package.
  - `sudo yum remove [package]` or `sudo dnf remove [package]` - Remove a package.

## Networking
- `ifconfig` or `ip addr` - Display network interfaces and IP addresses.
- `ping [host]` - Send ICMP echo requests to test connectivity.
- `netstat -tuln` - Display active TCP/UDP ports.
- `ss -tuln` - Another tool for displaying active TCP/UDP ports.
- `wget [url]` - Download files from the web.
- `curl -O [url]` - Another tool to download files from the web.
- `ssh [user]@[host]` - Securely connect to a remote machine.
- `scp [file] [user]@[host]:[path]` - Securely copy files to a remote machine.

## Disk Management
- `fdisk -l` - List disk partitions.
- `mount [device] [dir]` - Mount a device to a directory.
- `umount [device]` - Unmount a device.
- `mkfs.ext4 [device]` - Format a partition with the ext4 filesystem.
- `df -h` - Display disk space usage.
- `du -h [file/dir]` - Estimate file or directory space usage.

## Search & File Management
- `find [path] -name [filename]` - Find files by name.
- `grep [pattern] [file]` - Search for a pattern in a file.
  - `grep -r [pattern] [dir]` - Recursively search in directories.
- `locate [filename]` - Find files by name using a pre-built database.
- `which [command]` - Locate a command’s executable file.
- `tar -cvf [archive.tar] [dir]` - Create a tarball archive.
- `tar -xvf [archive.tar]` - Extract a tarball archive.
- `zip [archive.zip] [file/dir]` - Create a ZIP archive.
- `unzip [archive.zip]` - Extract a ZIP archive.

## User Management
- `whoami` - Display the current user.
- `adduser [username]` - Add a new user.
- `passwd [username]` - Change a user's password.
- `usermod -aG [group] [user]` - Add a user to a group.
- `deluser [username]` - Delete a user.
- `groups [username]` - Display the groups a user belongs to.
- `sudo` - Execute a command as another user, typically root.

## Scripting Basics
- **Creating a Script:**
  - Create a script file with a `.sh` extension.
  - Add `#!/bin/bash` at the top of the file.
  - Write your commands below.
- **Making a Script Executable:**
  - `chmod +x [script.sh]`
- **Running a Script:**
  - `./[script.sh]`

## Process Management
- `ps aux` - List all running processes.
- `top` or `htop` - Monitor system processes in real-time.
- `kill [PID]` - Kill a process by its process ID.
- `killall [name]` - Kill all processes with a specific name.
- `bg` - Resume a stopped job in the background.
- `fg` - Bring a background job to the foreground.
- `&` - Run a command in the background.

## Compression
- **tar Archives:**
  - `tar -cvf [archive.tar] [dir]` - Create a tarball.
  - `tar -xvf [archive.tar]` - Extract a tarball.
  - `tar -czvf [archive.tar.gz] [dir]` - Create a compressed tarball (gzip).
  - `tar -xzvf [archive.tar.gz]` - Extract a compressed tarball.
- **zip Archives:**
  - `zip -r [archive.zip] [dir]` - Create a zip archive.
  - `unzip [archive.zip]` - Extract a zip archive.
- **gzip:**
  - `gzip [file]` - Compress a file.
  - `gunzip [file.gz]` - Decompress a file.

## Additional Tips
- Use `man [command]` to view the manual for any command.
- Use the `Tab` key for command and file name auto-completion.
- Use the `up` and `down` arrow keys to navigate through your command history.

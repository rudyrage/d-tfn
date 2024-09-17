# Study of Basic Commands in Linux Operating System

## File and Directory Management

### `ls`

- **Description**: Lists files and directories in the current directory.
- **Usage**: `ls [options] [directory]`
- **Examples**:
  - `ls` - List files and directories.
  - `ls -l` - List with detailed information.
  - `ls -a` - List all files, including hidden ones.

### `cd`

- **Description**: Changes the current directory.
- **Usage**: `cd [directory]`
- **Examples**:
  - `cd /home/user` - Change to `/home/user` directory.
  - `cd ..` - Move up one directory.
  - `cd ~` - Move to the home directory.

### `pwd`

- **Description**: Prints the current working directory.
- **Usage**: `pwd`
- **Examples**:
  - `pwd` - Display the full path of the current directory.

### `mkdir`

- **Description**: Creates a new directory.
- **Usage**: `mkdir [options] directory_name`
- **Examples**:
  - `mkdir new_folder` - Create a directory named `new_folder`.
  - `mkdir -p parent_folder/child_folder` - Create parent and child directories.

### `rmdir`

- **Description**: Removes an empty directory.
- **Usage**: `rmdir directory_name`
- **Examples**:
  - `rmdir old_folder` - Remove the empty directory `old_folder`.

### `rm`

- **Description**: Removes files or directories.
- **Usage**: `rm [options] file_name`
- **Examples**:
  - `rm file.txt` - Remove `file.txt`.
  - `rm -r folder_name` - Remove `folder_name` and its contents recursively.

### `cp`

- **Description**: Copies files or directories.
- **Usage**: `cp [options] source destination`
- **Examples**:
  - `cp file1.txt file2.txt` - Copy `file1.txt` to `file2.txt`.
  - `cp -r dir1 dir2` - Copy `dir1` to `dir2` recursively.

### `mv`

- **Description**: Moves or renames files or directories.
- **Usage**: `mv [options] source destination`
- **Examples**:
  - `mv file1.txt /home/user/` - Move `file1.txt` to `/home/user/`.
  - `mv old_name.txt new_name.txt` - Rename `old_name.txt` to `new_name.txt`.

## File Viewing and Editing

### `cat`

- **Description**: Concatenates and displays file content.
- **Usage**: `cat [options] file_name`
- **Examples**:
  - `cat file.txt` - Display the content of `file.txt`.
  - `cat file1.txt file2.txt` - Concatenate and display both files.

### `less`

- **Description**: Views file content with backward and forward navigation.
- **Usage**: `less file_name`
- **Examples**:
  - `less file.txt` - View and navigate through `file.txt`.

### `free`

- **Description**: Displays memory usage.
- **Usage**: `free [options]`
- **Examples**:
  - `free` - Show memory usage.
  - `free -h` - Show memory usage in human-readable format.

## Process Management

### `ps`

- **Description**: Displays information about active processes.
- **Usage**: `ps [options]`
- **Examples**:
  - `ps` - Display processes for the current user.
  - `ps aux` - Display detailed information about all processes.

## Networking

### `ping`

- **Description**: Tests network connectivity to a host.
- **Usage**: `ping [options] destination`
- **Examples**:
  - `ping google.com` - Send ICMP packets to `google.com`.

### `ifconfig`

- **Description**: Displays or configures network interfaces.
- **Usage**: `ifconfig [interface] [options]`
- **Examples**:
  - `ifconfig` - Display network interfaces and their details.

### `netstat`

- **Description**: Displays network connections and routing tables.
- **Usage**: `netstat [options]`
- **Examples**:
  - `netstat -tuln` - Display listening ports and network connections.

### `ssh`

- **Description**: Connects to a remote host securely.
- **Usage**: `ssh [user@]hostname`
- **Examples**:
  - `ssh user@remote_host` - Connect to `remote_host` as `user`.

## User Management

### `whoami`

- **Description**: Displays the currently logged-in user.
- **Usage**: `whoami`
- **Examples**:
  - `whoami` - Show the username of the current user.

### `adduser`

- **Description**: Adds a new user to the system.
- **Usage**: `adduser username`
- **Examples**:
  - `adduser newuser` - Add a new user named `newuser`.

## File Permissions

### `chmod`

- **Description**: Changes file permissions.
- **Usage**: `chmod [options] mode file_name`
- **Examples**:
  - `chmod 755 file.txt` - Set permissions of `file.txt` to `rwxr-xr-x`.

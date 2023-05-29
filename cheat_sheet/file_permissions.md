# File Permissions

In Unix-like operating systems, file permissions define the access levels and restrictions for files and directories. They determine who can read, write, or execute a file, and are represented by a set of permission flags associated with each file.

File permissions consist of three types of access:

1. **Read** (`r`): Allows reading or viewing the contents of a file.
2. **Write** (`w`): Allows modifying or writing to a file.
3. **Execute** (`x`): Allows executing a file as a program or script.

These access types are associated with three different entities:

1. **User** (`u`): Refers to the file owner.
2. **Group** (`g`): Refers to a group of users who share the same access rights.
3. **Others** (`o`): Refers to all other users who are not the file owner or part of the group.

The file permissions are represented by a combination of letters and symbols:

- **Symbolic Notation**: In symbolic notation, each permission is represented by a letter (`r`, `w`, or `x`) for each entity (`u`, `g`, and `o`). Additionally, special permissions and other attributes are represented by symbols.

- **Numeric Notation**: In numeric notation, each permission is assigned a numeric value: 4 for read (`r`), 2 for write (`w`), and 1 for execute (`x`). These values are then added together to represent the total permissions for each entity. For example, if a user has read and execute permissions (4 + 1 = 5), the numeric representation would be `5`.

The permissions are usually displayed as a combination of ten characters:

- rwxrwxrwx


The first character represents the file type (`-` for a regular file). The next three characters represent the owner's permissions, followed by the group's permissions, and finally, the permissions for others.

Some common examples of file permissions are:

- `rw-r--r--`: Read and write permissions for the owner, and read-only permissions for the group and others.
- `rwxr-xr-x`: Full permissions (read, write, and execute) for the owner, and read and execute permissions for the group and others.

It's important to note that file permissions play a crucial role in maintaining security and controlling access to files and directories. Incorrect or insecure file permissions can lead to unauthorized access or modifications to sensitive data.

To modify file permissions, commands like `chmod` (change mode) are used in Unix-like systems. These commands allow users to set or modify the permissions for files and directories based on their requirements.


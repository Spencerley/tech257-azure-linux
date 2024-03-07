# Managing File Permissions

- [Managing File Permissions](#managing-file-permissions)
  - [Does being the owner of a file mean you have full permissions on that file? Explain.](#does-being-the-owner-of-a-file-mean-you-have-full-permissions-on-that-file-explain)
  - [If you give permissions to the User entity, what does this mean?](#if-you-give-permissions-to-the-user-entity-what-does-this-mean)
  - [If you give permissions to the Group entity, what does this mean?](#if-you-give-permissions-to-the-group-entity-what-does-this-mean)
  - [If you give permissions to the Other entity, what does this mean?](#if-you-give-permissions-to-the-other-entity-what-does-this-mean)
  - [You give the following permissions to a \[file: Use\](file: Us "‌")r permissions are read-only, Group permissions are read and write, Other permissions are read, write and execute. You are logged in as the user which is owner of the file.](#you-give-the-following-permissions-to-a-file-usefile-us-r-permissions-are-read-only-group-permissions-are-read-and-write-other-permissions-are-read-write-and-execute-you-are-logged-in-as-the-user-which-is-owner-of-the-file)
    - [What permissions will you have on this file?](#what-permissions-will-you-have-on-this-file)
  - [Here is one line from the ls -l.](#here-is-one-line-from-the-ls--l)
    - [Summary:](#summary)


## Does being the owner of a file mean you have full permissions on that file? Explain.
- Yes, being the owner of a file typically grants you full permissions on that file. 
- This means you can read, write, and execute the file. 
- However, there might be special circumstances where the owner's permissions are restricted, such as through system-wide policies or specific file attributes.
- As most files are not executable programs there will sometime be no need to have execute permission and adding execute permissions by default could pose a security risk if not needed. By default root user has all permissions but makes sense to make certain files unexecutable at first to avoid accidental errors/delete etc.

## If you give permissions to the User entity, what does this mean?
- The "User" entity in file permissions refers to the owner of the file. So, giving permissions to "User" is essentially the same as modifying the owner's permissions.

## If you give permissions to the Group entity, what does this mean?
- The "Group" entity refers to a group of users on the system. Assigning permissions to the "Group" allows members of that specific group to access the file with the granted permissions (read, write, or execute).

## If you give permissions to the Other entity, what does this mean?
- The "Other" entity refers to all users on the system who are not the owner and are not members of the file's group. Granting permissions to "Other" allows these users to access the file with the specified permissions.

## You give the following permissions to a [file: Use](file: Us "‌")r permissions are read-only, Group permissions are read and write, Other permissions are read, write and execute. You are logged in as the user which is owner of the file. 

### What permissions will you have on this file? 
- In the given scenario, you (the owner) will have full permissions (read, write, and execute) on the file even though the explicit permissions granted are "rwxr-xr--". 
- This is because the owner always has full control over their files by default, regardless of the explicitly set permissions

## Here is one line from the ls -l. 
Work out everything you can about permissions on this file or directory.
`-rwxr-xr-- 1 tcboony staff  123 Nov 25 18:36 keeprunning.sh`

- -: This indicates a regular file (not a directory, symbolic link, etc.).
- rwx: The owner (user tcboony) has read, write, and execute permissions.
- r-x: The group (staff) has read and execute permissions, but no write permission.
- --: Others (users not in the owner's group) have no permissions (cannot read, write, or execute).
- 1: This is the number of hard links to the file.
tcboony: This is the username of the file owner.
- staff: This is the name of the group the file belongs to.
- 123: This is the file size in bytes.
- Nov 25 18:36: This is the last modification date and time of the file.

### Summary:
- The owner (tcboony) has full permissions on keeprunning.sh.
- The staff group can read and execute the file, but cannot modify it.
- Others have no access to the file.
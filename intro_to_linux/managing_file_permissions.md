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
- [Linux - Research managing file permissions using numeric values](#linux---research-managing-file-permissions-using-numeric-values)
  - [What numeric values are assigned to each permission?](#what-numeric-values-are-assigned-to-each-permission)
  - [Often, a file or directory's mode/permissions are represented by 3 numbers. What do you think 644 would mean?](#often-a-file-or-directorys-modepermissions-are-represented-by-3-numbers-what-do-you-think-644-would-mean)
- [Linux - Research changing file permissions](#linux---research-changing-file-permissions)
  - [What command changes file permissions?](#what-command-changes-file-permissions)
  - [To change permissions on a file what must the end user be? (2 answers)](#to-change-permissions-on-a-file-what-must-the-end-user-be-2-answers)
  - [Give examples of some different ways/syntaxes to set permissions on a new file (named testfile.txt) to:](#give-examples-of-some-different-wayssyntaxes-to-set-permissions-on-a-new-file-named-testfiletxt-to)


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
- r--: Others (users not in the owner's group) have read permissions (but cannot write, or execute).
- 1: This is the number of hard links to the file.
tcboony: This is the username of the file owner.
- staff: This is the name of the group the file belongs to.
- 123: This is the file size in bytes.
- Nov 25 18:36: This is the last modification date and time of the file.

### Summary:
- The owner (tcboony) has full permissions on keeprunning.sh.
- The staff group can read and execute the file, but cannot modify it.
- Others have no access to the file.

# Linux - Research managing file permissions using numeric values
## What numeric values are assigned to each permission?
- Read = 4 Write = 2 Execute = 1

- What can you with the values assign read + write permissions?
  - 6

- What value would assign read, write and execute permissions?
  - 7

- What value would assign read and execute permissions?
  - 5

## Often, a file or directory's mode/permissions are represented by 3 numbers. What do you think 644 would mean?
- Each number represents the permissions assigned to each entity

- 6 = Read and Write --> User
- 4 = Read --> Group
- 4 = Read --> Other

# Linux - Research changing file permissions

## What command changes file permissions?
- chmod

## To change permissions on a file what must the end user be? (2 answers)
- The owner of that file and have the Write permission

## Give examples of some different ways/syntaxes to set permissions on a new file (named testfile.txt) to:
1. Set User to read, Group to read + write + execute, and Other to read and write only:

- chmod u=r,g=rwx,o=rw testfile.txt
- chmod 764 testfile.txt
  
2. Add execute permissions (to all entities)

- chmod u=x,g=x,o=x testfile.txt
- chmod +x testfile.txt
- chmod a+x testfile.txt

3. Take write permissions away from Group

- chmod g-w testfile.txt

4. Use numeric values to give read + write access to User, read access to Group, and no access to Other.

- chmod 640 testfile.txt
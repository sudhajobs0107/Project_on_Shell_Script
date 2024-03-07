# Project 1 - Shell Script for User Management and Backup in Linux
### `Description of sudha.sh`
sudha.sh is a Bash script designed to facilitate user management tasks on a Linux system. It provides a convenient command-line interface for creating, deleting and managing user accounts and groups.
### `Description of backup.sh`
backup.sh is a Bash script designed to create backups of files or directories from a source location to a target location. It generates a compressed archive file (.tar.gz) containing the contents of the specified source directory and saves it to the target directory with a timestamp appended to the filename.
### `Usage of sudha.sh`
To use sudha.sh, ensure that you have the necessary permissions to execute shell scripts. Then, simply run the script in a terminal with the following command:-
``` js
./sudha.sh [options]
```
### Options
The script supports the following command-line options:

-h, --help: Displays help information, including a list of available options.
-c, --create: Creates a new user account.
-d, --delete: Deletes an existing user account.
-r, --reset: Resets the password for an existing user account.
-l, --list: Lists all user accounts registered on the system.
-cg, --create_group: Creates a new group.
-autog, --adduser_to_group: Adds a user to an existing group.
-dufromg, --deleteuser_from_group: Removes a user from an existing group.
### `Usage of backup.sh`
To use backup.sh, ensure that you have the necessary permissions to execute shell scripts. Then, simply run the script in a terminal with the following command:-
``` js
./backup.sh
```
###  `Functionality for sudha.sh`
The sudha.sh script provides the following functionality :-

**Creating a New User (-c, --create)**

Allows the addition of a new user to the system. Prompts the user to enter a username, then creates the user account using the useradd command.

**Deleting an Existing User (-d, --delete)**

Enables the removal of an existing user account from the system. Prompts the user to enter the username of the account to be deleted, then deletes the account using the deluser command.

**Resetting User Password (-r, --reset)**

Facilitates resetting the password for an existing user account. Prompts the user to enter the username of the account for which the password should be reset, then uses the passwd command to set a new password.

**Listing All Users (-l, --list)**

Displays a list of all user accounts currently registered on the system. Uses the cat /etc/passwd command to retrieve user information from the system's password file.

**Creating a New Group (-cg, --create_group)**

Allows the creation of a new user group. Prompts the user to enter the name of the new group, then uses the addgroup command to create the group.

**Adding User to Group (-autog, --adduser_to_group)**

Adds a user to an existing group. Prompts the user to enter the username and group name, then uses the usermod command to add the user to the specified group.

**Deleting User from Group (-dufromg, --deleteuser_from_group)**

Removes a user from an existing group. Prompts the user to enter the username and group name, then uses the gpasswd command to delete the user from the specified group.

###  `Functionality for backup.sh`
The backup.sh script provides the following functionality :-

1. **Backup Creation** :- Creates a compressed archive (.tar.gz) of the contents of the specified source directory.
2. **Timestamping** :- Appends a timestamp to the filename of the backup file to ensure uniqueness.
3. **Backup Location** :- Saves the backup file to the specified target directory.

### Examples of sudha.sh
Here are some examples of how to use the sudha.sh script :-
```
./sudha.sh --create
./sudha.sh --delete
./sudha.sh --reset
./sudha.sh --list
./sudha.sh --create_group
./sudha.sh --adduser_to_group
./sudha.sh --deleteuser_from_group
```
### Example of backup.sh
Here's an example of how to use the backup.sh script :-
```
./backup.sh
```
### Contributing
Contributions and feedback are welcome! If you encounter any issues, have suggestions for improvement, or would like to contribute code, please feel free to open an issue or submit a pull request.


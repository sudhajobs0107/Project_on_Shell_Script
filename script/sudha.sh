#!/bin/bash

<< Comment
This is my project
Comment


#function to display usage information and available options
     function display_info {
        echo "Usage: $0 [Options]"
	echo "options:"
	echo " -c, --create Create a new user."
	echo " -d, --delete Delete an existing user."
	echo " -r, --reset Reset password foran existing user."
	echo " -l, --list List all users on the system."
	echo " -cg, --create_group Create a new group."
	echo " -autog, --adduser_to_group Add user to existing group."
	echo " -dufromg, --deleteuser_from_group Delete user to existing group."
	echo " -h, --help Display this help and exit."
}
#this is for add_user
     function task_1() {
	echo "Enter the username to add"
	read username
	sudo useradd $username
}
#this is for delete_user
     function task_2() {
	echo "Enter the username to delete"
	read username
        sudo deluser $username
}
#function to reset the password for an existing user account
     function task_3() {
	read -p "Enter the username to reset password: "
	read username
	sudo passwd username
}
#this is for create groups for users
    function task_4() {
     echo "Enter the group name"
     read group_name
     sudo addgroup $group_name
}
#this is for add user to group
    function task_5() {
     echo "Enter the group name:"
     read group_name
     echo "Enter the user name"
     read user_name
     sudo usermod -aG $group_name $user_name
}
#this is for delete user to group
    function task_6() {
    echo "Enter the user name:"
    read user_name
    echo "Enter the group name"
    read group_name
    sudo gpasswd -d $user_name $group_name
}
#this is for list users
    function task_7() {
     echo "List of all users :"
     sudo cat /etc/passwd
}
# If no options are provided, display usage information
if [ $# -eq 0 ]; then
	    display_info
	        exit 1
fi

#command-line argument parsing
while [ $# -gt 0 ]; do
    case "$1" in
    -c| --create)
    task_1
    ;;
    -d| --delete)
    task_2
    ;;
    -r| --reset)
    task_3
    ;;
    -cg| --create_group)
     task_4
     ;;
     -autog| --adduser_to_group)
     task_5
     ;;
    -dufromg| --deleteuser_from_group)
    task_6
    ;;
    -l| --list)
    task_7
    ;;
    -h| --help)
	display_info
    ;;
    *)
     echo "Error: Invalid option "$1". Use "--help" to see available options."
     exit 1
    ;;
   esac
  shift
done

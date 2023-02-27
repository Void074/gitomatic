# Setting up the hook
I am assuming that you are familiar with SSH (Secure Shell) Keys and use them to push and pull code for remotes repositories hosted on Github, GitLabs and Bitbucket or a local git repository and are following best practises in keeping your keys safe.

## Project Dependencies
To use this script you must have installed:

1. Git
2. SSH

## Getting Started
Firstly, if you have already set up git in project, all you have to do is:

1. move the post-commit hook to the .git/hook/ folder
2. once step one is completed, move the push.sh script to the project you are working in. **PLEASE ENSURE THAT YOU ADD THE PUSH.SH SCRIPT TO THE .GITIGNORE FILE IN YOUR PROJECT, SO THAT GIT DOESN'T TRACK IT**
3. just run the push.sh script, ensuring that you have added the path to your private key, to commit changes made to the repository and the post-commit hook will automatically push the changes you have commited to either Github, BitBucket or Gitlab.

## How it works?

The post-commit hook will automatically push changes to Github, GitLabs, Bitbucket after running the push.sh script. The push.sh script will handle setting the ssh-agent and path to your private. To add the path of your private ssh key, the open the push.sh script file enter the path to your private.

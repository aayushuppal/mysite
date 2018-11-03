<!-- markdownlint-disable no-inline-html -->

# Set up multiple git user accounts on your machine per repository

`Nov 2018`

Multiple SSH Keys for different github accounts

## generate and add ssh keys for both users `user1` and `user2`

```bash
user1
ssh-keygen -t rsa -b 4096 -C "<user1@email.com>"
/home/user/.ssh/id_user1

user2
ssh-keygen -t rsa -b 4096 -C "<user2@email.com>"
/home/user/.ssh/id_user2
```

## sshconfig `~/.ssh/config`

```config
# default account identity - set to user1
Host github.com
    HostName github.com
    User git
    IdentityFile /home/user/.ssh/id_user1

# explicit account identity - user1
Host github.com-user1
    HostName github.com
    User git
    IdentityFile /home/user/.ssh/id_user1

# explicit account identity - user2
Host github.com-user2
    HostName github.com
    User git
    IdentityFile /home/user/.ssh/id_user2
```

## reset all global git settings

```bash
git config --global user.useConfigOnly true
git config --global --unset-all user.name
git config --global --unset-all user.email
```

## set the repo

- clone a repo

- set repo level .git/.gitconfig, eg:

```
git config user.name "user1"
git config user.email "user1l@email.com"
```

- to explicitly use a user specific setting update the remote to

```
git clone git@github.com-user1:user1/repo.git
```

[^1]: Last Updated: `2018-11-02`

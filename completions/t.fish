complete -f -c t -n '__fish_use_subcommand' -l help -s h -d "Display the manual"
complete -f -c t -n '__fish_use_subcommand' -a license -d "List/create license from Github API"
complete -f -c t -n '__fish_use_subcommand' -a gi -d "List/create .gitignore from gitignore.io"
complete -f -c t -n '__fish_use_subcommand' -a gitignore -d "List/create .gitignore from gitignore.io"
complete -f -c t -n '__fish_seen_subcommand_from license' -a '(__t_license)'
complete -f -c t -n '__fish_seen_subcommand_from gi' -a '(__t_gitignore)'
complete -f -c t -n '__fish_seen_subcommand_from gitignore' -a '(__t_gitignore)'

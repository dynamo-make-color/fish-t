complete -f -c t -n '__fish_use_subcommand' -l help -s h -d "Display the manual"
complete -f -c t -n '__fish_use_subcommand' -a license -d "List/create license from Github API"
complete -f -c t -n '__fish_seen_subcommand_from license' -a '(__t_license)'

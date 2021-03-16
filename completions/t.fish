function __fish_t_needs_command
  set -l cmd (commandline -opc)
  set -e $cmd[1]
  if set -q $argv[1]
    echo $argv[1..]
    return 0
  end
  return 1
end

function __fish_t_using_command
  set cmd (commandline -opc)
  if [ (count $cmd) -gt 1 ]
    if [ $argv[1] = $cmd[2] ]
      return 0
    end
  end
  return 1
  # set -l cmd (__fish_t_needs_command)
  # test -z "$cmd"; and return 1
  # test $argv[1] = $cmd[2]; and return 0
  # return 1
end

complete -f -c t -l help -s h -d "Display the manual"
complete -f -c t -n '__fish_t_needs_command' -a license -d "List/create license from Github API"
complete -f -c t -n '__fish_t_using_command license' -a '(__t_license)'

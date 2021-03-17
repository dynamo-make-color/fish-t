function __t_gitignore -d "Create gitignore"
  set -l url https://www.toptal.com/developers/gitignore/api
  commandline -f repaint

  if test -z $argv[1]
    if not set -q t_gitignore_list; or test -z "$t_gitignore_list"
      set -gx t_gitignore_list (curl -sSL $url/list)
    end
    echo $t_gitignore_list | string split "," | string split " "
  else
    curl -sSL $url/$argv[1] -o .gitignore
  end
end

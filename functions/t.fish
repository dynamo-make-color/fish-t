function t -d "Create template from some useful resources"
  set -l argc (count $argv)

  if test $argc -le 0
    __t_usage
    return 1
  else if contains -- --help $argv; or contains -- -h $argv
    __t_usage
  else
    switch $argv[1]
      case "license"
        __t_license $argv[2]
      case "gi" "gitignore"
        __t_gitignore $argv[2]
      case "*"
        __t_usage
        return 1
    end
  end
end

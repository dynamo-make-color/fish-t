function t -d "Create template from some useful resources"
  set -l argc (count $argv)

  if test $argc -le 0
    return 1
  else if contains -- --help $argv; or contains -- -h $argv
    __t_usage
  else
    switch $argv[1]
      case "*"
        __t_usage
        return 1
    end
  end
end
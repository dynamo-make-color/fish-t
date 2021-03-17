function __t_usage -d "Usage of t command"
  echo "
  Create template from some useful resources.

  Usage:
    license                                      List license from Github API
    license [key]                                Generate LICENSE file in current folder by a key, see above sub-command
    gi, gitignore                                List template of .gitignore from gitignore.io
    gi [key,key...], gitignore [key,key...]      Generate .gitignore file in current folder by list of keys, separate by comma, see above sub-command
"
end

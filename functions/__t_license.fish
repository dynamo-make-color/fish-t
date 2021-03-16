function __t_license -d "Create license"
  set -l url https://api.github.com/licenses
  if test -z $argv[1]
    curl -sSL $url | jq '.[].key' | sed -e 's/^"//' -e 's/"$//'
  else
    set -l template (curl -sSL $url/$argv[1] | jq '.body')
    echo -e $template | sed -e 's/^"//' -e 's/"$//' -e 's/\\n/\r/'
  end
end

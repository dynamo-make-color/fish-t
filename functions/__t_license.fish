function __t_license -d "Create license"
  set -l url https://api.github.com/licenses
  set -l header "Accept: application/vnd.github.v3+json"

  commandline -f repaint

  if test -z $argv[1]
    if not set -q t_licenses_list; or test -z "$t_licenses_list"
      set -gx t_licenses_list (curl -sSL -H $header $url | jq '.[].key' | string replace -ar '^"' '' | string replace -ar '"$' '')
    end
    echo $t_licenses_list | string split " "
  else
    set -l template (curl -sSL -H $header $url/$argv[1] | jq '.body')
    echo -e $template | string replace -ar '^"' '' | string replace -ar '"$' '' | string split "\\n" > LICENSE
  end
end

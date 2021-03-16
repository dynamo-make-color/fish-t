function __t_license -d "Create license"
  set -l url https://api.github.com/licenses
  set -l header "Accept: application/vnd.github.v3+json"

  commandline -f repaint

  if test -z $argv[1]
    if not set -q t_licenses_list; or test -z "$t_licenses_list"
      set -gx t_licenses_list (curl -sSL -H $header $url | jq '.[].key' | sed -e 's/^"//' -e 's/"$//')
    end
    echo $t_licenses_list | sed -e "s/\s/\n/g"
  else
    set -l template (curl -sSL -H $header $url/$argv[1] | jq '.body')
    echo -e $template | sed -e 's/^"//' -e 's/"$//' -e 's/\\n/\n/' > LICENSE
  end
end

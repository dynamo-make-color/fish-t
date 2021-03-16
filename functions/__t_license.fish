function __t_license -d "Create license"
  set -l url https://api.github.com/licenses
  commandline -f repaint
  if test -z $argv[1]
    curl -sSL $url | jq '.[].key' | sed -e 's/^"//' -e 's/"$//'
  else
    if not set -q t_licenses_list
      set -l template (curl -sSL $url/$argv[1] | jq '.body')
      set -gx t_licenses_list (echo -e $template | sed -e 's/^"//' -e 's/"$//' -e 's/\\n/\r/')
    end
    echo $t_licenses_list
  end
end

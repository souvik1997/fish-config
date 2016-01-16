set fisher_home ~/.config/fish/fisherman
set fisher_config ~/.config/fisherman
source $fisher_home/config.fish
set -x PATH ~/.bin/ /usr/local/opt/coreutils/libexec/gnubin $PATH
set -x MANPATH "/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
set -x EDITOR "/usr/bin/env emacsclient -a '' -c"
set -x VISUAL "/usr/bin/env emacsclient -a '' -c"

function cdt
	set tempdir (mktemp -d)
	cd $tempdir
end
if [ "$TERM" = "eterm-color" ]
   function fish_title
            true
   end
end
function sound-on --description "sets master device to 100% or by first argument value"
	amixer -D pulse set Master unmute

	set by $argv[1]
	if test "$by" = ""
		set by 100
	end

	amixer -D pulse set Master $by%
end

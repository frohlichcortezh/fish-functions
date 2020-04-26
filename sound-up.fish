function sound-up --description "sets master device up by given first argument value or by 10% if no argument"
	amixer -D pulse set Master unmute

	set by $argv[1]

	if test "$by" = ""
		set by 10
	end


	amixer -D pulse set Master $by%+
end

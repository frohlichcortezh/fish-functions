function sound-unmute --description "unmute master device"
	amixer -D pulse set Master unmute
end

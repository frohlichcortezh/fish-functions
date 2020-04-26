function sound-mute --description "mute master device"
	amixer -D pulse set Master mute
end

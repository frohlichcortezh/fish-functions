function sound-off --description "sets master device to 0%"
	amixer -D pulse set Master 0% 
end

function f-git-acp --description "git add . > commit > push : first argument is commit message"

	set msg $argv[1]

	git add .

	if test "$msg" = "" 

		while true

			read -p "please write a message for this commit : " answer

			if test "$answer" = "" 
				echo "message is mandatory"
			else
				set msg answer
				break
			end
			
		end	
	end
	
	git commit -m $msg

	git push
end

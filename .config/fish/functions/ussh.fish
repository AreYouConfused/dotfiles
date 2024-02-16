function ussh --wraps ssh
	while true
		ssh $argv
		if test $status -ne 255
			break
		end
		sleep 1
	end
end

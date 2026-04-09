function ussh --wraps ssh
	#while true
	ssh -o 'ConnectionAttempts 1000' $argv
	#if test $status -ne 255
	#break
	#end
	#sleep 1
	#end
	#return $status
end

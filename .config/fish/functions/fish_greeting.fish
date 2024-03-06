function fish_greeting
	set_color green; echo -n (whoami)
	set_color normal; echo -n @
	set_color cyan; echo (hostname)
	set_color normal;
	date
end

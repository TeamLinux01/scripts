# Defined in - @ line 1
function df --description 'alias df=df -h --exclude-type=squashfs --exclude-type=tmpfs'
	command df -h --exclude-type=squashfs --exclude-type=tmpfs $argv;
end

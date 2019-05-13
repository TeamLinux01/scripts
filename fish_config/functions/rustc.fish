function rustc
	docker run -it --rm -e USER=$USER -u (id -u $USER):(id -g $USER) -v (pwd):/projects -w /projects/ rust:latest rustc $argv
end

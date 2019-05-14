function rustc
	docker run -it --rm -e USER=$USER -u (id -u $USER):(id -g $USER) -v (pwd):/usr/src/myapp/ -w /usr/src/myapp/ -v (pwd)/../registry/:/usr/local/cargo/registry/ rust:latest rustc $argv
end

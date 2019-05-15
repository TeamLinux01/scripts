function rustc
	docker run -it --rm -e USER=$USER -u (id -u $USER):(id -g $USER) -v (pwd):/usr/src/(basename (pwd))/ -w /usr/src/(basename (pwd))/ -v ~/.docker/rust/cargo/registry/:/usr/local/cargo/registry/ rust:latest rustc $argv
end

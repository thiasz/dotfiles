source_if_exists() {
	[[ -r "$1" ]] && source "$1"
}

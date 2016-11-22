####################
#	Exception
####################

function exception
{
	RED='\033[0;31m';
	NC='\033[0m';


	printf "\r\n${RED}--------------------------------------------------------------------------------";
	printf "\r\nException:\n\r\t$*";
	printf "\r\n\r\n--------------------------------------------------------------------------------${NC}";
	exit 1;
}


function exception_with_log
{
	source "$PWD/src/logger.sh"; #include Logger

	log "ERROR" "$*";
	exception "$*";
}
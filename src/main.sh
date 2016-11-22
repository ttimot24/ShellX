source "$PWD/src/logger.sh"; #include Logger
source "$PWD/src/exception.sh"; #include Exception

function main()
{

LOG_LEVEL="TRACE";


if(("$#">0))
then
		echo "Arguments: ";
		for var in "$@";
		do
		    echo "    $var";
		done
		all_files=$(ls);
		echo $all_files;

		log "TRACE" $all_files;
else
	exception_with_log "Nincsenek argumentumok!";
fi;


	return 0;
}
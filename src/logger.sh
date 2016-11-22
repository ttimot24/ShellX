####################
#	Logger
####################

LOG_LEVEL="INFO";

declare -A LEVELS; 

LEVELS["TRACE"]=1;
LEVELS["DEBUG"]=2;
LEVELS["INFO"]=3;
LEVELS["WARN"]=4;
LEVELS["ERROR"]=5;

function log
{

	log_dir="logs";

	if [ ! -d "$log_dir" ]
		then
		mkdir "$log_dir";
	fi

  now=$(date);

  logfile="$log_dir/AppLog_$(date +%Y%m%d).log";


  if(( ${LEVELS[$1]}>=${LEVELS[$LOG_LEVEL]} ))
  	then
 	 echo  $"[$now] $*" $'\r\n' >> $logfile;
  fi;
}
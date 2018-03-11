### Variables: ###
#
### Colors ################# Information Variables ############################
#
# DARKRED = dark Red        RUNNINGPROCESSES = Count of all System Processes
# RED = normal Red          RUNNINGUSERPROCESSES = Count of all User Processes
# DARKGREEN = dark Green    DATEANDTIME = Display Date and Time
# GREEN = normal Green      CPUMOD = CPU Model Informations
# BROWN = Brown             CPUTEMP = CPU Temperature
# YELLOW = Yellow           WEATHER = Weather Informations
# DARKBLUE = dark Blue      HELLOMESSAGE = Hello Message like "Good Morning"
# BLUE = Blue               DISTRIB_DESCRIPTION = Operatingsystem infos
# DARKPURPLE = dark Purple  KERNEL = Linux Kernle Info
# PURPLE = Purple           INTERNALNETWORKIP = Display Internal Network IP
# CYAN = Cyan               PUBLICIPADDRESS = Display Public IP
# GREY = grey               HOSTNAME = Display Hostname
# WHITE = White             MEMTOTAL = Installed Memory
# NC = reset Colors         MEMUSE = Used Memory
#                           SWAPTOTAL = Total SWAP Storage
#                           SWAPUSE = Used SWAP Storage
#                           USER = Display Username
#                           LASTUSERLOGIN = Display the last login of your User
#                           CURRENTSESSIONS = All Current User Sessions
#                           UPTIME = System Uptime
#                           UPDATES = Available System Updates
#                           STORAGE1USE = Storage use in Storage1
#                           STORAGE1AVAILABLE = Storage Available in Storage1
#                           STORAGE2USE = Storage use in Storage2
#                           STORAGE2AVAILABLE = Storage Available in Storage2
#                           STORAGE3USE = Storage use in Storage3
#                           STORAGE3AVAILABLE = Storage Available in Storage3
#                           STORAGE4USE = Storage use in Storage4
#                           STORAGE4AVAILABLE = Storage Available in Storage4
###############################################################################

### SSH Banner Title: ###
SSHBANNERTITLE="SSH Banner" # Insert your Title in " "

### SSH-Banner (25 Lines without Title and Script Loading time)###
# All Variables inside the Brackets ${}

LINE1="${CYAN}${HELLOMESSAGE}${WHITE}, ${RED}${USER}${WHITE}. Welcome to the Server!"
LINE2=""
LINE3="${GREY}                    ----[${YELLOW}${DATEANDTIME}${GREY}]----"
LINE4=""
LINE5="${GREEN}User Details:"
LINE6=""
LINE7="${GREY} User: ${DARKRED}${USER}"
LINE8="${GREY} Last login: ${LASTUSERLOGIN}"
LINE9="${GREY} Current Sessions:"
LINE10="${CURRENTSESSION}"
LINE11=""
LINE12="${GREEN}Systeminformations:"
LINE13="${GREY} Uptime...........: ${GREEN}${UPTIME} ${GREY}Reboots: ${PURPLE}${REBOOTCOUNT}"
LINE14="${GREY} Operatingsystem..: ${DISTRIB_DESCRIPTION} ${KERNEL} "
LINE15="${GREY} Hostname.........: ${RED}${HOSTNAME}  ${GREY}Publich IP: ${RED}${PUBLICIPADDRESS}"
LINE16="${GREY} Network IP......: ${RED}${INTERNALNETWORKIP}"
LINE17="${GREY} CPU Model........:${CPUMOD} Temp.: ${GREEN}${CPUTEMP}°C"
LINE18="${GREY} Storage /: ${CYAN}${STORAGE1USE}${GREY}/${STORAGE1AVAILABLE}"
LINE19="${GREY} Memory:  ${GREEN}${MEMUSE}${GREY}/${MEMTOTAL}"
LINE20="${GREY} SWAP-Storage:${GREEN}${SWAPUSE}${GREY}/${SWAPTOTAL}"
LINE21="${GREY} Running Processes: ${YELLOW}${RUNNINGPROCESSES} ${GREY} User Processes: ${YELLOW}${RUNNINGUSERPROCESSES}"
LINE22="${RED}Available Updates: ${WHITE}${UPDATES}${NC}"

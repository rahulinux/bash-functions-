CheckLoadadv() {

        # Set threshold value
        local Threshold=$1
        # if threshold not specify then take deafault 6
        (( $Threshold )) || Threshold=6
        # get input values from /proc/loadavg file
        local   Current_loadadv="$(cut -d" " -f1 /proc/loadavg )"
        # take first value from inputdata
        local Cur_int_loadadv="${Current_loadadv/.*}"

        if (( $Cur_int_loadadv >= $Threshold )); then

                return 1
        else

                return 0

        fi
}

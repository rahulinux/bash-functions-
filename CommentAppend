# This Function will handal escaped character / also using sed 
CommentAppend() {
        # Comment line and append line below commented line
        local comment="$( echo "$1" | sed 's/\(\/\)/\\\//g' )"  # search this line and comment it
        local append="$( echo "$2" | sed 's/\(\/\)/\\\//g' )"   # Append this line below commented line
        local InputFile="$3"


        sed -i "s/${comment}/#${comment}/g ; s/#${comment}/& \n${append}/" $InputFile
}

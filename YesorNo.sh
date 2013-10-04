YesOrNo() {
        while :
        do
                read -p 'Do you want to Continue (yes/no?): ' answer
                case "${answer}" in
                    [yY]|[yY][eE][sS]) exit 0 ;;
                        [nN]|[nN][oO]) exit 1 ;;
                esac
        done
}

# Usage: 

# if $( YesOrNo ); then
        # echo "Ans is yes.. Do something....."
# else
        # echo "Ans is No... skip.."
# fi

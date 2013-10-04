GetTopProcess() {

        ps --no-headers -eo "%cpu,%mem,cmd,etime" |
        sort -t. -k1 -r |
        head -10
}

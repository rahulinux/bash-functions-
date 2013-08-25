function AppendIfnotExists() {
while read s
do
        inputFile="$2"
        # if starting content matched then comment them
        local startStr=$( echo "${s}" | cut -d" " -f1 )
        grep  "^#${s}"  $inputFile  >/dev/null 2>&1 || sed -i "s/^$startStr/#$startStr/g" $inputFile
        if ! grep  "^${s}" $inputFile >/dev/null 2>&1; then
                echo "${s}" >> $inputFile
        fi
done <<< "$1"
# Usage
# AppendIfnotExists "line1 some text
# line2 some text
# line....."  "inputFile"

}

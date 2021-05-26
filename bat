#Licensed under the FuckRust™ License.
#!/bin/sh

compact=-1
nocat=-1

usage(){
        printf "usage: bat [OPTIONS] [FILES]\n"
        exit 0
}

error(){
        printf "%s\n" "$1"
        exit 1
}

[ "$1" ] || usage

while [ "$1" ]; do
        case "$1" in
                -h)
                        usage
                        ;;
                -c)
                        compact=$((compact*-1))
                        shift
                        ;;
                -n)
                        nocat=$((nocat*-1))
                        shift
                        ;;
                *)
                        [ -f "$1" ] || error "$1 not a file"
                        [ $compact -gt 0 ] || printf "%s\n" "$1:"
                        if [ $nocat -lt 0 ]; then
                                source-highlight -f esc -i "$1" 2>/dev/null || cat "$1"
                        else
                                source-highlight -f esc -i "$1"
                        fi
                        shift && [ "$1" ] && printf "\n"
                        ;;
        esac
done


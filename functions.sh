function init_functions() {
    function call_() {
        if [ -z $1 ]; then; else
            # TIMER_THEN=$(/usr/local/bin/gdate +%s%N)
            TIMER_THEN=$(date +%s%N)
            eval ${1}
            [ "${VERBOSA}" -gt 0 ] && echo "${BEGIN_FUNCTION} $(timer_now) '${1}()' ${END_FUNCTION}"
        fi
    }

    function source_() {
        if [ -z $1 ]; then; else
            # TIMER_THEN=$(/usr/local/bin/gdate +%s%N)
            TIMER_THEN=$(date +%s%N)
            . "${1}"
            [ "${VERBOSA}" -gt 2 ] && echo "${BEGIN_SOURCING} $(timer_now) ${1} ${END_SOURCING}"
        fi
    }

    function load_() {
        source_ "${1}"
        call_ ${2}
    }

    function add_to_path_() {
        [ -z $1 ] || export PATH="${1}:${PATH}"
    }

    function timer_() {
        # local TIMER_NOW=$(/usr/local/bin/gdate +%s%N)
        local TIMER_NOW=$(date +%s%N)
        local TIMER_VALUE=$((((${TIMER_NOW} - ${1})) / 1000000))
        if [ ${#TIMER_VALUE} = 0 ]; then
            local spacing_="    "
        elif [ ${#TIMER_VALUE} = 1 ]; then
            local spacing_="   "
        elif [ ${#TIMER_VALUE} = 2 ]; then
            local spacing_="  "
        elif [ ${#TIMER_VALUE} = 3 ]; then
            local spacing_=" "
        else
            local spacing_=""
        fi
        echo "${TIMER_VALUE}${spacing_}"
        return 0
    }

    function timer_now() {
        # local TIMER_NOW=$(/usr/local/bin/gdate +%s%N)
        # local TIMER_VALUE=$(((${TIMER_NOW} - ${TIMER_THEN}) / 1000000))
        timer_ "${TIMER_THEN}"
        # echo -n "${TIMER_VALUE} "
        # return 0
    }

    function timer_all() {
        # local TIMER_NOW=$(/usr/local/bin/gdate +%s%N)
        # local TIMER_VALUE=$(((${TIMER_NOW} - ${TIMER_ALL_THEN}) / 1000000))
        timer_ "${TIMER_ALL_THEN}"
        # echo -n "${TIMER_VALUE} "
        # return 0
    }
}

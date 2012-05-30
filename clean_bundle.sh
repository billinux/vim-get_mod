#!/bin/sh

DIR=`git status | awk '{print $NF }'`
SUCCESS=0


clean_bundle() {
    for dir in $DIR
    do
        cd $dir
        `git add . && git commit -a -m "Update bundle $dir"`
        cd -
    done
}

case "$1" in

    help)
        echo "
        This script '$0' clean all 'bundles'

        * $0 help
        Show this help message

        * $0 start
        Clean all 'bundle' directories
        "
        exit 0
        ;;

    start)
        clean_bundle > /dev/null 2>&1

        echo "########################"
        echo "All bundles updated"
        echo "########################"

        exit 0
        ;;

    *)
        $0 help
        exit 0
        ;;

esac

exit 0

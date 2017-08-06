NAME=$1
set -e
rm out.stacks || TRUE
rm out.folded || TRUE
dtrace -x ustackframes=100 -n "profile-99 /execname == \"${NAME}\" && arg1/ {
    @[ustack()] = count(); } tick-60s { exit(0); }" -o ./out.stacks
stackcollapse.pl ./out.stacks > ./out.folded
flamegraph.pl -cp ./out.folded > ./${NAME//\//_}.svg

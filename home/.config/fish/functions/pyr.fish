# Defined in - @ line 2
function pyr
	set ROOT (git rev-parse --show-toplevel)
    env PYTHONPATH=$ROOT $ROOT/envs/research/bin/python3 $argv
end

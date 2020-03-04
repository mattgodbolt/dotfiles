# Defined in - @ line 2
function epoch --description 'Given a number of nanos since epoch, output a UNIX UTC timestamp' --argument epoch_time
	date -u -d @(math "$argv[1] / 1000000000")
end

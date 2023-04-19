# Defined in /tmp/fish.c4OD5Y/git-remote-sync.fish @ line 2
function git-remote-sync
    set local_sha (git rev-parse --verify HEAD)
    set remote cy2-desktop-37
    set base (basename (pwd))
    ssh $remote "cd remote-dev/$base; and git reset --hard; and git clean -df; and git fetch; and git checkout $local_sha"
    rsync -Cavz --delete-after --exclude river --exclude envs --exclude '*.pyc' --exclude 'cmake-build-*' --exclude 'perf.*' ./ $remote:remote-dev/$base/
    ssh $remote "make -C remote-dev/$base/ deps"
end

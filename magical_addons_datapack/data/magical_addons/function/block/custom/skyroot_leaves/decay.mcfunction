# block:custom/skyroot_leaves/decay
# called by: block:group/custom/leaves/decay

$execute unless function magical_addons:block/custom/skyroot_leaves/decay/find_log_$(path_permutation) run return 0

setblock ~ ~ ~ air

kill
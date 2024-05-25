$data modify storage testing:stack item set from storage testing:stack storage[$(i)]
data modify storage testing:stack args.Slot set from storage testing:stack item.Slot
data modify storage testing:stack item.Slot set value 0
data modify block -116 102 -149 Items append from storage testing:stack item
function testing:inventory/slot with storage testing:stack args
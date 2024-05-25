team join tagged @a[tag=games.tag.change.tagged,team=games.tag.runners]
tag @a remove games.tag.change.tagged
team join runners @a[tag=games.tag.change.runner,team=games.tag.tagged]
tag @a remove games.tag.change.runner

schedule clear games:tag/display/show_roles
function games:tag/display/show_roles
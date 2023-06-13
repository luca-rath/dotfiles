for project in (find ~/Projects -mindepth 2 -maxdepth 2 -type d)
    complete -f -c repo -a "(basename \"$project\")"
end

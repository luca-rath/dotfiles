for project in (find ~/Projects -mindepth 2 -maxdepth 2 -type d)
    complete -f -c repodir -a "(basename \"$project\")"
end

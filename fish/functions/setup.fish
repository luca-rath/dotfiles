## Defines abbreviations
function setup
    for abbreviation in (abbr -l)
        abbr -e $abbreviation
    end
    abbr g git
    abbr gf git fetch
    abbr gs git status
    abbr gc git commit
    abbr gm git pull --ff-only
    abbr gr git rb FETCH_HEAD
    abbr ga git add
    abbr gp git push
    abbr gd git diff
    abbr gco git checkout
    abbr ll ls -lAhF
    abbr bs brew services
    fisher
end

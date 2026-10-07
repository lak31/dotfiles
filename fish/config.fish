if status is-interactive

    # Homebrew
    eval (/opt/homebrew/bin/brew shellenv)

    # Starship prompt
    starship init fish | source

    # Editor
    set -gx EDITOR nvim

    # Aliases
    alias ll 'eza -la --icons --git --time-style=relative'
    alias ls 'eza --icons'
    alias lt 'eza -la --icons --sort=modified'
    alias tree 'eza --tree --icons'
    alias v 'nvim'
    alias .. 'cd ..'
    alias ... 'cd ../..'
    alias activate 'source .venv/bin/activate.fish'

    # Git abbreviations
    abbr -a gs git status
    abbr -a ga git add
    abbr -a gaa git add .
    abbr -a gc git commit
    abbr -a gcm git commit -m
    abbr -a gp git push
    abbr -a gpl git pull
    abbr -a gf git fetch origin
    abbr -a gb git branch
    abbr -a gbv git branch -vv
    abbr -a gco git checkout
    abbr -a gcb git checkout -b
    abbr -a gd git diff
    abbr -a gl git log --oneline
    abbr -a gl10 git log --oneline -10
    abbr -a grb git rebase
    abbr -a grbc git rebase --continue
    abbr -a grba git rebase --abort
    abbr -a gm git merge

    # Dev abbreviations
    abbr -a nr npm run
    abbr -a ni npm install
    abbr -a py python3
    abbr -a mk make
    abbr -a exs npx expo start
    abbr -a ext npx expo start --tunnel

end

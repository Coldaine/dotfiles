if status is-interactive
    # Commands to run in interactive sessions can go here
    
    # Aliases (converted from bash)
    alias ccnow='claude-monitor --plan max20 --timezone America/Chicago --view realtime'
    alias code='code .'
    # The `gooey` alias is commented out by default because it requires a local build.
    # To use it, you must first build the `gooey` utility and then uncomment the following line.
    # alias gooey="~/utilities/gooey/src-tauri/target/release/gooey &"
    alias ccDanger='claude --dangerously-skip-permissions'
    alias claude="/home/coldaine/.claude/local/claude"
    alias claudeDanger="claude --dangerously-skip-permissions"
    
    # NVM initialization
    if test -d $HOME/.nvm
        set -gx NVM_DIR $HOME/.nvm
    # To avoid a hard-coded Node.js version, this configuration uses the
    # version specified in ~/.nvmrc.
    if test -f "$HOME/.nvmrc"
        set -l nvm_version (string trim (cat "$HOME/.nvmrc"))
        if test -d "$NVM_DIR/versions/node/$nvm_version"
            fish_add_path "$NVM_DIR/versions/node/$nvm_version/bin"
        else
            echo "nvm: version '$nvm_version' from ~/.nvmrc is not installed. Falling back." >&2
            fish_add_path "$NVM_DIR/versions/node/v22.18.0/bin"
        end
    else
        fish_add_path "$NVM_DIR/versions/node/v22.18.0/bin"
    end
    end
    
    # PATH additions
    if test -d "$HOME/.bun/bin"
        fish_add_path "$HOME/.bun/bin"
    end
    if test -d "$HOME/genymotion"
        fish_add_path "$HOME/genymotion"
    end
end

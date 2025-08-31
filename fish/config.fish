if status is-interactive
    # Commands to run in interactive sessions can go here
    
    # Aliases (converted from bash)
    alias ccnow='claude-monitor --plan max20 --timezone America/Chicago --view realtime'
    alias code='code .'
    alias gooey="~/utilities/gooey/src-tauri/target/release/gooey &"
    alias ccDanger='claude --dangerously-skip-permissions'
    alias claude="/home/coldaine/.claude/local/claude"
    alias claudeDanger="claude --dangerously-skip-permissions"
    
    # NVM initialization
    if test -d $HOME/.nvm
        set -gx NVM_DIR $HOME/.nvm
        fish_add_path $HOME/.nvm/versions/node/v22.18.0/bin
    end
    
    # PATH additions
    fish_add_path $HOME/.bun/bin
    fish_add_path $HOME/genymotion/genymotion
end

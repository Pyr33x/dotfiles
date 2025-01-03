if [[ ":$FPATH:" != *":/Users/me3di/.zsh/completions:"* ]]; then export FPATH="/Users/me3di/.zsh/completions:$FPATH"; fi

# add node tp path
export PATH="/opt/homebrew/opt/node@22/bin:$PATH"

# add oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"

# ZSH_THEME="robbyrussell"

plugins=(git zsh-autosuggestions)

# load oh-my-zsh
source $ZSH/oh-my-zsh.sh

# git
alias g="git"
alias ga="git add"
alias gc="git commit"
alias gp="git push"
alias gpp="git pull"
alias gcc="git clone"

# pnpm
alias p="pnpm"
alias pi="pnpm install"
alias pa="pnpm add"
alias pu="pnpm update"
alias pd="pnpm dev"
alias ps="pnpm start"
alias pb="pnpm build"

# bun completions
[ -s "/Users/me3di/.bun/_bun" ] && source "/Users/me3di/.bun/_bun"

# add bun to path
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# bun alias
alias b="bun"
alias bi="bun install"
alias bd="bun run dev"
alias bb="bun run build"
alias bs="bun run start"

# term alias
alias c="clear"
alias e="exit"
alias q="exit"

# dev dir
alias dev="cd ~/Developer"

# dns switcher
alias dns="sh ~/.dns/switcher.sh"

# zed
# alias zed="open -a /Applications/Zed.app -n"

# lazygit
alias lg="lazygit"

# onefetch & fastfetch
alias ff="fastfetch"
alias of="onefetch"

# neovim
alias n="nvim"


autoload -Uz compinit
compinit

# add pnpm to path
export PNPM_HOME="/Users/me3di/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# set up starship prompt
eval "$(starship init zsh)"

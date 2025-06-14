 echo '# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.' >> .zshrc
 echo '# Initialization code that may require console input (password prompts, [y/n]' >> .zshrc
 echo '# confirmations, etc.) must go above this block; everything else may go below.' >> .zshrc
 echo 'if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then' >> .zshrc
 echo 'source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"' >> .zshrc
 echo 'fi' >> .zshrc
 echo 'POWERLEVEL9K_DISABLE_GITSTATUS=true' >> .zshrc
 echo 'export TERM=xterm-256color' >> .zshrc
 echo '# Use powerline' >> .zshrc
 echo 'USE_POWERLINE="true"' >> .zshrc
 echo '# Has weird character width' >> .zshrc
 echo '# Example:' >> .zshrc
 echo '#  is not a diamond' >> .zshrc
 echo 'HAS_WIDECHARS="false"' >> .zshrc
 echo '# Source manjaro-zsh-configuration' >> .zshrc
 echo 'if [[ -e /usr/local/share/zsh/manjaro-zsh-config ]]; then' >> .zshrc
 echo 'source /usr/local/share/zsh/manjaro-zsh-config' >> .zshrc
 echo 'fi' >> .zshrc
 echo '# Use manjaro zsh prompt' >> .zshrc
 echo 'if [[ -e /usr/local/share/zsh/manjaro-zsh-prompt ]]; then' >> .zshrc
 echo 'source /usr/local/share/zsh/manjaro-zsh-prompt' >> .zshrc
 echo 'fi' >> .zshrc

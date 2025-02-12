
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
# Add environment variable AX_ROOT for axmol
export AX_ROOT="/home/rfranr/source/05-norepo/axmol"
# Add axmol cmdline tool to PATH
export PATH=$AX_ROOT/tools/cmdline:$PATH

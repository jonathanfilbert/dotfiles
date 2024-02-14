export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export PATH="$PATH":"$HOME/.pub-cache/bin"
# eval "$(rbenv init -)" source /Users/jonathan.lisyanto/.zshrc

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export LOKALISE_API_TOKEN=2e0419c926878a4ee8598ec211a70fa208e3d291
export PATH="$PATH:/Users/jonathan.lisyanto/worskpace/dev/flutter/bin"
alias sim=arch -x86_64 /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app/Contents/MacOS/Simulator
alias emu="/Users/jonathan.lisyanto/Library/Android/sdk/emulator/emulator -no-boot-anim -no-audio -avd JOFIL"
alias emusmall="/Users/jonathan.lisyanto/Library/Android/sdk/emulator/emulator -no-boot-anim -no-audio -avd JOFIL_small"
PATH=$PATH:~/Library/Android/sdk/platform-tools
alias agc="melos exec --scope gopay_crypto -- fvm flutter analyze . --fatal-infos"
alias iosbig="xcrun simctl boot 59471EAF-3E1D-46AA-B3E6-BC0BD644634A --arch=x86_64"
alias iossmall="xcrun simctl boot 0A59DBA2-5827-492B-82D1-91E8E534837A --arch=x86_64"
alias ios="xcrun simctl boot D0FB020D-E62F-4F91-AD72-71B107822FF7 --arch=x86_64"
alias tkpd-restart="pnpm run lite:dev down && pnpm run lite:dev"
alias tkpd-stop="pnpm run lite:dev down"

# Podclean for flutter ios command
# go to ios folder, run podclean
function podclean()
{
rm -Rf Pods;
rm -Rf .symlinks;
rm -Rf Flutter/Flutter.framework;
rm -Rf Flutter/Flutter.podspec;
rm -Rf Podfile.lock;
pod cache clean --all;
pod deintegrate;
pod setup;
pod install;
}

[[ -s "/Users/jonathan.lisyanto/.gvm/scripts/gvm" ]] && source "/Users/jonathan.lisyanto/.gvm/scripts/gvm"

function fgc() {
echo "Formatting gopay_crypto...";
cd gopay_crypto;
find . -name "*.dart" -not -path "*/gen*" -not -path "*/l10n*" | xargs fvm dart format --set-exit-if-changed;
cd ..;
}

function utgc() {
echo "Running unit test gopay_crypto...";
cd gopay_crypto;
fvm flutter test --name='^(?!.*?Golden).*$' --coverage --reporter=compact
cd ..;
}

function covgc() {
echo "Running coverage gopay_crypto...";
cd gopay_crypto;
genhtml coverage/lcov.info -o coverage/html && open coverage/html/index.html
cd ..;
}

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/jonathan.lisyanto/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)

export GOPATH=$HOME/go
export GOROOT=/usr/local/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
export GO111MODULE=on
export GOPRIVATE=github.com/tokopedia

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/jonathan.lisyanto/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/jonathan.lisyanto/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/jonathan.lisyanto/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/jonathan.lisyanto/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# pnpm
export PNPM_HOME="/Users/jonathan.lisyanto/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

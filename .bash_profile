eval "$(pyenv init -)"
alias c='clear'
alias gs='git status'
export PATH=/Library/Frameworks/Python.framework/Versions/3.8/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/Apple/usr/bin:/Users/mohammed/Library/Android/sdk:/Users/mohammed/Library/Android/sdk/tools:/Users/mohammed/Library/Android/sdk/platform-tools:/Users/mohammed/Library/Android/sdk:/Users/mohammed/Library/Android/sdk/tools:/Users/mohammed/Library/Android/sdk/platform-tools:/Users/mohammed/Library/Android/sdk/build-tools/30.0.3/aapt2:/Users/mohammed/Library/Android/sdk/build-tools/31.0.0/aapt:/Users/mohammed/Library/Android/sdk/build-tools/31.0.0
export PATH=/Library/Frameworks/Python.framework/Versions/3.8/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/Apple/usr/bin:/Users/mohammed/Library/Android/sdk:/Users/mohammed/Library/Android/sdk/tools:/Users/mohammed/Library/Android/sdk/platform-tools:/Users/mohammed/Library/Android/sdk:/Users/mohammed/Library/Android/sdk/tools:/Users/mohammed/Library/Android/sdk/platform-tools:/Users/mohammed/Library/Android/sdk/build-tools/30.0.3/aapt2:/Users/mohammed/Library/Android/sdk/build-tools/31.0.0/aapt:/Users/mohammed/Library/Android/sdk
export PATH=/Library/Frameworks/Python.framework/Versions/3.8/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/Apple/usr/bin:/Users/mohammed/Library/Android/sdk:/Users/mohammed/Library/Android/sdk/tools:/Users/mohammed/Library/Android/sdk/platform-tools:/Users/mohammed/Library/Android/sdk:/Users/mohammed/Library/Android/sdk/tools:/Users/mohammed/Library/Android/sdk/platform-tools:/Users/mohammed/Library/Android/sdk/build-tools/30.0.3/aapt2:/Users/mohammed/Library/Android/sdk/build-tools/31.0.0/aapt:/Users/mohammed/Library/Android/sdk/
export PATH=/Library/Frameworks/Python.framework/Versions/3.8/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/Apple/usr/bin:/Users/mohammed/Library/Android/sdk:/Users/mohammed/Library/Android/sdk/tools:/Users/mohammed/Library/Android/sdk/platform-tools:/Users/mohammed/Library/Android/sdk:/Users/mohammed/Library/Android/sdk/tools:/Users/mohammed/Library/Android/sdk/platform-tools:/Users/mohammed/Library/Android/sdk/build-tools/30.0.3/aapt2:/Users/mohammed/Library/Android/sdk/build-tools/31.0.0/aapt:/Users/mohammed/Library/Android/sdk/build-tools/31.0.0/aapt/
export PATH=/Library/Frameworks/Python.framework/Versions/3.8/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/Apple/usr/bin:/Users/mohammed/Library/Android/sdk:/Users/mohammed/Library/Android/sdk/tools:/Users/mohammed/Library/Android/sdk/platform-tools:/Users/mohammed/Library/Android/sdk:/Users/mohammed/Library/Android/sdk/tools:/Users/mohammed/Library/Android/sdk/platform-tools:/Users/mohammed/Library/Android/sdk/build-tools/30.0.3/aapt2:/Users/mohammed/Library/Android/sdk/build-tools/31.0.0/aapt:/Users/mohammed/Library/Android/sdk/build-tools/31.0.0/aapt
export PATH=/Library/Frameworks/Python.framework/Versions/3.8/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/Apple/usr/bin:/Users/mohammed/Library/Android/sdk:/Users/mohammed/Library/Android/sdk/tools:/Users/mohammed/Library/Android/sdk/platform-tools:/Users/mohammed/Library/Android/sdk:/Users/mohammed/Library/Android/sdk/tools:/Users/mohammed/Library/Android/sdk/platform-tools:/Users/mohammed/Library/Android/sdk/build-tools/30.0.3/aapt2:/Users/mohammed/Library/Android/sdk/build-tools/31.0.0/aapt:/Users/mohammed/Library/Android/sdk/build-tools/31.0.0/aapt2
export PATH=/Library/Frameworks/Python.framework/Versions/3.8/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/Apple/usr/bin:/Users/mohammed/Library/Android/sdk:/Users/mohammed/Library/Android/sdk/tools:/Users/mohammed/Library/Android/sdk/platform-tools:/Users/mohammed/Library/Android/sdk:/Users/mohammed/Library/Android/sdk/tools:/Users/mohammed/Library/Android/sdk/platform-tools:/Users/mohammed/Library/Android/sdk/build-tools/30.0.3/aapt2:/Users/mohammed/Library/Android/sdk/build-tools/31.0.0/aapt:/Users/mohammed/Library/Android/sdk/build-tools/31.0.0/aapt2/
alias jenkins-linux-6clone='ssh ubuntu@ec2-18-236-71-12.us-west-2.compute.amazonaws.com'
alias Jenkins-Linux-6-Clone='ssh ubuntu@ec2-18-236-71-12.us-west-2.compute.amazonaws.com'
alias jenkins-linux-1='ssh ubuntu@ec2-54-202-200-243.us-west-2.compute.amazonaws.com'
alias menueditor-new='ssh ubuntu@ec2-54-202-200-243.us-west-2.compute.amazonaws.com'
alias menueditor-new='ssh ubuntu@ec2-54-185-77-198.us-west-2.compute.amazonaws.com'
export AWS_REGION=us-east-1
parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}
COLOR_DEF='%f'
COLOR_USR='%F{243}'
COLOR_DIR='%F{197}'
COLOR_GIT='%F{39}'
NEWLINE=$'\n'
setopt PROMPT_SUBST
export PROMPT='${COLOR_USR}%n@%M ${COLOR_DIR}%d ${COLOR_GIT}$(parse_git_branch)${COLOR_DEF}${NEWLINE}%% '

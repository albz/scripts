#--- TERMINAL COLOR ---#
alias ls='ls -G'
export CLICOLOR=1
export LSCOLORS=Gxfxcxdxbxegedabagacad

#--- PYTHON! ---#
PYTHONSTARTUP=$HOME/.pythonstartup
export PYTHONSTARTUP

#--- environment variables ---#
export GitHub="/Users/alberto/codes"
export NetezzaDriver="/Users/alberto/Documents/clients/IWSconsulting/jdbc_connectors/netezza/nzjdbc3.jar"


#--- ANACONDA ---#
# added by Anaconda3 2019.03 installer
# >>> conda init >>> !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<

#--- JULIA path ---#
PATH="/Applications/Julia-1.1.app/Contents/Resources/julia/bin:$PATH"
export PATH

#--- PYTHON-program-utilities-paths! ---#
PATH="~/Codes/Python_general_controllers:$PATH"
PATH="~/Codes/Python_general_controllers/FORREST:$PATH"
PATH="~/Codes/Python_general_controllers/DUED_GRAPHICS:$PATH"
PATH="~/Codes/Python_general_controllers/nml_manipulation:$PATH"
PATH="~/Codes/Python_general_controllers/PHIC:$PATH"
export PATH
#--- Architect-PYTHON-paths! ---#
PATH="~/Codes/Code_Architect/Architect/utils/python_utils:$PATH"
export PATH

#--- OMP number of THREADS ---#
export OMP_NUM_THREADS=2

#--- SSH Alias reminder and login ---#
alias ssh_gaia='ssh -Y gaia'
alias ssh_bart='ssh -Y bart'
alias ssh_dave='ssh -Y dave'
alias ssh_lisa='ssh -Y lisa'
alias ssh_lxp='ssh -Y lxp'
alias ssh_fermi='ssh -Y fermi'
alias ssh_cnaf='ssh -Y ui-hpc'
alias ssh_hgrepo_gaps_gaia='ssh -Y hgrepo_gaps_gaia'

#--- TEXTWRANGLER ---#
alias twopen="open -a textwrangler"

#--- Sublime Text ---#
alias stopen="open -a sublime\ text"

#--- Atom Text ---#
alias atom="open -a atom"

#--- sources ---#
#source /opt/intel/Compiler/11.1/076/bin/iccvars.sh ia32
#source /opt/intel/Compiler/11.1/076/bin/ifortvars.sh ia32
alias restartsh="source ~/.profile"
alias opensh="open -e ~/.profile"

#--- history ---#
HISTSIZE=1000
HISTFILESIZE=2000

#--- make bash autocomplete with up arrow ---#
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'
#bindkey "^[[5~" history-search-backward
#bindkey "^[[6~" history-search-forward

#--- LANG ---#
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

alias ll="ls -l"
alias lh="ls -lh"

#rm nohup
alias rmnohup='find . -name nohup.out -exec rm -f {} \;'
# added by Anaconda3 2019.07 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/Users/alberto/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/Users/alberto/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/alberto/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/Users/alberto/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<

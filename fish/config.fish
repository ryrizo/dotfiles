alias powerline-go="$HOME/go/bin/powerline-go"
alias python="python3.8"
alias pip="pip3"
alias jupyter-notebook="/home/ryan/anaconda3/bin/jupyter-notebook --no-browser"

function fish_greeting 
  echo "A morning on the porch, fresh coffee in hand, greeting the fresh air."
end

function fish_prompt
  eval powerline-go \
  -error $status \
  -shell bare \
  -cwd-max-depth 2 \
  -modules "venv,user,cwd,git"
end

function fish_right_prompt
  eval powerline-go \
  -modules "exit,time" \
  -shell bare \
  -mode flat
end

cd ~

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /home/ryan/anaconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<


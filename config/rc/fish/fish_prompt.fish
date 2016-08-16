#!/bin/fish
function fish_prompt --description 'Write out the prompt'
   #echo -n -s ' '  (prompt_pwd) ' ' (prompt_git) (set_color FFFFFF) '> '
   echo -n -s ' '  (prompt_pwd) ' ' (prompt_git) (set_color normal) '> '
#   echo -n -s ' '  (prompt_pwd) ' ' (prompt_git) '> '
end

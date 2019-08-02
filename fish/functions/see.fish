function see --argument filename
  if count $argv > /dev/null
    if test -f $filename
      bat $filename
    end
  else
    fzf | xargs bat
  end
end

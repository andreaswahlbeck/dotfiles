if [ -e $HOME/.bash_git_aliases ]; then
    source $HOME/.bash_git_aliases
fi

alias ga='gcloud auth login --update-adc'
alias tsnode='node --import=tsx'


# Website shortcuts
alias gcp='open "https://console.cloud.google.com/welcome?authuser=1"'


alias timecurl='curl --silent --show-error --location --output /dev/null \
    --write-out "\n\
  Time - DNS Lookup:   %{time_namelookup}s\n\
  Time - Connect:      %{time_connect}s\n\
  Time - AppConnect:   %{time_appconnect}s\n\
  Time - Pretransfer:  %{time_pretransfer}s\n\
  Time - Redirect:     %{time_redirect}s\n\
  Time - StartTransfer:%{time_starttransfer}s\n\
  Time - Total:        %{time_total}s\n\
  Size - Download:     %{size_download} bytes\n\
  Speed - Download:    %{speed_download} bytes/sec\n\
  HTTP Code:           %{http_code}\n\
  URL:                 %{url_effective}\n\
"'
alias pau='paru -Syu'
alias pauu='paru -Syyuu'
alias vim nvim
alias g git

alias d docker
alias dc='docker compose'
function dmirror
    set repository "ossiriand.local:30021/ossiriand-1"
    set image_name $argv
    docker pull "$image_name"
    docker tag "$image_name" "$repository/$image_name"
    docker push "$repository/$image_name"
end

alias k kubectl
alias kx kubectx

alias scan_to_png='scanimage --device "airscan:w0:EPSON L3150 Series" --format=png'

alias create_virtual_sink='pactl load-module module-null-sink sink_name=Virtual_Sink sink_properties=device.description="Virtual_Sink"'

alias vpnpc='sudo protonvpn connect is-pl#1'
alias vpnpd='sudo protonvpn disconnect'
alias wgoc='sudo wg-quick up ossiriand'
alias wgod='sudo wg-quick down ossiriand'


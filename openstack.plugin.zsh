###############
### Aliases ###
###############

# general
alias o='openstack'
function osw {
  export OS_CLOUD=$@
}

# compute
alias oc='openstack compute'
alias ocsl='openstack compute service list'

# server
alias os='openstack server'
alias osl='openstack server list'
alias ossh='openstack server show'
alias ossta='openstack server start'
alias ossto='openstack server stop'
alias osr='openstack server reboot'
alias osd='openstack server delete'
function osip {
  openstack server show $@ --format yaml | yq ".addresses"
}
function oscdl {
  openstack server create \
      --image "Debian 11 (Bullseye)" \
      --boot-from-volume 5 \
      --key-name flow \
      --flavor $2 \
      --network $3 \
      $4
}
function oscndl {
  openstack server create \
      --image "Debian 11 (Bullseye)" \
      --boot-from-volume 5 \
      --key-name flow \
      --flavor hosting.nano \
      --network vm \
      $@
}

# service
alias osvc='openstack service'
alias osvcl='openstack service list'

# port
alias op='openstack port'
alias opl='openstack port list'
alias opsh='openstack port show'
alias opc='openstack port create'
alias opd='openstack port delete'
alias ops='openstack port set'
alias opu='openstack port unset'

# project
alias opj='openstack project'
alias opjc='openstack project create'
alias opjd='openstack project delete'
alias opjl='openstack project list'
alias opjs='openstack project set'
alias opjsh='openstack project show'
alias opjp='openstack project purge'
alias opjcl='openstack project cleanup'


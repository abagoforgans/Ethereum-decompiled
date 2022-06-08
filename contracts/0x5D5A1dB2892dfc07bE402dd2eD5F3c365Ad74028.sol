contract main {




// =====================  Runtime code  =====================


address owner;
address sub_142ebf3cAddress;
address sub_fc0d561eAddress;
address sub_cccb7c75Address;

function sub_142ebf3c(?) {
    return sub_142ebf3cAddress
}

function owner() {
    return owner
}

function sub_cccb7c75(?) {
    return sub_cccb7c75Address
}

function sub_fc0d561e(?) {
    return sub_fc0d561eAddress
}

function destroy() {
    require msg.sender == owner
    selfdestruct(owner)
}

function destroyAndSend(address arg1) {
    require msg.sender == owner
    selfdestruct(arg1)
}

function _fallback() {
  stop
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function sub_d183ce74(?) {
    require msg.sender == owner
    sub_cccb7c75Address = arg1
    emit 0x7512fba4: sub_cccb7c75Address, arg1
    return 1
}

function sub_e5e1e62d(?) {
    require msg.sender == owner
    sub_fc0d561eAddress = arg1
    emit 0x4f446f2c: sub_fc0d561eAddress, arg1
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setUsersContract(address arg1) {
    require msg.sender == owner
    sub_142ebf3cAddress = arg1
    emit 0x9aa575e1: sub_142ebf3cAddress, arg1
    return 1
}



}

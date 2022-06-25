contract main {




// =====================  Runtime code  =====================


address owner;
address sub_de58b9e2Address;

function owner() {
    return owner
}

function sub_de58b9e2(?) {
    require msg.sender == owner
    return sub_de58b9e2Address
}

function kill() {
    require msg.sender == owner
    selfdestruct(owner)
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_07c74b8d(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    sub_de58b9e2Address = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function _fallback() payable {
    call sub_de58b9e2Address with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x1eb669b9: msg.sender, msg.value
}



}

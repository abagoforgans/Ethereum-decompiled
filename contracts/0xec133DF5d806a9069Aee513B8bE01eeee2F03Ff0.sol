contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
uint8 stor2;

function sub_46f7c98a(?) {
    return bool(stor1[arg1])
}

function owner() {
    return owner
}

function sub_e29cda48(?) {
    return bool(stor2)
}

function _fallback() payable {
    revert
}

function setOpenToAllArtist(bool arg1) {
    require msg.sender == owner
    stor2 = uint8(arg1)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function isEnabledForAccount(address arg1) {
    if not stor2:
        return bool(stor1[address(arg1)])
    return 1
}

function setAllowedArtist(address arg1, bool arg2) {
    require msg.sender == owner
    stor1[address(arg1)] = uint8(arg2)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdrawStuckEther(address arg1) {
    require msg.sender == owner
    if not arg1:
        revert with 0, 'Invalid address provided'
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}

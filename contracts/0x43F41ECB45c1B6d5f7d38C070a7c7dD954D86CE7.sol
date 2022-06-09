contract main {




// =====================  Runtime code  =====================


#
#  - sub_da1169be(?)
#
address owner;
mapping of uint8 stor1;

function owner() {
    return owner
}

function sub_c6e530d6(?) {
    return bool(stor1[arg1])
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function sub_47b382bc(?) {
    require msg.sender == owner
    require arg1 < 32
    stor1[arg1] = uint8(arg2)
    emit 0xb9246d61: arg2, arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}



}

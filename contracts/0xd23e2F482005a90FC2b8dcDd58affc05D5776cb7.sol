contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;

function owner() payable {
    return owner
}

function sub_cb8d406f(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_41b7de05(?) payable {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    stor1[address(arg1)] = uint8(arg2)
    if not arg2:
        emit 0x5e1b89d2: arg1
    else:
        emit 0xc8c419b6: arg1
    return 1
}



}

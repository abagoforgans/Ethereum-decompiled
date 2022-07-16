contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
mapping of uint8 stor2;
mapping of uint256 sub_de2d8603;

function sub_0c2140dd(?) {
    return bool(stor2[arg1][arg2])
}

function owner() {
    return owner
}

function sub_de2d8603(?) {
    return sub_de2d8603[arg1][arg2]
}

function managers(address arg1) {
    return bool(stor1[arg1])
}

function _fallback() payable {
    revert
}

function sub_8fca0516(?) {
    require stor1[msg.sender]
    stor2[arg1][arg2] = uint8(arg3)
    emit 0x8358edca: arg3, arg1, arg2
}

function sub_cbad3562(?) {
    require stor1[msg.sender]
    sub_de2d8603[arg1][arg2] = arg3
    emit 0xc124568a: arg3, arg1, arg2
}

function setManager(address arg1, bool arg2) {
    require msg.sender == owner
    stor1[address(arg1)] = uint8(arg2)
    emit ManagerSet(address(arg1), arg2);
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require owner != arg1
    owner = arg1
    stor1[address(arg1)] = 1
    stor1[msg.sender] = 0
}



}

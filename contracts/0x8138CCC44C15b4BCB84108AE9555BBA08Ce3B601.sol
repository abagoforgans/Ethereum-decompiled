contract main {




// =====================  Runtime code  =====================


address owner;
mapping of struct whitelist;

function getContributor(address arg1) {
    return bool(whitelist[address(arg1)].field_0), 
           whitelist[address(arg1)].field_0,
           whitelist[address(arg1)].field_0,
           whitelist[address(arg1)].field_184
}

function getClearance(address arg1) {
    return bool(whitelist[address(arg1)].field_0)
}

function owner() {
    return owner
}

function whitelist(address arg1) {
    return bool(whitelist[arg1].field_0), whitelist[arg1].field_0, whitelist[arg1].field_0, whitelist[arg1].field_184
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setContributor(address arg1, bool arg2, uint16 arg3, uint16 arg4, address arg5) {
    require msg.sender == owner
    require arg3 < 10000
    require arg4 < 10000
    whitelist[address(arg1)].field_0 = uint8(arg2)
    whitelist[address(arg1)].field_8 = arg3
    whitelist[address(arg1)].field_24 = arg5
    whitelist[address(arg1)].field_184 = arg4
    whitelist[address(arg1)].field_200 = Mask(56, 200, arg2) >> 200
}



}

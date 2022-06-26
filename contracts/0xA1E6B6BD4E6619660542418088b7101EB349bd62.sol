contract main {




// =====================  Runtime code  =====================


address owner;
mapping of address sub_62120c91;
mapping of uint64 sub_f858d07f;
mapping of address sub_3ea6ccdc;
mapping of uint8 stor4;

function sub_26d98c3d(?) {
    require calldata.size - 4 >= 32
    return bool(sub_62120c91[Mask(48, 208, arg1)])
}

function sub_3ea6ccdc(?) {
    require calldata.size - 4 >= 32
    return sub_3ea6ccdc[arg1]
}

function sub_62120c91(?) {
    require calldata.size - 4 >= 32
    return sub_62120c91[Mask(48, 208, arg1)]
}

function accessAllowed(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor4[arg1])
}

function owner() {
    return owner
}

function sub_f858d07f(?) {
    require calldata.size - 4 >= 32
    return Mask(48, 208, sub_f858d07f[arg1])
}

function _fallback() payable {
    revert
}

function sub_3c043ec6(?) {
    require calldata.size - 4 >= 96
    sub_62120c91[Mask(48, 208, arg2)] = arg1
    sub_f858d07f[address(arg1)] = Mask(48, 208, arg2) >> 208
    sub_3ea6ccdc[address(arg1)] = arg3
}

function denyAccess(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    stor4[address(arg1)] = 0
}

function allowAccess(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    stor4[address(arg1)] = 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    require arg1
    owner = arg1
}



}

contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
address stor2;
mapping of uint256 sub_5173e831;
mapping of uint256 sub_3fb95fb1;
mapping of uint256 sub_7281f97c;
mapping of uint256 sub_08a4cd06;
mapping of uint8 stor7;
mapping of uint256 sub_947db38f;
mapping of uint256 sub_bebe8101;
mapping of uint256 sub_19b1e340;

function sub_08a4cd06(?) {
    require stor2 != arg1
    return sub_08a4cd06[address(arg1)][arg2 << 224]
}

function sub_19b1e340(?) {
    return sub_19b1e340[address(arg1)]
}

function sub_3fb95fb1(?) {
    return sub_3fb95fb1[arg1 << 224]
}

function sub_5173e831(?) {
    return sub_5173e831[arg1 << 224]
}

function sub_7281f97c(?) {
    return sub_7281f97c[arg2 << 224][arg1 << 224]
}

function sub_77ac56b1(?) {
    return bool(stor7[address(arg1)][arg2 << 224])
}

function owner() {
    return owner
}

function sub_947db38f(?) {
    return sub_947db38f[address(arg1)][arg2 << 224]
}

function sub_bebe8101(?) {
    return sub_bebe8101[address(arg1)]
}

function newOwner() {
    return newOwner
}

function _fallback() payable {
    revert
}

function sub_3550275e(?) {
    require msg.sender == owner
    sub_3fb95fb1[arg1 << 224] = arg2
}

function sub_a62a5a00(?) {
    require msg.sender == owner
    sub_5173e831[arg1 << 224] = arg2
}

function sub_23c64e49(?) {
    require msg.sender == owner
    sub_bebe8101[address(arg1)] = arg2
}

function sub_93e94df6(?) {
    require msg.sender == owner
    sub_19b1e340[address(arg1)] = arg2
}

function sub_d2c023ee(?) {
    require msg.sender == owner
    sub_7281f97c[arg3 << 224][arg1 << 224] = arg2
}

function sub_2f2d80e7(?) {
    require msg.sender == owner
    stor7[address(arg1)][arg2 << 224] = uint8(arg3)
}

function sub_56963e00(?) {
    require msg.sender == owner
    sub_947db38f[address(arg1)][arg2 << 224] = arg3
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require owner != arg1
    newOwner = arg1
}

function sub_784af991(?) {
    require msg.sender == owner
    require stor2 != arg1
    sub_08a4cd06[address(arg1)][arg2 << 224] = arg3
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnerUpdate(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function sub_0c4e7c4c(?) {
    require msg.sender == owner
    require ext_code.size(stor2)
    call stor2.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function transferTokens(address arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    require stor2 != arg1
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}

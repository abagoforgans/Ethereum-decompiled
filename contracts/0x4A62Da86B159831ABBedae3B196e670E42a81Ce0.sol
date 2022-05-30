contract main {




// =====================  Runtime code  =====================


mapping of struct stor0;
mapping of uint256 versions;

function versions(address arg1) {
    return versions[arg1]
}

function _fallback() payable {
    revert
}

function sub_e1e322ed(?) {
    return stor0[arg1].field_0, stor0[arg1].field_256, stor0[arg1].field_512
}

function sub_2fee4eff(?) {
    if arg4 != versions[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only last version of the app can be update'
    versions[address(msg.sender)]++
    stor0[address(msg.sender)].field_0 = arg1
    stor0[address(msg.sender)].field_256 = arg2
    stor0[address(msg.sender)].field_512 = arg3
    emit 0xdb808cdf: arg1 << 248, arg2, arg3, msg.sender, arg4
}



}

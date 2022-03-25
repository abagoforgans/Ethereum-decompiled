contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 931]




// =====================  Runtime code  =====================


mapping of struct providers;
mapping of address sub_e9e2a1ad;

function sub_05e8b2bb(?) {
    return bool(sub_f883ded5[address(arg2)][address(stor2[arg1])].field_0)
}

function providers(address arg1) {
    return providers[arg1].field_0, providers[arg1].field_256
}

function sub_56fa3035(?) {
    require arg2 < sub_f883ded5[address(arg1)].field_256
    return stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_f883ded5', 0))) + arg2].field_0
}

function sub_e9e2a1ad(?) {
    return address(sub_e9e2a1ad[arg1])
}

function sub_f883ded5(?) {
    return sub_f883ded5[address(arg1)].field_256
}

function _fallback() payable {
    revert 
}

function sub_799cb1c2(?) {
    require providers[address(arg1)].field_256
    sub_f883ded5[address(msg.sender)][address(arg1)].field_0 = 1
}

function sub_2328ceb6(?) {
    if address(sub_e9e2a1ad[arg1]):
        require msg.sender == address(sub_e9e2a1ad[arg1])
    else:
        uint256(sub_e9e2a1ad[arg1]) = msg.sender or Mask(96, 160, uint256(sub_e9e2a1ad[arg1]))
    providers[address(msg.sender)].field_0 = arg1
    providers[address(msg.sender)].field_256 = arg2
}

function sub_262ed691(?) {
    require providers[address(arg1)].field_0
    sub_f883ded5[address(msg.sender)].field_256++
    if not sub_f883ded5[address(msg.sender)].field_256 <= sub_f883ded5[address(msg.sender)].field_256 + 1:
        idx = sub_f883ded5[address(msg.sender)].field_256 + 1
        while sub_f883ded5[address(msg.sender)].field_256 > idx:
            sub_f883ded5[address(msg.sender)][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_f883ded5', 0))) + sub_f883ded5[address(msg.sender)].field_256].field_0 = arg1 or Mask(96, 160, stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_f883ded5', 0))) + sub_f883ded5[address(msg.sender)].field_256].field_0)
}



}

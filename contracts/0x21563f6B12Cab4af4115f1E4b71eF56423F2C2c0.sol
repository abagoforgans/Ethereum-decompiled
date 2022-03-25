contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 2323]




// =====================  Runtime code  =====================


mapping of struct providers;
mapping of address sub_e9e2a1ad;

function sub_05e8b2bb(?) {
    return bool(sub_f883ded5[address(arg2)][address(stor2[arg1])].field_0)
}

function providers(address arg1) {
    mem[192] = providers[arg1].field_0
    idx = 192
    s = 0
    while providers[arg1].length + 192 > idx + 32:
        mem[idx + 32] = providers[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=providers[arg1].length, data=mem[192 len providers[arg1].length + (floor32(providers[arg1].length - 1) + -providers[arg1].length + 32 % 32)]), 
           providers[arg1].field_256
}

function sub_56fa3035(?) {
    require arg2 < sub_f883ded5[address(arg1)].field_256
    return stor[arg2 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_f883ded5', 0)))].field_0
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

function sub_08e3eff9(?) {
    if address(sub_e9e2a1ad[arg1]):
        require address(sub_e9e2a1ad[arg1]) == msg.sender
    else:
        uint256(sub_e9e2a1ad[arg1]) = msg.sender or Mask(96, 160, uint256(sub_e9e2a1ad[arg1]))
    providers[address(msg.sender)][].field_0 = Array(len=arg2.length, data=arg2[all])
    providers[address(msg.sender)].field_256 = arg1
}

function recordVisit(address arg1, string arg2) {
    require Mask(255, 1, (256 * not providers[address(arg1)].field_0) - 1 and providers[address(arg1)].field_0)
    sub_f883ded5[address(msg.sender)].field_256++
    if not sub_f883ded5[address(msg.sender)].field_256 <= sub_f883ded5[address(msg.sender)].field_256 + 1:
        idx = sub_f883ded5[address(msg.sender)].field_256 + 1
        while sub_f883ded5[address(msg.sender)].field_256 > idx:
            sub_f883ded5[address(msg.sender)][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    stor[sub_f883ded5[address(msg.sender)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_f883ded5', 0)))].field_0 = arg1 or Mask(96, 160, stor[sub_f883ded5[address(msg.sender)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_f883ded5', 0)))].field_0)
}



}

contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;

function _fallback() payable {
    stor0 = msg.sender
    stor2 = 0
    return code.data[52 len 1299]
}



// =====================  Runtime code  =====================


address owner;
array of struct sub_ce60f508;
uint256 sub_c4819b15;

function owner() {
    return owner
}

function sub_c4819b15(?) {
    return sub_c4819b15
}

function sub_ce60f508(?) {
    require sub_ce60f508[arg1].field_0 - 1 < sub_ce60f508[arg1].field_0
    return sub_ce60f508[arg1][sub_ce60f508[arg1].field_0 - 1].field_256
}

function sub_da0aab4e(?) {
    return sub_ce60f508[arg1].field_0
}

function sub_fa5f8382(?) {
    require sub_ce60f508[arg1].field_0 - 1 < sub_ce60f508[arg1].field_0
    return sub_ce60f508[arg1][sub_ce60f508[arg1].field_0 - 1].field_0
}

function destroy() {
    if owner != msg.sender:
    selfdestruct(owner)
}

function _fallback() payable {
    revert 
}

function sub_89340af6(?) {
    if arg2 >= sub_ce60f508[arg1].field_0:
        return 0
    require arg2 < sub_ce60f508[arg1].field_0
    return sub_ce60f508[arg1][arg2].field_0
}

function sub_f32432bc(?) {
    if arg2 >= sub_ce60f508[arg1].field_0:
        return 0
    require arg2 < sub_ce60f508[arg1].field_0
    return sub_ce60f508[arg1][arg2].field_256
}

function sub_cd2684d9(?) {
    require owner == msg.sender
    require sub_ce60f508[arg1].field_0 <= 0
    require 0 < sub_ce60f508[arg1].field_0
    sub_ce60f508[arg1].field_0 = block.timestamp
    require 0 < sub_ce60f508[arg1].field_0
    sub_ce60f508[arg1].field_256 = arg1
    sub_c4819b15++
    return 1
}

function sub_447dd686(?) {
    require owner == msg.sender
    require sub_ce60f508[arg1].field_0 < 100
    sub_ce60f508[arg1].field_0++
    if not sub_ce60f508[arg1].field_0 <= sub_ce60f508[arg1].field_0 + 1:
        idx = 2 * sub_ce60f508[arg1].field_0 + 1
        while 2 * sub_ce60f508[arg1].field_0 > idx:
            sub_ce60f508[arg1][idx].field_0 = 0
            sub_ce60f508[arg1][idx].field_256 = 0
            idx = idx + 2
            continue 
    sub_ce60f508[arg1][sub_ce60f508[arg1].field_0].field_0 = block.timestamp
    sub_ce60f508[arg1][sub_ce60f508[arg1].field_0].field_256 = arg2
    return 1
}



}

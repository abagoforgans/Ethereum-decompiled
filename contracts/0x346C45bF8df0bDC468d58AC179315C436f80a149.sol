contract main {


// =======================  Init code  ======================


const _fallback = code.data[25 len 491]




// =====================  Runtime code  =====================


address owner;
uint256 sub_c4819b15;

function owner() {
    return owner
}

function sub_c4819b15(?) {
    return sub_c4819b15
}

function _fallback() payable {
    revert 
}

function sub_396752f0(?) {
    owner = msg.sender
    sub_c4819b15 = 0
}

function sub_cd2684d9(?) {
    require owner == msg.sender
    require stor1[arg1].field_256 <= 0
    stor1[arg1].field_0 = block.timestamp
    stor1[arg1].field_256++
    if not stor1[arg1].field_256 <= stor1[arg1].field_256 + 1:
        idx = stor1[arg1].field_256 + 1
        while stor1[arg1].field_256 > idx:
            stor1[arg1][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    stor[stor1[arg1].field_256 + ('array', 1, ('map', ('param', 'arg1'), ('name', 'stor1', 1)))].field_0 = arg1
    sub_c4819b15++
    return 1
}



}

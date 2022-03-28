contract main {


// =======================  Init code  ======================


const _fallback = code.data[25 len 760]




// =====================  Runtime code  =====================


address owner;
array of struct stor1;
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

function sub_396752f0(?) payable {
    owner = msg.sender
    sub_c4819b15 = 0
}

function sub_cd2684d9(?) {
    require owner == msg.sender
    require stor1[arg1].field_0 <= 0
    require 0 < stor1[arg1].field_0
    stor1[arg1].field_0 = block.timestamp
    require 0 < stor1[arg1].field_0
    stor1[arg1].field_256 = arg1
    sub_c4819b15++
    return 1
}

function sub_447dd686(?) {
    require owner == msg.sender
    require stor1[arg1].field_0 < 100
    stor1[arg1].field_0++
    if not stor1[arg1].field_0 <= stor1[arg1].field_0 + 1:
        idx = 2 * stor1[arg1].field_0 + 1
        while 2 * stor1[arg1].field_0 > idx:
            stor1[arg1][idx].field_0 = 0
            stor1[arg1][idx].field_256 = 0
            idx = idx + 2
            continue 
    stor1[arg1][stor1[arg1].field_0].field_0 = block.timestamp
    stor1[arg1][stor1[arg1].field_0].field_256 = arg2
    return 1
}



}

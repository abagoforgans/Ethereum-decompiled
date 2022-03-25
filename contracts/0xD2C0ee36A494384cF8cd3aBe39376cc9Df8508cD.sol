contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 832]




// =====================  Runtime code  =====================


const get = 0


uint256 sub_b7f3f5c6;
uint256 sub_e53f8286;
mapping of struct sub_5e8ea25a;

function sub_5e8ea25a(?) payable {
    return sub_5e8ea25a[arg1].field_0, 
           sub_5e8ea25a[arg1].field_256,
           sub_5e8ea25a[arg1].field_512,
           sub_5e8ea25a[arg1].field_768,
           sub_5e8ea25a[arg1].field_1024,
           sub_5e8ea25a[arg1].field_1280,
           sub_5e8ea25a[arg1].field_1536
}

function sub_b7f3f5c6(?) payable {
    return sub_b7f3f5c6
}

function sub_e53f8286(?) payable {
    return sub_e53f8286
}

function _fallback() payable {
  stop
}

function sub_c01778d7(?) payable {
    if msg.sender == sub_5e8ea25a[arg1].field_0:
        call sub_5e8ea25a[arg1].field_0 with:
           value sub_5e8ea25a[arg1].field_512 + sub_5e8ea25a[arg1].field_1280 wei
             gas 0 wei
    return 1
}

function sub_ff31c389(?) payable {
    if sub_5e8ea25a[arg2].field_256 == msg.sender:
        call sub_5e8ea25a[arg2][7][arg1].field_0 with:
           value sub_5e8ea25a[arg2].field_768 wei
             gas 0 wei
        sub_5e8ea25a[arg2][7][arg1].field_512 = 1
        sub_5e8ea25a[arg2].field_512 -= sub_5e8ea25a[arg2].field_768
    return 1
}

function sub_5646a3e2(?) payable {
    sub_b7f3f5c6++
    sub_5e8ea25a[stor0].field_0 = msg.sender or Mask(96, 160, sub_5e8ea25a[stor0].field_0)
    sub_5e8ea25a[stor0].field_512 = msg.value
    sub_5e8ea25a[stor0].field_768 = arg1
    sub_5e8ea25a[stor0].field_256 = arg2 or Mask(96, 160, sub_5e8ea25a[stor0].field_256)
    sub_5e8ea25a[stor0].field_1536 = 0
    sub_5e8ea25a[stor0].field_1280 = 0
    return sub_b7f3f5c6
}

function sub_1974d303(?) payable {
    if sub_5e8ea25a[arg1].field_512 > sub_5e8ea25a[arg1].field_1536:
        return 0
    sub_e53f8286++
    sub_5e8ea25a[arg1][7][stor1].field_0 = msg.sender or Mask(96, 160, sub_5e8ea25a[arg1][7][stor1].field_0)
    sub_5e8ea25a[arg1][7][stor1].field_256 += msg.value
    sub_5e8ea25a[arg1][7][stor1].field_512 = 0
    sub_5e8ea25a[arg1].field_1280 = msg.value + sub_5e8ea25a[arg1][7][stor1].field_256 + sub_5e8ea25a[arg1].field_1280
    sub_5e8ea25a[arg1].field_1536 += sub_5e8ea25a[arg1].field_768
    return sub_e53f8286
}



}

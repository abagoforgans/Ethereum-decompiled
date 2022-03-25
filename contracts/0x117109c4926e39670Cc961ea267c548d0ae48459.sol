contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 636]




// =====================  Runtime code  =====================


uint256 stor0;
uint256 stor1;
mapping of struct stor2;

function _fallback() payable {
  stop
}

function sub_c01778d7(?) payable {
    if msg.sender == stor2[arg1].field_0:
        call stor2[arg1].field_0 with:
           value stor2[arg1].field_512 + stor2[arg1].field_1280 wei
             gas 0 wei
    return 1
}

function sub_ff31c389(?) payable {
    if stor2[arg2].field_256 == msg.sender:
        call stor2[arg2][7][arg1].field_0 with:
           value stor2[arg2].field_768 wei
             gas 0 wei
        stor2[arg2][7][arg1].field_512 = 1
        stor2[arg2].field_512 -= stor2[arg2].field_768
    return 1
}

function sub_5646a3e2(?) payable {
    stor0++
    stor2[stor0].field_0 = msg.sender or Mask(96, 160, stor2[stor0].field_0)
    stor2[stor0].field_512 = msg.value
    stor2[stor0].field_768 = arg1
    stor2[stor0].field_256 = arg2 or Mask(96, 160, stor2[stor0].field_256)
    stor2[stor0].field_1536 = 0
    stor2[stor0].field_1280 = 0
    return stor0
}

function sub_1974d303(?) payable {
    if stor2[arg1].field_512 > stor2[arg1].field_1536:
        return 0
    stor1++
    stor2[arg1][7][stor1].field_0 = msg.sender or Mask(96, 160, stor2[arg1][7][stor1].field_0)
    stor2[arg1][7][stor1].field_256 += msg.value
    stor2[arg1][7][stor1].field_512 = 0
    stor2[arg1].field_1280 = msg.value + stor2[arg1][7][stor1].field_256 + stor2[arg1].field_1280
    stor2[arg1].field_1536 += stor2[arg1].field_768
    return stor1
}



}

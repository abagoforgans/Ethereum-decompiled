contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = 0
    stor1 = 0
    return code.data[32 len 195]
}



// =====================  Runtime code  =====================


uint256 stor0;
uint256 stor1;
mapping of struct stor2;

function _fallback() payable {
  stop
}

function payout() payable {
    call stor2[1].field_0 with:
       value stor1 wei
         gas 0 wei
}

function contribute() payable {
    stor2[stor0].field_0 = msg.sender or Mask(96, 160, stor2[stor0].field_0)
    stor2[stor0].field_256 = msg.value
    stor1 += msg.value
    stor0++
}



}

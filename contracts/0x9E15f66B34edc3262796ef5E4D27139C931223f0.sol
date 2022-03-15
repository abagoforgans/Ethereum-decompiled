contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = code.data[587 len 32] or Mask(96, 160, stor1)
    stor2 = block.timestamp + (120 * 24 * 3600)
    return code.data[147 len 440]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
uint256 stor2;

function _fallback() payable {
  stop
}

function sub_55c87eb0(?) payable {
    if stor0 != msg.sender:
        if msg.sender == stor1:
            call stor0 with:
               value arg1 wei
                 gas 0 wei
    else:
        if block.timestamp > stor2:
            call stor0 with:
               value arg1 wei
                 gas 0 wei
        if msg.sender == stor1:
            call stor0 with:
               value arg1 wei
                 gas 0 wei
}



}

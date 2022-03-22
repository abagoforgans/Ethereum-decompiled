contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint8 stor1;

function _fallback() payable {
    stor1[address(msg.sender)] = 1
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[72 len 154]
}



// =====================  Runtime code  =====================


address stor0;
mapping of uint8 stor1;

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function sub_90a91068(?) payable {
    if stor1[address(msg.sender)]:
        stor1[arg1] = 1
}



}

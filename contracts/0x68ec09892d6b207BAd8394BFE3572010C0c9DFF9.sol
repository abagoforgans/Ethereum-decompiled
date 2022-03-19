contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
uint256 stor2;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = 0xdc0e1e26578f8337f9a4da87deebd978dc650017
    stor2 = this.address or Mask(96, 160, stor2)
    return code.data[78 len 144]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;

function remove() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function money() payable {
    if eth.balance(stor2) >= 16 * 10^15:
        call stor1 with:
           value 8 * 10^15 wei
             gas 0 wei
}



}

contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor1 = block.number
    stor2 = 200
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[85 len 642]
}



// =====================  Runtime code  =====================


address sub_182ed46eAddress;
uint256 stor0;
uint256 stor1;
uint256 sub_6f0a619c;

function sub_182ed46e(?) payable {
    return address(sub_182ed46eAddress)
}

function sub_6f0a619c(?) payable {
    return sub_6f0a619c
}

function _fallback() payable {
  stop
}

function sub_46050b69(?) payable {
    return (stor1 + sub_6f0a619c + 1)
}

function touch() payable {
    if block.number > stor1 + sub_6f0a619c:
        call address(sub_182ed46eAddress) with:
           value eth.balance(this.address) / 3 wei
             gas 0 wei
        sub_6f0a619c += sub_6f0a619c / 200
        stor1 = block.number
    if 100 * msg.value <= eth.balance(this.address):
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    else:
        uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
        stor1 = block.number
}



}

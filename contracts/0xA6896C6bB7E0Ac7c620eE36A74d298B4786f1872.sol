contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor2 = block.number
    stor3 = 30
    stor1 = msg.sender or Mask(96, 160, stor1)
    return code.data[130 len 790]
}



// =====================  Runtime code  =====================


address stor0;
address sub_182ed46eAddress;
uint256 stor1;
uint256 stor2;
uint256 sub_6f0a619c;

function sub_182ed46e(?) payable {
    return address(sub_182ed46eAddress)
}

function sub_6f0a619c(?) payable {
    return sub_6f0a619c
}

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function sub_46050b69(?) payable {
    return (stor2 + sub_6f0a619c + 1)
}

function _fallback() payable {
    if block.number > stor2 + sub_6f0a619c:
        call address(sub_182ed46eAddress) with:
           value eth.balance(this.address) / 4 wei
             gas 0 wei
        sub_6f0a619c += sub_6f0a619c / 200
    if 100 * msg.value <= eth.balance(this.address):
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    else:
        uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
        stor2 = block.number
}



}

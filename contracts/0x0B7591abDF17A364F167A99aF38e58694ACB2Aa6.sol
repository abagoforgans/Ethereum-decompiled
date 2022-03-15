contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor2;
uint256 stor3;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor2 = block.number
    stor3 = 10
    return code.data[87 len 629]
}



// =====================  Runtime code  =====================


const sub_182ed46e(?) = 0


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function sub_46050b69(?) payable {
    return (stor2 + stor3 + 1)
}

function _fallback() payable {
    if block.number > stor2 + stor3:
        call stor1 with:
           value eth.balance(this.address) / 4 wei
             gas 0 wei
        stor3++
    if msg.value > eth.balance(this.address) / 100:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
}



}

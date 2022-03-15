contract main {


// =======================  Init code  ======================


uint256 stor0;
uint128 stor1; offset 160
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    uint256(stor1.field_0) = Mask(96, 0, stor1.field_160)
    stor2 = block.timestamp
    stor3 = 10^15
    stor4 = 600
    return code.data[72 len 304]
}



// =====================  Runtime code  =====================


address sub_8abb9845Address;
address stor1;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;

function sub_8abb9845(?) payable {
    return sub_8abb9845Address
}

function _fallback() payable {
    if block.timestamp > stor4 + stor2:
        call sub_8abb9845Address with:
           value eth.balance(this.address) / 10 wei
             gas 0 wei
        call address(stor1) with:
           value eth.balance(this.address) - (eth.balance(this.address) / 10) wei
             gas 0 wei
    else:
        if msg.value >= stor3:
            uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
            stor2 = block.timestamp
    if msg.value != 123 * 10^12:
    selfdestruct(msg.sender)
}

function getRemainingTime() payable {
    if block.timestamp <= stor4 + stor2:
        return 0
    return (stor4 + stor2 - block.timestamp)
}



}

contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = code.data[964 len 32]
    return code.data[180 len 784]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;

function owner() payable {
    return address(owner)
}

function refund(address arg1) payable {
    require msg.sender == address(owner)
    emit RefundInvoice(address(this.address), block.timestamp);
    selfdestruct(arg1)
}

function transferOwnership(address arg1) payable {
    require msg.sender == address(owner)
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function _fallback() payable {
    emit IncomingTx(msg.sender, msg.value, block.timestamp, block.number);
    call 0x421496a7b8e9330d210a36399f007c1625cd8630 with:
       value eth.balance(this.address) wei
         gas 0 wei
}



}

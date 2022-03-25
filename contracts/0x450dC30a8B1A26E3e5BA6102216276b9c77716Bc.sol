contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = 0xd3cda913deb6f67967b99d67acdfa1712c293601
    stor1 = block.timestamp + (240 * 24 * 3600)
    return code.data[63 len 149]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor1;

function _fallback() payable {
    require block.timestamp <= stor1
}

function withdraw() payable {
    require stor0 == msg.sender
    require block.timestamp >= stor1
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 0 wei
}



}

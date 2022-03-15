contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = 0x5fe5b7546d1628f7348b023a0393de1fc825a4fd
    stor1 = msg.sender or Mask(96, 160, stor1)
    return code.data[71 len 316]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;

function kill() payable {
    if stor1 != msg.sender:
    selfdestruct(stor1)
}

function _fallback() payable {
  stop
}

function withdraw(uint256 arg1) payable {
    if stor1 == msg.sender:
        call stor1 with:
           value arg1 wei
             gas 0 wei
}

function bet(uint256 arg1, uint256 arg2) payable {
    if stor1 == msg.sender:
        call stor0.betOnNumber(uint256 rg1) with:
           value arg1 wei
             gas gas_remaining - 34050 wei
            args (block.gas_limit + block.timestamp + block.difficulty + ((3 * arg2) + 4 / 2 % 10^9) + block.number % 37)
        require ext_call.success
}



}

contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[37 len 367]
}



// =====================  Runtime code  =====================


address stor0;
address lastPlayerAddress;
uint256 stor1;
uint256 lastBlock;

function lastBlock() payable {
    return lastBlock
}

function lastPlayer() payable {
    return address(lastPlayerAddress)
}

function elapsed() payable {
    return (block.number - lastBlock)
}

function _fallback() payable {
    if block.number - lastBlock <= 200:
        if msg.value >= 10^18:
            uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
            lastBlock = block.number
    else:
        if eth.balance(this.address) - msg.value < 10^18:
            if msg.value >= 10^18:
                uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
                lastBlock = block.number
        else:
            if address(lastPlayerAddress) <= 0:
                if msg.value >= 10^18:
                    uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
                    lastBlock = block.number
            else:
                if lastBlock > 0:
                    call stor0 with:
                       value eth.balance(this.address) - msg.value / 100 wei
                         gas 0 wei
                    call address(lastPlayerAddress) with:
                       value eth.balance(this.address) - msg.value - (eth.balance(this.address) - msg.value / 100) wei
                         gas 0 wei
                if msg.value >= 10^18:
                    uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
                    lastBlock = block.number
}



}

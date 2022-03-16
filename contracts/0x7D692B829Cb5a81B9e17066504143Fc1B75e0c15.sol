contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor3;
uint256 stor4;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor3 = 200
    stor4 = 10^18
    return code.data[54 len 501]
}



// =====================  Runtime code  =====================


address stor0;
address lastPlayerAddress;
uint256 stor1;
uint256 lastBlock;
uint256 blocks;
uint256 price;

function lastBlock() payable {
    return lastBlock
}

function blocks() payable {
    return blocks
}

function price() payable {
    return price
}

function lastPlayer() payable {
    return address(lastPlayerAddress)
}

function elapsed() payable {
    return (block.number - lastBlock)
}

function remaining() payable {
    return (blocks - block.number + lastBlock)
}

function _fallback() payable {
    if blocks - block.number + lastBlock >= 0:
        if msg.value - price >= 0:
            uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
            lastBlock = block.number
            if msg.value - price > 0:
                call address(lastPlayerAddress) with:
                   value msg.value - price wei
                     gas 0 wei
    else:
        if eth.balance(this.address) - msg.value < price:
            if msg.value - price >= 0:
                uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
                lastBlock = block.number
                if msg.value - price > 0:
                    call address(lastPlayerAddress) with:
                       value msg.value - price wei
                         gas 0 wei
        else:
            if address(lastPlayerAddress) <= 0:
                if msg.value - price >= 0:
                    uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
                    lastBlock = block.number
                    if msg.value - price > 0:
                        call address(lastPlayerAddress) with:
                           value msg.value - price wei
                             gas 0 wei
            else:
                if lastBlock > 0:
                    call stor0 with:
                       value eth.balance(this.address) - msg.value / 100 wei
                         gas 0 wei
                    call address(lastPlayerAddress) with:
                       value eth.balance(this.address) - msg.value - (eth.balance(this.address) - msg.value / 100) wei
                         gas 0 wei
                if msg.value - price >= 0:
                    uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
                    lastBlock = block.number
                    if msg.value - price > 0:
                        call address(lastPlayerAddress) with:
                           value msg.value - price wei
                             gas 0 wei
}



}

contract main {


// =======================  Init code  ======================


const _fallback = code.data[19 len 388]




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

function sub_bb4c4974(?) payable {
    stor0 = 0x6f4250b4c1db1b611e43cbd9a04c4138c7c0af39
    address(lastPlayerAddress) = 0
    lastBlock = 0
}

function _fallback() payable {
    if block.number - lastBlock <= 200:
        if msg.value >= 10^18:
            uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
            lastBlock = block.number
    else:
        if lastBlock <= 0:
            if msg.value >= 10^18:
                uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
                lastBlock = block.number
        else:
            if address(lastPlayerAddress) <= 0:
                if msg.value >= 10^18:
                    uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
                    lastBlock = block.number
            else:
                if eth.balance(this.address) >= 10^18:
                    call stor0 with:
                       value eth.balance(this.address) / 100 wei
                         gas 0 wei
                    call address(lastPlayerAddress) with:
                       value eth.balance(this.address) - (eth.balance(this.address) / 100) wei
                         gas 0 wei
                if msg.value >= 10^18:
                    uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
                    lastBlock = block.number
}



}

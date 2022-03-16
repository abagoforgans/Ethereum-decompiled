contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor3;
uint256 stor4;
uint256 stor5;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor4 = 10^18
    stor3 = 200
    stor5 = 0
    return code.data[57 len 980]
}



// =====================  Runtime code  =====================


address stor0;
address lastPlayerAddress;
uint256 stor1;
uint256 lastBlock;
uint256 blocks;
uint256 price;
uint256 totalWinnings;
array of address winners;
array of uint256 sub_8a6a952a;

function lastBlock() payable {
    return lastBlock
}

function sub_8a6a952a(?) payable {
    require arg1 < sub_8a6a952a.length
    return sub_8a6a952a[arg1]
}

function blocks() payable {
    return blocks
}

function price() payable {
    return price
}

function winners(uint256 arg1) payable {
    require arg1 < winners.length
    return winners[arg1]
}

function totalWinnings() payable {
    return totalWinnings
}

function totalWinners() payable {
    return winners.length
}

function lastPlayer() payable {
    return address(lastPlayerAddress)
}

function elapsed() payable {
    return (block.number - lastBlock)
}

function remaining() payable {
    if blocks <= block.number - lastBlock:
        return 0
    return (blocks - block.number + lastBlock)
}

function _fallback() payable {
    if eth.balance(this.address) <= msg.value:
        if msg.value >= price:
            uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
            lastBlock = block.number
            if msg.value > price:
                call address(lastPlayerAddress) with:
                   value msg.value - price wei
                     gas 0 wei
        if blocks <= block.number - lastBlock:
        else:
            if blocks - block.number + lastBlock != 0:
            else:
    else:
        if blocks <= block.number - lastBlock:
            if address(lastPlayerAddress) > 0:
                if eth.balance(this.address) - msg.value >= 100:
                    call stor0 with:
                       value eth.balance(this.address) - msg.value / 100 wei
                         gas 0 wei
                    call address(lastPlayerAddress) with:
                       value eth.balance(this.address) - msg.value - (eth.balance(this.address) - msg.value / 100) wei
                         gas 0 wei
                    winners.length++
                    if not winners.length <= winners.length + 1:
                        idx = winners.length - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2c0
                        while winners.length - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2c1 > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    require winners.length < winners.length
                    winners[winners.length] = address(lastPlayerAddress)
                    sub_8a6a952a.length++
                    if not sub_8a6a952a.length <= sub_8a6a952a.length + 1:
                        idx = sub_8a6a952a.length - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93977
                        while sub_8a6a952a.length - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93978 > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    require sub_8a6a952a.length < sub_8a6a952a.length
                    sub_8a6a952a[sub_8a6a952a.length] = eth.balance(this.address) - msg.value - (eth.balance(this.address) - msg.value / 100)
                    totalWinnings = eth.balance(this.address) - msg.value - (eth.balance(this.address) - msg.value / 100) + totalWinnings
        else:
            if 0 == blocks - block.number + lastBlock:
                if address(lastPlayerAddress) > 0:
                    if eth.balance(this.address) - msg.value >= 100:
                        call stor0 with:
                           value eth.balance(this.address) - msg.value / 100 wei
                             gas 0 wei
                        call address(lastPlayerAddress) with:
                           value eth.balance(this.address) - msg.value - (eth.balance(this.address) - msg.value / 100) wei
                             gas 0 wei
                        winners.length++
                        if not winners.length <= winners.length + 1:
                            idx = winners.length - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2c0
                            while winners.length - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2c1 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        require winners.length < winners.length
                        winners[winners.length] = address(lastPlayerAddress)
                        sub_8a6a952a.length++
                        if not sub_8a6a952a.length <= sub_8a6a952a.length + 1:
                            idx = sub_8a6a952a.length - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93977
                            while sub_8a6a952a.length - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93978 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        require sub_8a6a952a.length < sub_8a6a952a.length
                        sub_8a6a952a[sub_8a6a952a.length] = eth.balance(this.address) - msg.value - (eth.balance(this.address) - msg.value / 100)
                        totalWinnings = eth.balance(this.address) - msg.value - (eth.balance(this.address) - msg.value / 100) + totalWinnings
        if msg.value >= price:
            uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
            lastBlock = block.number
            if msg.value > price:
                call address(lastPlayerAddress) with:
                   value msg.value - price wei
                     gas 0 wei
}



}

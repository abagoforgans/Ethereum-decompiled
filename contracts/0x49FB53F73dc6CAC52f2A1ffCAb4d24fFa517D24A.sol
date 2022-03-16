contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor3;
uint256 stor4;
uint256 stor7;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor4 = 10^18
    stor3 = 200
    stor7 = 0
    return code.data[57 len 960]
}



// =====================  Runtime code  =====================


address stor0;
address lastPlayerAddress;
uint256 stor1;
uint256 lastBlock;
uint256 blocks;
uint256 price;
array of address stor5;
array of uint256 sub_8a6a952a;
uint256 stor7;
array of address winners;

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
    require arg1 < stor5.length
    return winners[arg1]
}

function totalWinners() payable {
    return stor5.length
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
                    stor5.length++
                    if not stor5.length <= stor5.length + 1:
                        idx = stor5.length + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db1
                        while stor5.length + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0 > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    require stor5.length < stor5.length
                    stor5[stor5.length] = address(lastPlayerAddress)
                    sub_8a6a952a.length++
                    if not sub_8a6a952a.length <= sub_8a6a952a.length + 1:
                        idx = sub_8a6a952a.length - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2c0
                        while sub_8a6a952a.length - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2c1 > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    require sub_8a6a952a.length < sub_8a6a952a.length
                    sub_8a6a952a[sub_8a6a952a.length] = eth.balance(this.address) - msg.value - (eth.balance(this.address) - msg.value / 100)
                    stor7 = eth.balance(this.address) - msg.value - (eth.balance(this.address) - msg.value / 100) + stor7
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
                        stor5.length++
                        if not stor5.length <= stor5.length + 1:
                            idx = stor5.length + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db1
                            while stor5.length + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        require stor5.length < stor5.length
                        stor5[stor5.length] = address(lastPlayerAddress)
                        sub_8a6a952a.length++
                        if not sub_8a6a952a.length <= sub_8a6a952a.length + 1:
                            idx = sub_8a6a952a.length - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2c0
                            while sub_8a6a952a.length - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2c1 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        require sub_8a6a952a.length < sub_8a6a952a.length
                        sub_8a6a952a[sub_8a6a952a.length] = eth.balance(this.address) - msg.value - (eth.balance(this.address) - msg.value / 100)
                        stor7 = eth.balance(this.address) - msg.value - (eth.balance(this.address) - msg.value / 100) + stor7
        if msg.value >= price:
            uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
            lastBlock = block.number
            if msg.value > price:
                call address(lastPlayerAddress) with:
                   value msg.value - price wei
                     gas 0 wei
}



}

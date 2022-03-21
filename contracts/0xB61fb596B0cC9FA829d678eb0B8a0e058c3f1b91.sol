contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor9;

function _fallback() payable {
    stor4 = 0
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor6 = 0x8a8f66155751b1d14467593f2b4395e2f6f7298a1d444aa61ab68124c4f4eb2c
    stor1 = 10^16
    stor9 = 10
    stor5 = 1234
    return code.data[135 len 2391]
}



// =====================  Runtime code  =====================


address hostAddress;
array of uint256 stor1;
array of uint256 stor2;
array of address stor3;
uint256 numPlayers;
uint256 nextDraw;
uint256 stor6;
uint256 stor7;
array of struct stor8;
uint256 stor9;
array of uint256 contributions;
array of address contributors;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020068;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020069;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020070;

function contributions(uint256 arg1) payable {
    require arg1 < stor2.length
    return contributions[arg1]
}

function nextDraw() payable {
    return nextDraw
}

function contributors(uint256 arg1) payable {
    require arg1 < stor3.length
    return contributors[arg1]
}

function numPlayers() payable {
    return numPlayers
}

function host() payable {
    return hostAddress
}

function destroy() payable {
    require msg.sender == hostAddress
    idx = 0
    while idx < numPlayers:
        require idx < stor3.length
        require idx < stor2.length
        mem[0] = 2
        call contributors[idx] with:
           value contributions[idx] wei
             gas 0 wei
        idx = idx + 1
        continue 
    numPlayers = 0
    selfdestruct(hostAddress)
}

function setDrawDate(uint256 arg1) payable {
    require msg.sender == hostAddress
    nextDraw = arg1
}

function recentWins(uint256 arg1) payable {
    require arg1 < stor8.length
    return address(stor[(4 * arg1) + code.data[2359 len 32]]), storF3F7[arg1], storF3F7[arg1], storF3F7[arg1]
}

function getContributions(address arg1) payable {
    idx = 0
    while idx < numPlayers:
        require idx < stor3.length
        mem[0] = 3
        if contributors[idx] != arg1:
            idx = idx + 1
            continue 
        if idx == numPlayers:
            return 0
        require idx < stor2.length
        return contributions[idx]
    if numPlayers == numPlayers:
        return 0
    require numPlayers < stor2.length
    return contributions[stor4]
}

function _fallback() payable {
    require msg.value >= stor1.length
    idx = 0
    while idx < numPlayers:
        require idx < stor3.length
        mem[0] = 3
        if contributors[idx] != msg.sender:
            idx = idx + 1
            continue 
        if idx != numPlayers:
            require idx < stor2.length
            contributions[idx] += msg.value
        else:
            if numPlayers == stor2.length:
                stor2.length++
                if not stor2.length <= stor2.length + 1:
                    idx = sha3(2) + stor2.length + 1
                    while sha3(2) + stor2.length > idx:
                        uint256(stor[idx]) = 0
                        idx = idx + 1
                        continue 
                stor3.length++
                if not stor3.length <= stor3.length + 1:
                    idx = sha3(3) + stor3.length + 1
                    while sha3(3) + stor3.length > idx:
                        uint256(stor[idx]) = 0
                        idx = idx + 1
                        continue 
            require numPlayers < stor2.length
            contributions[stor4] = msg.value
            numPlayers++
            require numPlayers < stor3.length
            uint256(stor3[stor4]) = msg.sender or Mask(96, 160, uint256(stor3[stor4]))
        stor7 = sha3(stor7, block.hash(block.number - 1))
    if idx != numPlayers:
        require idx < stor2.length
        contributions[idx] += msg.value
    else:
        if numPlayers == stor2.length:
            stor2.length++
            if not stor2.length <= stor2.length + 1:
                idx = stor2.length + 1
                while stor2.length > idx:
                    stor2[idx] = 0
                    idx = idx + 1
                    continue 
            stor3.length++
            if not stor3.length <= stor3.length + 1:
                idx = stor3.length + 1
                while stor3.length > idx:
                    uint256(stor3[idx]) = 0
                    idx = idx + 1
                    continue 
        require numPlayers < stor2.length
        contributions[stor4] = msg.value
        numPlayers++
        require numPlayers < stor3.length
        uint256(stor3[stor4]) = msg.sender or Mask(96, 160, uint256(stor3[stor4]))
    stor7 = sha3(stor7, block.hash(block.number - 1))
}

function addToContribution() payable {
    require msg.value >= stor1.length
    idx = 0
    while idx < numPlayers:
        require idx < stor3.length
        mem[0] = 3
        if contributors[idx] != msg.sender:
            idx = idx + 1
            continue 
        if idx != numPlayers:
            require idx < stor2.length
            contributions[idx] += msg.value
        else:
            if numPlayers == stor2.length:
                stor2.length++
                if not stor2.length <= stor2.length + 1:
                    idx = sha3(2) + stor2.length + 1
                    while sha3(2) + stor2.length > idx:
                        uint256(stor[idx]) = 0
                        idx = idx + 1
                        continue 
                stor3.length++
                if not stor3.length <= stor3.length + 1:
                    idx = sha3(3) + stor3.length + 1
                    while sha3(3) + stor3.length > idx:
                        uint256(stor[idx]) = 0
                        idx = idx + 1
                        continue 
            require numPlayers < stor2.length
            contributions[stor4] = msg.value
            numPlayers++
            require numPlayers < stor3.length
            uint256(stor3[stor4]) = msg.sender or Mask(96, 160, uint256(stor3[stor4]))
        stor7 = sha3(stor7, block.hash(block.number - 1))
    if idx != numPlayers:
        require idx < stor2.length
        contributions[idx] += msg.value
    else:
        if numPlayers == stor2.length:
            stor2.length++
            if not stor2.length <= stor2.length + 1:
                idx = stor2.length + 1
                while stor2.length > idx:
                    stor2[idx] = 0
                    idx = idx + 1
                    continue 
            stor3.length++
            if not stor3.length <= stor3.length + 1:
                idx = stor3.length + 1
                while stor3.length > idx:
                    uint256(stor3[idx]) = 0
                    idx = idx + 1
                    continue 
        require numPlayers < stor2.length
        contributions[stor4] = msg.value
        numPlayers++
        require numPlayers < stor3.length
        uint256(stor3[stor4]) = msg.sender or Mask(96, 160, uint256(stor3[stor4]))
    stor7 = sha3(stor7, block.hash(block.number - 1))
}

function drawPot(bytes32 arg1, bytes32 arg2) payable {
    require msg.sender == hostAddress
    if sha3(arg1) == stor6:
        stor6 = sha3(arg2)
        idx = 0
        s = sha3(stor7, arg1) % eth.balance(this.address)
        while idx < numPlayers:
            require idx < stor2.length
            if s >= contributions[idx]:
                require idx < stor2.length
                mem[0] = 2
                idx = idx + 1
                s = s - contributions[idx]
                continue 
            call hostAddress with:
               value eth.balance(this.address) / 100 wei
                 gas 0 wei
            require idx < stor3.length
            call contributors[idx] with:
               value eth.balance(this.address) wei
                 gas 0 wei
            if stor8.length >= stor9:
                s = 0
                while s < stor9 - 1:
                    require s + 1 < stor8.length
                    require s < stor8.length
                    mem[0] = 8
                    address(stor[code.data[2359 len 32] + (4 * s)]) = address(stor[code.data[2359 len 32] + (4 * s + 1)])
                    uint256(stor[code.data[2359 len 32] + (4 * s) + 1]) = uint256(stor[code.data[2359 len 32] + (4 * s + 1) + 1])
                    uint256(stor[code.data[2359 len 32] + (4 * s) + 2]) = uint256(stor[code.data[2359 len 32] + (4 * s + 1) + 2])
                    uint256(stor[code.data[2359 len 32] + (4 * s) + 3]) = uint256(stor[code.data[2359 len 32] + (4 * s + 1) + 3])
                    s = s + 1
                    continue 
            else:
                stor8.length++
                if not stor8.length <= stor8.length + 1:
                    s = sha3(8) + (4 * stor8.length + 1)
                    while sha3(8) + (4 * stor8.length) > s:
                        address(stor[s]) = 0
                        stor1[s] = 0
                        stor2[s] = 0
                        uint256(stor3[s]) = 0
                        s = s + 1
                        continue 
            require idx < stor3.length
            require idx < stor2.length
            require stor8.length - 1 < stor8.length
            address(stor[code.data[2359 len 32] + (4 * stor8.length - 1)]) = address(stor3[idx])
            uint256(stor[code.data[2359 len 32] + (4 * stor8.length - 1) + 1]) = block.timestamp
            uint256(stor[code.data[2359 len 32] + (4 * stor8.length - 1) + 2]) = stor2[idx]
            uint256(stor[code.data[2359 len 32] + (4 * stor8.length - 1) + 3]) = eth.balance(this.address)
            numPlayers = 0
            nextDraw = block.timestamp + (168 * 24 * 3600)
        call hostAddress with:
           value eth.balance(this.address) / 100 wei
             gas 0 wei
        require 0 < stor3.length
        call contributors.length with:
           value eth.balance(this.address) wei
             gas 0 wei
        if stor8.length >= stor9:
            idx = 0
            while idx < stor9 - 1:
                require idx + 1 < stor8.length
                require idx < stor8.length
                mem[0] = 8
                address(stor[code.data[2359 len 32] + (4 * idx)]) = address(stor[code.data[2359 len 32] + (4 * idx + 1)])
                uint256(stor[code.data[2359 len 32] + (4 * idx) + 1]) = uint256(stor[code.data[2359 len 32] + (4 * idx + 1) + 1])
                uint256(stor[code.data[2359 len 32] + (4 * idx) + 2]) = uint256(stor[code.data[2359 len 32] + (4 * idx + 1) + 2])
                uint256(stor[code.data[2359 len 32] + (4 * idx) + 3]) = uint256(stor[code.data[2359 len 32] + (4 * idx + 1) + 3])
                idx = idx + 1
                continue 
        else:
            stor8.length++
            if not stor8.length <= stor8.length + 1:
                idx = 4 * stor8.length + 1
                while 4 * stor8.length > idx:
                    address(stor8[idx].field_0) = 0
                    uint256(stor8[idx].field_256) = 0
                    uint256(stor8[idx].field_512) = 0
                    uint256(stor8[idx].field_768) = 0
                    idx = idx + 1
                    continue 
        require 0 < stor3.length
        require 0 < stor2.length
        require stor8.length - 1 < stor8.length
        address(stor[code.data[2359 len 32] + (4 * stor8.length - 1)]) = address(stor3)
        uint256(stor[code.data[2359 len 32] + (4 * stor8.length - 1) + 1]) = block.timestamp
        uint256(stor[code.data[2359 len 32] + (4 * stor8.length - 1) + 2]) = stor2
        uint256(stor[code.data[2359 len 32] + (4 * stor8.length - 1) + 3]) = eth.balance(this.address)
        numPlayers = 0
        nextDraw = block.timestamp + (168 * 24 * 3600)
}



}

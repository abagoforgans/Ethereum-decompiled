contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint8 stor6;
uint256 stor6; offset 8

function _fallback() payable {
    require not code.data[2415 len 32] % code.data[2447 len 32]
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = 10^15 * code.data[2415 len 32]
    stor2 = 10^15 * code.data[2447 len 32]
    uint8(stor6.field_0) = uint8(code.data[2479 len 32])
    Mask(248, 0, stor6.field_8) = 0
    return code.data[102 len 2313]
}



// =====================  Runtime code  =====================


address hostAddress;
array of uint256 stor1;
array of uint256 stor2;
mapping of uint256 stakes;
array of uint256 stor4;
array of struct stor5;
uint256 stor6;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699761;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699762;
array of address stor38904946689225133062030360029229464415395357281359004841078294910011182463802;
array of uint256 stor38904946689225133062030360029229464415395357281359004841078294910011182463803;
array of uint256 stor38904946689225133062030360029229464415395357281359004841078294910011182463804;
array of address stor38904946689225133062030360029229464415395357281359004841078294910011182463805;
array of uint256 stor38904946689225133062030360029229464415395357281359004841078294910011182463806;
array of uint256 stor38904946689225133062030360029229464415395357281359004841078294910011182463807;
array of address stor38904946689225133062030360029229464415395357281359004841078294910011182463808;
array of uint256 stor38904946689225133062030360029229464415395357281359004841078294910011182463809;
array of uint256 stor38904946689225133062030360029229464415395357281359004841078294910011182463810;
array of address stakeholders;

function stakes(address arg1) payable {
    return stakes[arg1]
}

function stakeholders(uint256 arg1) payable {
    require arg1 < stor4.length
    return stakeholders[arg1]
}

function goal() payable {
    return stor1.length
}

function increment() payable {
    return stor2.length
}

function host() payable {
    return hostAddress
}

function destroy() payable {
    require msg.sender == hostAddress
    idx = 0
    while idx < stor4.length:
        mem[0] = stakeholders[idx]
        mem[32] = 3
        call stakeholders[idx] with:
           value stakes[storB08A[idx]] wei
             gas 0 wei
        idx = idx + 1
        continue 
    selfdestruct(hostAddress)
}

function recentWins(uint256 arg1) payable {
    require arg1 < stor5.length
    return stor5603[arg1], stor36B6[arg1], stor36B6[arg1]
}

function refundStake() payable {
    require stakes[address(msg.sender)] != 0
    require msg.value <= 0
    idx = 0
    while idx < stor4.length:
        mem[0] = 4
        if stakeholders[idx] != msg.sender:
            idx = idx + 1
            continue 
        require idx < stor4.length
        stakeholders[idx] = 0
        call msg.sender with:
           value stakes[address(msg.sender)] wei
             gas 0 wei
        stakes[address(msg.sender)] = 0
        emit 0xee22ab46: msg.sender
    call msg.sender with:
       value stakes[address(msg.sender)] wei
         gas 0 wei
    stakes[address(msg.sender)] = 0
    emit 0xee22ab46: msg.sender
}

function _fallback() payable {
    require msg.value != 0
    require 0 == msg.value % stor2.length
    require eth.balance(this.address) <= stor1.length
    if not stakes[address(msg.sender)]:
        stor4.length++
        if not stor4.length <= stor4.length + 1:
            idx = stor4.length + 1
            while stor4.length > idx:
                stor4[idx] = 0
                idx = idx + 1
                continue 
        stor4[stor4.length] = msg.sender or Mask(96, 160, stor4[stor4.length])
    if eth.balance(this.address) <= stor1.length:
        stakes[address(msg.sender)] += msg.value
    else:
        call msg.sender with:
           value stor1.length - eth.balance(this.address) wei
             gas 0 wei
        stakes[address(msg.sender)] = msg.value - stor1.length + eth.balance(this.address) + stakes[address(msg.sender)]
    emit 0xee22ab46: msg.sender
    if eth.balance(this.address) == stor1.length:
        idx = 0
        s = block.hash(block.number - 1) % eth.balance(this.address)
        while idx < stor4.length:
            require idx < stor4.length
            if s >= stakes[storB08A[idx]]:
                mem[0] = stakeholders[idx]
                mem[32] = 3
                idx = idx + 1
                s = s - stakes[storB08A[idx]]
                continue 
            call hostAddress with:
               value eth.balance(this.address) / 100 wei
                 gas 0 wei
            call stakeholders[idx] with:
               value eth.balance(this.address) wei
                 gas 0 wei
            if stor5.length >= stor6:
                s = 0
                while s < stor6 - 1:
                    require s + 1 < stor5.length
                    require s < stor5.length
                    mem[0] = 5
                    stor5603[s] = stor5603[s]
                    stor5603[s] = stor5603[s]
                    stor5603[s] = stor5603[s]
                    s = s + 1
                    continue 
            else:
                stor5.length++
                if not stor5.length <= stor5.length + 1:
                    s = sha3(5) + (3 * stor5.length) + 3
                    while sha3(5) + (3 * stor5.length) > s:
                        address(stor[s]) = 0
                        stor1[s] = 0
                        stor2[s] = 0
                        s = s + 1
                        continue 
            require stor5.length - 1 < stor5.length
            stor5603[stor5.length] = stakeholders[idx]
            stor5603[stor5.length] = block.timestamp
            stor5603[stor5.length] = stakes[storB08A[idx]]
            emit Won(stakeholders[idx], block.timestamp, stakes[storB08A[idx]]);
            idx = 0
            while idx < stor4.length:
                mem[0] = stakeholders[idx]
                mem[32] = 3
                stakes[storB08A[idx]] = 0
                idx = idx + 1
                continue 
            stor4.length = 0
            idx = 0xb08a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd1
            while stor4.length - 0x4f75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942f > idx:
                uint256(stor[idx]) = 0
                idx = idx + 1
                continue 
        call hostAddress with:
           value eth.balance(this.address) / 100 wei
             gas 0 wei
        call 0x0 with:
           value eth.balance(this.address) wei
             gas 0 wei
        if stor5.length >= stor6:
            idx = 0
            while idx < stor6 - 1:
                require idx + 1 < stor5.length
                require idx < stor5.length
                mem[0] = 5
                stor5603[idx] = stor5603[idx]
                stor5603[idx] = stor5603[idx]
                stor5603[idx] = stor5603[idx]
                idx = idx + 1
                continue 
        else:
            stor5.length++
            if not stor5.length <= stor5.length + 1:
                idx = (3 * stor5.length) + 3
                while 3 * stor5.length > idx:
                    address(stor5[idx].field_0) = 0
                    uint256(stor5[idx].field_256) = 0
                    uint256(stor5[idx].field_512) = 0
                    idx = idx + 1
                    continue 
        require stor5.length - 1 < stor5.length
        stor5603[stor5.length] = 0
        stor5603[stor5.length] = block.timestamp
        stor5603[stor5.length] = stakes[0]
        emit Won(0, block.timestamp, stakes[0]);
        idx = 0
        while idx < stor4.length:
            mem[0] = stakeholders[idx]
            mem[32] = 3
            stakes[storB08A[idx]] = 0
            idx = idx + 1
            continue 
        stor4.length = 0
        idx = 0xb08a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd1
        while stor4.length - 0x4f75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942f > idx:
            uint256(stor[idx]) = 0
            idx = idx + 1
            continue 
}

function buyStake(bool arg1) payable {
    require msg.value != 0
    require 0 == msg.value % stor2.length
    if arg1:
        require eth.balance(this.address) <= stor1.length
    if not stakes[address(msg.sender)]:
        stor4.length++
        if not stor4.length <= stor4.length + 1:
            idx = stor4.length + 1
            while stor4.length > idx:
                stor4[idx] = 0
                idx = idx + 1
                continue 
        stor4[stor4.length] = msg.sender or Mask(96, 160, stor4[stor4.length])
    if eth.balance(this.address) <= stor1.length:
        stakes[address(msg.sender)] += msg.value
    else:
        call msg.sender with:
           value stor1.length - eth.balance(this.address) wei
             gas 0 wei
        stakes[address(msg.sender)] = msg.value - stor1.length + eth.balance(this.address) + stakes[address(msg.sender)]
    emit 0xee22ab46: msg.sender
    if eth.balance(this.address) == stor1.length:
        idx = 0
        s = block.hash(block.number - 1) % eth.balance(this.address)
        while idx < stor4.length:
            require idx < stor4.length
            if s >= stakes[storB08A[idx]]:
                mem[0] = stakeholders[idx]
                mem[32] = 3
                idx = idx + 1
                s = s - stakes[storB08A[idx]]
                continue 
            call hostAddress with:
               value eth.balance(this.address) / 100 wei
                 gas 0 wei
            call stakeholders[idx] with:
               value eth.balance(this.address) wei
                 gas 0 wei
            if stor5.length >= stor6:
                s = 0
                while s < stor6 - 1:
                    require s + 1 < stor5.length
                    require s < stor5.length
                    mem[0] = 5
                    stor5603[s] = stor5603[s]
                    stor5603[s] = stor5603[s]
                    stor5603[s] = stor5603[s]
                    s = s + 1
                    continue 
            else:
                stor5.length++
                if not stor5.length <= stor5.length + 1:
                    s = sha3(5) + (3 * stor5.length) + 3
                    while sha3(5) + (3 * stor5.length) > s:
                        address(stor[s]) = 0
                        stor1[s] = 0
                        stor2[s] = 0
                        s = s + 1
                        continue 
            require stor5.length - 1 < stor5.length
            stor5603[stor5.length] = stakeholders[idx]
            stor5603[stor5.length] = block.timestamp
            stor5603[stor5.length] = stakes[storB08A[idx]]
            emit Won(stakeholders[idx], block.timestamp, stakes[storB08A[idx]]);
            idx = 0
            while idx < stor4.length:
                mem[0] = stakeholders[idx]
                mem[32] = 3
                stakes[storB08A[idx]] = 0
                idx = idx + 1
                continue 
            stor4.length = 0
            idx = 0xb08a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd1
            while stor4.length - 0x4f75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942f > idx:
                uint256(stor[idx]) = 0
                idx = idx + 1
                continue 
        call hostAddress with:
           value eth.balance(this.address) / 100 wei
             gas 0 wei
        call 0x0 with:
           value eth.balance(this.address) wei
             gas 0 wei
        if stor5.length >= stor6:
            idx = 0
            while idx < stor6 - 1:
                require idx + 1 < stor5.length
                require idx < stor5.length
                mem[0] = 5
                stor5603[idx] = stor5603[idx]
                stor5603[idx] = stor5603[idx]
                stor5603[idx] = stor5603[idx]
                idx = idx + 1
                continue 
        else:
            stor5.length++
            if not stor5.length <= stor5.length + 1:
                idx = (3 * stor5.length) + 3
                while 3 * stor5.length > idx:
                    address(stor5[idx].field_0) = 0
                    uint256(stor5[idx].field_256) = 0
                    uint256(stor5[idx].field_512) = 0
                    idx = idx + 1
                    continue 
        require stor5.length - 1 < stor5.length
        stor5603[stor5.length] = 0
        stor5603[stor5.length] = block.timestamp
        stor5603[stor5.length] = stakes[0]
        emit Won(0, block.timestamp, stakes[0]);
        idx = 0
        while idx < stor4.length:
            mem[0] = stakeholders[idx]
            mem[32] = 3
            stakes[storB08A[idx]] = 0
            idx = idx + 1
            continue 
        stor4.length = 0
        idx = 0xb08a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd1
        while stor4.length - 0x4f75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942f > idx:
            uint256(stor[idx]) = 0
            idx = idx + 1
            continue 
}



}

contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint8 stor6;
uint256 stor6; offset 8

function _fallback() payable {
    require not code.data[2615 len 32] % code.data[2647 len 32]
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = 10^15 * code.data[2615 len 32]
    stor2 = 10^15 * code.data[2647 len 32]
    uint8(stor6.field_0) = uint8(code.data[2679 len 32])
    Mask(248, 0, stor6.field_8) = 0
    return code.data[102 len 2513]
}



// =====================  Runtime code  =====================


address hostAddress;
uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
mapping of uint256 contributions;
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
array of address stor62514009886607029107290561805838585334079798074568712924583230797734656856476;
array of address contributors;

function contributors(uint256 arg1) payable {
    require arg1 < stor4.length
    return contributors[arg1]
}

function goal() payable {
    return stor1.length
}

function contributions(address arg1) payable {
    return contributions[arg1]
}

function numWinners() payable {
    return stor5.length
}

function numContributors() payable {
    return stor4.length
}

function increment() payable {
    return stor2.length
}

function host() payable {
    return address(hostAddress)
}

function destroy() payable {
    require msg.sender == address(hostAddress)
    idx = 0
    while idx < stor4.length:
        mem[0] = contributors[idx]
        mem[32] = 3
        call contributors[idx] with:
           value contributions[storB08A[idx]] wei
             gas 0 wei
        idx = idx + 1
        continue 
    selfdestruct(address(hostAddress))
}

function recentWins(uint256 arg1) payable {
    require arg1 < stor5.length
    return stor5603[arg1], stor36B6[arg1], stor36B6[arg1]
}

function changeHost(address arg1) payable {
    require msg.sender == address(hostAddress)
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function removeFromContribution(uint256 arg1) payable {
    require arg1 != 0
    require msg.value <= 0
    require arg1 <= contributions[address(msg.sender)]
    call msg.sender with:
       value arg1 wei
         gas 0 wei
    contributions[address(msg.sender)] -= arg1
    if not contributions[address(msg.sender)] - arg1:
        idx = 0
        while idx < stor4.length:
            mem[0] = 4
            if contributors[idx] != msg.sender:
                idx = idx + 1
                continue 
            s = idx
            while s < stor4.length - 1:
                require s + 1 < stor4.length
                require s < stor4.length
                mem[0] = 4
                contributors[s] = stor8A35[s]
                s = s + 1
                continue 
            stor4.length--
            if not stor4.length <= stor4.length - 1:
                idx = sha3(4) + stor4.length - 1
                while sha3(4) + stor4.length > idx:
                    uint256(stor[idx]) = 0
                    idx = idx + 1
                    continue 
            emit ChangedContribution(msg.sender);
    emit ChangedContribution(msg.sender);
}

function _fallback() payable {
    require msg.value != 0
    require 0 == msg.value % stor2.length
    require eth.balance(this.address) <= stor1.length
    if not contributions[address(msg.sender)]:
        stor4.length++
        if not stor4.length <= stor4.length + 1:
            idx = stor4.length + 1
            while stor4.length > idx:
                stor4[idx] = 0
                idx = idx + 1
                continue 
        stor4[stor4.length] = msg.sender or Mask(96, 160, stor4[stor4.length])
    contributions[address(msg.sender)] += msg.value
    emit ChangedContribution(msg.sender);
    if eth.balance(this.address) == stor1.length:
        idx = 0
        s = block.hash(block.number - 1) % eth.balance(this.address)
        while idx < stor4.length:
            require idx < stor4.length
            if s >= contributions[storB08A[idx]]:
                mem[0] = contributors[idx]
                mem[32] = 3
                idx = idx + 1
                s = s - contributions[storB08A[idx]]
                continue 
            call address(hostAddress) with:
               value eth.balance(this.address) / 100 wei
                 gas 0 wei
            call contributors[idx] with:
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
            stor5603[stor5.length] = contributors[idx]
            stor5603[stor5.length] = block.timestamp
            stor5603[stor5.length] = contributions[storB08A[idx]]
            emit Won(contributors[idx], block.timestamp, contributions[storB08A[idx]]);
            idx = 0
            while idx < stor4.length:
                mem[0] = contributors[idx]
                mem[32] = 3
                contributions[storB08A[idx]] = 0
                idx = idx + 1
                continue 
            stor4.length = 0
            idx = 0xb08a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd1
            while stor4.length - 0x4f75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942f > idx:
                uint256(stor[idx]) = 0
                idx = idx + 1
                continue 
        call address(hostAddress) with:
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
        stor5603[stor5.length] = contributions[0]
        emit Won(0, block.timestamp, contributions[0]);
        idx = 0
        while idx < stor4.length:
            mem[0] = contributors[idx]
            mem[32] = 3
            contributions[storB08A[idx]] = 0
            idx = idx + 1
            continue 
        stor4.length = 0
        idx = 0xb08a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd1
        while stor4.length - 0x4f75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942f > idx:
            uint256(stor[idx]) = 0
            idx = idx + 1
            continue 
}

function addToContribution() payable {
    require msg.value != 0
    require 0 == msg.value % stor2.length
    require eth.balance(this.address) <= stor1.length
    if not contributions[address(msg.sender)]:
        stor4.length++
        if not stor4.length <= stor4.length + 1:
            idx = stor4.length + 1
            while stor4.length > idx:
                stor4[idx] = 0
                idx = idx + 1
                continue 
        stor4[stor4.length] = msg.sender or Mask(96, 160, stor4[stor4.length])
    contributions[address(msg.sender)] += msg.value
    emit ChangedContribution(msg.sender);
    if eth.balance(this.address) == stor1.length:
        idx = 0
        s = block.hash(block.number - 1) % eth.balance(this.address)
        while idx < stor4.length:
            require idx < stor4.length
            if s >= contributions[storB08A[idx]]:
                mem[0] = contributors[idx]
                mem[32] = 3
                idx = idx + 1
                s = s - contributions[storB08A[idx]]
                continue 
            call address(hostAddress) with:
               value eth.balance(this.address) / 100 wei
                 gas 0 wei
            call contributors[idx] with:
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
            stor5603[stor5.length] = contributors[idx]
            stor5603[stor5.length] = block.timestamp
            stor5603[stor5.length] = contributions[storB08A[idx]]
            emit Won(contributors[idx], block.timestamp, contributions[storB08A[idx]]);
            idx = 0
            while idx < stor4.length:
                mem[0] = contributors[idx]
                mem[32] = 3
                contributions[storB08A[idx]] = 0
                idx = idx + 1
                continue 
            stor4.length = 0
            idx = 0xb08a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd1
            while stor4.length - 0x4f75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942f > idx:
                uint256(stor[idx]) = 0
                idx = idx + 1
                continue 
        call address(hostAddress) with:
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
        stor5603[stor5.length] = contributions[0]
        emit Won(0, block.timestamp, contributions[0]);
        idx = 0
        while idx < stor4.length:
            mem[0] = contributors[idx]
            mem[32] = 3
            contributions[storB08A[idx]] = 0
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

contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor5;
uint8 stor6;
uint8 stor8;
uint256 stor8; offset 8

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = 10^18 * code.data[2049 len 32]
    stor2 = 10^15 * code.data[2081 len 32]
    uint8(stor8.field_0) = uint8(code.data[2113 len 32])
    Mask(248, 0, stor8.field_8) = 0
    stor5 = code.data[2145 len 32]
    stor6 = 0
    return code.data[111 len 1938]
}



// =====================  Runtime code  =====================


address hostAddress;
uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
mapping of uint256 contributions;
array of uint256 stor4;
uint256 nextDraw;
uint8 stor6;
array of struct stor7;
uint256 stor8;
array of address stor39192952402756187425302384862487251540968225014669488259582314013099748177603;
array of uint256 stor39192952402756187425302384862487251540968225014669488259582314013099748177604;
array of uint256 stor39192952402756187425302384862487251540968225014669488259582314013099748177605;
array of address stor39192952402756187425302384862487251540968225014669488259582314013099748177606;
array of uint256 stor39192952402756187425302384862487251540968225014669488259582314013099748177607;
array of uint256 stor39192952402756187425302384862487251540968225014669488259582314013099748177608;
array of address stor39192952402756187425302384862487251540968225014669488259582314013099748177609;
array of uint256 stor39192952402756187425302384862487251540968225014669488259582314013099748177610;
array of uint256 stor39192952402756187425302384862487251540968225014669488259582314013099748177611;
array of address contributors;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432777;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432778;

function nextDraw() payable {
    return nextDraw
}

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

function numContributors() payable {
    return stor4.length
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
           value contributions[stor888A[idx]] wei
             gas 0 wei
        idx = idx + 1
        continue 
    idx = 0
    while idx < stor4.length:
        mem[0] = contributors[idx]
        mem[32] = 3
        contributions[stor888A[idx]] = 0
        idx = idx + 1
        continue 
    stor6 = 0
    stor4.length = 0
    idx = 0x888a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd1
    while stor4.length - 0x7775ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942f > idx:
        uint256(stor[idx]) = 0
        idx = idx + 1
        continue 
    selfdestruct(address(hostAddress))
}

function setDrawDate(uint256 arg1) payable {
    require msg.sender == address(hostAddress)
    nextDraw = arg1
}

function recentWins(uint256 arg1) payable {
    require arg1 < stor7.length
    return stor56A6[arg1], storA66C[arg1], storA66C[arg1]
}

function changeHost(address arg1) payable {
    require msg.sender == address(hostAddress)
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function _fallback() payable {
    require msg.value >= stor2.length
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
    if block.timestamp >= nextDraw:
        stor6 = 1
    if eth.balance(this.address) >= stor1.length:
        idx = 0
        s = block.hash(block.number - 1) % eth.balance(this.address)
        while idx < stor4.length:
            require idx < stor4.length
            if s >= contributions[stor888A[idx]]:
                mem[0] = contributors[idx]
                mem[32] = 3
                idx = idx + 1
                s = s - contributions[stor888A[idx]]
                continue 
            call address(hostAddress) with:
               value eth.balance(this.address) / 100 wei
                 gas 0 wei
            call contributors[idx] with:
               value eth.balance(this.address) wei
                 gas 0 wei
            if stor7.length >= stor8:
                s = 0
                while s < stor8 - 1:
                    require s + 1 < stor7.length
                    require s < stor7.length
                    mem[0] = 7
                    stor56A6[s] = stor56A6[s]
                    stor56A6[s] = stor56A6[s]
                    stor56A6[s] = stor56A6[s]
                    s = s + 1
                    continue 
            else:
                stor7.length++
                if not stor7.length <= stor7.length + 1:
                    s = sha3(7) + (3 * stor7.length) + 3
                    while sha3(7) + (3 * stor7.length) > s:
                        address(stor[s]) = 0
                        stor1[s] = 0
                        stor2[s] = 0
                        s = s + 1
                        continue 
            require stor7.length - 1 < stor7.length
            stor56A6[stor7.length] = contributors[idx]
            stor56A6[stor7.length] = block.timestamp
            stor56A6[stor7.length] = contributions[stor888A[idx]]
            idx = 0
            while idx < stor4.length:
                mem[0] = contributors[idx]
                mem[32] = 3
                contributions[stor888A[idx]] = 0
                idx = idx + 1
                continue 
            stor6 = 0
            stor4.length = 0
            idx = 0x888a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd1
            while stor4.length - 0x7775ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942f > idx:
                uint256(stor[idx]) = 0
                idx = idx + 1
                continue 
            nextDraw = block.timestamp + (168 * 24 * 3600)
        call address(hostAddress) with:
           value eth.balance(this.address) / 100 wei
             gas 0 wei
        call 0x0 with:
           value eth.balance(this.address) wei
             gas 0 wei
        if stor7.length >= stor8:
            idx = 0
            while idx < stor8 - 1:
                require idx + 1 < stor7.length
                require idx < stor7.length
                mem[0] = 7
                stor56A6[idx] = stor56A6[idx]
                stor56A6[idx] = stor56A6[idx]
                stor56A6[idx] = stor56A6[idx]
                idx = idx + 1
                continue 
        else:
            stor7.length++
            if not stor7.length <= stor7.length + 1:
                idx = (3 * stor7.length) + 3
                while 3 * stor7.length > idx:
                    address(stor7[idx].field_0) = 0
                    uint256(stor7[idx].field_256) = 0
                    uint256(stor7[idx].field_512) = 0
                    idx = idx + 1
                    continue 
        require stor7.length - 1 < stor7.length
        stor56A6[stor7.length] = 0
        stor56A6[stor7.length] = block.timestamp
        stor56A6[stor7.length] = contributions[0]
        idx = 0
        while idx < stor4.length:
            mem[0] = contributors[idx]
            mem[32] = 3
            contributions[stor888A[idx]] = 0
            idx = idx + 1
            continue 
        stor6 = 0
        stor4.length = 0
        idx = 0x888a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd1
        while stor4.length - 0x7775ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942f > idx:
            uint256(stor[idx]) = 0
            idx = idx + 1
            continue 
        nextDraw = block.timestamp + (168 * 24 * 3600)
    else:
        if stor6:
            idx = 0
            s = block.hash(block.number - 1) % eth.balance(this.address)
            while idx < stor4.length:
                require idx < stor4.length
                if s >= contributions[stor888A[idx]]:
                    mem[0] = contributors[idx]
                    mem[32] = 3
                    idx = idx + 1
                    s = s - contributions[stor888A[idx]]
                    continue 
                call address(hostAddress) with:
                   value eth.balance(this.address) / 100 wei
                     gas 0 wei
                call contributors[idx] with:
                   value eth.balance(this.address) wei
                     gas 0 wei
                if stor7.length >= stor8:
                    s = 0
                    while s < stor8 - 1:
                        require s + 1 < stor7.length
                        require s < stor7.length
                        mem[0] = 7
                        stor56A6[s] = stor56A6[s]
                        stor56A6[s] = stor56A6[s]
                        stor56A6[s] = stor56A6[s]
                        s = s + 1
                        continue 
                else:
                    stor7.length++
                    if not stor7.length <= stor7.length + 1:
                        s = sha3(7) + (3 * stor7.length) + 3
                        while sha3(7) + (3 * stor7.length) > s:
                            address(stor[s]) = 0
                            stor1[s] = 0
                            stor2[s] = 0
                            s = s + 1
                            continue 
                require stor7.length - 1 < stor7.length
                stor56A6[stor7.length] = contributors[idx]
                stor56A6[stor7.length] = block.timestamp
                stor56A6[stor7.length] = contributions[stor888A[idx]]
                idx = 0
                while idx < stor4.length:
                    mem[0] = contributors[idx]
                    mem[32] = 3
                    contributions[stor888A[idx]] = 0
                    idx = idx + 1
                    continue 
                stor6 = 0
                stor4.length = 0
                idx = 0x888a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd1
                while stor4.length - 0x7775ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942f > idx:
                    uint256(stor[idx]) = 0
                    idx = idx + 1
                    continue 
                nextDraw = block.timestamp + (168 * 24 * 3600)
            call address(hostAddress) with:
               value eth.balance(this.address) / 100 wei
                 gas 0 wei
            call 0x0 with:
               value eth.balance(this.address) wei
                 gas 0 wei
            if stor7.length >= stor8:
                idx = 0
                while idx < stor8 - 1:
                    require idx + 1 < stor7.length
                    require idx < stor7.length
                    mem[0] = 7
                    stor56A6[idx] = stor56A6[idx]
                    stor56A6[idx] = stor56A6[idx]
                    stor56A6[idx] = stor56A6[idx]
                    idx = idx + 1
                    continue 
            else:
                stor7.length++
                if not stor7.length <= stor7.length + 1:
                    idx = (3 * stor7.length) + 3
                    while 3 * stor7.length > idx:
                        address(stor7[idx].field_0) = 0
                        uint256(stor7[idx].field_256) = 0
                        uint256(stor7[idx].field_512) = 0
                        idx = idx + 1
                        continue 
            require stor7.length - 1 < stor7.length
            stor56A6[stor7.length] = 0
            stor56A6[stor7.length] = block.timestamp
            stor56A6[stor7.length] = contributions[0]
            idx = 0
            while idx < stor4.length:
                mem[0] = contributors[idx]
                mem[32] = 3
                contributions[stor888A[idx]] = 0
                idx = idx + 1
                continue 
            stor6 = 0
            stor4.length = 0
            idx = 0x888a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd1
            while stor4.length - 0x7775ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942f > idx:
                uint256(stor[idx]) = 0
                idx = idx + 1
                continue 
            nextDraw = block.timestamp + (168 * 24 * 3600)
}

function addToContribution() payable {
    require msg.value >= stor2.length
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
    if block.timestamp >= nextDraw:
        stor6 = 1
    if eth.balance(this.address) >= stor1.length:
        idx = 0
        s = block.hash(block.number - 1) % eth.balance(this.address)
        while idx < stor4.length:
            require idx < stor4.length
            if s >= contributions[stor888A[idx]]:
                mem[0] = contributors[idx]
                mem[32] = 3
                idx = idx + 1
                s = s - contributions[stor888A[idx]]
                continue 
            call address(hostAddress) with:
               value eth.balance(this.address) / 100 wei
                 gas 0 wei
            call contributors[idx] with:
               value eth.balance(this.address) wei
                 gas 0 wei
            if stor7.length >= stor8:
                s = 0
                while s < stor8 - 1:
                    require s + 1 < stor7.length
                    require s < stor7.length
                    mem[0] = 7
                    stor56A6[s] = stor56A6[s]
                    stor56A6[s] = stor56A6[s]
                    stor56A6[s] = stor56A6[s]
                    s = s + 1
                    continue 
            else:
                stor7.length++
                if not stor7.length <= stor7.length + 1:
                    s = sha3(7) + (3 * stor7.length) + 3
                    while sha3(7) + (3 * stor7.length) > s:
                        address(stor[s]) = 0
                        stor1[s] = 0
                        stor2[s] = 0
                        s = s + 1
                        continue 
            require stor7.length - 1 < stor7.length
            stor56A6[stor7.length] = contributors[idx]
            stor56A6[stor7.length] = block.timestamp
            stor56A6[stor7.length] = contributions[stor888A[idx]]
            idx = 0
            while idx < stor4.length:
                mem[0] = contributors[idx]
                mem[32] = 3
                contributions[stor888A[idx]] = 0
                idx = idx + 1
                continue 
            stor6 = 0
            stor4.length = 0
            idx = 0x888a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd1
            while stor4.length - 0x7775ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942f > idx:
                uint256(stor[idx]) = 0
                idx = idx + 1
                continue 
            nextDraw = block.timestamp + (168 * 24 * 3600)
        call address(hostAddress) with:
           value eth.balance(this.address) / 100 wei
             gas 0 wei
        call 0x0 with:
           value eth.balance(this.address) wei
             gas 0 wei
        if stor7.length >= stor8:
            idx = 0
            while idx < stor8 - 1:
                require idx + 1 < stor7.length
                require idx < stor7.length
                mem[0] = 7
                stor56A6[idx] = stor56A6[idx]
                stor56A6[idx] = stor56A6[idx]
                stor56A6[idx] = stor56A6[idx]
                idx = idx + 1
                continue 
        else:
            stor7.length++
            if not stor7.length <= stor7.length + 1:
                idx = (3 * stor7.length) + 3
                while 3 * stor7.length > idx:
                    address(stor7[idx].field_0) = 0
                    uint256(stor7[idx].field_256) = 0
                    uint256(stor7[idx].field_512) = 0
                    idx = idx + 1
                    continue 
        require stor7.length - 1 < stor7.length
        stor56A6[stor7.length] = 0
        stor56A6[stor7.length] = block.timestamp
        stor56A6[stor7.length] = contributions[0]
        idx = 0
        while idx < stor4.length:
            mem[0] = contributors[idx]
            mem[32] = 3
            contributions[stor888A[idx]] = 0
            idx = idx + 1
            continue 
        stor6 = 0
        stor4.length = 0
        idx = 0x888a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd1
        while stor4.length - 0x7775ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942f > idx:
            uint256(stor[idx]) = 0
            idx = idx + 1
            continue 
        nextDraw = block.timestamp + (168 * 24 * 3600)
    else:
        if stor6:
            idx = 0
            s = block.hash(block.number - 1) % eth.balance(this.address)
            while idx < stor4.length:
                require idx < stor4.length
                if s >= contributions[stor888A[idx]]:
                    mem[0] = contributors[idx]
                    mem[32] = 3
                    idx = idx + 1
                    s = s - contributions[stor888A[idx]]
                    continue 
                call address(hostAddress) with:
                   value eth.balance(this.address) / 100 wei
                     gas 0 wei
                call contributors[idx] with:
                   value eth.balance(this.address) wei
                     gas 0 wei
                if stor7.length >= stor8:
                    s = 0
                    while s < stor8 - 1:
                        require s + 1 < stor7.length
                        require s < stor7.length
                        mem[0] = 7
                        stor56A6[s] = stor56A6[s]
                        stor56A6[s] = stor56A6[s]
                        stor56A6[s] = stor56A6[s]
                        s = s + 1
                        continue 
                else:
                    stor7.length++
                    if not stor7.length <= stor7.length + 1:
                        s = sha3(7) + (3 * stor7.length) + 3
                        while sha3(7) + (3 * stor7.length) > s:
                            address(stor[s]) = 0
                            stor1[s] = 0
                            stor2[s] = 0
                            s = s + 1
                            continue 
                require stor7.length - 1 < stor7.length
                stor56A6[stor7.length] = contributors[idx]
                stor56A6[stor7.length] = block.timestamp
                stor56A6[stor7.length] = contributions[stor888A[idx]]
                idx = 0
                while idx < stor4.length:
                    mem[0] = contributors[idx]
                    mem[32] = 3
                    contributions[stor888A[idx]] = 0
                    idx = idx + 1
                    continue 
                stor6 = 0
                stor4.length = 0
                idx = 0x888a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd1
                while stor4.length - 0x7775ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942f > idx:
                    uint256(stor[idx]) = 0
                    idx = idx + 1
                    continue 
                nextDraw = block.timestamp + (168 * 24 * 3600)
            call address(hostAddress) with:
               value eth.balance(this.address) / 100 wei
                 gas 0 wei
            call 0x0 with:
               value eth.balance(this.address) wei
                 gas 0 wei
            if stor7.length >= stor8:
                idx = 0
                while idx < stor8 - 1:
                    require idx + 1 < stor7.length
                    require idx < stor7.length
                    mem[0] = 7
                    stor56A6[idx] = stor56A6[idx]
                    stor56A6[idx] = stor56A6[idx]
                    stor56A6[idx] = stor56A6[idx]
                    idx = idx + 1
                    continue 
            else:
                stor7.length++
                if not stor7.length <= stor7.length + 1:
                    idx = (3 * stor7.length) + 3
                    while 3 * stor7.length > idx:
                        address(stor7[idx].field_0) = 0
                        uint256(stor7[idx].field_256) = 0
                        uint256(stor7[idx].field_512) = 0
                        idx = idx + 1
                        continue 
            require stor7.length - 1 < stor7.length
            stor56A6[stor7.length] = 0
            stor56A6[stor7.length] = block.timestamp
            stor56A6[stor7.length] = contributions[0]
            idx = 0
            while idx < stor4.length:
                mem[0] = contributors[idx]
                mem[32] = 3
                contributions[stor888A[idx]] = 0
                idx = idx + 1
                continue 
            stor6 = 0
            stor4.length = 0
            idx = 0x888a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd1
            while stor4.length - 0x7775ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942f > idx:
                uint256(stor[idx]) = 0
                idx = idx + 1
                continue 
            nextDraw = block.timestamp + (168 * 24 * 3600)
}



}

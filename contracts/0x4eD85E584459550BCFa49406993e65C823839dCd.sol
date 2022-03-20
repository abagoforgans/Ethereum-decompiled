contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor5;
uint8 stor6;
uint256 stor7;
uint8 stor9;
uint256 stor9; offset 8

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = 10^18 * code.data[2216 len 32]
    stor2 = 10^15 * code.data[2248 len 32]
    uint8(stor9.field_0) = uint8(code.data[2280 len 32])
    Mask(248, 0, stor9.field_8) = 0
    stor5 = code.data[2312 len 32]
    stor7 = block.hash(block.number - 1)
    stor6 = 0
    return code.data[120 len 2096]
}



// =====================  Runtime code  =====================


address hostAddress;
uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
array of uint256 contributions;
array of uint256 stor4;
uint256 nextDraw;
uint8 stor6;
uint256 stor7;
array of struct stor8;
uint256 stor9;
array of address stor39329958129252365225000244316549619631642976376925172532217634639291095933806;
array of uint256 stor39329958129252365225000244316549619631642976376925172532217634639291095933807;
array of uint256 stor39329958129252365225000244316549619631642976376925172532217634639291095933808;
array of uint256 stor39329958129252365225000244316549619631642976376925172532217634639291095933809;
array of address contributors;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020068;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020069;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020070;

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
           value contributions[storE38A[idx]] wei
             gas 0 wei
        idx = idx + 1
        continue 
    idx = 0
    while idx < stor4.length:
        mem[0] = contributors[idx]
        mem[32] = 3
        contributions[storE38A[idx]] = 0
        idx = idx + 1
        continue 
    stor6 = 0
    stor4.length = 0
    idx = 0xe38a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd1
    while stor4.length - 0x1c75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942f > idx:
        uint256(stor[idx]) = 0
        idx = idx + 1
        continue 
    stor7 = sha3(stor7, block.hash(block.number - 1))
    selfdestruct(address(hostAddress))
}

function setDrawDate(uint256 arg1) payable {
    require msg.sender == address(hostAddress)
    nextDraw = arg1
}

function changeHost(address arg1) payable {
    require msg.sender == address(hostAddress)
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function recentWins(uint256 arg1) payable {
    require arg1 < stor8.length
    return stor56F3[arg1], storF3F7[arg1], storF3F7[arg1], storF3F7[arg1]
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
        s = sha3(stor7, block.hash(block.number - 1)) % eth.balance(this.address)
        while idx < stor4.length:
            require idx < stor4.length
            if s >= contributions[storE38A[idx]]:
                mem[0] = contributors[idx]
                mem[32] = 3
                idx = idx + 1
                s = s - contributions[storE38A[idx]]
                continue 
            call address(hostAddress) with:
               value eth.balance(this.address) / 100 wei
                 gas 0 wei
            call contributors[idx] with:
               value eth.balance(this.address) wei
                 gas 0 wei
            if stor8.length >= stor9:
                s = 0
                while s < stor9 - 1:
                    require s + 1 < stor8.length
                    require s < stor8.length
                    mem[0] = 8
                    stor56F3[s] = stor56F3[s + 1]
                    stor56F3[s] = stor56F3[s + 1]
                    stor56F3[s] = stor56F3[s + 1]
                    stor56F3[s] = stor56F3[s + 1]
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
                        contributions[s] = 0
                        s = s + 1
                        continue 
            require stor8.length - 1 < stor8.length
            stor56F3[stor8.length - 1] = contributors[idx]
            stor56F3[stor8.length - 1] = block.timestamp
            stor56F3[stor8.length - 1] = contributions[storE38A[idx]]
            stor56F3[stor8.length - 1] = eth.balance(this.address)
            idx = 0
            while idx < stor4.length:
                mem[0] = contributors[idx]
                mem[32] = 3
                contributions[storE38A[idx]] = 0
                idx = idx + 1
                continue 
            stor6 = 0
            stor4.length = 0
            idx = 0xe38a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd1
            while stor4.length - 0x1c75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942f > idx:
                uint256(stor[idx]) = 0
                idx = idx + 1
                continue 
            stor7 = sha3(stor7, block.hash(block.number - 1))
            nextDraw = block.timestamp + (168 * 24 * 3600)
        call address(hostAddress) with:
           value eth.balance(this.address) / 100 wei
             gas 0 wei
        call 0x0 with:
           value eth.balance(this.address) wei
             gas 0 wei
        if stor8.length >= stor9:
            idx = 0
            while idx < stor9 - 1:
                require idx + 1 < stor8.length
                require idx < stor8.length
                mem[0] = 8
                stor56F3[idx] = stor56F3[idx + 1]
                stor56F3[idx] = stor56F3[idx + 1]
                stor56F3[idx] = stor56F3[idx + 1]
                stor56F3[idx] = stor56F3[idx + 1]
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
        require stor8.length - 1 < stor8.length
        stor56F3[stor8.length - 1] = 0
        stor56F3[stor8.length - 1] = block.timestamp
        stor56F3[stor8.length - 1] = contributions[0]
        stor56F3[stor8.length - 1] = eth.balance(this.address)
        idx = 0
        while idx < stor4.length:
            mem[0] = contributors[idx]
            mem[32] = 3
            contributions[storE38A[idx]] = 0
            idx = idx + 1
            continue 
        stor6 = 0
        stor4.length = 0
        idx = 0xe38a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd1
        while stor4.length - 0x1c75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942f > idx:
            uint256(stor[idx]) = 0
            idx = idx + 1
            continue 
        stor7 = sha3(stor7, block.hash(block.number - 1))
        nextDraw = block.timestamp + (168 * 24 * 3600)
    else:
        if stor6:
            idx = 0
            s = sha3(stor7, block.hash(block.number - 1)) % eth.balance(this.address)
            while idx < stor4.length:
                require idx < stor4.length
                if s >= contributions[storE38A[idx]]:
                    mem[0] = contributors[idx]
                    mem[32] = 3
                    idx = idx + 1
                    s = s - contributions[storE38A[idx]]
                    continue 
                call address(hostAddress) with:
                   value eth.balance(this.address) / 100 wei
                     gas 0 wei
                call contributors[idx] with:
                   value eth.balance(this.address) wei
                     gas 0 wei
                if stor8.length >= stor9:
                    s = 0
                    while s < stor9 - 1:
                        require s + 1 < stor8.length
                        require s < stor8.length
                        mem[0] = 8
                        stor56F3[s] = stor56F3[s + 1]
                        stor56F3[s] = stor56F3[s + 1]
                        stor56F3[s] = stor56F3[s + 1]
                        stor56F3[s] = stor56F3[s + 1]
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
                            contributions[s] = 0
                            s = s + 1
                            continue 
                require stor8.length - 1 < stor8.length
                stor56F3[stor8.length - 1] = contributors[idx]
                stor56F3[stor8.length - 1] = block.timestamp
                stor56F3[stor8.length - 1] = contributions[storE38A[idx]]
                stor56F3[stor8.length - 1] = eth.balance(this.address)
                idx = 0
                while idx < stor4.length:
                    mem[0] = contributors[idx]
                    mem[32] = 3
                    contributions[storE38A[idx]] = 0
                    idx = idx + 1
                    continue 
                stor6 = 0
                stor4.length = 0
                idx = 0xe38a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd1
                while stor4.length - 0x1c75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942f > idx:
                    uint256(stor[idx]) = 0
                    idx = idx + 1
                    continue 
                stor7 = sha3(stor7, block.hash(block.number - 1))
                nextDraw = block.timestamp + (168 * 24 * 3600)
            call address(hostAddress) with:
               value eth.balance(this.address) / 100 wei
                 gas 0 wei
            call 0x0 with:
               value eth.balance(this.address) wei
                 gas 0 wei
            if stor8.length >= stor9:
                idx = 0
                while idx < stor9 - 1:
                    require idx + 1 < stor8.length
                    require idx < stor8.length
                    mem[0] = 8
                    stor56F3[idx] = stor56F3[idx + 1]
                    stor56F3[idx] = stor56F3[idx + 1]
                    stor56F3[idx] = stor56F3[idx + 1]
                    stor56F3[idx] = stor56F3[idx + 1]
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
            require stor8.length - 1 < stor8.length
            stor56F3[stor8.length - 1] = 0
            stor56F3[stor8.length - 1] = block.timestamp
            stor56F3[stor8.length - 1] = contributions[0]
            stor56F3[stor8.length - 1] = eth.balance(this.address)
            idx = 0
            while idx < stor4.length:
                mem[0] = contributors[idx]
                mem[32] = 3
                contributions[storE38A[idx]] = 0
                idx = idx + 1
                continue 
            stor6 = 0
            stor4.length = 0
            idx = 0xe38a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd1
            while stor4.length - 0x1c75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942f > idx:
                uint256(stor[idx]) = 0
                idx = idx + 1
                continue 
            stor7 = sha3(stor7, block.hash(block.number - 1))
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
        s = sha3(stor7, block.hash(block.number - 1)) % eth.balance(this.address)
        while idx < stor4.length:
            require idx < stor4.length
            if s >= contributions[storE38A[idx]]:
                mem[0] = contributors[idx]
                mem[32] = 3
                idx = idx + 1
                s = s - contributions[storE38A[idx]]
                continue 
            call address(hostAddress) with:
               value eth.balance(this.address) / 100 wei
                 gas 0 wei
            call contributors[idx] with:
               value eth.balance(this.address) wei
                 gas 0 wei
            if stor8.length >= stor9:
                s = 0
                while s < stor9 - 1:
                    require s + 1 < stor8.length
                    require s < stor8.length
                    mem[0] = 8
                    stor56F3[s] = stor56F3[s + 1]
                    stor56F3[s] = stor56F3[s + 1]
                    stor56F3[s] = stor56F3[s + 1]
                    stor56F3[s] = stor56F3[s + 1]
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
                        contributions[s] = 0
                        s = s + 1
                        continue 
            require stor8.length - 1 < stor8.length
            stor56F3[stor8.length - 1] = contributors[idx]
            stor56F3[stor8.length - 1] = block.timestamp
            stor56F3[stor8.length - 1] = contributions[storE38A[idx]]
            stor56F3[stor8.length - 1] = eth.balance(this.address)
            idx = 0
            while idx < stor4.length:
                mem[0] = contributors[idx]
                mem[32] = 3
                contributions[storE38A[idx]] = 0
                idx = idx + 1
                continue 
            stor6 = 0
            stor4.length = 0
            idx = 0xe38a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd1
            while stor4.length - 0x1c75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942f > idx:
                uint256(stor[idx]) = 0
                idx = idx + 1
                continue 
            stor7 = sha3(stor7, block.hash(block.number - 1))
            nextDraw = block.timestamp + (168 * 24 * 3600)
        call address(hostAddress) with:
           value eth.balance(this.address) / 100 wei
             gas 0 wei
        call 0x0 with:
           value eth.balance(this.address) wei
             gas 0 wei
        if stor8.length >= stor9:
            idx = 0
            while idx < stor9 - 1:
                require idx + 1 < stor8.length
                require idx < stor8.length
                mem[0] = 8
                stor56F3[idx] = stor56F3[idx + 1]
                stor56F3[idx] = stor56F3[idx + 1]
                stor56F3[idx] = stor56F3[idx + 1]
                stor56F3[idx] = stor56F3[idx + 1]
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
        require stor8.length - 1 < stor8.length
        stor56F3[stor8.length - 1] = 0
        stor56F3[stor8.length - 1] = block.timestamp
        stor56F3[stor8.length - 1] = contributions[0]
        stor56F3[stor8.length - 1] = eth.balance(this.address)
        idx = 0
        while idx < stor4.length:
            mem[0] = contributors[idx]
            mem[32] = 3
            contributions[storE38A[idx]] = 0
            idx = idx + 1
            continue 
        stor6 = 0
        stor4.length = 0
        idx = 0xe38a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd1
        while stor4.length - 0x1c75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942f > idx:
            uint256(stor[idx]) = 0
            idx = idx + 1
            continue 
        stor7 = sha3(stor7, block.hash(block.number - 1))
        nextDraw = block.timestamp + (168 * 24 * 3600)
    else:
        if stor6:
            idx = 0
            s = sha3(stor7, block.hash(block.number - 1)) % eth.balance(this.address)
            while idx < stor4.length:
                require idx < stor4.length
                if s >= contributions[storE38A[idx]]:
                    mem[0] = contributors[idx]
                    mem[32] = 3
                    idx = idx + 1
                    s = s - contributions[storE38A[idx]]
                    continue 
                call address(hostAddress) with:
                   value eth.balance(this.address) / 100 wei
                     gas 0 wei
                call contributors[idx] with:
                   value eth.balance(this.address) wei
                     gas 0 wei
                if stor8.length >= stor9:
                    s = 0
                    while s < stor9 - 1:
                        require s + 1 < stor8.length
                        require s < stor8.length
                        mem[0] = 8
                        stor56F3[s] = stor56F3[s + 1]
                        stor56F3[s] = stor56F3[s + 1]
                        stor56F3[s] = stor56F3[s + 1]
                        stor56F3[s] = stor56F3[s + 1]
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
                            contributions[s] = 0
                            s = s + 1
                            continue 
                require stor8.length - 1 < stor8.length
                stor56F3[stor8.length - 1] = contributors[idx]
                stor56F3[stor8.length - 1] = block.timestamp
                stor56F3[stor8.length - 1] = contributions[storE38A[idx]]
                stor56F3[stor8.length - 1] = eth.balance(this.address)
                idx = 0
                while idx < stor4.length:
                    mem[0] = contributors[idx]
                    mem[32] = 3
                    contributions[storE38A[idx]] = 0
                    idx = idx + 1
                    continue 
                stor6 = 0
                stor4.length = 0
                idx = 0xe38a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd1
                while stor4.length - 0x1c75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942f > idx:
                    uint256(stor[idx]) = 0
                    idx = idx + 1
                    continue 
                stor7 = sha3(stor7, block.hash(block.number - 1))
                nextDraw = block.timestamp + (168 * 24 * 3600)
            call address(hostAddress) with:
               value eth.balance(this.address) / 100 wei
                 gas 0 wei
            call 0x0 with:
               value eth.balance(this.address) wei
                 gas 0 wei
            if stor8.length >= stor9:
                idx = 0
                while idx < stor9 - 1:
                    require idx + 1 < stor8.length
                    require idx < stor8.length
                    mem[0] = 8
                    stor56F3[idx] = stor56F3[idx + 1]
                    stor56F3[idx] = stor56F3[idx + 1]
                    stor56F3[idx] = stor56F3[idx + 1]
                    stor56F3[idx] = stor56F3[idx + 1]
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
            require stor8.length - 1 < stor8.length
            stor56F3[stor8.length - 1] = 0
            stor56F3[stor8.length - 1] = block.timestamp
            stor56F3[stor8.length - 1] = contributions[0]
            stor56F3[stor8.length - 1] = eth.balance(this.address)
            idx = 0
            while idx < stor4.length:
                mem[0] = contributors[idx]
                mem[32] = 3
                contributions[storE38A[idx]] = 0
                idx = idx + 1
                continue 
            stor6 = 0
            stor4.length = 0
            idx = 0xe38a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd1
            while stor4.length - 0x1c75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942f > idx:
                uint256(stor[idx]) = 0
                idx = idx + 1
                continue 
            stor7 = sha3(stor7, block.hash(block.number - 1))
            nextDraw = block.timestamp + (168 * 24 * 3600)
}



}

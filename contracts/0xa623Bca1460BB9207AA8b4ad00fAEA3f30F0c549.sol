contract main {


// =======================  Init code  ======================


uint256 stor2;
uint256 stor3;
uint8 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;

function _fallback() payable {
    stor2 = 0
    stor3 = 0
    stor4 = 6
    stor5 = 0
    stor6 = 0
    stor7 = msg.sender or Mask(96, 160, stor7)
    stor6 = block.number
    return code.data[74 len 2300]
}



// =====================  Runtime code  =====================


array of struct stor0;
array of struct stor1;
uint256 balanceA;
uint256 balanceB;
uint8 house_edge;
uint256 stor4;
uint256 betLockTime;
uint256 lastTransactionRec;
address owner;
uint256 stor7;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702948;
array of address stor38971441815954291753963644440956123609054264817261647753096923611481829733349;
array of uint256 stor80084422859880547211683076133703299733277748156566366325829078699459944778999;

function house_edge() payable {
    return uint8(house_edge)
}

function balanceB() payable {
    return balanceB
}

function betLockTime() payable {
    return betLockTime
}

function lastTransactionRec() payable {
    return lastTransactionRec
}

function owner() payable {
    return address(owner)
}

function balanceA() payable {
    return balanceA
}

function lockBet(uint256 arg1) payable {
    if msg.sender == address(owner):
        betLockTime = arg1
}

function voteA(uint256 arg1) payable {
    require arg1 < stor0.length
    return address(stor5629[arg1]), stor290D[arg1]
}

function setOwner(address arg1) payable {
    if msg.sender == address(owner):
        uint256(stor7) = arg1 or Mask(96, 160, uint256(stor7))
}

function voteB(uint256 arg1) payable {
    require arg1 < stor1.length
    return address(stor[(2 * arg1) + code.data[2268 len 32]]), storB10E[arg1]
}

function changeHouseedge(uint8 arg1) payable {
    if msg.sender == address(owner):
        if arg1 <= 20:
            if arg1 > 0:
                uint256(stor4) = arg1 or Mask(248, 8, uint256(stor4))
}

function returnAll() payable {
    if msg.sender == address(owner):
        idx = 0
        while idx < stor0.length:
            mem[0] = 0
            call address(stor5629[idx]) with:
               value stor290D[idx] wei
                 gas 0 wei
            idx = idx + 1
            continue 
        idx = 0
        while idx < stor1.length:
            mem[0] = 1
            call address(stor[code.data[2268 len 32] + (2 * idx)]) with:
               value storB10E[idx] wei
                 gas 0 wei
            idx = idx + 1
            continue 
        balanceA = 0
        balanceB = 0
        betLockTime = 0
        lastTransactionRec = block.number
        stor0.length = 0
        idx = 0x56290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e5
        while (2 * stor0.length) + 0x56290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e5 > idx:
            address(stor[idx]) = 0
            uint256(stor1[idx].field_0) = 0
            idx = idx + 1
            continue 
        stor1.length = 0
        idx = code.data[2268 len 32]
        while code.data[2268 len 32] + (2 * stor1.length) > idx:
            address(stor[idx]) = 0
            uint256(stor1[idx].field_0) = 0
            idx = idx + 1
            continue 
}

function payout(uint256 arg1) payable {
    if msg.sender == address(owner):
        if 0 == arg1:
            if not arg1:
                s = 0
                idx = 0
                while idx < stor0.length:
                    mem[0] = 0
                    call address(stor0[idx].field_0) with:
                       value uint256(stor0[idx].field_256) + (uint256(stor0[idx].field_256) * balanceB * uint8(-uint8(house_edge) + 100) / 100 / balanceA) wei
                         gas 0 wei
                    s = uint256(stor0[idx].field_256) + (uint256(stor0[idx].field_256) * balanceB * uint8(-uint8(house_edge) + 100) / 100 / balanceA)
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while idx < stor1.length:
                    mem[0] = 1
                    call address(stor1[idx].field_0) with:
                       value uint256(stor1[idx].field_256) + (uint256(stor1[idx].field_256) * balanceB * uint8(-uint8(house_edge) + 100) / 100 / balanceA) wei
                         gas 0 wei
                    s = uint256(stor1[idx].field_256) + (uint256(stor1[idx].field_256) * balanceB * uint8(-uint8(house_edge) + 100) / 100 / balanceA)
                    idx = idx + 1
                    continue 
            if balanceB * uint8(house_edge) / 100:
                call address(owner) with:
                   value balanceB * uint8(house_edge) / 100 wei
                     gas 0 wei
        else:
            if not arg1:
                s = 0
                idx = 0
                while idx < stor0.length:
                    mem[0] = 0
                    call address(stor0[idx].field_0) with:
                       value uint256(stor0[idx].field_256) + (uint256(stor0[idx].field_256) * balanceA * uint8(-uint8(house_edge) + 100) / 100 / balanceB) wei
                         gas 0 wei
                    s = uint256(stor0[idx].field_256) + (uint256(stor0[idx].field_256) * balanceA * uint8(-uint8(house_edge) + 100) / 100 / balanceB)
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while idx < stor1.length:
                    mem[0] = 1
                    call address(stor1[idx].field_0) with:
                       value uint256(stor1[idx].field_256) + (uint256(stor1[idx].field_256) * balanceA * uint8(-uint8(house_edge) + 100) / 100 / balanceB) wei
                         gas 0 wei
                    s = uint256(stor1[idx].field_256) + (uint256(stor1[idx].field_256) * balanceA * uint8(-uint8(house_edge) + 100) / 100 / balanceB)
                    idx = idx + 1
                    continue 
            if balanceA * uint8(house_edge) / 100:
                call address(owner) with:
                   value balanceA * uint8(house_edge) / 100 wei
                     gas 0 wei
        balanceA = 0
        balanceB = 0
        betLockTime = 0
        lastTransactionRec = block.number
        stor0.length = 0
        idx = 0x56290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e5
        while (2 * stor0.length) + 0x56290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e5 > idx:
            address(stor[idx]) = 0
            uint256(stor1[idx].field_0) = 0
            idx = idx + 1
            continue 
        stor1.length = 0
        idx = code.data[2268 len 32]
        while code.data[2268 len 32] + (2 * stor1.length) > idx:
            address(stor[idx]) = 0
            uint256(stor1[idx].field_0) = 0
            idx = idx + 1
            continue 
}

function enter() payable {
    if msg.value < 25 * 10^16:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    else:
        if block.number < betLockTime:
            if msg.value <= 100 * 10^18:
                if lastTransactionRec + 161280 >= block.number:
                    lastTransactionRec = block.number
                    if bool(msg.value / 10^15) != 0:
                        balanceB += msg.value
                        stor1.length++
                        if not stor1.length <= stor1.length + 1:
                            idx = 2 * stor1.length + 1
                            while 2 * stor1.length > idx:
                                address(stor1[idx].field_0) = 0
                                uint256(stor1[idx].field_256) = 0
                                idx = idx + 1
                                continue 
                        require stor1.length < stor1.length
                        uint256(stor[code.data[2268 len 32] + (2 * stor1.length)]) = msg.sender or Mask(96, 160, uint256(stor[code.data[2268 len 32] + (2 * stor1.length)]))
                        storB10E[stor1.length] = msg.value
                    else:
                        balanceA += msg.value
                        stor0.length++
                        if not stor0.length <= stor0.length + 1:
                            idx = 2 * stor0.length + 1
                            while 2 * stor0.length > idx:
                                address(stor0[idx].field_0) = 0
                                uint256(stor0[idx].field_256) = 0
                                idx = idx + 1
                                continue 
                        require stor0.length < stor0.length
                        uint256(stor5629[stor0.length]) = msg.sender or Mask(96, 160, uint256(stor5629[stor0.length]))
                        stor290D[stor0.length] = msg.value
                else:
                    if msg.sender == address(owner):
                        idx = 0
                        while idx < stor0.length:
                            mem[0] = 0
                            call address(stor5629[idx]) with:
                               value stor290D[idx] wei
                                 gas 0 wei
                            idx = idx + 1
                            continue 
                        idx = 0
                        while idx < stor1.length:
                            mem[0] = 1
                            call address(stor[code.data[2268 len 32] + (2 * idx)]) with:
                               value storB10E[idx] wei
                                 gas 0 wei
                            idx = idx + 1
                            continue 
                        balanceA = 0
                        balanceB = 0
                        betLockTime = 0
                        lastTransactionRec = block.number
                        stor0.length = 0
                        idx = 0x56290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e5
                        while (2 * stor0.length) + 0x56290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e5 > idx:
                            address(stor[idx]) = 0
                            uint256(stor1[idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        stor1.length = 0
                        idx = code.data[2268 len 32]
                        while code.data[2268 len 32] + (2 * stor1.length) > idx:
                            address(stor[idx]) = 0
                            uint256(stor1[idx].field_0) = 0
                            idx = idx + 1
                            continue 
                    betLockTime = block.number
                    lastTransactionRec = block.number
                    call msg.sender with:
                       value msg.value wei
                         gas 0 wei
            else:
                call msg.sender with:
                   value msg.value - 100 * 10^18 wei
                     gas 0 wei
                if lastTransactionRec + 161280 >= block.number:
                    lastTransactionRec = block.number
                    balanceA += 100 * 10^18
                    stor0.length++
                    if not stor0.length <= stor0.length + 1:
                        idx = 2 * stor0.length + 1
                        while 2 * stor0.length > idx:
                            address(stor0[idx].field_0) = 0
                            uint256(stor0[idx].field_256) = 0
                            idx = idx + 1
                            continue 
                    require stor0.length < stor0.length
                    uint256(stor5629[stor0.length]) = msg.sender or Mask(96, 160, uint256(stor5629[stor0.length]))
                    stor290D[stor0.length] = 100 * 10^18
                else:
                    if msg.sender == address(owner):
                        idx = 0
                        while idx < stor0.length:
                            mem[0] = 0
                            call address(stor5629[idx]) with:
                               value stor290D[idx] wei
                                 gas 0 wei
                            idx = idx + 1
                            continue 
                        idx = 0
                        while idx < stor1.length:
                            mem[0] = 1
                            call address(stor[code.data[2268 len 32] + (2 * idx)]) with:
                               value storB10E[idx] wei
                                 gas 0 wei
                            idx = idx + 1
                            continue 
                        balanceA = 0
                        balanceB = 0
                        betLockTime = 0
                        lastTransactionRec = block.number
                        stor0.length = 0
                        idx = 0x56290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e5
                        while (2 * stor0.length) + 0x56290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e5 > idx:
                            address(stor[idx]) = 0
                            uint256(stor1[idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        stor1.length = 0
                        idx = code.data[2268 len 32]
                        while code.data[2268 len 32] + (2 * stor1.length) > idx:
                            address(stor[idx]) = 0
                            uint256(stor1[idx].field_0) = 0
                            idx = idx + 1
                            continue 
                    betLockTime = block.number
                    lastTransactionRec = block.number
                    call msg.sender with:
                       value msg.value wei
                         gas 0 wei
        else:
            if 0 == betLockTime:
                if msg.value <= 100 * 10^18:
                    if lastTransactionRec + 161280 >= block.number:
                        lastTransactionRec = block.number
                        if bool(msg.value / 10^15) != 0:
                            balanceB += msg.value
                            stor1.length++
                            if not stor1.length <= stor1.length + 1:
                                idx = 2 * stor1.length + 1
                                while 2 * stor1.length > idx:
                                    address(stor1[idx].field_0) = 0
                                    uint256(stor1[idx].field_256) = 0
                                    idx = idx + 1
                                    continue 
                            require stor1.length < stor1.length
                            uint256(stor[code.data[2268 len 32] + (2 * stor1.length)]) = msg.sender or Mask(96, 160, uint256(stor[code.data[2268 len 32] + (2 * stor1.length)]))
                            storB10E[stor1.length] = msg.value
                        else:
                            balanceA += msg.value
                            stor0.length++
                            if not stor0.length <= stor0.length + 1:
                                idx = 2 * stor0.length + 1
                                while 2 * stor0.length > idx:
                                    address(stor0[idx].field_0) = 0
                                    uint256(stor0[idx].field_256) = 0
                                    idx = idx + 1
                                    continue 
                            require stor0.length < stor0.length
                            uint256(stor5629[stor0.length]) = msg.sender or Mask(96, 160, uint256(stor5629[stor0.length]))
                            stor290D[stor0.length] = msg.value
                    else:
                        if msg.sender == address(owner):
                            idx = 0
                            while idx < stor0.length:
                                mem[0] = 0
                                call address(stor5629[idx]) with:
                                   value stor290D[idx] wei
                                     gas 0 wei
                                idx = idx + 1
                                continue 
                            idx = 0
                            while idx < stor1.length:
                                mem[0] = 1
                                call address(stor[code.data[2268 len 32] + (2 * idx)]) with:
                                   value storB10E[idx] wei
                                     gas 0 wei
                                idx = idx + 1
                                continue 
                            balanceA = 0
                            balanceB = 0
                            betLockTime = 0
                            lastTransactionRec = block.number
                            stor0.length = 0
                            idx = 0x56290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e5
                            while (2 * stor0.length) + 0x56290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e5 > idx:
                                address(stor[idx]) = 0
                                uint256(stor1[idx].field_0) = 0
                                idx = idx + 1
                                continue 
                            stor1.length = 0
                            idx = code.data[2268 len 32]
                            while code.data[2268 len 32] + (2 * stor1.length) > idx:
                                address(stor[idx]) = 0
                                uint256(stor1[idx].field_0) = 0
                                idx = idx + 1
                                continue 
                        betLockTime = block.number
                        lastTransactionRec = block.number
                        call msg.sender with:
                           value msg.value wei
                             gas 0 wei
                else:
                    call msg.sender with:
                       value msg.value - 100 * 10^18 wei
                         gas 0 wei
                    if lastTransactionRec + 161280 >= block.number:
                        lastTransactionRec = block.number
                        balanceA += 100 * 10^18
                        stor0.length++
                        if not stor0.length <= stor0.length + 1:
                            idx = 2 * stor0.length + 1
                            while 2 * stor0.length > idx:
                                address(stor0[idx].field_0) = 0
                                uint256(stor0[idx].field_256) = 0
                                idx = idx + 1
                                continue 
                        require stor0.length < stor0.length
                        uint256(stor5629[stor0.length]) = msg.sender or Mask(96, 160, uint256(stor5629[stor0.length]))
                        stor290D[stor0.length] = 100 * 10^18
                    else:
                        if msg.sender == address(owner):
                            idx = 0
                            while idx < stor0.length:
                                mem[0] = 0
                                call address(stor5629[idx]) with:
                                   value stor290D[idx] wei
                                     gas 0 wei
                                idx = idx + 1
                                continue 
                            idx = 0
                            while idx < stor1.length:
                                mem[0] = 1
                                call address(stor[code.data[2268 len 32] + (2 * idx)]) with:
                                   value storB10E[idx] wei
                                     gas 0 wei
                                idx = idx + 1
                                continue 
                            balanceA = 0
                            balanceB = 0
                            betLockTime = 0
                            lastTransactionRec = block.number
                            stor0.length = 0
                            idx = 0x56290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e5
                            while (2 * stor0.length) + 0x56290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e5 > idx:
                                address(stor[idx]) = 0
                                uint256(stor1[idx].field_0) = 0
                                idx = idx + 1
                                continue 
                            stor1.length = 0
                            idx = code.data[2268 len 32]
                            while code.data[2268 len 32] + (2 * stor1.length) > idx:
                                address(stor[idx]) = 0
                                uint256(stor1[idx].field_0) = 0
                                idx = idx + 1
                                continue 
                        betLockTime = block.number
                        lastTransactionRec = block.number
                        call msg.sender with:
                           value msg.value wei
                             gas 0 wei
            else:
                if block.number < betLockTime + 161280:
                    call msg.sender with:
                       value msg.value wei
                         gas 0 wei
                else:
                    if msg.value <= 100 * 10^18:
                        if lastTransactionRec + 161280 >= block.number:
                            lastTransactionRec = block.number
                            if bool(msg.value / 10^15) != 0:
                                balanceB += msg.value
                                stor1.length++
                                if not stor1.length <= stor1.length + 1:
                                    idx = 2 * stor1.length + 1
                                    while 2 * stor1.length > idx:
                                        address(stor1[idx].field_0) = 0
                                        uint256(stor1[idx].field_256) = 0
                                        idx = idx + 1
                                        continue 
                                require stor1.length < stor1.length
                                uint256(stor[code.data[2268 len 32] + (2 * stor1.length)]) = msg.sender or Mask(96, 160, uint256(stor[code.data[2268 len 32] + (2 * stor1.length)]))
                                storB10E[stor1.length] = msg.value
                            else:
                                balanceA += msg.value
                                stor0.length++
                                if not stor0.length <= stor0.length + 1:
                                    idx = 2 * stor0.length + 1
                                    while 2 * stor0.length > idx:
                                        address(stor0[idx].field_0) = 0
                                        uint256(stor0[idx].field_256) = 0
                                        idx = idx + 1
                                        continue 
                                require stor0.length < stor0.length
                                uint256(stor5629[stor0.length]) = msg.sender or Mask(96, 160, uint256(stor5629[stor0.length]))
                                stor290D[stor0.length] = msg.value
                        else:
                            if msg.sender == address(owner):
                                idx = 0
                                while idx < stor0.length:
                                    mem[0] = 0
                                    call address(stor5629[idx]) with:
                                       value stor290D[idx] wei
                                         gas 0 wei
                                    idx = idx + 1
                                    continue 
                                idx = 0
                                while idx < stor1.length:
                                    mem[0] = 1
                                    call address(stor[code.data[2268 len 32] + (2 * idx)]) with:
                                       value storB10E[idx] wei
                                         gas 0 wei
                                    idx = idx + 1
                                    continue 
                                balanceA = 0
                                balanceB = 0
                                betLockTime = 0
                                lastTransactionRec = block.number
                                stor0.length = 0
                                idx = 0x56290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e5
                                while (2 * stor0.length) + 0x56290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e5 > idx:
                                    address(stor[idx]) = 0
                                    uint256(stor1[idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                stor1.length = 0
                                idx = code.data[2268 len 32]
                                while code.data[2268 len 32] + (2 * stor1.length) > idx:
                                    address(stor[idx]) = 0
                                    uint256(stor1[idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                            betLockTime = block.number
                            lastTransactionRec = block.number
                            call msg.sender with:
                               value msg.value wei
                                 gas 0 wei
                    else:
                        call msg.sender with:
                           value msg.value - 100 * 10^18 wei
                             gas 0 wei
                        if lastTransactionRec + 161280 >= block.number:
                            lastTransactionRec = block.number
                            balanceA += 100 * 10^18
                            stor0.length++
                            if not stor0.length <= stor0.length + 1:
                                idx = 2 * stor0.length + 1
                                while 2 * stor0.length > idx:
                                    address(stor0[idx].field_0) = 0
                                    uint256(stor0[idx].field_256) = 0
                                    idx = idx + 1
                                    continue 
                            require stor0.length < stor0.length
                            uint256(stor5629[stor0.length]) = msg.sender or Mask(96, 160, uint256(stor5629[stor0.length]))
                            stor290D[stor0.length] = 100 * 10^18
                        else:
                            if msg.sender == address(owner):
                                idx = 0
                                while idx < stor0.length:
                                    mem[0] = 0
                                    call address(stor5629[idx]) with:
                                       value stor290D[idx] wei
                                         gas 0 wei
                                    idx = idx + 1
                                    continue 
                                idx = 0
                                while idx < stor1.length:
                                    mem[0] = 1
                                    call address(stor[code.data[2268 len 32] + (2 * idx)]) with:
                                       value storB10E[idx] wei
                                         gas 0 wei
                                    idx = idx + 1
                                    continue 
                                balanceA = 0
                                balanceB = 0
                                betLockTime = 0
                                lastTransactionRec = block.number
                                stor0.length = 0
                                idx = 0x56290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e5
                                while (2 * stor0.length) + 0x56290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e5 > idx:
                                    address(stor[idx]) = 0
                                    uint256(stor1[idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                stor1.length = 0
                                idx = code.data[2268 len 32]
                                while code.data[2268 len 32] + (2 * stor1.length) > idx:
                                    address(stor[idx]) = 0
                                    uint256(stor1[idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                            betLockTime = block.number
                            lastTransactionRec = block.number
                            call msg.sender with:
                               value msg.value wei
                                 gas 0 wei
}

function _fallback() payable {
    if msg.value < 25 * 10^16:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    else:
        if block.number < betLockTime:
            if msg.value <= 100 * 10^18:
                if lastTransactionRec + 161280 >= block.number:
                    lastTransactionRec = block.number
                    if bool(msg.value / 10^15) != 0:
                        balanceB += msg.value
                        stor1.length++
                        if not stor1.length <= stor1.length + 1:
                            idx = 2 * stor1.length + 1
                            while 2 * stor1.length > idx:
                                address(stor1[idx].field_0) = 0
                                uint256(stor1[idx].field_256) = 0
                                idx = idx + 1
                                continue 
                        require stor1.length < stor1.length
                        uint256(stor[code.data[2268 len 32] + (2 * stor1.length)]) = msg.sender or Mask(96, 160, uint256(stor[code.data[2268 len 32] + (2 * stor1.length)]))
                        storB10E[stor1.length] = msg.value
                    else:
                        balanceA += msg.value
                        stor0.length++
                        if not stor0.length <= stor0.length + 1:
                            idx = 2 * stor0.length + 1
                            while 2 * stor0.length > idx:
                                address(stor0[idx].field_0) = 0
                                uint256(stor0[idx].field_256) = 0
                                idx = idx + 1
                                continue 
                        require stor0.length < stor0.length
                        uint256(stor5629[stor0.length]) = msg.sender or Mask(96, 160, uint256(stor5629[stor0.length]))
                        stor290D[stor0.length] = msg.value
                else:
                    if msg.sender == address(owner):
                        idx = 0
                        while idx < stor0.length:
                            mem[0] = 0
                            call address(stor5629[idx]) with:
                               value stor290D[idx] wei
                                 gas 0 wei
                            idx = idx + 1
                            continue 
                        idx = 0
                        while idx < stor1.length:
                            mem[0] = 1
                            call address(stor[code.data[2268 len 32] + (2 * idx)]) with:
                               value storB10E[idx] wei
                                 gas 0 wei
                            idx = idx + 1
                            continue 
                        balanceA = 0
                        balanceB = 0
                        betLockTime = 0
                        lastTransactionRec = block.number
                        stor0.length = 0
                        idx = 0x56290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e5
                        while (2 * stor0.length) + 0x56290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e5 > idx:
                            address(stor[idx]) = 0
                            uint256(stor1[idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        stor1.length = 0
                        idx = code.data[2268 len 32]
                        while code.data[2268 len 32] + (2 * stor1.length) > idx:
                            address(stor[idx]) = 0
                            uint256(stor1[idx].field_0) = 0
                            idx = idx + 1
                            continue 
                    betLockTime = block.number
                    lastTransactionRec = block.number
                    call msg.sender with:
                       value msg.value wei
                         gas 0 wei
            else:
                call msg.sender with:
                   value msg.value - 100 * 10^18 wei
                     gas 0 wei
                if lastTransactionRec + 161280 >= block.number:
                    lastTransactionRec = block.number
                    balanceA += 100 * 10^18
                    stor0.length++
                    if not stor0.length <= stor0.length + 1:
                        idx = 2 * stor0.length + 1
                        while 2 * stor0.length > idx:
                            address(stor0[idx].field_0) = 0
                            uint256(stor0[idx].field_256) = 0
                            idx = idx + 1
                            continue 
                    require stor0.length < stor0.length
                    uint256(stor5629[stor0.length]) = msg.sender or Mask(96, 160, uint256(stor5629[stor0.length]))
                    stor290D[stor0.length] = 100 * 10^18
                else:
                    if msg.sender == address(owner):
                        idx = 0
                        while idx < stor0.length:
                            mem[0] = 0
                            call address(stor5629[idx]) with:
                               value stor290D[idx] wei
                                 gas 0 wei
                            idx = idx + 1
                            continue 
                        idx = 0
                        while idx < stor1.length:
                            mem[0] = 1
                            call address(stor[code.data[2268 len 32] + (2 * idx)]) with:
                               value storB10E[idx] wei
                                 gas 0 wei
                            idx = idx + 1
                            continue 
                        balanceA = 0
                        balanceB = 0
                        betLockTime = 0
                        lastTransactionRec = block.number
                        stor0.length = 0
                        idx = 0x56290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e5
                        while (2 * stor0.length) + 0x56290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e5 > idx:
                            address(stor[idx]) = 0
                            uint256(stor1[idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        stor1.length = 0
                        idx = code.data[2268 len 32]
                        while code.data[2268 len 32] + (2 * stor1.length) > idx:
                            address(stor[idx]) = 0
                            uint256(stor1[idx].field_0) = 0
                            idx = idx + 1
                            continue 
                    betLockTime = block.number
                    lastTransactionRec = block.number
                    call msg.sender with:
                       value msg.value wei
                         gas 0 wei
        else:
            if 0 == betLockTime:
                if msg.value <= 100 * 10^18:
                    if lastTransactionRec + 161280 >= block.number:
                        lastTransactionRec = block.number
                        if bool(msg.value / 10^15) != 0:
                            balanceB += msg.value
                            stor1.length++
                            if not stor1.length <= stor1.length + 1:
                                idx = 2 * stor1.length + 1
                                while 2 * stor1.length > idx:
                                    address(stor1[idx].field_0) = 0
                                    uint256(stor1[idx].field_256) = 0
                                    idx = idx + 1
                                    continue 
                            require stor1.length < stor1.length
                            uint256(stor[code.data[2268 len 32] + (2 * stor1.length)]) = msg.sender or Mask(96, 160, uint256(stor[code.data[2268 len 32] + (2 * stor1.length)]))
                            storB10E[stor1.length] = msg.value
                        else:
                            balanceA += msg.value
                            stor0.length++
                            if not stor0.length <= stor0.length + 1:
                                idx = 2 * stor0.length + 1
                                while 2 * stor0.length > idx:
                                    address(stor0[idx].field_0) = 0
                                    uint256(stor0[idx].field_256) = 0
                                    idx = idx + 1
                                    continue 
                            require stor0.length < stor0.length
                            uint256(stor5629[stor0.length]) = msg.sender or Mask(96, 160, uint256(stor5629[stor0.length]))
                            stor290D[stor0.length] = msg.value
                    else:
                        if msg.sender == address(owner):
                            idx = 0
                            while idx < stor0.length:
                                mem[0] = 0
                                call address(stor5629[idx]) with:
                                   value stor290D[idx] wei
                                     gas 0 wei
                                idx = idx + 1
                                continue 
                            idx = 0
                            while idx < stor1.length:
                                mem[0] = 1
                                call address(stor[code.data[2268 len 32] + (2 * idx)]) with:
                                   value storB10E[idx] wei
                                     gas 0 wei
                                idx = idx + 1
                                continue 
                            balanceA = 0
                            balanceB = 0
                            betLockTime = 0
                            lastTransactionRec = block.number
                            stor0.length = 0
                            idx = 0x56290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e5
                            while (2 * stor0.length) + 0x56290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e5 > idx:
                                address(stor[idx]) = 0
                                uint256(stor1[idx].field_0) = 0
                                idx = idx + 1
                                continue 
                            stor1.length = 0
                            idx = code.data[2268 len 32]
                            while code.data[2268 len 32] + (2 * stor1.length) > idx:
                                address(stor[idx]) = 0
                                uint256(stor1[idx].field_0) = 0
                                idx = idx + 1
                                continue 
                        betLockTime = block.number
                        lastTransactionRec = block.number
                        call msg.sender with:
                           value msg.value wei
                             gas 0 wei
                else:
                    call msg.sender with:
                       value msg.value - 100 * 10^18 wei
                         gas 0 wei
                    if lastTransactionRec + 161280 >= block.number:
                        lastTransactionRec = block.number
                        balanceA += 100 * 10^18
                        stor0.length++
                        if not stor0.length <= stor0.length + 1:
                            idx = 2 * stor0.length + 1
                            while 2 * stor0.length > idx:
                                address(stor0[idx].field_0) = 0
                                uint256(stor0[idx].field_256) = 0
                                idx = idx + 1
                                continue 
                        require stor0.length < stor0.length
                        uint256(stor5629[stor0.length]) = msg.sender or Mask(96, 160, uint256(stor5629[stor0.length]))
                        stor290D[stor0.length] = 100 * 10^18
                    else:
                        if msg.sender == address(owner):
                            idx = 0
                            while idx < stor0.length:
                                mem[0] = 0
                                call address(stor5629[idx]) with:
                                   value stor290D[idx] wei
                                     gas 0 wei
                                idx = idx + 1
                                continue 
                            idx = 0
                            while idx < stor1.length:
                                mem[0] = 1
                                call address(stor[code.data[2268 len 32] + (2 * idx)]) with:
                                   value storB10E[idx] wei
                                     gas 0 wei
                                idx = idx + 1
                                continue 
                            balanceA = 0
                            balanceB = 0
                            betLockTime = 0
                            lastTransactionRec = block.number
                            stor0.length = 0
                            idx = 0x56290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e5
                            while (2 * stor0.length) + 0x56290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e5 > idx:
                                address(stor[idx]) = 0
                                uint256(stor1[idx].field_0) = 0
                                idx = idx + 1
                                continue 
                            stor1.length = 0
                            idx = code.data[2268 len 32]
                            while code.data[2268 len 32] + (2 * stor1.length) > idx:
                                address(stor[idx]) = 0
                                uint256(stor1[idx].field_0) = 0
                                idx = idx + 1
                                continue 
                        betLockTime = block.number
                        lastTransactionRec = block.number
                        call msg.sender with:
                           value msg.value wei
                             gas 0 wei
            else:
                if block.number < betLockTime + 161280:
                    call msg.sender with:
                       value msg.value wei
                         gas 0 wei
                else:
                    if msg.value <= 100 * 10^18:
                        if lastTransactionRec + 161280 >= block.number:
                            lastTransactionRec = block.number
                            if bool(msg.value / 10^15) != 0:
                                balanceB += msg.value
                                stor1.length++
                                if not stor1.length <= stor1.length + 1:
                                    idx = 2 * stor1.length + 1
                                    while 2 * stor1.length > idx:
                                        address(stor1[idx].field_0) = 0
                                        uint256(stor1[idx].field_256) = 0
                                        idx = idx + 1
                                        continue 
                                require stor1.length < stor1.length
                                uint256(stor[code.data[2268 len 32] + (2 * stor1.length)]) = msg.sender or Mask(96, 160, uint256(stor[code.data[2268 len 32] + (2 * stor1.length)]))
                                storB10E[stor1.length] = msg.value
                            else:
                                balanceA += msg.value
                                stor0.length++
                                if not stor0.length <= stor0.length + 1:
                                    idx = 2 * stor0.length + 1
                                    while 2 * stor0.length > idx:
                                        address(stor0[idx].field_0) = 0
                                        uint256(stor0[idx].field_256) = 0
                                        idx = idx + 1
                                        continue 
                                require stor0.length < stor0.length
                                uint256(stor5629[stor0.length]) = msg.sender or Mask(96, 160, uint256(stor5629[stor0.length]))
                                stor290D[stor0.length] = msg.value
                        else:
                            if msg.sender == address(owner):
                                idx = 0
                                while idx < stor0.length:
                                    mem[0] = 0
                                    call address(stor5629[idx]) with:
                                       value stor290D[idx] wei
                                         gas 0 wei
                                    idx = idx + 1
                                    continue 
                                idx = 0
                                while idx < stor1.length:
                                    mem[0] = 1
                                    call address(stor[code.data[2268 len 32] + (2 * idx)]) with:
                                       value storB10E[idx] wei
                                         gas 0 wei
                                    idx = idx + 1
                                    continue 
                                balanceA = 0
                                balanceB = 0
                                betLockTime = 0
                                lastTransactionRec = block.number
                                stor0.length = 0
                                idx = 0x56290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e5
                                while (2 * stor0.length) + 0x56290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e5 > idx:
                                    address(stor[idx]) = 0
                                    uint256(stor1[idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                stor1.length = 0
                                idx = code.data[2268 len 32]
                                while code.data[2268 len 32] + (2 * stor1.length) > idx:
                                    address(stor[idx]) = 0
                                    uint256(stor1[idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                            betLockTime = block.number
                            lastTransactionRec = block.number
                            call msg.sender with:
                               value msg.value wei
                                 gas 0 wei
                    else:
                        call msg.sender with:
                           value msg.value - 100 * 10^18 wei
                             gas 0 wei
                        if lastTransactionRec + 161280 >= block.number:
                            lastTransactionRec = block.number
                            balanceA += 100 * 10^18
                            stor0.length++
                            if not stor0.length <= stor0.length + 1:
                                idx = 2 * stor0.length + 1
                                while 2 * stor0.length > idx:
                                    address(stor0[idx].field_0) = 0
                                    uint256(stor0[idx].field_256) = 0
                                    idx = idx + 1
                                    continue 
                            require stor0.length < stor0.length
                            uint256(stor5629[stor0.length]) = msg.sender or Mask(96, 160, uint256(stor5629[stor0.length]))
                            stor290D[stor0.length] = 100 * 10^18
                        else:
                            if msg.sender == address(owner):
                                idx = 0
                                while idx < stor0.length:
                                    mem[0] = 0
                                    call address(stor5629[idx]) with:
                                       value stor290D[idx] wei
                                         gas 0 wei
                                    idx = idx + 1
                                    continue 
                                idx = 0
                                while idx < stor1.length:
                                    mem[0] = 1
                                    call address(stor[code.data[2268 len 32] + (2 * idx)]) with:
                                       value storB10E[idx] wei
                                         gas 0 wei
                                    idx = idx + 1
                                    continue 
                                balanceA = 0
                                balanceB = 0
                                betLockTime = 0
                                lastTransactionRec = block.number
                                stor0.length = 0
                                idx = 0x56290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e5
                                while (2 * stor0.length) + 0x56290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e5 > idx:
                                    address(stor[idx]) = 0
                                    uint256(stor1[idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                stor1.length = 0
                                idx = code.data[2268 len 32]
                                while code.data[2268 len 32] + (2 * stor1.length) > idx:
                                    address(stor[idx]) = 0
                                    uint256(stor1[idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                            betLockTime = block.number
                            lastTransactionRec = block.number
                            call msg.sender with:
                               value msg.value wei
                                 gas 0 wei
}



}

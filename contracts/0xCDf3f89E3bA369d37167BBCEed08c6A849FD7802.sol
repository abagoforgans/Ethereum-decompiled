contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = 0
    return code.data[72 len 5358]
}



// =====================  Runtime code  =====================


const Information = Array(len=29, data=mem[224])


uint8 contractEnabled; offset 160
address stor0;
uint256 jackpot;
uint256 rollCount;
uint256 jackpotHits;
uint256 stor4;
uint256 stor5;
uint256 stor6;
array of struct stor7;
array of struct stor8;
array of uint256 stor39329958129252365225000244316549619631642976376925172532217634639291095933801;
array of uint256 stor39329958129252365225000244316549619631642976376925172532217634639291095933806;
array of uint256 stor103106069779492925985638950903366006378951835118547514444575132081149499368297;
array of uint256 stor103106069779492925985638950903366006378951835118547514444575132081149499368302;
array of uint256 stor104010695476659458762385599223746380659055506873747831351133394456211320693609;
array of address stor104010695476659458762385599223746380659055506873747831351133394456211320693614;
array of uint256 stor104010695476659458762385599223746380659055506873747831351133394456211320693615;
array of uint256 stor104010695476659458762385599223746380659055506873747831351133394456211320693618;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020066;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020071;

function JackpotHits() payable {
    return jackpotHits
}

function Jackpot() payable {
    return jackpot
}

function ContractEnabled() payable {
    return contractEnabled
}

function RollCount() payable {
    return rollCount
}

function BetPriceLimit() payable {
    return 10^16, stor4 / 10
}

function ChanceOfWinning(uint256 arg1) payable {
    if arg1 >= 10^16:
        if stor4 / 10 >= arg1:
            return (130 * 100 * 10^6 * stor4 / arg1 / 50 / 100)
    else:
    return 0
}

function Investors(uint256 arg1) payable {
    if arg1 >= stor8.length:
        return 0
    return address(storE5F3[arg1]), 
           uint256(stor8[arg1].field_256),
           uint256(stor8[arg1].field_512),
           uint8(stor[(5 * arg1) + code.data[5326 len 32]].field_0)
}

function OwnerCloseContract() payable {
    require msg.sender == stor0
    require contractEnabled
    if msg.value > 0:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
        require ext_call.success != 0
    contractEnabled = 0
    stor6 += stor5
    stor5 = 0
}

function OwnerGetFee() payable {
    require msg.sender == stor0
    if msg.value > 0:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
        require ext_call.success != 0
    require stor6 != 0
    call stor0 with:
       value stor6 wei
         gas 0 wei
    require ext_call.success != 0
    stor6 = 0
}

function GetMyInvestFee() payable {
    if msg.value <= 0:
        idx = 0
        s = 0
        while idx < stor8.length:
            mem[0] = 8
            if address(storE5F3[idx]) != msg.sender:
                idx = idx + 1
                s = s
                continue 
            require idx < stor8.length
            mem[0] = 8
            if uint8(stor[code.data[5326 len 32] + (5 * idx)].field_8) != 1:
                idx = idx + 1
                s = s
                continue 
            require idx < stor8.length
            mem[0] = 8
            uint8(stor[code.data[5326 len 32] + (5 * idx)].field_8) = 0
            idx = idx + 1
            s = stor56F3[idx]
            continue 
        if s <= 0:
        call msg.sender with:
           value s wei
             gas 0 wei
        if ext_call.success != 0:
    else:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
        if ext_call.success != 0:
            idx = 0
            s = 0
            while idx < stor8.length:
                mem[0] = 8
                if address(storE5F3[idx]) != msg.sender:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < stor8.length
                mem[0] = 8
                if uint8(stor[code.data[5326 len 32] + (5 * idx)].field_8) != 1:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < stor8.length
                mem[0] = 8
                uint8(stor[code.data[5326 len 32] + (5 * idx)].field_8) = 0
                idx = idx + 1
                s = stor56F3[idx]
                continue 
            if s <= 0:
            call msg.sender with:
               value s wei
                 gas 0 wei
            if ext_call.success != 0:
    revert 
}

function _fallback() payable {
    require contractEnabled
    require msg.value >= 10^16
    require stor4 / 10 >= msg.value
    mem[0] = msg.sender
    mem[32] = 7
    idx = 0
    while idx < uint256(stor7[address(msg.sender)].field_0):
        require idx < uint256(stor[sha3(mem[0 len 64])].field_0)
        mem[0] = sha3(mem[0 len 64])
        if uint8(stor[(5 * idx) + sha3(mem[0]) + 2].field_0) != 0:
            mem[0] = msg.sender
            mem[32] = 7
            idx = idx + 1
            continue 
        require idx < uint256(stor7[address(msg.sender)].field_0)
        uint256(stor7[address(msg.sender)][idx].field_0) = block.number + 4
        require idx < uint256(stor7[address(msg.sender)].field_0)
        uint256(stor7[address(msg.sender)][idx].field_256) = sha3(rollCount, block.timestamp, 0)
        require idx < uint256(stor7[address(msg.sender)].field_0)
        uint8(stor7[address(msg.sender)][idx].field_512) = 1
        require idx < uint256(stor7[address(msg.sender)].field_0)
        uint256(stor7[address(msg.sender)][idx].field_768) = msg.value
        require idx < uint256(stor7[address(msg.sender)].field_0)
        uint256(stor7[address(msg.sender)][idx].field_1024) = jackpotHits
        rollCount++
        require idx < uint256(stor7[address(msg.sender)].field_0)
        emit PrepareRollEvent(msg.sender, uint256(stor7[address(msg.sender)][idx].field_0));
    uint256(stor7[address(msg.sender)].field_0)++
    if not uint256(stor7[address(msg.sender)].field_0) <= uint256(stor7[address(msg.sender)].field_0) + 1:
        idx = (5 * uint256(stor7[address(msg.sender)].field_0)) + 5
        while 5 * uint256(stor7[address(msg.sender)].field_0) > idx:
            uint256(stor7[address(msg.sender)][idx].field_0) = 0
            uint256(stor7[address(msg.sender)][idx].field_256) = 0
            uint8(stor7[address(msg.sender)][idx].field_512) = 0
            uint256(stor7[address(msg.sender)][idx].field_768) = 0
            uint256(stor7[address(msg.sender)][idx].field_1024) = 0
            idx = idx + 1
            continue 
    require uint256(stor7[address(msg.sender)].field_0) - 1 < uint256(stor7[address(msg.sender)].field_0)
    uint256(stor7[address(msg.sender)][uint256(stor7[address(msg.sender)].field_0)].field_0) = block.number + 4
    require uint256(stor7[address(msg.sender)].field_0) - 1 < uint256(stor7[address(msg.sender)].field_0)
    uint256(stor7[address(msg.sender)][uint256(stor7[address(msg.sender)].field_0)].field_0) = sha3(rollCount, block.timestamp, 0)
    require uint256(stor7[address(msg.sender)].field_0) - 1 < uint256(stor7[address(msg.sender)].field_0)
    uint8(stor7[address(msg.sender)][uint256(stor7[address(msg.sender)].field_0)].field_0) = 1
    require uint256(stor7[address(msg.sender)].field_0) - 1 < uint256(stor7[address(msg.sender)].field_0)
    uint256(stor7[address(msg.sender)][uint256(stor7[address(msg.sender)].field_0)].field_0) = msg.value
    require uint256(stor7[address(msg.sender)].field_0) - 1 < uint256(stor7[address(msg.sender)].field_0)
    uint256(stor7[address(msg.sender)][uint256(stor7[address(msg.sender)].field_0)].field_0) = jackpotHits
    rollCount++
    require uint256(stor7[address(msg.sender)].field_0) - 1 < uint256(stor7[address(msg.sender)].field_0)
    emit PrepareRollEvent(msg.sender, uint256(stor7[address(msg.sender)][uint256(stor7[address(msg.sender)].field_0)].field_0));
}

function PrepareRoll(uint256 arg1) payable {
    require contractEnabled
    require msg.value >= 10^16
    require stor4 / 10 >= msg.value
    mem[0] = msg.sender
    mem[32] = 7
    idx = 0
    while idx < uint256(stor7[address(msg.sender)].field_0):
        require idx < uint256(stor[sha3(mem[0 len 64])].field_0)
        mem[0] = sha3(mem[0 len 64])
        if uint8(stor[(5 * idx) + sha3(mem[0]) + 2].field_0) != 0:
            mem[0] = msg.sender
            mem[32] = 7
            idx = idx + 1
            continue 
        require idx < uint256(stor7[address(msg.sender)].field_0)
        uint256(stor7[address(msg.sender)][idx].field_0) = block.number + 4
        require idx < uint256(stor7[address(msg.sender)].field_0)
        uint256(stor7[address(msg.sender)][idx].field_256) = sha3(rollCount, block.timestamp, arg1)
        require idx < uint256(stor7[address(msg.sender)].field_0)
        uint8(stor7[address(msg.sender)][idx].field_512) = 1
        require idx < uint256(stor7[address(msg.sender)].field_0)
        uint256(stor7[address(msg.sender)][idx].field_768) = msg.value
        require idx < uint256(stor7[address(msg.sender)].field_0)
        uint256(stor7[address(msg.sender)][idx].field_1024) = jackpotHits
        rollCount++
        require idx < uint256(stor7[address(msg.sender)].field_0)
        emit PrepareRollEvent(msg.sender, uint256(stor7[address(msg.sender)][idx].field_0));
    uint256(stor7[address(msg.sender)].field_0)++
    if not uint256(stor7[address(msg.sender)].field_0) <= uint256(stor7[address(msg.sender)].field_0) + 1:
        idx = (5 * uint256(stor7[address(msg.sender)].field_0)) + 5
        while 5 * uint256(stor7[address(msg.sender)].field_0) > idx:
            uint256(stor7[address(msg.sender)][idx].field_0) = 0
            uint256(stor7[address(msg.sender)][idx].field_256) = 0
            uint8(stor7[address(msg.sender)][idx].field_512) = 0
            uint256(stor7[address(msg.sender)][idx].field_768) = 0
            uint256(stor7[address(msg.sender)][idx].field_1024) = 0
            idx = idx + 1
            continue 
    require uint256(stor7[address(msg.sender)].field_0) - 1 < uint256(stor7[address(msg.sender)].field_0)
    uint256(stor7[address(msg.sender)][uint256(stor7[address(msg.sender)].field_0)].field_0) = block.number + 4
    require uint256(stor7[address(msg.sender)].field_0) - 1 < uint256(stor7[address(msg.sender)].field_0)
    uint256(stor7[address(msg.sender)][uint256(stor7[address(msg.sender)].field_0)].field_0) = sha3(rollCount, block.timestamp, arg1)
    require uint256(stor7[address(msg.sender)].field_0) - 1 < uint256(stor7[address(msg.sender)].field_0)
    uint8(stor7[address(msg.sender)][uint256(stor7[address(msg.sender)].field_0)].field_0) = 1
    require uint256(stor7[address(msg.sender)].field_0) - 1 < uint256(stor7[address(msg.sender)].field_0)
    uint256(stor7[address(msg.sender)][uint256(stor7[address(msg.sender)].field_0)].field_0) = msg.value
    require uint256(stor7[address(msg.sender)].field_0) - 1 < uint256(stor7[address(msg.sender)].field_0)
    uint256(stor7[address(msg.sender)][uint256(stor7[address(msg.sender)].field_0)].field_0) = jackpotHits
    rollCount++
    require uint256(stor7[address(msg.sender)].field_0) - 1 < uint256(stor7[address(msg.sender)].field_0)
    emit PrepareRollEvent(msg.sender, uint256(stor7[address(msg.sender)][uint256(stor7[address(msg.sender)].field_0)].field_0));
}

function Invest() payable {
    require contractEnabled
    require msg.value >= 10^18
    if msg.value % 10^18 <= 0:
        idx = 0
        while idx < stor8.length:
            mem[0] = 8
            if uint8(stor[code.data[5326 len 32] + (5 * idx)].field_8):
                idx = idx + 1
                continue 
            require idx < stor8.length
            uint256(storE5F3[idx]) = msg.sender or Mask(96, 160, uint256(storE5F3[idx]))
            storE3F3[idx] = msg.value
            stor56F3[idx] = 0
            uint8(stor[code.data[5326 len 32] + (5 * idx)].field_8) = 1
            uint8(stor[code.data[5326 len 32] + (5 * idx)].field_0) = 1
            storF3F7[idx] = block.timestamp + (24 * 3600)
            stor4 += msg.value
            jackpot = stor5 + stor4
        stor8.length++
        if not stor8.length <= stor8.length + 1:
            idx = (5 * stor8.length) + 5
            while 5 * stor8.length > idx:
                address(stor8[idx].field_0) = 0
                uint256(stor8[idx].field_256) = 0
                uint256(stor8[idx].field_512) = 0
                uint16(stor8[idx].field_768) = 0
                uint256(stor8[idx].field_1024) = 0
                idx = idx + 1
                continue 
        require stor8.length - 1 < stor8.length
        storE5F3[stor8.length] = msg.sender or Mask(96, 160, storE5F3[stor8.length])
        storE3F3[stor8.length] = msg.value
        stor56F3[stor8.length] = 0
        uint8(stor[code.data[5326 len 32] + (5 * stor8.length) - 5].field_8) = 1
        uint8(stor[code.data[5326 len 32] + (5 * stor8.length) - 5].field_0) = 1
        storF3F7[stor8.length] = block.timestamp + (24 * 3600)
        stor4 += msg.value
    else:
        call msg.sender with:
           value msg.value % 10^18 wei
             gas 0 wei
        require ext_call.success != 0
        idx = 0
        while idx < stor8.length:
            mem[0] = 8
            if uint8(stor[code.data[5326 len 32] + (5 * idx)].field_8):
                idx = idx + 1
                continue 
            require idx < stor8.length
            uint256(storE5F3[idx]) = msg.sender or Mask(96, 160, uint256(storE5F3[idx]))
            storE3F3[idx] = msg.value - (msg.value % 10^18)
            stor56F3[idx] = 0
            uint8(stor[code.data[5326 len 32] + (5 * idx)].field_8) = 1
            uint8(stor[code.data[5326 len 32] + (5 * idx)].field_0) = 1
            storF3F7[idx] = block.timestamp + (24 * 3600)
            stor4 = msg.value - (msg.value % 10^18) + stor4
            jackpot = stor5 + stor4
        stor8.length++
        if not stor8.length <= stor8.length + 1:
            idx = (5 * stor8.length) + 5
            while 5 * stor8.length > idx:
                address(stor8[idx].field_0) = 0
                uint256(stor8[idx].field_256) = 0
                uint256(stor8[idx].field_512) = 0
                uint16(stor8[idx].field_768) = 0
                uint256(stor8[idx].field_1024) = 0
                idx = idx + 1
                continue 
        require stor8.length - 1 < stor8.length
        storE5F3[stor8.length] = msg.sender or Mask(96, 160, storE5F3[stor8.length])
        storE3F3[stor8.length] = msg.value - (msg.value % 10^18)
        stor56F3[stor8.length] = 0
        uint8(stor[code.data[5326 len 32] + (5 * stor8.length) - 5].field_8) = 1
        uint8(stor[code.data[5326 len 32] + (5 * stor8.length) - 5].field_0) = 1
        storF3F7[stor8.length] = block.timestamp + (24 * 3600)
        stor4 = msg.value - (msg.value % 10^18) + stor4
    jackpot = stor5 + stor4
}

function CancelMyInvest() payable {
    if msg.value <= 0:
        idx = 0
        s = 0
        while idx < stor8.length:
            mem[0] = 8
            if address(storE5F3[idx]) != msg.sender:
                idx = idx + 1
                s = s
                continue 
            require idx < stor8.length
            mem[0] = 8
            if uint8(stor[code.data[5326 len 32] + (5 * idx)].field_8) != 1:
                idx = idx + 1
                s = s
                continue 
            require idx < stor8.length
            mem[0] = 8
            if storE5F3[idx] >= block.timestamp:
                idx = idx + 1
                s = s
                continue 
            require idx < stor8.length
            require idx < stor8.length
            if uint8(stor[code.data[5326 len 32] + (5 * idx)].field_0) != 1:
                uint8(stor[code.data[5326 len 32] + (5 * idx)].field_8) = 0
                address(storE5F3[idx]) = 0
                storE3F3[idx] = 0
                stor56F3[idx] = 0
                mem[0] = 8
                uint16(stor[(5 * idx) + code.data[5326 len 32]].field_0) = 0
                storF3F7[idx] = 0
                idx = idx + 1
                s = stor56F3[idx]
                continue 
            stor4 -= storE3F3[idx]
            uint8(stor[code.data[5326 len 32] + (5 * idx)].field_8) = 0
            address(storE5F3[idx]) = 0
            storE3F3[idx] = 0
            stor56F3[idx] = 0
            mem[0] = 8
            uint16(stor[(5 * idx) + code.data[5326 len 32]].field_0) = 0
            storF3F7[idx] = 0
            idx = idx + 1
            s = stor56F3[idx] + storE3F3[idx]
            continue 
        jackpot = stor5 + stor4
        if s <= 0:
        call msg.sender with:
           value s wei
             gas 0 wei
        if ext_call.success != 0:
    else:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
        if ext_call.success != 0:
            idx = 0
            s = 0
            while idx < stor8.length:
                mem[0] = 8
                if address(storE5F3[idx]) != msg.sender:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < stor8.length
                mem[0] = 8
                if uint8(stor[code.data[5326 len 32] + (5 * idx)].field_8) != 1:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < stor8.length
                mem[0] = 8
                if storE5F3[idx] >= block.timestamp:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < stor8.length
                require idx < stor8.length
                if uint8(stor[code.data[5326 len 32] + (5 * idx)].field_0) != 1:
                    uint8(stor[code.data[5326 len 32] + (5 * idx)].field_8) = 0
                    address(storE5F3[idx]) = 0
                    storE3F3[idx] = 0
                    stor56F3[idx] = 0
                    mem[0] = 8
                    uint16(stor[(5 * idx) + code.data[5326 len 32]].field_0) = 0
                    storF3F7[idx] = 0
                    idx = idx + 1
                    s = stor56F3[idx]
                    continue 
                stor4 -= storE3F3[idx]
                uint8(stor[code.data[5326 len 32] + (5 * idx)].field_8) = 0
                address(storE5F3[idx]) = 0
                storE3F3[idx] = 0
                stor56F3[idx] = 0
                mem[0] = 8
                uint16(stor[(5 * idx) + code.data[5326 len 32]].field_0) = 0
                storF3F7[idx] = 0
                idx = idx + 1
                s = stor56F3[idx] + storE3F3[idx]
                continue 
            jackpot = stor5 + stor4
            if s <= 0:
            call msg.sender with:
               value s wei
                 gas 0 wei
            if ext_call.success != 0:
    revert 
}

function DoRoll() payable {
    mem[64] = 96
    if msg.value <= 0:
        mem[0] = msg.sender
        mem[32] = 7
        idx = 0
        s = 0
        t = 0
        while idx < uint256(stor7[address(msg.sender)].field_0):
            require idx < uint256(stor[sha3(mem[0 len 64])].field_0)
            mem[0] = sha3(mem[0 len 64])
            if uint8(stor[(5 * idx) + sha3(mem[0]) + 2].field_0) != 1:
                mem[0] = msg.sender
                mem[32] = 7
                idx = idx + 1
                s = s
                t = t
                continue 
            require idx < uint256(stor7[address(msg.sender)].field_0)
            require idx < uint256(stor7[address(msg.sender)].field_0)
            if not contractEnabled:
                uint8(stor7[address(msg.sender)][idx].field_512) = 0
                mem[0] = msg.sender
                mem[32] = 7
                idx = idx + 1
                s = 1
                t = t + uint256(stor7[address(msg.sender)][idx].field_768)
                continue 
            require idx < uint256(stor7[address(msg.sender)].field_0)
            if uint256(stor7[address(msg.sender)][idx].field_0) + 100 <= block.number:
                uint8(stor7[address(msg.sender)][idx].field_512) = 0
                mem[0] = msg.sender
                mem[32] = 7
                idx = idx + 1
                s = 1
                t = t + uint256(stor7[address(msg.sender)][idx].field_768)
                continue 
            if 0 == stor4:
                uint8(stor7[address(msg.sender)][idx].field_512) = 0
                mem[0] = msg.sender
                mem[32] = 7
                idx = idx + 1
                s = 1
                t = t + uint256(stor7[address(msg.sender)][idx].field_768)
                continue 
            if uint256(stor7[address(msg.sender)][idx].field_1024) != jackpotHits:
                require idx < uint256(stor7[address(msg.sender)].field_0)
                uint8(stor7[address(msg.sender)][idx].field_512) = 0
                mem[0] = msg.sender
                mem[32] = 7
                idx = idx + 1
                s = 1
                t = t + uint256(stor7[address(msg.sender)][idx].field_768)
                continue 
            if uint256(stor7[address(msg.sender)][idx].field_0) >= block.number:
                mem[0] = msg.sender
                mem[32] = 7
                idx = idx + 1
                s = s
                t = t
                continue 
            require idx < uint256(stor7[address(msg.sender)].field_0)
            stor6 += 5 * uint256(stor7[address(msg.sender)][idx].field_768) / 100
            require idx < uint256(stor7[address(msg.sender)].field_0)
            s = 0
            while s < stor8.length:
                if 1 == uint8(stor[code.data[5326 len 32] + (5 * s)].field_0):
                    require s < stor8.length
                    stor56F3[s] += 50 * uint256(stor7[address(msg.sender)][idx].field_768) / 100 * storE5F3[s] / stor4
                mem[0] = msg.sender
                mem[32] = 7
                s = s + 1
                continue 
            require idx < uint256(stor7[address(msg.sender)].field_0)
            stor5 = uint256(stor7[address(msg.sender)][idx].field_768) - (5 * uint256(stor7[address(msg.sender)][idx].field_768) / 100) - (50 * uint256(stor7[address(msg.sender)][idx].field_768) / 100) + stor5
            jackpot = stor5 + stor4
            require idx < uint256(stor7[address(msg.sender)].field_0)
            mem[0] = sha3(address(msg.sender), 7)
            s = 1
            u = uint256(stor[(5 * idx) + sha3(mem[0]) + 1].field_0)
            while s <= 4:
                require idx < uint256(stor7[address(msg.sender)].field_0)
                mem[mem[64]] = u
                mem[mem[64] + 32] = block.hash(s + uint256(stor7[address(msg.sender)][idx].field_0) - 4)
                mem[0] = msg.sender
                mem[32] = 7
                s = s + 1
                u = sha3(u, block.hash(s + uint256(stor7[address(msg.sender)][idx].field_0) - 4))
                continue 
            mem[32] = 7
            require idx < uint256(stor7[address(msg.sender)].field_0)
            mem[0] = sha3(address(msg.sender), 7)
            if 10^6 * u % 130 * 100 * 10^6 * stor4 / uint256(stor7[address(msg.sender)][idx].field_768) / 50 / 100 != 0:
                mem[mem[64]] = msg.sender
                mem[mem[64] + 32] = 130 * 100 * 10^6 * stor4 / uint256(stor7[address(msg.sender)][idx].field_768) / 50 / 100
                mem[mem[64] + 64] = 10^6 * u % 130 * 100 * 10^6 * stor4 / uint256(stor7[address(msg.sender)][idx].field_768) / 50 / 100
                mem[mem[64] + 96] = 10^6 * u
                mem[mem[64] + 128] = 0
                emit RollEvent(msg.sender, 130 * 100 * 10^6 * stor4 / uint256(stor7[address(msg.sender)][idx].field_768) / 50 / 100, 10^6 * u % 130 * 100 * 10^6 * stor4 / uint256(stor7[address(msg.sender)][idx].field_768) / 50 / 100, 10^6 * u, 0);
                require idx < uint256(stor7[address(msg.sender)].field_0)
                uint8(stor7[address(msg.sender)][idx].field_512) = 0
                mem[0] = msg.sender
                mem[32] = 7
                idx = idx + 1
                s = 1
                t = t
                continue 
            s = 0
            while s < stor8.length:
                uint8(stor[code.data[5326 len 32] + (5 * s)].field_0) = 0
                mem[0] = msg.sender
                mem[32] = 7
                s = s + 1
                continue 
            jackpotHits++
            stor5 = 0
            stor4 = 0
            jackpot = 0
            mem[mem[64]] = msg.sender
            mem[mem[64] + 32] = 130 * 100 * 10^6 * stor4 / uint256(stor7[address(msg.sender)][idx].field_768) / 50 / 100
            mem[mem[64] + 64] = 10^6 * u % 130 * 100 * 10^6 * stor4 / uint256(stor7[address(msg.sender)][idx].field_768) / 50 / 100
            mem[mem[64] + 96] = 10^6 * u
            mem[mem[64] + 128] = jackpot
            emit RollEvent(msg.sender, 130 * 100 * 10^6 * stor4 / uint256(stor7[address(msg.sender)][idx].field_768) / 50 / 100, 10^6 * u % 130 * 100 * 10^6 * stor4 / uint256(stor7[address(msg.sender)][idx].field_768) / 50 / 100, 10^6 * u, jackpot);
            require idx < uint256(stor7[address(msg.sender)].field_0)
            uint8(stor7[address(msg.sender)][idx].field_512) = 0
            mem[0] = msg.sender
            mem[32] = 7
            idx = idx + 1
            s = 1
            t = t + jackpot
            continue 
        if t <= 0:
            if s != 0:
        else:
            call msg.sender with:
               value t wei
                 gas 0 wei
            if ext_call.success != 0:
                if s != 0:
    else:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
        if ext_call.success != 0:
            mem[0] = msg.sender
            mem[32] = 7
            idx = 0
            s = 0
            t = 0
            while idx < uint256(stor7[address(msg.sender)].field_0):
                require idx < uint256(stor[sha3(mem[0 len 64])].field_0)
                mem[0] = sha3(mem[0 len 64])
                if uint8(stor[(5 * idx) + sha3(mem[0]) + 2].field_0) != 1:
                    mem[0] = msg.sender
                    mem[32] = 7
                    idx = idx + 1
                    s = s
                    t = t
                    continue 
                require idx < uint256(stor7[address(msg.sender)].field_0)
                require idx < uint256(stor7[address(msg.sender)].field_0)
                if not contractEnabled:
                    uint8(stor7[address(msg.sender)][idx].field_512) = 0
                    mem[0] = msg.sender
                    mem[32] = 7
                    idx = idx + 1
                    s = 1
                    t = t + uint256(stor7[address(msg.sender)][idx].field_768)
                    continue 
                require idx < uint256(stor7[address(msg.sender)].field_0)
                if uint256(stor7[address(msg.sender)][idx].field_0) + 100 <= block.number:
                    uint8(stor7[address(msg.sender)][idx].field_512) = 0
                    mem[0] = msg.sender
                    mem[32] = 7
                    idx = idx + 1
                    s = 1
                    t = t + uint256(stor7[address(msg.sender)][idx].field_768)
                    continue 
                if 0 == stor4:
                    uint8(stor7[address(msg.sender)][idx].field_512) = 0
                    mem[0] = msg.sender
                    mem[32] = 7
                    idx = idx + 1
                    s = 1
                    t = t + uint256(stor7[address(msg.sender)][idx].field_768)
                    continue 
                if uint256(stor7[address(msg.sender)][idx].field_1024) != jackpotHits:
                    require idx < uint256(stor7[address(msg.sender)].field_0)
                    uint8(stor7[address(msg.sender)][idx].field_512) = 0
                    mem[0] = msg.sender
                    mem[32] = 7
                    idx = idx + 1
                    s = 1
                    t = t + uint256(stor7[address(msg.sender)][idx].field_768)
                    continue 
                if uint256(stor7[address(msg.sender)][idx].field_0) >= block.number:
                    mem[0] = msg.sender
                    mem[32] = 7
                    idx = idx + 1
                    s = s
                    t = t
                    continue 
                require idx < uint256(stor7[address(msg.sender)].field_0)
                stor6 += 5 * uint256(stor7[address(msg.sender)][idx].field_768) / 100
                require idx < uint256(stor7[address(msg.sender)].field_0)
                s = 0
                while s < stor8.length:
                    if 1 == uint8(stor[code.data[5326 len 32] + (5 * s)].field_0):
                        require s < stor8.length
                        stor56F3[s] += 50 * uint256(stor7[address(msg.sender)][idx].field_768) / 100 * storE5F3[s] / stor4
                    mem[0] = msg.sender
                    mem[32] = 7
                    s = s + 1
                    continue 
                require idx < uint256(stor7[address(msg.sender)].field_0)
                stor5 = uint256(stor7[address(msg.sender)][idx].field_768) - (5 * uint256(stor7[address(msg.sender)][idx].field_768) / 100) - (50 * uint256(stor7[address(msg.sender)][idx].field_768) / 100) + stor5
                jackpot = stor5 + stor4
                require idx < uint256(stor7[address(msg.sender)].field_0)
                mem[0] = sha3(address(msg.sender), 7)
                s = 1
                u = uint256(stor[(5 * idx) + sha3(mem[0]) + 1].field_0)
                while s <= 4:
                    require idx < uint256(stor7[address(msg.sender)].field_0)
                    mem[mem[64]] = u
                    mem[mem[64] + 32] = block.hash(s + uint256(stor7[address(msg.sender)][idx].field_0) - 4)
                    mem[0] = msg.sender
                    mem[32] = 7
                    s = s + 1
                    u = sha3(u, block.hash(s + uint256(stor7[address(msg.sender)][idx].field_0) - 4))
                    continue 
                mem[32] = 7
                require idx < uint256(stor7[address(msg.sender)].field_0)
                mem[0] = sha3(address(msg.sender), 7)
                if 10^6 * u % 130 * 100 * 10^6 * stor4 / uint256(stor7[address(msg.sender)][idx].field_768) / 50 / 100 != 0:
                    mem[mem[64]] = msg.sender
                    mem[mem[64] + 32] = 130 * 100 * 10^6 * stor4 / uint256(stor7[address(msg.sender)][idx].field_768) / 50 / 100
                    mem[mem[64] + 64] = 10^6 * u % 130 * 100 * 10^6 * stor4 / uint256(stor7[address(msg.sender)][idx].field_768) / 50 / 100
                    mem[mem[64] + 96] = 10^6 * u
                    mem[mem[64] + 128] = 0
                    emit RollEvent(msg.sender, 130 * 100 * 10^6 * stor4 / uint256(stor7[address(msg.sender)][idx].field_768) / 50 / 100, 10^6 * u % 130 * 100 * 10^6 * stor4 / uint256(stor7[address(msg.sender)][idx].field_768) / 50 / 100, 10^6 * u, 0);
                    require idx < uint256(stor7[address(msg.sender)].field_0)
                    uint8(stor7[address(msg.sender)][idx].field_512) = 0
                    mem[0] = msg.sender
                    mem[32] = 7
                    idx = idx + 1
                    s = 1
                    t = t
                    continue 
                s = 0
                while s < stor8.length:
                    uint8(stor[code.data[5326 len 32] + (5 * s)].field_0) = 0
                    mem[0] = msg.sender
                    mem[32] = 7
                    s = s + 1
                    continue 
                jackpotHits++
                stor5 = 0
                stor4 = 0
                jackpot = 0
                mem[mem[64]] = msg.sender
                mem[mem[64] + 32] = 130 * 100 * 10^6 * stor4 / uint256(stor7[address(msg.sender)][idx].field_768) / 50 / 100
                mem[mem[64] + 64] = 10^6 * u % 130 * 100 * 10^6 * stor4 / uint256(stor7[address(msg.sender)][idx].field_768) / 50 / 100
                mem[mem[64] + 96] = 10^6 * u
                mem[mem[64] + 128] = jackpot
                emit RollEvent(msg.sender, 130 * 100 * 10^6 * stor4 / uint256(stor7[address(msg.sender)][idx].field_768) / 50 / 100, 10^6 * u % 130 * 100 * 10^6 * stor4 / uint256(stor7[address(msg.sender)][idx].field_768) / 50 / 100, 10^6 * u, jackpot);
                require idx < uint256(stor7[address(msg.sender)].field_0)
                uint8(stor7[address(msg.sender)][idx].field_512) = 0
                mem[0] = msg.sender
                mem[32] = 7
                idx = idx + 1
                s = 1
                t = t + jackpot
                continue 
            if t <= 0:
                if s != 0:
            else:
                call msg.sender with:
                   value t wei
                     gas 0 wei
                if ext_call.success != 0:
                    if s != 0:
    revert 
}



}

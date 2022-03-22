contract main {


// =======================  Init code  ======================


uint256 stor0;
array of struct stor10;

function _fallback() payable {
    stor0 = 0
    stor10.length = 1
    if not stor10.length <= 1:
        idx = 5
        while 5 * stor10.length > idx:
            stor10[idx].field_0 = 0
            stor10[idx].field_256 = 0
            stor10[idx].field_512 = 0
            stor10[idx].field_768 = 0
            stor10[idx].field_1024 = 0
            idx = idx + 5
            continue 
    return code.data[187 len 7176]
}



// =====================  Runtime code  =====================


const Information = Array(len=28, data=mem[224])


uint8 contractEnabled; offset 160
address stor0;
array of uint256 stor1;
array of uint256 stor2;
array of uint16 stor3;
array of uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
array of struct stor9;
array of struct stor10;
array of uint256 stor39249365189697262212649556357205408732595607600233223271220075824908968655314;
array of uint256 stor39249365189697262212649556357205408732595607600233223271220075824908968655324;
array of struct stor73172828833442241340648868371469444236483298420245107267154914889727268354514;
array of struct stor73172828833442241340648868371469444236483298420245107267154914889727268354524;
array of uint256 stor89717814153306320011181716697424560163256864414616650038987186496166826726060;
array of address stor89717814153306320011181716697424560163256864414616650038987186496166826726066;
array of uint256 stor89717814153306320011181716697424560163256864414616650038987186496166826726070;

function JackpotHits() payable {
    return stor3.length
}

function Jackpot() payable {
    return stor1.length
}

function ContractEnabled() payable {
    return bool(contractEnabled)
}

function RollCount() payable {
    return stor2.length
}

function BetPriceLimit() payable {
    return 10^16, 10^18 * stor5 / 10 * 10^18
}

function OwnerGetFee() payable {
    require msg.sender == stor0
    require msg.value <= 0
    require stor7 != 0
    call stor0 with:
       value stor7 wei
         gas 0 wei
    require ext_call.success
    stor7 = 0
}

function OwnerCloseContract() payable {
    require msg.sender == stor0
    require msg.value <= 0
    if contractEnabled:
        contractEnabled = 0
        stor4.length = block.number + 30
        emit ContractDisabled((block.number + 30));
        stor7 += stor6
        stor6 = 0
    else:
        if stor4.length < block.number:
            require stor8 != 0
            call msg.sender with:
               value stor8 wei
                 gas 0 wei
            require ext_call.success
            stor8 = 0
}

function GetMyInvestmentBalance() payable {
    require msg.value <= 0
    require 1 < stor10.length
    idx = 1
    while address(stor10[idx].field_0) != msg.sender:
        require idx + 1 < stor10.length
        mem[0] = 10
        idx = idx + 1
        continue 
    require None + 2 != 0
    require None + 2 < stor10.length
    require uint8(storA1C6[None].field_8)
    require None + 2 < stor10.length
    require uint256(stor[code.data[7144 len 32] + (5 * None) + 10])
    require None + 2 < stor10.length
    call msg.sender with:
       value uint256(stor[code.data[7144 len 32] + (5 * None) + 10]) wei
         gas 0 wei
    require ext_call.success
    require None + 2 < stor10.length
    uint256(stor[code.data[7144 len 32] + (5 * None) + 10]) = 0
}

function ChanceOfWinning(uint256 arg1) payable {
    if 0 == stor5:
        return 0
    if arg1 >= 10^16:
        idx = 10^18 * stor5 / 50 * 10^18 * 130 * 100 * 10^18 * stor5 / arg1 / 50 / 100 / 10^18 / 130
        s = 130 * 100 * 10^18 * stor5 / arg1 / 50 / 100 / 10^18
        while arg1 < idx:
            idx = 10^18 * stor5 / (50 * 10^18 * s) + 50 * 10^18 / 130
            s = s + 1
            continue 
    else:
        idx = 10^18 * stor5 / 50 * 10^18 * 130 * 100 * 10^18 * stor5 / 10^16 / 50 / 100 / 10^18 / 130
        s = 130 * 100 * 10^18 * stor5 / 10^16 / 50 / 100 / 10^18
        while 10^16 < idx:
            idx = 10^18 * stor5 / (50 * 10^18 * s) + 50 * 10^18 / 130
            s = s + 1
            continue 
    if s >= 26:
        return s, idx
    return 26, 10^18 * stor5 / 10 * 10^18
}

function Investors(address arg1) payable {
    idx = 1
    while idx < stor10.length:
        mem[0] = 10
        if address(stor10[idx].field_0) != arg1:
            idx = idx + 1
            continue 
        else:
            if 0 == idx:
                require idx < stor10.length
                return stor56C6[idx], uint256(stor10[idx].field_512), bool(uint8(storA1C6[idx].field_0))
            else:
                require idx < stor10.length
                if uint8(storA1C6[idx].field_8):
                    require idx < stor10.length
                    return stor56C6[idx], uint256(stor10[idx].field_512), bool(uint8(storA1C6[idx].field_0))
                else:
                    require idx < stor10.length
                    return stor56C6[idx], uint256(stor10[idx].field_512), bool(uint8(storA1C6[idx].field_0))
    require 0 < stor10.length
    return stor56C6.length, uint256(stor10.field_512), bool(storA1C6.length)
}

function CancelMyInvestment() payable {
    require msg.value <= 0
    require 1 < stor10.length
    idx = 1
    while address(stor10[idx].field_0) != msg.sender:
        require idx + 1 < stor10.length
        mem[0] = 10
        idx = idx + 1
        continue 
    require None + 2 != 0
    require None + 2 < stor10.length
    require uint8(storA1C6[None].field_8)
    require None + 2 < stor10.length
    if storC65A[None] > block.timestamp:
        require not contractEnabled
    require None + 2 < stor10.length
    require None + 2 < stor10.length
    if not uint8(storA1C6[None].field_0):
        if uint256(stor[code.data[7144 len 32] + (5 * None) + 10]) <= 0:
            call msg.sender with:
                 gas 0 wei
        else:
            require None + 2 < stor10.length
            call msg.sender with:
               value uint256(stor[code.data[7144 len 32] + (5 * None) + 10]) wei
                 gas 0 wei
    else:
        stor5 -= uint256(stor10[None].field_2816)
        stor1.length = stor6 + stor5
        if uint256(stor[code.data[7144 len 32] + (5 * None) + 10]) <= 0:
            call msg.sender with:
               value stor56C6[None] wei
                 gas 0 wei
        else:
            require None + 2 < stor10.length
            call msg.sender with:
               value uint256(stor[code.data[7144 len 32] + (5 * None) + 10]) + stor56C6[None] wei
                 gas 0 wei
    require ext_call.success
    require None + 2 < stor10.length
    storC65A[None] = 0
    stor56C6[None] = 0
    uint256(stor[(5 * None) + code.data[7144 len 32] + 10]) = 0
    uint16(storA1C6[None].field_0) = 0
    storC65A[None] = 0
}

function Invest() payable {
    require contractEnabled
    require msg.value >= 10^18
    if msg.value % 10^18 <= 0:
        idx = 1
        while idx < stor10.length:
            mem[0] = 10
            if address(stor10[idx].field_0) != msg.sender:
                idx = idx + 1
                continue 
            if idx != 0:
                require idx < stor10.length
                require idx < stor10.length
                if not uint8(storA1C6[idx].field_8):
                    stor56C6[idx] = msg.value
                else:
                    require idx < stor10.length
                    if not uint8(storA1C6[idx].field_0):
                        stor56C6[idx] = msg.value
                    else:
                        stor56C6[idx] += msg.value
                storC65A[idx] = block.timestamp + (24 * 3600)
                uint8(storA1C6[idx].field_8) = 1
                uint8(stor10[idx].field_768) = 1
                uint256(stor10[idx].field_0) = msg.sender or Mask(96, 160, uint256(stor10[idx].field_0))
            else:
                stor10.length++
                if not stor10.length <= stor10.length + 1:
                    idx = sha3(10) + (5 * stor10.length) + 5
                    while sha3(10) + (5 * stor10.length) > idx:
                        address(stor[idx]) = 0
                        stor1[idx] = 0
                        stor2[idx] = 0
                        stor3[idx] = 0
                        stor4[idx] = 0
                        idx = idx + 5
                        continue 
                require stor10.length < stor10.length
                require stor10.length < stor10.length
                if not uint8(storA1C6[stor10.length].field_8):
                    stor56C6[stor10.length] = msg.value
                else:
                    require stor10.length < stor10.length
                    if not uint8(storA1C6[stor10.length].field_0):
                        stor56C6[stor10.length] = msg.value
                    else:
                        stor56C6[stor10.length] += msg.value
                storC65A[stor10.length] = block.timestamp + (24 * 3600)
                uint8(storA1C6[stor10.length].field_8) = 1
                uint8(stor10[stor10.length].field_768) = 1
                uint256(stor10[stor10.length].field_0) = msg.sender or Mask(96, 160, uint256(stor10[stor10.length].field_0))
            stor5 += msg.value
            stor1.length = stor6 + stor5
        stor10.length++
        if not stor10.length <= stor10.length + 1:
            idx = (5 * stor10.length) + 5
            while 5 * stor10.length > idx:
                address(stor10[idx].field_0) = 0
                uint256(stor10[idx].field_256) = 0
                uint256(stor10[idx].field_512) = 0
                uint16(stor10[idx].field_768) = 0
                uint256(stor10[idx].field_1024) = 0
                idx = idx + 5
                continue 
        require stor10.length < stor10.length
        require stor10.length < stor10.length
        if not uint8(storA1C6[stor10.length].field_8):
            stor56C6[stor10.length] = msg.value
        else:
            require stor10.length < stor10.length
            if not uint8(storA1C6[stor10.length].field_0):
                stor56C6[stor10.length] = msg.value
            else:
                stor56C6[stor10.length] += msg.value
        storC65A[stor10.length] = block.timestamp + (24 * 3600)
        uint8(storA1C6[stor10.length].field_8) = 1
        uint8(stor10[stor10.length].field_768) = 1
        uint256(stor10[stor10.length].field_0) = msg.sender or Mask(96, 160, uint256(stor10[stor10.length].field_0))
        stor5 += msg.value
    else:
        call msg.sender with:
           value msg.value % 10^18 wei
             gas 0 wei
        require ext_call.success
        idx = 1
        while idx < stor10.length:
            mem[0] = 10
            if address(stor10[idx].field_0) != msg.sender:
                idx = idx + 1
                continue 
            if idx != 0:
                require idx < stor10.length
                require idx < stor10.length
                if not uint8(storA1C6[idx].field_8):
                    stor56C6[idx] = msg.value - (msg.value % 10^18)
                else:
                    require idx < stor10.length
                    if not uint8(storA1C6[idx].field_0):
                        stor56C6[idx] = msg.value - (msg.value % 10^18)
                    else:
                        stor56C6[idx] = msg.value - (msg.value % 10^18) + stor56C6[idx]
                storC65A[idx] = block.timestamp + (24 * 3600)
                uint8(storA1C6[idx].field_8) = 1
                uint8(stor10[idx].field_768) = 1
                uint256(stor10[idx].field_0) = msg.sender or Mask(96, 160, uint256(stor10[idx].field_0))
            else:
                stor10.length++
                if not stor10.length <= stor10.length + 1:
                    idx = sha3(10) + (5 * stor10.length) + 5
                    while sha3(10) + (5 * stor10.length) > idx:
                        address(stor[idx]) = 0
                        stor1[idx] = 0
                        stor2[idx] = 0
                        stor3[idx] = 0
                        stor4[idx] = 0
                        idx = idx + 5
                        continue 
                require stor10.length < stor10.length
                require stor10.length < stor10.length
                if not uint8(storA1C6[stor10.length].field_8):
                    stor56C6[stor10.length] = msg.value - (msg.value % 10^18)
                else:
                    require stor10.length < stor10.length
                    if not uint8(storA1C6[stor10.length].field_0):
                        stor56C6[stor10.length] = msg.value - (msg.value % 10^18)
                    else:
                        stor56C6[stor10.length] = msg.value - (msg.value % 10^18) + stor56C6[stor10.length]
                storC65A[stor10.length] = block.timestamp + (24 * 3600)
                uint8(storA1C6[stor10.length].field_8) = 1
                uint8(stor10[stor10.length].field_768) = 1
                uint256(stor10[stor10.length].field_0) = msg.sender or Mask(96, 160, uint256(stor10[stor10.length].field_0))
            stor5 = msg.value - (msg.value % 10^18) + stor5
            stor1.length = stor6 + stor5
        stor10.length++
        if not stor10.length <= stor10.length + 1:
            idx = (5 * stor10.length) + 5
            while 5 * stor10.length > idx:
                address(stor10[idx].field_0) = 0
                uint256(stor10[idx].field_256) = 0
                uint256(stor10[idx].field_512) = 0
                uint16(stor10[idx].field_768) = 0
                uint256(stor10[idx].field_1024) = 0
                idx = idx + 5
                continue 
        require stor10.length < stor10.length
        require stor10.length < stor10.length
        if not uint8(storA1C6[stor10.length].field_8):
            stor56C6[stor10.length] = msg.value - (msg.value % 10^18)
        else:
            require stor10.length < stor10.length
            if not uint8(storA1C6[stor10.length].field_0):
                stor56C6[stor10.length] = msg.value - (msg.value % 10^18)
            else:
                stor56C6[stor10.length] = msg.value - (msg.value % 10^18) + stor56C6[stor10.length]
        storC65A[stor10.length] = block.timestamp + (24 * 3600)
        uint8(storA1C6[stor10.length].field_8) = 1
        uint8(stor10[stor10.length].field_768) = 1
        uint256(stor10[stor10.length].field_0) = msg.sender or Mask(96, 160, uint256(stor10[stor10.length].field_0))
        stor5 = msg.value - (msg.value % 10^18) + stor5
    stor1.length = stor6 + stor5
}

function _fallback() payable {
    require contractEnabled
    require msg.value >= 10^16
    require stor5 != 0
    if msg.value >= 10^16:
        idx = 10^18 * stor5 / 50 * 10^18 * 130 * 100 * 10^18 * stor5 / msg.value / 50 / 100 / 10^18 / 130
        s = 130 * 100 * 10^18 * stor5 / msg.value / 50 / 100 / 10^18
        while msg.value < idx:
            idx = 10^18 * stor5 / (50 * 10^18 * s) + 50 * 10^18 / 130
            s = s + 1
            continue 
    else:
        idx = 10^18 * stor5 / 50 * 10^18 * 130 * 100 * 10^18 * stor5 / 10^16 / 50 / 100 / 10^18 / 130
        s = 130 * 100 * 10^18 * stor5 / 10^16 / 50 / 100 / 10^18
        while 10^16 < idx:
            idx = 10^18 * stor5 / (50 * 10^18 * s) + 50 * 10^18 / 130
            s = s + 1
            continue 
    if s >= 26:
        require idx <= msg.value
        if msg.value - idx > 0:
            call msg.sender with:
               value msg.value - idx wei
                 gas 0 wei
            require ext_call.success
        mem[0] = msg.sender
        mem[32] = 9
        s = 0
        while s < uint256(stor9[address(msg.sender)].field_0):
            require s < uint256(stor[sha3(mem[0 len 64])])
            mem[0] = sha3(mem[0 len 64])
            if uint8(stor[(6 * s) + sha3(mem[0]) + 2]):
                mem[0] = msg.sender
                mem[32] = 9
                s = s + 1
                continue 
            stor2.length++
            require s < uint256(stor9[address(msg.sender)].field_0)
            uint256(stor9[address(msg.sender)][s].field_0) = block.number + 4
            require s < uint256(stor9[address(msg.sender)].field_0)
            uint256(stor9[address(msg.sender)][s].field_256) = sha3(stor2.length, block.timestamp, 0)
            require s < uint256(stor9[address(msg.sender)].field_0)
            uint8(stor9[address(msg.sender)][s].field_512) = 1
            require s < uint256(stor9[address(msg.sender)].field_0)
            uint256(stor9[address(msg.sender)][s].field_768) = idx
            require s < uint256(stor9[address(msg.sender)].field_0)
            uint256(stor9[address(msg.sender)][s].field_1024) = stor3.length
            require s < uint256(stor9[address(msg.sender)].field_0)
            uint256(stor9[address(msg.sender)][s].field_1280) = stor2.length
            stor8 += idx
            require s < uint256(stor9[address(msg.sender)].field_0)
            require s < uint256(stor9[address(msg.sender)].field_0)
            require s < uint256(stor9[address(msg.sender)].field_0)
            emit PrepareRollEvent(address(msg.sender), uint256(stor9[address(msg.sender)][s].field_0), uint256(stor9[address(msg.sender)][s].field_768), uint256(stor9[address(msg.sender)][s].field_1280));
        uint256(stor9[address(msg.sender)].field_0)++
        if not uint256(stor9[address(msg.sender)].field_0) <= uint256(stor9[address(msg.sender)].field_0) + 1:
            s = (6 * uint256(stor9[address(msg.sender)].field_0)) + 6
            while 6 * uint256(stor9[address(msg.sender)].field_0) > s:
                uint256(stor9[address(msg.sender)][s].field_0) = 0
                uint256(stor9[address(msg.sender)][s].field_256) = 0
                uint8(stor9[address(msg.sender)][s].field_512) = 0
                uint256(stor9[address(msg.sender)][s].field_768) = 0
                uint256(stor9[address(msg.sender)][s].field_1024) = 0
                uint256(stor9[address(msg.sender)][s].field_1280) = 0
                s = s + 6
                continue 
        stor2.length++
        require uint256(stor9[address(msg.sender)].field_0) - 1 < uint256(stor9[address(msg.sender)].field_0)
        uint256(stor9[address(msg.sender)][uint256(stor9[address(msg.sender)].field_0)].field_0) = block.number + 4
        require uint256(stor9[address(msg.sender)].field_0) - 1 < uint256(stor9[address(msg.sender)].field_0)
        uint256(stor9[address(msg.sender)][uint256(stor9[address(msg.sender)].field_0)].field_0) = sha3(stor2.length, block.timestamp, 0)
        require uint256(stor9[address(msg.sender)].field_0) - 1 < uint256(stor9[address(msg.sender)].field_0)
        uint8(stor9[address(msg.sender)][uint256(stor9[address(msg.sender)].field_0)].field_0) = 1
        require uint256(stor9[address(msg.sender)].field_0) - 1 < uint256(stor9[address(msg.sender)].field_0)
        uint256(stor9[address(msg.sender)][uint256(stor9[address(msg.sender)].field_0)].field_0) = idx
        require uint256(stor9[address(msg.sender)].field_0) - 1 < uint256(stor9[address(msg.sender)].field_0)
        uint256(stor9[address(msg.sender)][uint256(stor9[address(msg.sender)].field_0)].field_0) = stor3.length
        require uint256(stor9[address(msg.sender)].field_0) - 1 < uint256(stor9[address(msg.sender)].field_0)
        uint256(stor9[address(msg.sender)][uint256(stor9[address(msg.sender)].field_0)].field_0) = stor2.length
        stor8 += idx
    else:
        require 10^18 * stor5 / 10 * 10^18 <= msg.value
        if msg.value - (10^18 * stor5 / 10 * 10^18) > 0:
            call msg.sender with:
               value msg.value - (10^18 * stor5 / 10 * 10^18) wei
                 gas 0 wei
            require ext_call.success
        mem[0] = msg.sender
        mem[32] = 9
        idx = 0
        while idx < uint256(stor9[address(msg.sender)].field_0):
            require idx < uint256(stor[sha3(mem[0 len 64])])
            mem[0] = sha3(mem[0 len 64])
            if uint8(stor[(6 * idx) + sha3(mem[0]) + 2]):
                mem[0] = msg.sender
                mem[32] = 9
                idx = idx + 1
                continue 
            stor2.length++
            require idx < uint256(stor9[address(msg.sender)].field_0)
            uint256(stor9[address(msg.sender)][idx].field_0) = block.number + 4
            require idx < uint256(stor9[address(msg.sender)].field_0)
            uint256(stor9[address(msg.sender)][idx].field_256) = sha3(stor2.length, block.timestamp, 0)
            require idx < uint256(stor9[address(msg.sender)].field_0)
            uint8(stor9[address(msg.sender)][idx].field_512) = 1
            require idx < uint256(stor9[address(msg.sender)].field_0)
            uint256(stor9[address(msg.sender)][idx].field_768) = 10^18 * stor5 / 10 * 10^18
            require idx < uint256(stor9[address(msg.sender)].field_0)
            uint256(stor9[address(msg.sender)][idx].field_1024) = stor3.length
            require idx < uint256(stor9[address(msg.sender)].field_0)
            uint256(stor9[address(msg.sender)][idx].field_1280) = stor2.length
            stor8 += 10^18 * stor5 / 10 * 10^18
            require idx < uint256(stor9[address(msg.sender)].field_0)
            require idx < uint256(stor9[address(msg.sender)].field_0)
            require idx < uint256(stor9[address(msg.sender)].field_0)
            emit PrepareRollEvent(address(msg.sender), uint256(stor9[address(msg.sender)][idx].field_0), uint256(stor9[address(msg.sender)][idx].field_768), uint256(stor9[address(msg.sender)][idx].field_1280));
        uint256(stor9[address(msg.sender)].field_0)++
        if not uint256(stor9[address(msg.sender)].field_0) <= uint256(stor9[address(msg.sender)].field_0) + 1:
            idx = (6 * uint256(stor9[address(msg.sender)].field_0)) + 6
            while 6 * uint256(stor9[address(msg.sender)].field_0) > idx:
                uint256(stor9[address(msg.sender)][idx].field_0) = 0
                uint256(stor9[address(msg.sender)][idx].field_256) = 0
                uint8(stor9[address(msg.sender)][idx].field_512) = 0
                uint256(stor9[address(msg.sender)][idx].field_768) = 0
                uint256(stor9[address(msg.sender)][idx].field_1024) = 0
                uint256(stor9[address(msg.sender)][idx].field_1280) = 0
                idx = idx + 6
                continue 
        stor2.length++
        require uint256(stor9[address(msg.sender)].field_0) - 1 < uint256(stor9[address(msg.sender)].field_0)
        uint256(stor9[address(msg.sender)][uint256(stor9[address(msg.sender)].field_0)].field_0) = block.number + 4
        require uint256(stor9[address(msg.sender)].field_0) - 1 < uint256(stor9[address(msg.sender)].field_0)
        uint256(stor9[address(msg.sender)][uint256(stor9[address(msg.sender)].field_0)].field_0) = sha3(stor2.length, block.timestamp, 0)
        require uint256(stor9[address(msg.sender)].field_0) - 1 < uint256(stor9[address(msg.sender)].field_0)
        uint8(stor9[address(msg.sender)][uint256(stor9[address(msg.sender)].field_0)].field_0) = 1
        require uint256(stor9[address(msg.sender)].field_0) - 1 < uint256(stor9[address(msg.sender)].field_0)
        uint256(stor9[address(msg.sender)][uint256(stor9[address(msg.sender)].field_0)].field_0) = 10^18 * stor5 / 10 * 10^18
        require uint256(stor9[address(msg.sender)].field_0) - 1 < uint256(stor9[address(msg.sender)].field_0)
        uint256(stor9[address(msg.sender)][uint256(stor9[address(msg.sender)].field_0)].field_0) = stor3.length
        require uint256(stor9[address(msg.sender)].field_0) - 1 < uint256(stor9[address(msg.sender)].field_0)
        uint256(stor9[address(msg.sender)][uint256(stor9[address(msg.sender)].field_0)].field_0) = stor2.length
        stor8 += 10^18 * stor5 / 10 * 10^18
    require uint256(stor9[address(msg.sender)].field_0) - 1 < uint256(stor9[address(msg.sender)].field_0)
    require uint256(stor9[address(msg.sender)].field_0) - 1 < uint256(stor9[address(msg.sender)].field_0)
    require uint256(stor9[address(msg.sender)].field_0) - 1 < uint256(stor9[address(msg.sender)].field_0)
    emit PrepareRollEvent(address(msg.sender), uint256(stor9[address(msg.sender)][uint256(stor9[address(msg.sender)].field_0)].field_0), uint256(stor9[address(msg.sender)][uint256(stor9[address(msg.sender)].field_0)].field_0), uint256(stor9[address(msg.sender)][uint256(stor9[address(msg.sender)].field_0)].field_0));
}

function PrepareRoll(uint256 arg1) payable {
    require contractEnabled
    require msg.value >= 10^16
    require stor5 != 0
    if msg.value >= 10^16:
        idx = 10^18 * stor5 / 50 * 10^18 * 130 * 100 * 10^18 * stor5 / msg.value / 50 / 100 / 10^18 / 130
        s = 130 * 100 * 10^18 * stor5 / msg.value / 50 / 100 / 10^18
        while msg.value < idx:
            idx = 10^18 * stor5 / (50 * 10^18 * s) + 50 * 10^18 / 130
            s = s + 1
            continue 
    else:
        idx = 10^18 * stor5 / 50 * 10^18 * 130 * 100 * 10^18 * stor5 / 10^16 / 50 / 100 / 10^18 / 130
        s = 130 * 100 * 10^18 * stor5 / 10^16 / 50 / 100 / 10^18
        while 10^16 < idx:
            idx = 10^18 * stor5 / (50 * 10^18 * s) + 50 * 10^18 / 130
            s = s + 1
            continue 
    if s >= 26:
        require idx <= msg.value
        if msg.value - idx > 0:
            call msg.sender with:
               value msg.value - idx wei
                 gas 0 wei
            require ext_call.success
        mem[0] = msg.sender
        mem[32] = 9
        s = 0
        while s < uint256(stor9[address(msg.sender)].field_0):
            require s < uint256(stor[sha3(mem[0 len 64])])
            mem[0] = sha3(mem[0 len 64])
            if uint8(stor[(6 * s) + sha3(mem[0]) + 2]):
                mem[0] = msg.sender
                mem[32] = 9
                s = s + 1
                continue 
            stor2.length++
            require s < uint256(stor9[address(msg.sender)].field_0)
            uint256(stor9[address(msg.sender)][s].field_0) = block.number + 4
            require s < uint256(stor9[address(msg.sender)].field_0)
            uint256(stor9[address(msg.sender)][s].field_256) = sha3(stor2.length, block.timestamp, arg1)
            require s < uint256(stor9[address(msg.sender)].field_0)
            uint8(stor9[address(msg.sender)][s].field_512) = 1
            require s < uint256(stor9[address(msg.sender)].field_0)
            uint256(stor9[address(msg.sender)][s].field_768) = idx
            require s < uint256(stor9[address(msg.sender)].field_0)
            uint256(stor9[address(msg.sender)][s].field_1024) = stor3.length
            require s < uint256(stor9[address(msg.sender)].field_0)
            uint256(stor9[address(msg.sender)][s].field_1280) = stor2.length
            stor8 += idx
            require s < uint256(stor9[address(msg.sender)].field_0)
            require s < uint256(stor9[address(msg.sender)].field_0)
            require s < uint256(stor9[address(msg.sender)].field_0)
            emit PrepareRollEvent(address(msg.sender), uint256(stor9[address(msg.sender)][s].field_0), uint256(stor9[address(msg.sender)][s].field_768), uint256(stor9[address(msg.sender)][s].field_1280));
        uint256(stor9[address(msg.sender)].field_0)++
        if not uint256(stor9[address(msg.sender)].field_0) <= uint256(stor9[address(msg.sender)].field_0) + 1:
            s = (6 * uint256(stor9[address(msg.sender)].field_0)) + 6
            while 6 * uint256(stor9[address(msg.sender)].field_0) > s:
                uint256(stor9[address(msg.sender)][s].field_0) = 0
                uint256(stor9[address(msg.sender)][s].field_256) = 0
                uint8(stor9[address(msg.sender)][s].field_512) = 0
                uint256(stor9[address(msg.sender)][s].field_768) = 0
                uint256(stor9[address(msg.sender)][s].field_1024) = 0
                uint256(stor9[address(msg.sender)][s].field_1280) = 0
                s = s + 6
                continue 
        stor2.length++
        require uint256(stor9[address(msg.sender)].field_0) - 1 < uint256(stor9[address(msg.sender)].field_0)
        uint256(stor9[address(msg.sender)][uint256(stor9[address(msg.sender)].field_0)].field_0) = block.number + 4
        require uint256(stor9[address(msg.sender)].field_0) - 1 < uint256(stor9[address(msg.sender)].field_0)
        uint256(stor9[address(msg.sender)][uint256(stor9[address(msg.sender)].field_0)].field_0) = sha3(stor2.length, block.timestamp, arg1)
        require uint256(stor9[address(msg.sender)].field_0) - 1 < uint256(stor9[address(msg.sender)].field_0)
        uint8(stor9[address(msg.sender)][uint256(stor9[address(msg.sender)].field_0)].field_0) = 1
        require uint256(stor9[address(msg.sender)].field_0) - 1 < uint256(stor9[address(msg.sender)].field_0)
        uint256(stor9[address(msg.sender)][uint256(stor9[address(msg.sender)].field_0)].field_0) = idx
        require uint256(stor9[address(msg.sender)].field_0) - 1 < uint256(stor9[address(msg.sender)].field_0)
        uint256(stor9[address(msg.sender)][uint256(stor9[address(msg.sender)].field_0)].field_0) = stor3.length
        require uint256(stor9[address(msg.sender)].field_0) - 1 < uint256(stor9[address(msg.sender)].field_0)
        uint256(stor9[address(msg.sender)][uint256(stor9[address(msg.sender)].field_0)].field_0) = stor2.length
        stor8 += idx
    else:
        require 10^18 * stor5 / 10 * 10^18 <= msg.value
        if msg.value - (10^18 * stor5 / 10 * 10^18) > 0:
            call msg.sender with:
               value msg.value - (10^18 * stor5 / 10 * 10^18) wei
                 gas 0 wei
            require ext_call.success
        mem[0] = msg.sender
        mem[32] = 9
        idx = 0
        while idx < uint256(stor9[address(msg.sender)].field_0):
            require idx < uint256(stor[sha3(mem[0 len 64])])
            mem[0] = sha3(mem[0 len 64])
            if uint8(stor[(6 * idx) + sha3(mem[0]) + 2]):
                mem[0] = msg.sender
                mem[32] = 9
                idx = idx + 1
                continue 
            stor2.length++
            require idx < uint256(stor9[address(msg.sender)].field_0)
            uint256(stor9[address(msg.sender)][idx].field_0) = block.number + 4
            require idx < uint256(stor9[address(msg.sender)].field_0)
            uint256(stor9[address(msg.sender)][idx].field_256) = sha3(stor2.length, block.timestamp, arg1)
            require idx < uint256(stor9[address(msg.sender)].field_0)
            uint8(stor9[address(msg.sender)][idx].field_512) = 1
            require idx < uint256(stor9[address(msg.sender)].field_0)
            uint256(stor9[address(msg.sender)][idx].field_768) = 10^18 * stor5 / 10 * 10^18
            require idx < uint256(stor9[address(msg.sender)].field_0)
            uint256(stor9[address(msg.sender)][idx].field_1024) = stor3.length
            require idx < uint256(stor9[address(msg.sender)].field_0)
            uint256(stor9[address(msg.sender)][idx].field_1280) = stor2.length
            stor8 += 10^18 * stor5 / 10 * 10^18
            require idx < uint256(stor9[address(msg.sender)].field_0)
            require idx < uint256(stor9[address(msg.sender)].field_0)
            require idx < uint256(stor9[address(msg.sender)].field_0)
            emit PrepareRollEvent(address(msg.sender), uint256(stor9[address(msg.sender)][idx].field_0), uint256(stor9[address(msg.sender)][idx].field_768), uint256(stor9[address(msg.sender)][idx].field_1280));
        uint256(stor9[address(msg.sender)].field_0)++
        if not uint256(stor9[address(msg.sender)].field_0) <= uint256(stor9[address(msg.sender)].field_0) + 1:
            idx = (6 * uint256(stor9[address(msg.sender)].field_0)) + 6
            while 6 * uint256(stor9[address(msg.sender)].field_0) > idx:
                uint256(stor9[address(msg.sender)][idx].field_0) = 0
                uint256(stor9[address(msg.sender)][idx].field_256) = 0
                uint8(stor9[address(msg.sender)][idx].field_512) = 0
                uint256(stor9[address(msg.sender)][idx].field_768) = 0
                uint256(stor9[address(msg.sender)][idx].field_1024) = 0
                uint256(stor9[address(msg.sender)][idx].field_1280) = 0
                idx = idx + 6
                continue 
        stor2.length++
        require uint256(stor9[address(msg.sender)].field_0) - 1 < uint256(stor9[address(msg.sender)].field_0)
        uint256(stor9[address(msg.sender)][uint256(stor9[address(msg.sender)].field_0)].field_0) = block.number + 4
        require uint256(stor9[address(msg.sender)].field_0) - 1 < uint256(stor9[address(msg.sender)].field_0)
        uint256(stor9[address(msg.sender)][uint256(stor9[address(msg.sender)].field_0)].field_0) = sha3(stor2.length, block.timestamp, arg1)
        require uint256(stor9[address(msg.sender)].field_0) - 1 < uint256(stor9[address(msg.sender)].field_0)
        uint8(stor9[address(msg.sender)][uint256(stor9[address(msg.sender)].field_0)].field_0) = 1
        require uint256(stor9[address(msg.sender)].field_0) - 1 < uint256(stor9[address(msg.sender)].field_0)
        uint256(stor9[address(msg.sender)][uint256(stor9[address(msg.sender)].field_0)].field_0) = 10^18 * stor5 / 10 * 10^18
        require uint256(stor9[address(msg.sender)].field_0) - 1 < uint256(stor9[address(msg.sender)].field_0)
        uint256(stor9[address(msg.sender)][uint256(stor9[address(msg.sender)].field_0)].field_0) = stor3.length
        require uint256(stor9[address(msg.sender)].field_0) - 1 < uint256(stor9[address(msg.sender)].field_0)
        uint256(stor9[address(msg.sender)][uint256(stor9[address(msg.sender)].field_0)].field_0) = stor2.length
        stor8 += 10^18 * stor5 / 10 * 10^18
    require uint256(stor9[address(msg.sender)].field_0) - 1 < uint256(stor9[address(msg.sender)].field_0)
    require uint256(stor9[address(msg.sender)].field_0) - 1 < uint256(stor9[address(msg.sender)].field_0)
    require uint256(stor9[address(msg.sender)].field_0) - 1 < uint256(stor9[address(msg.sender)].field_0)
    emit PrepareRollEvent(address(msg.sender), uint256(stor9[address(msg.sender)][uint256(stor9[address(msg.sender)].field_0)].field_0), uint256(stor9[address(msg.sender)][uint256(stor9[address(msg.sender)].field_0)].field_0), uint256(stor9[address(msg.sender)][uint256(stor9[address(msg.sender)].field_0)].field_0));
}

function DoRoll() payable {
    mem[64] = 96
    require msg.value <= 0
    mem[0] = msg.sender
    mem[32] = 9
    s = 0
    idx = 0
    t = 0
    while idx < uint256(stor9[address(msg.sender)].field_0):
        require idx < uint256(stor[sha3(mem[0 len 64])])
        mem[0] = sha3(mem[0 len 64])
        if not uint8(stor[(6 * idx) + sha3(mem[0]) + 2]):
            mem[0] = msg.sender
            mem[32] = 9
            s = s
            idx = idx + 1
            t = t
            continue 
        require idx < uint256(stor9[address(msg.sender)].field_0)
        require idx < uint256(stor9[address(msg.sender)].field_0)
        if uint256(stor9[address(msg.sender)][idx].field_0) + 30 <= block.number:
            stor7 += uint255(stor9[address(msg.sender)][idx].field_769)
            require idx < uint256(stor9[address(msg.sender)].field_0)
            mem[0] = sha3(address(msg.sender), 9)
            s = 1
            t = 0
            while s < stor10.length:
                if not uint8(storA1C6[s].field_0):
                    mem[0] = msg.sender
                    mem[32] = 9
                    s = s + 1
                    t = t
                    continue 
                require s < stor10.length
                if not uint8(storA1C6[s].field_8):
                    mem[0] = msg.sender
                    mem[32] = 9
                    s = s + 1
                    t = t
                    continue 
                require s < stor10.length
                uint256(stor[code.data[7144 len 32] + (5 * s)]) += (uint256(stor9[address(msg.sender)][idx].field_768) * stor56C6[s]) - (uint255(stor9[address(msg.sender)][idx].field_769) * stor56C6[s]) / stor5
                mem[0] = msg.sender
                mem[32] = 9
                s = s + 1
                t = 1
                continue 
            if not t:
                stor7 = uint256(stor9[address(msg.sender)][idx].field_768) - uint255(stor9[address(msg.sender)][idx].field_769) + stor7
            require idx < uint256(stor9[address(msg.sender)].field_0)
            stor8 -= uint256(stor9[address(msg.sender)][idx].field_768)
            mem[32] = 9
            require idx < uint256(stor9[address(msg.sender)].field_0)
            mem[mem[64]] = msg.sender
            mem[mem[64] + 32] = uint256(stor9[address(msg.sender)][idx].field_768)
            mem[mem[64] + 64] = uint256(stor9[address(msg.sender)][idx].field_1280)
            mem[mem[64] + 96] = 0
            mem[mem[64] + 128] = 1
            mem[mem[64] + 160] = 0
            mem[mem[64] + 192] = 0
            mem[mem[64] + 224] = 0
            mem[mem[64] + 256] = 0
            mem[mem[64] + 288] = 0
            emit 0xa933d140: msg.sender, uint256(stor9[address(msg.sender)][idx].field_768), uint256(stor9[address(msg.sender)][idx].field_1280), 0, 1, 0, 0, 0, 0, 0
            require idx < uint256(stor9[address(msg.sender)].field_0)
            uint256(stor9[address(msg.sender)][idx].field_0) = 0
            uint256(stor9[address(msg.sender)][idx].field_256) = 0
            uint8(stor9[address(msg.sender)][idx].field_512) = 0
            uint256(stor9[address(msg.sender)][idx].field_768) = 0
            uint256(stor9[address(msg.sender)][idx].field_1024) = 0
            uint256(stor9[address(msg.sender)][idx].field_1280) = 0
            mem[0] = msg.sender
            mem[32] = 9
            s = uint255(stor9[address(msg.sender)][idx].field_769)
            idx = idx + 1
            t = 1
            continue 
        require idx < uint256(stor9[address(msg.sender)].field_0)
        if not contractEnabled:
            stor8 -= uint256(stor9[address(msg.sender)][idx].field_768)
            require idx < uint256(stor9[address(msg.sender)].field_0)
            mem[32] = 9
            require idx < uint256(stor9[address(msg.sender)].field_0)
            mem[mem[64]] = msg.sender
            mem[mem[64] + 32] = uint256(stor9[address(msg.sender)][idx].field_768)
            mem[mem[64] + 64] = uint256(stor9[address(msg.sender)][idx].field_1280)
            mem[mem[64] + 96] = 1
            mem[mem[64] + 128] = 0
            mem[mem[64] + 160] = 0
            mem[mem[64] + 192] = 0
            mem[mem[64] + 224] = 0
            mem[mem[64] + 256] = 0
            mem[mem[64] + 288] = 0
            emit 0xa933d140: msg.sender, uint256(stor9[address(msg.sender)][idx].field_768), uint256(stor9[address(msg.sender)][idx].field_1280), 1, 0, 0, 0, 0, 0, 0
            require idx < uint256(stor9[address(msg.sender)].field_0)
        else:
            if 0 == stor5:
                stor8 -= uint256(stor9[address(msg.sender)][idx].field_768)
                require idx < uint256(stor9[address(msg.sender)].field_0)
                mem[32] = 9
                require idx < uint256(stor9[address(msg.sender)].field_0)
                mem[mem[64]] = msg.sender
                mem[mem[64] + 32] = uint256(stor9[address(msg.sender)][idx].field_768)
                mem[mem[64] + 64] = uint256(stor9[address(msg.sender)][idx].field_1280)
                mem[mem[64] + 96] = 1
                mem[mem[64] + 128] = 0
                mem[mem[64] + 160] = 0
                mem[mem[64] + 192] = 0
                mem[mem[64] + 224] = 0
                mem[mem[64] + 256] = 0
                mem[mem[64] + 288] = 0
                emit 0xa933d140: msg.sender, uint256(stor9[address(msg.sender)][idx].field_768), uint256(stor9[address(msg.sender)][idx].field_1280), 1, 0, 0, 0, 0, 0, 0
                require idx < uint256(stor9[address(msg.sender)].field_0)
            else:
                if uint256(stor9[address(msg.sender)][idx].field_1024) != stor3.length:
                    require idx < uint256(stor9[address(msg.sender)].field_0)
                    stor8 -= uint256(stor9[address(msg.sender)][idx].field_768)
                    require idx < uint256(stor9[address(msg.sender)].field_0)
                    mem[32] = 9
                    require idx < uint256(stor9[address(msg.sender)].field_0)
                    mem[mem[64]] = msg.sender
                    mem[mem[64] + 32] = uint256(stor9[address(msg.sender)][idx].field_768)
                    mem[mem[64] + 64] = uint256(stor9[address(msg.sender)][idx].field_1280)
                    mem[mem[64] + 96] = 1
                    mem[mem[64] + 128] = 0
                    mem[mem[64] + 160] = 0
                    mem[mem[64] + 192] = 0
                    mem[mem[64] + 224] = 0
                    mem[mem[64] + 256] = 0
                    mem[mem[64] + 288] = 0
                    emit 0xa933d140: msg.sender, uint256(stor9[address(msg.sender)][idx].field_768), uint256(stor9[address(msg.sender)][idx].field_1280), 1, 0, 0, 0, 0, 0, 0
                    require idx < uint256(stor9[address(msg.sender)].field_0)
                else:
                    if uint256(stor9[address(msg.sender)][idx].field_0) >= block.number:
                        mem[0] = msg.sender
                        mem[32] = 9
                        s = s
                        idx = idx + 1
                        t = t
                        continue 
                    require idx < uint256(stor9[address(msg.sender)].field_0)
                    stor7 += 5 * uint256(stor9[address(msg.sender)][idx].field_768) / 100
                    require idx < uint256(stor9[address(msg.sender)].field_0)
                    t = 1
                    u = 0
                    while t < stor10.length:
                        if not uint8(storA1C6[t].field_0):
                            mem[0] = msg.sender
                            mem[32] = 9
                            t = t + 1
                            u = u
                            continue 
                        require t < stor10.length
                        if not uint8(storA1C6[t].field_8):
                            mem[0] = msg.sender
                            mem[32] = 9
                            t = t + 1
                            u = u
                            continue 
                        require t < stor10.length
                        uint256(stor[code.data[7144 len 32] + (5 * t)]) += 50 * uint256(stor9[address(msg.sender)][idx].field_768) / 100 * stor56C6[t] / stor5
                        mem[0] = msg.sender
                        mem[32] = 9
                        t = t + 1
                        u = 1
                        continue 
                    if not u:
                        stor7 += 50 * uint256(stor9[address(msg.sender)][idx].field_768) / 100
                    require idx < uint256(stor9[address(msg.sender)].field_0)
                    stor6 = uint256(stor9[address(msg.sender)][idx].field_768) - (5 * uint256(stor9[address(msg.sender)][idx].field_768) / 100) - (50 * uint256(stor9[address(msg.sender)][idx].field_768) / 100) + stor6
                    stor1.length = stor6 + stor5
                    require idx < uint256(stor9[address(msg.sender)].field_0)
                    mem[0] = sha3(address(msg.sender), 9)
                    t = 1
                    u = uint256(stor[(6 * idx) + sha3(mem[0]) + 1])
                    while t <= 4:
                        require idx < uint256(stor9[address(msg.sender)].field_0)
                        mem[mem[64]] = u
                        mem[mem[64] + 32] = block.hash(t + uint256(stor9[address(msg.sender)][idx].field_0) - 4)
                        mem[0] = msg.sender
                        mem[32] = 9
                        t = t + 1
                        u = sha3(u, block.hash(t + uint256(stor9[address(msg.sender)][idx].field_0) - 4))
                        continue 
                    require idx < uint256(stor9[address(msg.sender)].field_0)
                    mem[0] = sha3(address(msg.sender), 9)
                    if uint64(u) % 130 * 100 * 10^18 * stor5 / uint256(stor9[address(msg.sender)][idx].field_768) / 50 / 100 / 10^18 != 0:
                        mem[32] = 9
                        require idx < uint256(stor9[address(msg.sender)].field_0)
                        mem[mem[64]] = msg.sender
                        mem[mem[64] + 32] = uint256(stor9[address(msg.sender)][idx].field_768)
                        mem[mem[64] + 64] = uint256(stor9[address(msg.sender)][idx].field_1280)
                        mem[mem[64] + 96] = 0
                        mem[mem[64] + 128] = 0
                        mem[mem[64] + 160] = 1
                        mem[mem[64] + 192] = 0
                        mem[mem[64] + 224] = uint64(u)
                        mem[mem[64] + 256] = 130 * 100 * 10^18 * stor5 / uint256(stor9[address(msg.sender)][idx].field_768) / 50 / 100 / 10^18
                        mem[mem[64] + 288] = uint64(u) % 130 * 100 * 10^18 * stor5 / uint256(stor9[address(msg.sender)][idx].field_768) / 50 / 100 / 10^18
                        emit 0xa933d140: msg.sender, uint256(stor9[address(msg.sender)][idx].field_768), uint256(stor9[address(msg.sender)][idx].field_1280), 0, 0, 1, 0, u << 192, 130 * 100 * 10^18 * stor5 / uint256(stor9[address(msg.sender)][idx].field_768) / 50 / 100 / 10^18, uint64(u) % 130 * 100 * 10^18 * stor5 / uint256(stor9[address(msg.sender)][idx].field_768) / 50 / 100 / 10^18
                    else:
                        t = 1
                        while t < stor10.length:
                            uint8(storA1C6[t].field_0) = 0
                            mem[0] = msg.sender
                            mem[32] = 9
                            t = t + 1
                            continue 
                        stor3.length++
                        stor6 = 0
                        stor5 = 0
                        stor1.length = 0
                        mem[32] = 9
                        require idx < uint256(stor9[address(msg.sender)].field_0)
                        mem[mem[64]] = msg.sender
                        mem[mem[64] + 32] = stor1.length
                        mem[mem[64] + 64] = uint256(stor9[address(msg.sender)][idx].field_1280)
                        mem[mem[64] + 96] = 0
                        mem[mem[64] + 128] = 0
                        mem[mem[64] + 160] = 0
                        mem[mem[64] + 192] = 1
                        mem[mem[64] + 224] = uint64(u)
                        mem[mem[64] + 256] = 130 * 100 * 10^18 * stor5 / uint256(stor9[address(msg.sender)][idx].field_768) / 50 / 100 / 10^18
                        mem[mem[64] + 288] = uint64(u) % 130 * 100 * 10^18 * stor5 / uint256(stor9[address(msg.sender)][idx].field_768) / 50 / 100 / 10^18
                        emit 0xa933d140: msg.sender, stor1.length, uint256(stor9[address(msg.sender)][idx].field_1280), 0, 0, 0, 1, u << 192, 130 * 100 * 10^18 * stor5 / uint256(stor9[address(msg.sender)][idx].field_768) / 50 / 100 / 10^18, uint64(u) % 130 * 100 * 10^18 * stor5 / uint256(stor9[address(msg.sender)][idx].field_768) / 50 / 100 / 10^18
                    require idx < uint256(stor9[address(msg.sender)].field_0)
                    stor8 -= uint256(stor9[address(msg.sender)][idx].field_768)
        uint256(stor9[address(msg.sender)][idx].field_0) = 0
        uint256(stor9[address(msg.sender)][idx].field_256) = 0
        uint8(stor9[address(msg.sender)][idx].field_512) = 0
        uint256(stor9[address(msg.sender)][idx].field_768) = 0
        uint256(stor9[address(msg.sender)][idx].field_1024) = 0
        uint256(stor9[address(msg.sender)][idx].field_1280) = 0
        mem[0] = msg.sender
        mem[32] = 9
        s = s
        idx = idx + 1
        t = 1
        continue 
    if t:
    revert 
}



}

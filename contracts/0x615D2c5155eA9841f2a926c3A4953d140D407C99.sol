contract main {


// =======================  Init code  ======================


uint8 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor8;

function _fallback() payable {
    stor8 = msg.sender or Mask(96, 160, stor8)
    stor2 = 10^16
    stor4 = 1
    stor3 = 6
    stor1 = 1
    stor5 = 0
    return code.data[74 len 2157]
}



// =====================  Runtime code  =====================


array of struct stor0;
uint8 active;
uint256 betAmount;
uint256 playersPerRound;
uint256 round;
uint256 winPool;
uint8 betByte;
uint256 stor7;
address stor8;
uint256 stor8;
array of address stor18569430475105882587588266137607568536673111973893317399460219858819262702946;

function active() payable {
    return active
}

function round() payable {
    return round
}

function betByte() payable {
    return betByte
}

function winPool() payable {
    return winPool
}

function playersPerRound() payable {
    return playersPerRound
}

function betAmount() payable {
    return betAmount
}

function stop() payable {
    if address(stor8) != msg.sender:
    active = 0
    # nil
}

function paybackAll() payable {
    if address(stor8) != msg.sender:
        return 0
    # nil
}

function kill() payable {
    if address(stor8) != msg.sender:
    if active:
    if address(stor8) != msg.sender:
    # nil
}

function changeOwner(address arg1) payable {
    if msg.sender == address(stor8):
        uint256(stor8) = arg1 or Mask(96, 160, uint256(stor8))
}

function players(uint256 arg1) payable {
    require arg1 < stor0.length
    return address(stor[code.data[2125 len 32] + arg1].field_0), Mask(96, 0, stor[code.data[2125 len 32] + arg1].field_160) << 248
}

function paybackLast() payable {
    if address(stor8) != msg.sender:
        return 0
    if stor0.length != 0:
        require stor0.length - 1 < stor0.length
        call stor290D[stor0.length] with:
           value betAmount wei
             gas 0 wei
        if not ext_call.success:
            return 0
        stor0.length--
        if not stor0.length <= stor0.length - 1:
            idx = stor0.length - 1
            while stor0.length > idx:
                Mask(168, 0, stor0[idx].field_0) = 0
                idx = idx + 1
                continue 
    return 1
}

function forceFinish() payable {
    if msg.sender == address(stor8):
        if stor0.length > 0:
            betByte = Mask(8, 248, block.hash(stor7)) >> 248
            s = 0
            s = 0
            idx = 0
            while uint8(idx) < stor0.length:
                require idx < stor0.length
                mem[0] = 0
                if Mask(96, 0, stor[code.data[2125 len 32] + idx].field_160) << 248 >= 0x8000000000000000000000000000000000000000000000000000000000000000:
                    if betByte < 0x8000000000000000000000000000000000000000000000000000000000000000:
                        winPool += betAmount
                        s = code.data[2125 len 32] + idx
                        s = s
                        idx = idx + 1
                        continue 
                else:
                    if betByte >= 0x8000000000000000000000000000000000000000000000000000000000000000:
                        if Mask(96, 0, stor[code.data[2125 len 32] + idx].field_160) << 248 < 0x8000000000000000000000000000000000000000000000000000000000000000:
                            winPool += betAmount
                            s = code.data[2125 len 32] + idx
                            s = s
                            idx = idx + 1
                            continue 
                        if betByte < 0x8000000000000000000000000000000000000000000000000000000000000000:
                            winPool += betAmount
                            s = code.data[2125 len 32] + idx
                            s = s
                            idx = idx + 1
                            continue 
                require s < playersPerRound
                mem[(32 * s) + 160] = address(stor[code.data[2125 len 32] + idx].field_0)
                s = code.data[2125 len 32] + idx
                s = s + 1
                idx = idx + 1
                continue 
            if uint8(s) > 0:
                t = 0
                while uint8(t) < uint8(s):
                    require t < playersPerRound
                    call mem[(32 * t) + 172 len 20] with:
                       value (99 * winPool / uint8(s) / 100) + betAmount wei
                         gas 0 wei
                    require ext_call.success
                    t = t + 1
                    continue 
                winPool = 0
            round++
            stor0.length = 0
            idx = code.data[2125 len 32]
            while code.data[2125 len 32] + stor0.length > idx:
                Mask(168, 0, stor[idx].field_0) = 0
                idx = idx + 1
                continue 
}

function setPlayersPerRound(uint256 arg1) payable {
    if msg.sender == address(stor8):
        if stor0.length > 0:
            betByte = Mask(8, 248, block.hash(stor7)) >> 248
            s = 0
            s = 0
            idx = 0
            while uint8(idx) < stor0.length:
                require idx < stor0.length
                mem[0] = 0
                if Mask(96, 0, stor[code.data[2125 len 32] + idx].field_160) << 248 >= 0x8000000000000000000000000000000000000000000000000000000000000000:
                    if betByte < 0x8000000000000000000000000000000000000000000000000000000000000000:
                        winPool += betAmount
                        s = code.data[2125 len 32] + idx
                        s = s
                        idx = idx + 1
                        continue 
                else:
                    if betByte >= 0x8000000000000000000000000000000000000000000000000000000000000000:
                        if Mask(96, 0, stor[code.data[2125 len 32] + idx].field_160) << 248 < 0x8000000000000000000000000000000000000000000000000000000000000000:
                            winPool += betAmount
                            s = code.data[2125 len 32] + idx
                            s = s
                            idx = idx + 1
                            continue 
                        if betByte < 0x8000000000000000000000000000000000000000000000000000000000000000:
                            winPool += betAmount
                            s = code.data[2125 len 32] + idx
                            s = s
                            idx = idx + 1
                            continue 
                require s < playersPerRound
                mem[(32 * s) + 160] = address(stor[code.data[2125 len 32] + idx].field_0)
                s = code.data[2125 len 32] + idx
                s = s + 1
                idx = idx + 1
                continue 
            if uint8(s) > 0:
                t = 0
                while uint8(t) < uint8(s):
                    require t < playersPerRound
                    call mem[(32 * t) + 172 len 20] with:
                       value (99 * winPool / uint8(s) / 100) + betAmount wei
                         gas 0 wei
                    require ext_call.success
                    t = t + 1
                    continue 
                winPool = 0
            round++
            stor0.length = 0
            idx = code.data[2125 len 32]
            while code.data[2125 len 32] + stor0.length > idx:
                Mask(168, 0, stor[idx].field_0) = 0
                idx = idx + 1
                continue 
        playersPerRound = arg1
}

function _fallback() payable {
    require active
    if stor0.length < playersPerRound:
        if msg.value < betAmount:
            winPool += msg.value
        else:
            if calldata.size < 1:
                call msg.sender with:
                   value msg.value wei
                     gas 0 wei
            else:
                idx = 0
                while uint8(idx) < stor0.length:
                    require idx < stor0.length
                    mem[0] = 0
                    if address(stor[code.data[2125 len 32] + idx].field_0) != msg.sender:
                        idx = idx + 1
                        continue 
                    call msg.sender with:
                       value msg.value wei
                         gas 0 wei
                if msg.value > betAmount:
                    call msg.sender with:
                       value msg.value - betAmount wei
                         gas 0 wei
                stor0.length++
                if not stor0.length <= stor0.length + 1:
                    idx = stor0.length + 1
                    while stor0.length > idx:
                        Mask(168, 0, stor0[idx].field_0) = 0
                        idx = idx + 1
                        continue 
                require 0 < calldata.size
                address(stor0[stor0.length].field_0) = msg.sender
                uint8(stor0[stor0.length].field_160) = uint8(call.func_hash)
                Mask(88, 0, stor0[stor0.length].field_168) = Mask(88, 168, msg.sender) >> 168
                stor7 = block.number
    else:
        if block.number <= stor7:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
        else:
            betByte = Mask(8, 248, block.hash(stor7)) >> 248
            s = 0
            s = 0
            idx = 0
            while uint8(idx) < stor0.length:
                require idx < stor0.length
                mem[0] = 0
                if Mask(96, 0, stor[code.data[2125 len 32] + idx].field_160) << 248 >= 0x8000000000000000000000000000000000000000000000000000000000000000:
                    if betByte < 0x8000000000000000000000000000000000000000000000000000000000000000:
                        winPool += betAmount
                        s = code.data[2125 len 32] + idx
                        s = s
                        idx = idx + 1
                        continue 
                else:
                    if betByte >= 0x8000000000000000000000000000000000000000000000000000000000000000:
                        if Mask(96, 0, stor[code.data[2125 len 32] + idx].field_160) << 248 < 0x8000000000000000000000000000000000000000000000000000000000000000:
                            winPool += betAmount
                            s = code.data[2125 len 32] + idx
                            s = s
                            idx = idx + 1
                            continue 
                        if betByte < 0x8000000000000000000000000000000000000000000000000000000000000000:
                            winPool += betAmount
                            s = code.data[2125 len 32] + idx
                            s = s
                            idx = idx + 1
                            continue 
                require s < playersPerRound
                mem[(32 * s) + 160] = address(stor[code.data[2125 len 32] + idx].field_0)
                s = code.data[2125 len 32] + idx
                s = s + 1
                idx = idx + 1
                continue 
            if uint8(s) > 0:
                t = 0
                while uint8(t) < uint8(s):
                    require t < playersPerRound
                    call mem[(32 * t) + 172 len 20] with:
                       value (99 * winPool / uint8(s) / 100) + betAmount wei
                         gas 0 wei
                    require ext_call.success
                    t = t + 1
                    continue 
                winPool = 0
            round++
            stor0.length = 0
            idx = code.data[2125 len 32]
            while code.data[2125 len 32] + stor0.length > idx:
                Mask(168, 0, stor[idx].field_0) = 0
                idx = idx + 1
                continue 
            if msg.value < betAmount:
                winPool += msg.value
            else:
                if calldata.size < 1:
                    call msg.sender with:
                       value msg.value wei
                         gas 0 wei
                else:
                    idx = 0
                    while uint8(idx) < stor0.length:
                        require idx < stor0.length
                        mem[0] = 0
                        if address(stor[code.data[2125 len 32] + idx].field_0) != msg.sender:
                            idx = idx + 1
                            continue 
                        call msg.sender with:
                           value msg.value wei
                             gas 0 wei
                    if msg.value > betAmount:
                        call msg.sender with:
                           value msg.value - betAmount wei
                             gas 0 wei
                    stor0.length++
                    if not stor0.length <= stor0.length + 1:
                        idx = stor0.length + 1
                        while stor0.length > idx:
                            Mask(168, 0, stor0[idx].field_0) = 0
                            idx = idx + 1
                            continue 
                    require 0 < calldata.size
                    address(stor0[stor0.length].field_0) = msg.sender
                    uint8(stor0[stor0.length].field_160) = uint8(call.func_hash)
                    Mask(88, 0, stor0[stor0.length].field_168) = Mask(88, 168, msg.sender) >> 168
                    stor7 = block.number
}

function collectFees() payable {
    if msg.sender == address(stor8):
        idx = 0
        s = winPool
        while uint8(idx) < stor0.length:
            idx = idx + 1
            s = s + betAmount
            continue 
        if eth.balance(this.address) - winPool - (winPool * None) - (winPool * None * None) - (winPool * None * None * None) - (winPool * None * None * None * None) - (winPool * None * None * None * None * None) - (winPool * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) > 0:
            call address(stor8) with:
               value eth.balance(this.address) - winPool - (winPool * None) - (winPool * None * None) - (winPool * None * None * None) - (winPool * None * None * None * None) - (winPool * None * None * None * None * None) - (winPool * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (winPool * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) wei
                 gas 0 wei
}



}

contract main {


// =======================  Init code  ======================


uint256 stor3;
uint256 stor4;

function _fallback() payable {
    stor3 = 0
    stor4 = 0
    return code.data[34 len 2396]
}



// =====================  Runtime code  =====================


address sub_3751707cAddress;
uint256 stor0;
array of uint256 stor1;
uint256 name;
uint256 round;
uint256 counter;
array of struct stor5;
uint256 periodicity;
uint8 auctionSize;
uint256 stor7;
uint256 prize;
uint256 minTx;
array of uint256 stor38904946689225133062030360029229464415395357281359004841078294910011182463805;

function name() payable {
    return name
}

function round() payable {
    return round
}

function sub_3751707c(?) payable {
    return address(sub_3751707cAddress)
}

function minTx() payable {
    return minTx
}

function counter() payable {
    return counter
}

function prize() payable {
    return prize
}

function auctionSize() payable {
    return uint8(auctionSize)
}

function periodicity() payable {
    return periodicity
}

function remove() payable {
    if address(sub_3751707cAddress) != msg.sender:
    selfdestruct(address(sub_3751707cAddress))
}

function _fallback() payable {
  stop
}

function transactions(uint256 arg1) payable {
    require arg1 < stor5.length
    return stor[(2 * arg1) + code.data[2364 len 32]], stor5603[arg1]
}

function getAddress(bytes32 arg1) payable {
    call address(stor1.length).getNodeAddress(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function sub_9b3b402d(?) payable {
    if 0 == address(sub_3751707cAddress):
        return 0
    call address(stor1.length).hasRelation(bytes32 rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 25050 wei
        args name, 'owner', msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if arg2 > arg1:
        return 0
    if 0 == arg3:
        return 0
    if arg2 > 255:
        return 0
    periodicity = arg1
    uint256(stor7) = arg2 or Mask(248, 8, uint256(stor7))
    prize = arg3
    minTx = arg4
    return 1
}

function setAmbiAddress(address arg1, bytes32 arg2) payable {
    if address(sub_3751707cAddress) != 0:
        if address(sub_3751707cAddress) != arg1:
            return 0
    call arg1.getNodeAddress(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args arg2
    require ext_call.success
    if ext_call.return_data[12 len 20] != this.address:
        call arg1.addNode(bytes32 rg1, address rg2) with:
             gas gas_remaining - 25050 wei
            args arg2, this.address
        require ext_call.success
        if not ext_call.return_data[0]:
            return 0
    name = arg2
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
    stor1.length = arg1 or Mask(96, 160, stor1.length)
    return 1
}

function transfer(address arg1, address arg2, uint256 arg3) payable {
    if address(sub_3751707cAddress):
        call address(stor1.length).hasRelation(bytes32 rg1, bytes32 rg2, address rg3) with:
             gas gas_remaining - 25050 wei
            args name, 'elcoin', msg.sender
        require ext_call.success
        if ext_call.return_data[0]:
            if periodicity != 0:
                if uint8(auctionSize) != 0:
                    if prize != 0:
                        if arg3 >= minTx:
                            counter++
                            if counter + 1 <= periodicity - uint8(auctionSize):
                                if counter >= periodicity:
                                    mem[96] = 0
                                    mem[128 len 8128] = 0
                                    idx = 0
                                    s = 0
                                    t = 0
                                    while uint8(idx) < stor5.length:
                                        require uint8(idx) < stor5.length
                                        if stor5603[2 * uint8(idx)] != t:
                                            mem[0] = 5
                                            if stor5603[2 * uint8(idx)] <= t:
                                                idx = idx + 1
                                                s = s
                                                t = t
                                                continue 
                                        else:
                                            require s < 255
                                            mem[(32 * s) + 96] = stor[code.data[2364 len 32] + (2 * uint8(idx))]
                                            require uint8(idx) < stor5.length
                                            mem[0] = 5
                                            if stor5603[2 * uint8(idx)] <= t:
                                                idx = idx + 1
                                                s = s + 1
                                                t = t
                                                continue 
                                        ('gt', ('stor', ('array', ('mask_shl', 8, 0, 1, ('var', 0)), ('name', 'stor5603', 38904946689225133062030360029229464415395357281359004841078294910011182463805))), ('var', 2))
                                        require uint8(idx) < stor5.length
                                        mem[0] = 5
                                        mem[96] = stor[code.data[2364 len 32] + (2 * uint8(idx))]
                                        idx = idx + 1
                                        s = 1
                                        t = stor5603[2 * uint8(idx)]
                                        continue 
                                    t = 0
                                    t = 0
                                    t = 0
                                    while uint8(t) < s:
                                        require uint8(t) < 255
                                        _233 = mem[(32 * uint8(t)) + 96]
                                        mem[8256] = prize / s
                                        emit Reward(prize / s, uint8(t), address(_233), round);
                                        _255 = mem[(32 * uint8(t)) + 96]
                                        mem[8256] = 0xf8b71c6400000000000000000000000000000000000000000000000000000000
                                        mem[8260] = address(_255)
                                        mem[8292] = prize / s
                                        call msg.sender.0xf8b71c64 with:
                                             gas gas_remaining - 25050 wei
                                            args address(_255), prize / s
                                        require ext_call.success
                                        t = msg.sender
                                        t = prize / s
                                        t = t + 1
                                        continue 
                                    counter = 0
                                    round++
                                    stor5.length = 0
                                    idx = code.data[2364 len 32]
                                    while code.data[2364 len 32] + (2 * stor5.length) > idx:
                                        stor[idx] = 0
                                        uint256(stor1[idx]) = 0
                                        idx = idx + 2
                                        continue 
                            else:
                                stor5.length++
                                if not stor5.length > stor5.length + 1:
                                    uint256(stor5[stor5.length].field_0) = arg1 or Mask(96, 160, uint256(stor5[stor5.length].field_0))
                                    uint256(stor5[stor5.length].field_256) = arg3
                                    if counter >= periodicity:
                                        mem[160] = 0
                                        mem[192 len 8128] = 0
                                        idx = 0
                                        s = 0
                                        t = 0
                                        while uint8(idx) < stor5.length:
                                            require uint8(idx) < stor5.length
                                            if stor5603[2 * uint8(idx)] != t:
                                                mem[0] = 5
                                                if stor5603[2 * uint8(idx)] <= t:
                                                    idx = idx + 1
                                                    s = s
                                                    t = t
                                                    continue 
                                            else:
                                                require s < 255
                                                mem[(32 * s) + 160] = stor[code.data[2364 len 32] + (2 * uint8(idx))]
                                                require uint8(idx) < stor5.length
                                                mem[0] = 5
                                                if stor5603[2 * uint8(idx)] <= t:
                                                    idx = idx + 1
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            ('gt', ('stor', ('array', ('mask_shl', 8, 0, 1, ('var', 0)), ('name', 'stor5603', 38904946689225133062030360029229464415395357281359004841078294910011182463805))), ('var', 2))
                                            require uint8(idx) < stor5.length
                                            mem[0] = 5
                                            mem[160] = stor[code.data[2364 len 32] + (2 * uint8(idx))]
                                            idx = idx + 1
                                            s = 1
                                            t = stor5603[2 * uint8(idx)]
                                            continue 
                                        t = 0
                                        t = 0
                                        t = 0
                                        while uint8(t) < s:
                                            require uint8(t) < 255
                                            _238 = mem[(32 * uint8(t)) + 160]
                                            mem[8320] = prize / s
                                            emit Reward(prize / s, uint8(t), address(_238), round);
                                            _258 = mem[(32 * uint8(t)) + 160]
                                            mem[8320] = 0xf8b71c6400000000000000000000000000000000000000000000000000000000
                                            mem[8324] = address(_258)
                                            mem[8356] = prize / s
                                            call msg.sender.0xf8b71c64 with:
                                                 gas gas_remaining - 25050 wei
                                                args address(_258), prize / s
                                            require ext_call.success
                                            t = msg.sender
                                            t = prize / s
                                            t = t + 1
                                            continue 
                                        counter = 0
                                        round++
                                        stor5.length = 0
                                        idx = code.data[2364 len 32]
                                        while code.data[2364 len 32] + (2 * stor5.length) > idx:
                                            stor[idx] = 0
                                            uint256(stor1[idx]) = 0
                                            idx = idx + 2
                                            continue 
                                else:
                                    idx = 2 * stor5.length + 1
                                    while 2 * stor5.length > idx:
                                        stor5[idx].field_0 = 0
                                        uint256(stor5[idx].field_256) = 0
                                        idx = idx + 2
                                        continue 
                                    uint256(stor5[stor5.length].field_0) = arg1 or Mask(96, 160, uint256(stor5[stor5.length].field_0))
                                    uint256(stor5[stor5.length].field_256) = arg3
                                    if counter >= periodicity:
                                        mem[160] = 0
                                        mem[192 len 8128] = 0
                                        idx = 0
                                        s = 0
                                        t = 0
                                        while uint8(idx) < stor5.length:
                                            require uint8(idx) < stor5.length
                                            if stor5603[2 * uint8(idx)] != t:
                                                mem[0] = 5
                                                if stor5603[2 * uint8(idx)] <= t:
                                                    idx = idx + 1
                                                    s = s
                                                    t = t
                                                    continue 
                                            else:
                                                require s < 255
                                                mem[(32 * s) + 160] = stor[code.data[2364 len 32] + (2 * uint8(idx))]
                                                require uint8(idx) < stor5.length
                                                mem[0] = 5
                                                if stor5603[2 * uint8(idx)] <= t:
                                                    idx = idx + 1
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            ('gt', ('stor', ('array', ('mask_shl', 8, 0, 1, ('var', 0)), ('name', 'stor5603', 38904946689225133062030360029229464415395357281359004841078294910011182463805))), ('var', 2))
                                            require uint8(idx) < stor5.length
                                            mem[0] = 5
                                            mem[160] = stor[code.data[2364 len 32] + (2 * uint8(idx))]
                                            idx = idx + 1
                                            s = 1
                                            t = stor5603[2 * uint8(idx)]
                                            continue 
                                        t = 0
                                        t = 0
                                        t = 0
                                        while uint8(t) < s:
                                            require uint8(t) < 255
                                            _313 = mem[(32 * uint8(t)) + 160]
                                            mem[8320] = prize / s
                                            emit Reward(prize / s, uint8(t), address(_313), round);
                                            _321 = mem[(32 * uint8(t)) + 160]
                                            mem[8320] = 0xf8b71c6400000000000000000000000000000000000000000000000000000000
                                            mem[8324] = address(_321)
                                            mem[8356] = prize / s
                                            call msg.sender.0xf8b71c64 with:
                                                 gas gas_remaining - 25050 wei
                                                args address(_321), prize / s
                                            require ext_call.success
                                            t = msg.sender
                                            t = prize / s
                                            t = t + 1
                                            continue 
                                        counter = 0
                                        round++
                                        stor5.length = 0
                                        idx = code.data[2364 len 32]
                                        while code.data[2364 len 32] + (2 * stor5.length) > idx:
                                            stor[idx] = 0
                                            uint256(stor1[idx]) = 0
                                            idx = idx + 2
                                            continue 
                        else:
                            if minTx <= 0:
                                counter++
                                if counter + 1 <= periodicity - uint8(auctionSize):
                                    if counter >= periodicity:
                                        mem[96] = 0
                                        mem[128 len 8128] = 0
                                        idx = 0
                                        s = 0
                                        t = 0
                                        while uint8(idx) < stor5.length:
                                            require uint8(idx) < stor5.length
                                            if stor5603[2 * uint8(idx)] != t:
                                                mem[0] = 5
                                                if stor5603[2 * uint8(idx)] <= t:
                                                    idx = idx + 1
                                                    s = s
                                                    t = t
                                                    continue 
                                            else:
                                                require s < 255
                                                mem[(32 * s) + 96] = stor[code.data[2364 len 32] + (2 * uint8(idx))]
                                                require uint8(idx) < stor5.length
                                                mem[0] = 5
                                                if stor5603[2 * uint8(idx)] <= t:
                                                    idx = idx + 1
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            ('gt', ('stor', ('array', ('mask_shl', 8, 0, 1, ('var', 0)), ('name', 'stor5603', 38904946689225133062030360029229464415395357281359004841078294910011182463805))), ('var', 2))
                                            require uint8(idx) < stor5.length
                                            mem[0] = 5
                                            mem[96] = stor[code.data[2364 len 32] + (2 * uint8(idx))]
                                            idx = idx + 1
                                            s = 1
                                            t = stor5603[2 * uint8(idx)]
                                            continue 
                                        t = 0
                                        t = 0
                                        t = 0
                                        while uint8(t) < s:
                                            require uint8(t) < 255
                                            _245 = mem[(32 * uint8(t)) + 96]
                                            mem[8256] = prize / s
                                            emit Reward(prize / s, uint8(t), address(_245), round);
                                            _261 = mem[(32 * uint8(t)) + 96]
                                            mem[8256] = 0xf8b71c6400000000000000000000000000000000000000000000000000000000
                                            mem[8260] = address(_261)
                                            mem[8292] = prize / s
                                            call msg.sender.0xf8b71c64 with:
                                                 gas gas_remaining - 25050 wei
                                                args address(_261), prize / s
                                            require ext_call.success
                                            t = msg.sender
                                            t = prize / s
                                            t = t + 1
                                            continue 
                                        counter = 0
                                        round++
                                        stor5.length = 0
                                        idx = code.data[2364 len 32]
                                        while code.data[2364 len 32] + (2 * stor5.length) > idx:
                                            stor[idx] = 0
                                            uint256(stor1[idx]) = 0
                                            idx = idx + 2
                                            continue 
                                else:
                                    stor5.length++
                                    if not stor5.length > stor5.length + 1:
                                        uint256(stor5[stor5.length].field_0) = arg1 or Mask(96, 160, uint256(stor5[stor5.length].field_0))
                                        uint256(stor5[stor5.length].field_256) = arg3
                                        if counter >= periodicity:
                                            mem[160] = 0
                                            mem[192 len 8128] = 0
                                            idx = 0
                                            s = 0
                                            t = 0
                                            while uint8(idx) < stor5.length:
                                                require uint8(idx) < stor5.length
                                                if stor5603[2 * uint8(idx)] != t:
                                                    mem[0] = 5
                                                    if stor5603[2 * uint8(idx)] <= t:
                                                        idx = idx + 1
                                                        s = s
                                                        t = t
                                                        continue 
                                                else:
                                                    require s < 255
                                                    mem[(32 * s) + 160] = stor[code.data[2364 len 32] + (2 * uint8(idx))]
                                                    require uint8(idx) < stor5.length
                                                    mem[0] = 5
                                                    if stor5603[2 * uint8(idx)] <= t:
                                                        idx = idx + 1
                                                        s = s + 1
                                                        t = t
                                                        continue 
                                                ('gt', ('stor', ('array', ('mask_shl', 8, 0, 1, ('var', 0)), ('name', 'stor5603', 38904946689225133062030360029229464415395357281359004841078294910011182463805))), ('var', 2))
                                                require uint8(idx) < stor5.length
                                                mem[0] = 5
                                                mem[160] = stor[code.data[2364 len 32] + (2 * uint8(idx))]
                                                idx = idx + 1
                                                s = 1
                                                t = stor5603[2 * uint8(idx)]
                                                continue 
                                            t = 0
                                            t = 0
                                            t = 0
                                            while uint8(t) < s:
                                                require uint8(t) < 255
                                                _250 = mem[(32 * uint8(t)) + 160]
                                                mem[8320] = prize / s
                                                emit Reward(prize / s, uint8(t), address(_250), round);
                                                _264 = mem[(32 * uint8(t)) + 160]
                                                mem[8320] = 0xf8b71c6400000000000000000000000000000000000000000000000000000000
                                                mem[8324] = address(_264)
                                                mem[8356] = prize / s
                                                call msg.sender.0xf8b71c64 with:
                                                     gas gas_remaining - 25050 wei
                                                    args address(_264), prize / s
                                                require ext_call.success
                                                t = msg.sender
                                                t = prize / s
                                                t = t + 1
                                                continue 
                                            counter = 0
                                            round++
                                            stor5.length = 0
                                            idx = code.data[2364 len 32]
                                            while code.data[2364 len 32] + (2 * stor5.length) > idx:
                                                stor[idx] = 0
                                                uint256(stor1[idx]) = 0
                                                idx = idx + 2
                                                continue 
                                    else:
                                        idx = 2 * stor5.length + 1
                                        while 2 * stor5.length > idx:
                                            stor5[idx].field_0 = 0
                                            uint256(stor5[idx].field_256) = 0
                                            idx = idx + 2
                                            continue 
                                        uint256(stor5[stor5.length].field_0) = arg1 or Mask(96, 160, uint256(stor5[stor5.length].field_0))
                                        uint256(stor5[stor5.length].field_256) = arg3
                                        if counter >= periodicity:
                                            mem[160] = 0
                                            mem[192 len 8128] = 0
                                            idx = 0
                                            s = 0
                                            t = 0
                                            while uint8(idx) < stor5.length:
                                                require uint8(idx) < stor5.length
                                                if stor5603[2 * uint8(idx)] != t:
                                                    mem[0] = 5
                                                    if stor5603[2 * uint8(idx)] <= t:
                                                        idx = idx + 1
                                                        s = s
                                                        t = t
                                                        continue 
                                                else:
                                                    require s < 255
                                                    mem[(32 * s) + 160] = stor[code.data[2364 len 32] + (2 * uint8(idx))]
                                                    require uint8(idx) < stor5.length
                                                    mem[0] = 5
                                                    if stor5603[2 * uint8(idx)] <= t:
                                                        idx = idx + 1
                                                        s = s + 1
                                                        t = t
                                                        continue 
                                                ('gt', ('stor', ('array', ('mask_shl', 8, 0, 1, ('var', 0)), ('name', 'stor5603', 38904946689225133062030360029229464415395357281359004841078294910011182463805))), ('var', 2))
                                                require uint8(idx) < stor5.length
                                                mem[0] = 5
                                                mem[160] = stor[code.data[2364 len 32] + (2 * uint8(idx))]
                                                idx = idx + 1
                                                s = 1
                                                t = stor5603[2 * uint8(idx)]
                                                continue 
                                            t = 0
                                            t = 0
                                            t = 0
                                            while uint8(t) < s:
                                                require uint8(t) < 255
                                                _318 = mem[(32 * uint8(t)) + 160]
                                                mem[8320] = prize / s
                                                emit Reward(prize / s, uint8(t), address(_318), round);
                                                _324 = mem[(32 * uint8(t)) + 160]
                                                mem[8320] = 0xf8b71c6400000000000000000000000000000000000000000000000000000000
                                                mem[8324] = address(_324)
                                                mem[8356] = prize / s
                                                call msg.sender.0xf8b71c64 with:
                                                     gas gas_remaining - 25050 wei
                                                    args address(_324), prize / s
                                                require ext_call.success
                                                t = msg.sender
                                                t = prize / s
                                                t = t + 1
                                                continue 
                                            counter = 0
                                            round++
                                            stor5.length = 0
                                            idx = code.data[2364 len 32]
                                            while code.data[2364 len 32] + (2 * stor5.length) > idx:
                                                stor[idx] = 0
                                                uint256(stor1[idx]) = 0
                                                idx = idx + 2
                                                continue 
}



}

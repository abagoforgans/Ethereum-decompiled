contract main {


// =======================  Init code  ======================


uint256 stor2;
uint256 stor3;

function _fallback() payable {
    stor2 = 0
    stor3 = 0
    return code.data[34 len 2467]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor0;
array of uint256 stor1;
uint256 round;
uint256 counter;
array of struct stor4;
uint256 periodicity;
uint8 auctionSize;
uint256 stor6;
uint256 prize;
uint256 minTx;
uint256 startTime;
array of uint256 stor39143100329280468107556231533410151018419134684842411016866935372961967991761;

function name() payable {
    return stor1.length
}

function round() payable {
    return round
}

function minTx() payable {
    return minTx
}

function counter() payable {
    return counter
}

function startTime() payable {
    return startTime
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
    if address(stor0) != msg.sender:
    selfdestruct(msg.sender)
}

function _fallback() payable {
  stop
}

function transactions(uint256 arg1) payable {
    require arg1 < stor4.length
    return stor[(2 * arg1) + code.data[2435 len 32]], stor568A[arg1]
}

function getAddress(bytes32 arg1) payable {
    call address(stor0).getNodeAddress(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function setAmbiAddress(address arg1, bytes32 arg2) payable {
    if address(stor0) != 0:
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
    stor1.length = arg2
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
    return 1
}

function configure(uint256 arg1, uint8 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) payable {
    if 0 == address(stor0):
        return 0
    call address(stor0).hasRelation(bytes32 rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 25050 wei
        args stor1.length, 'owner', msg.sender
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
    uint256(stor6) = arg2 or Mask(248, 8, uint256(stor6))
    prize = arg3
    minTx = arg4
    counter = arg5
    startTime = arg6
    return 1
}

function transfer(address arg1, address arg2, uint256 arg3) payable {
    if address(stor0):
        call address(stor0).hasRelation(bytes32 rg1, bytes32 rg2, address rg3) with:
             gas gas_remaining - 25050 wei
            args stor1.length, 'elcoin', msg.sender
        require ext_call.success
        if ext_call.return_data[0]:
            if periodicity != 0:
                if uint8(auctionSize) != 0:
                    if prize != 0:
                        counter++
                        if arg3 < minTx:
                            if counter >= periodicity:
                                mem[96] = 0
                                mem[128 len 8128] = 0
                                idx = 0
                                s = 0
                                t = 0
                                while uint8(idx) < stor4.length:
                                    require uint8(idx) < stor4.length
                                    if stor568A[2 * uint8(idx)] != t:
                                        mem[0] = 4
                                        if stor568A[2 * uint8(idx)] <= t:
                                            idx = idx + 1
                                            s = s
                                            t = t
                                            continue 
                                    else:
                                        require s < 255
                                        mem[(32 * s) + 96] = stor[code.data[2435 len 32] + (2 * uint8(idx))]
                                        require uint8(idx) < stor4.length
                                        mem[0] = 4
                                        if stor568A[2 * uint8(idx)] <= t:
                                            idx = idx + 1
                                            s = s + 1
                                            t = t
                                            continue 
                                    ('gt', ('stor', ('array', ('mask_shl', 8, 0, 1, ('var', 0)), ('name', 'stor568A', 39143100329280468107556231533410151018419134684842411016866935372961967991761))), ('var', 2))
                                    require uint8(idx) < stor4.length
                                    mem[0] = 4
                                    mem[96] = stor[code.data[2435 len 32] + (2 * uint8(idx))]
                                    idx = idx + 1
                                    s = 1
                                    t = stor568A[2 * uint8(idx)]
                                    continue 
                                if startTime > block.timestamp:
                                    t = 0
                                    t = 0
                                    t = 0
                                    t = 0
                                    while uint8(t) < s:
                                        require uint8(t) < 255
                                        mem[8260] = mem[(32 * uint8(t)) + 108 len 20]
                                        mem[8292] = prize / s
                                        call msg.sender.rewardTo(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 25050 wei
                                            args mem[8260], prize / s
                                        mem[8256] = ext_call.return_data[0]
                                        require ext_call.success
                                        if ext_call.return_data[0]:
                                            require uint8(t) < 255
                                            _318 = mem[(32 * uint8(t)) + 96]
                                            mem[8256] = prize / s
                                            mem[8288] = uint8(t)
                                            emit Reward(prize / s, uint8(t), address(_318), round);
                                        t = ext_call.return_data[0]
                                        t = msg.sender
                                        t = prize / s
                                        t = t + 1
                                        continue 
                                else:
                                    if 0 == (block.timestamp - startTime / 24 * 3600) + 1 % 260:
                                        t = 0
                                        t = 0
                                        t = 0
                                        t = 0
                                        while uint8(t) < s:
                                            require uint8(t) < 255
                                            mem[8260] = mem[(32 * uint8(t)) + 108 len 20]
                                            mem[8292] = 2 * prize / s
                                            call msg.sender.rewardTo(address rg1, uint256 rg2) with:
                                                 gas gas_remaining - 25050 wei
                                                args mem[8260], 2 * prize / s
                                            mem[8256] = ext_call.return_data[0]
                                            require ext_call.success
                                            if ext_call.return_data[0]:
                                                require uint8(t) < 255
                                                _312 = mem[(32 * uint8(t)) + 96]
                                                mem[8256] = 2 * prize / s
                                                mem[8288] = uint8(t)
                                                emit Reward(2 * prize / s, uint8(t), address(_312), round);
                                            t = ext_call.return_data[0]
                                            t = msg.sender
                                            t = 2 * prize / s
                                            t = t + 1
                                            continue 
                                    else:
                                        t = 0
                                        t = 0
                                        t = 0
                                        t = 0
                                        while uint8(t) < s:
                                            require uint8(t) < 255
                                            mem[8260] = mem[(32 * uint8(t)) + 108 len 20]
                                            mem[8292] = prize / s
                                            call msg.sender.rewardTo(address rg1, uint256 rg2) with:
                                                 gas gas_remaining - 25050 wei
                                                args mem[8260], prize / s
                                            mem[8256] = ext_call.return_data[0]
                                            require ext_call.success
                                            if ext_call.return_data[0]:
                                                require uint8(t) < 255
                                                _315 = mem[(32 * uint8(t)) + 96]
                                                mem[8256] = prize / s
                                                mem[8288] = uint8(t)
                                                emit Reward(prize / s, uint8(t), address(_315), round);
                                            t = ext_call.return_data[0]
                                            t = msg.sender
                                            t = prize / s
                                            t = t + 1
                                            continue 
                                counter = 0
                                round++
                                stor4.length = 0
                                idx = code.data[2435 len 32]
                                while code.data[2435 len 32] + (2 * stor4.length) > idx:
                                    stor[idx] = 0
                                    stor1[idx] = 0
                                    idx = idx + 2
                                    continue 
                        else:
                            if counter <= periodicity - uint8(auctionSize):
                                if counter >= periodicity:
                                    mem[96] = 0
                                    mem[128 len 8128] = 0
                                    idx = 0
                                    s = 0
                                    t = 0
                                    while uint8(idx) < stor4.length:
                                        require uint8(idx) < stor4.length
                                        if stor568A[2 * uint8(idx)] != t:
                                            mem[0] = 4
                                            if stor568A[2 * uint8(idx)] <= t:
                                                idx = idx + 1
                                                s = s
                                                t = t
                                                continue 
                                        else:
                                            require s < 255
                                            mem[(32 * s) + 96] = stor[code.data[2435 len 32] + (2 * uint8(idx))]
                                            require uint8(idx) < stor4.length
                                            mem[0] = 4
                                            if stor568A[2 * uint8(idx)] <= t:
                                                idx = idx + 1
                                                s = s + 1
                                                t = t
                                                continue 
                                        ('gt', ('stor', ('array', ('mask_shl', 8, 0, 1, ('var', 0)), ('name', 'stor568A', 39143100329280468107556231533410151018419134684842411016866935372961967991761))), ('var', 2))
                                        require uint8(idx) < stor4.length
                                        mem[0] = 4
                                        mem[96] = stor[code.data[2435 len 32] + (2 * uint8(idx))]
                                        idx = idx + 1
                                        s = 1
                                        t = stor568A[2 * uint8(idx)]
                                        continue 
                                    if startTime > block.timestamp:
                                        t = 0
                                        t = 0
                                        t = 0
                                        t = 0
                                        while uint8(t) < s:
                                            require uint8(t) < 255
                                            mem[8260] = mem[(32 * uint8(t)) + 108 len 20]
                                            mem[8292] = prize / s
                                            call msg.sender.rewardTo(address rg1, uint256 rg2) with:
                                                 gas gas_remaining - 25050 wei
                                                args mem[8260], prize / s
                                            mem[8256] = ext_call.return_data[0]
                                            require ext_call.success
                                            if ext_call.return_data[0]:
                                                require uint8(t) < 255
                                                _327 = mem[(32 * uint8(t)) + 96]
                                                mem[8256] = prize / s
                                                mem[8288] = uint8(t)
                                                emit Reward(prize / s, uint8(t), address(_327), round);
                                            t = ext_call.return_data[0]
                                            t = msg.sender
                                            t = prize / s
                                            t = t + 1
                                            continue 
                                    else:
                                        if 0 == (block.timestamp - startTime / 24 * 3600) + 1 % 260:
                                            t = 0
                                            t = 0
                                            t = 0
                                            t = 0
                                            while uint8(t) < s:
                                                require uint8(t) < 255
                                                mem[8260] = mem[(32 * uint8(t)) + 108 len 20]
                                                mem[8292] = 2 * prize / s
                                                call msg.sender.rewardTo(address rg1, uint256 rg2) with:
                                                     gas gas_remaining - 25050 wei
                                                    args mem[8260], 2 * prize / s
                                                mem[8256] = ext_call.return_data[0]
                                                require ext_call.success
                                                if ext_call.return_data[0]:
                                                    require uint8(t) < 255
                                                    _321 = mem[(32 * uint8(t)) + 96]
                                                    mem[8256] = 2 * prize / s
                                                    mem[8288] = uint8(t)
                                                    emit Reward(2 * prize / s, uint8(t), address(_321), round);
                                                t = ext_call.return_data[0]
                                                t = msg.sender
                                                t = 2 * prize / s
                                                t = t + 1
                                                continue 
                                        else:
                                            t = 0
                                            t = 0
                                            t = 0
                                            t = 0
                                            while uint8(t) < s:
                                                require uint8(t) < 255
                                                mem[8260] = mem[(32 * uint8(t)) + 108 len 20]
                                                mem[8292] = prize / s
                                                call msg.sender.rewardTo(address rg1, uint256 rg2) with:
                                                     gas gas_remaining - 25050 wei
                                                    args mem[8260], prize / s
                                                mem[8256] = ext_call.return_data[0]
                                                require ext_call.success
                                                if ext_call.return_data[0]:
                                                    require uint8(t) < 255
                                                    _324 = mem[(32 * uint8(t)) + 96]
                                                    mem[8256] = prize / s
                                                    mem[8288] = uint8(t)
                                                    emit Reward(prize / s, uint8(t), address(_324), round);
                                                t = ext_call.return_data[0]
                                                t = msg.sender
                                                t = prize / s
                                                t = t + 1
                                                continue 
                                    counter = 0
                                    round++
                                    stor4.length = 0
                                    idx = code.data[2435 len 32]
                                    while code.data[2435 len 32] + (2 * stor4.length) > idx:
                                        stor[idx] = 0
                                        stor1[idx] = 0
                                        idx = idx + 2
                                        continue 
                            else:
                                stor4.length++
                                if not stor4.length > stor4.length + 1:
                                    uint256(stor4[stor4.length].field_0) = arg1 or Mask(96, 160, uint256(stor4[stor4.length].field_0))
                                    uint256(stor4[stor4.length].field_256) = arg3
                                    if counter >= periodicity:
                                        mem[160] = 0
                                        mem[192 len 8128] = 0
                                        idx = 0
                                        s = 0
                                        t = 0
                                        while uint8(idx) < stor4.length:
                                            require uint8(idx) < stor4.length
                                            if stor568A[2 * uint8(idx)] != t:
                                                mem[0] = 4
                                                if stor568A[2 * uint8(idx)] <= t:
                                                    idx = idx + 1
                                                    s = s
                                                    t = t
                                                    continue 
                                            else:
                                                require s < 255
                                                mem[(32 * s) + 160] = stor[code.data[2435 len 32] + (2 * uint8(idx))]
                                                require uint8(idx) < stor4.length
                                                mem[0] = 4
                                                if stor568A[2 * uint8(idx)] <= t:
                                                    idx = idx + 1
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            ('gt', ('stor', ('array', ('mask_shl', 8, 0, 1, ('var', 0)), ('name', 'stor568A', 39143100329280468107556231533410151018419134684842411016866935372961967991761))), ('var', 2))
                                            require uint8(idx) < stor4.length
                                            mem[0] = 4
                                            mem[160] = stor[code.data[2435 len 32] + (2 * uint8(idx))]
                                            idx = idx + 1
                                            s = 1
                                            t = stor568A[2 * uint8(idx)]
                                            continue 
                                        if startTime > block.timestamp:
                                            t = 0
                                            t = 0
                                            t = 0
                                            t = 0
                                            while uint8(t) < s:
                                                require uint8(t) < 255
                                                mem[8324] = mem[(32 * uint8(t)) + 172 len 20]
                                                mem[8356] = prize / s
                                                call msg.sender.rewardTo(address rg1, uint256 rg2) with:
                                                     gas gas_remaining - 25050 wei
                                                    args mem[8324], prize / s
                                                mem[8320] = ext_call.return_data[0]
                                                require ext_call.success
                                                if ext_call.return_data[0]:
                                                    require uint8(t) < 255
                                                    _336 = mem[(32 * uint8(t)) + 160]
                                                    mem[8320] = prize / s
                                                    mem[8352] = uint8(t)
                                                    emit Reward(prize / s, uint8(t), address(_336), round);
                                                t = ext_call.return_data[0]
                                                t = msg.sender
                                                t = prize / s
                                                t = t + 1
                                                continue 
                                        else:
                                            if 0 == (block.timestamp - startTime / 24 * 3600) + 1 % 260:
                                                t = 0
                                                t = 0
                                                t = 0
                                                t = 0
                                                while uint8(t) < s:
                                                    require uint8(t) < 255
                                                    mem[8324] = mem[(32 * uint8(t)) + 172 len 20]
                                                    mem[8356] = 2 * prize / s
                                                    call msg.sender.rewardTo(address rg1, uint256 rg2) with:
                                                         gas gas_remaining - 25050 wei
                                                        args mem[8324], 2 * prize / s
                                                    mem[8320] = ext_call.return_data[0]
                                                    require ext_call.success
                                                    if ext_call.return_data[0]:
                                                        require uint8(t) < 255
                                                        _330 = mem[(32 * uint8(t)) + 160]
                                                        mem[8320] = 2 * prize / s
                                                        mem[8352] = uint8(t)
                                                        emit Reward(2 * prize / s, uint8(t), address(_330), round);
                                                    t = ext_call.return_data[0]
                                                    t = msg.sender
                                                    t = 2 * prize / s
                                                    t = t + 1
                                                    continue 
                                            else:
                                                t = 0
                                                t = 0
                                                t = 0
                                                t = 0
                                                while uint8(t) < s:
                                                    require uint8(t) < 255
                                                    mem[8324] = mem[(32 * uint8(t)) + 172 len 20]
                                                    mem[8356] = prize / s
                                                    call msg.sender.rewardTo(address rg1, uint256 rg2) with:
                                                         gas gas_remaining - 25050 wei
                                                        args mem[8324], prize / s
                                                    mem[8320] = ext_call.return_data[0]
                                                    require ext_call.success
                                                    if ext_call.return_data[0]:
                                                        require uint8(t) < 255
                                                        _333 = mem[(32 * uint8(t)) + 160]
                                                        mem[8320] = prize / s
                                                        mem[8352] = uint8(t)
                                                        emit Reward(prize / s, uint8(t), address(_333), round);
                                                    t = ext_call.return_data[0]
                                                    t = msg.sender
                                                    t = prize / s
                                                    t = t + 1
                                                    continue 
                                        counter = 0
                                        round++
                                        stor4.length = 0
                                        idx = code.data[2435 len 32]
                                        while code.data[2435 len 32] + (2 * stor4.length) > idx:
                                            stor[idx] = 0
                                            stor1[idx] = 0
                                            idx = idx + 2
                                            continue 
                                else:
                                    idx = 2 * stor4.length + 1
                                    while 2 * stor4.length > idx:
                                        stor4[idx].field_0 = 0
                                        uint256(stor4[idx].field_256) = 0
                                        idx = idx + 2
                                        continue 
                                    uint256(stor4[stor4.length].field_0) = arg1 or Mask(96, 160, uint256(stor4[stor4.length].field_0))
                                    uint256(stor4[stor4.length].field_256) = arg3
                                    if counter >= periodicity:
                                        mem[160] = 0
                                        mem[192 len 8128] = 0
                                        idx = 0
                                        s = 0
                                        t = 0
                                        while uint8(idx) < stor4.length:
                                            require uint8(idx) < stor4.length
                                            if stor568A[2 * uint8(idx)] != t:
                                                mem[0] = 4
                                                if stor568A[2 * uint8(idx)] <= t:
                                                    idx = idx + 1
                                                    s = s
                                                    t = t
                                                    continue 
                                            else:
                                                require s < 255
                                                mem[(32 * s) + 160] = stor[code.data[2435 len 32] + (2 * uint8(idx))]
                                                require uint8(idx) < stor4.length
                                                mem[0] = 4
                                                if stor568A[2 * uint8(idx)] <= t:
                                                    idx = idx + 1
                                                    s = s + 1
                                                    t = t
                                                    continue 
                                            ('gt', ('stor', ('array', ('mask_shl', 8, 0, 1, ('var', 0)), ('name', 'stor568A', 39143100329280468107556231533410151018419134684842411016866935372961967991761))), ('var', 2))
                                            require uint8(idx) < stor4.length
                                            mem[0] = 4
                                            mem[160] = stor[code.data[2435 len 32] + (2 * uint8(idx))]
                                            idx = idx + 1
                                            s = 1
                                            t = stor568A[2 * uint8(idx)]
                                            continue 
                                        if startTime > block.timestamp:
                                            t = 0
                                            t = 0
                                            t = 0
                                            t = 0
                                            while uint8(t) < s:
                                                require uint8(t) < 255
                                                mem[8324] = mem[(32 * uint8(t)) + 172 len 20]
                                                mem[8356] = prize / s
                                                call msg.sender.rewardTo(address rg1, uint256 rg2) with:
                                                     gas gas_remaining - 25050 wei
                                                    args mem[8324], prize / s
                                                mem[8320] = ext_call.return_data[0]
                                                require ext_call.success
                                                if ext_call.return_data[0]:
                                                    require uint8(t) < 255
                                                    _406 = mem[(32 * uint8(t)) + 160]
                                                    mem[8320] = prize / s
                                                    mem[8352] = uint8(t)
                                                    emit Reward(prize / s, uint8(t), address(_406), round);
                                                t = ext_call.return_data[0]
                                                t = msg.sender
                                                t = prize / s
                                                t = t + 1
                                                continue 
                                        else:
                                            if 0 == (block.timestamp - startTime / 24 * 3600) + 1 % 260:
                                                t = 0
                                                t = 0
                                                t = 0
                                                t = 0
                                                while uint8(t) < s:
                                                    require uint8(t) < 255
                                                    mem[8324] = mem[(32 * uint8(t)) + 172 len 20]
                                                    mem[8356] = 2 * prize / s
                                                    call msg.sender.rewardTo(address rg1, uint256 rg2) with:
                                                         gas gas_remaining - 25050 wei
                                                        args mem[8324], 2 * prize / s
                                                    mem[8320] = ext_call.return_data[0]
                                                    require ext_call.success
                                                    if ext_call.return_data[0]:
                                                        require uint8(t) < 255
                                                        _400 = mem[(32 * uint8(t)) + 160]
                                                        mem[8320] = 2 * prize / s
                                                        mem[8352] = uint8(t)
                                                        emit Reward(2 * prize / s, uint8(t), address(_400), round);
                                                    t = ext_call.return_data[0]
                                                    t = msg.sender
                                                    t = 2 * prize / s
                                                    t = t + 1
                                                    continue 
                                            else:
                                                t = 0
                                                t = 0
                                                t = 0
                                                t = 0
                                                while uint8(t) < s:
                                                    require uint8(t) < 255
                                                    mem[8324] = mem[(32 * uint8(t)) + 172 len 20]
                                                    mem[8356] = prize / s
                                                    call msg.sender.rewardTo(address rg1, uint256 rg2) with:
                                                         gas gas_remaining - 25050 wei
                                                        args mem[8324], prize / s
                                                    mem[8320] = ext_call.return_data[0]
                                                    require ext_call.success
                                                    if ext_call.return_data[0]:
                                                        require uint8(t) < 255
                                                        _403 = mem[(32 * uint8(t)) + 160]
                                                        mem[8320] = prize / s
                                                        mem[8352] = uint8(t)
                                                        emit Reward(prize / s, uint8(t), address(_403), round);
                                                    t = ext_call.return_data[0]
                                                    t = msg.sender
                                                    t = prize / s
                                                    t = t + 1
                                                    continue 
                                        counter = 0
                                        round++
                                        stor4.length = 0
                                        idx = code.data[2435 len 32]
                                        while code.data[2435 len 32] + (2 * stor4.length) > idx:
                                            stor[idx] = 0
                                            stor1[idx] = 0
                                            idx = idx + 2
                                            continue 
}



}

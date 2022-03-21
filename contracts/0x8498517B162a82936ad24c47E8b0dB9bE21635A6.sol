contract main {


// =======================  Init code  ======================


uint256 stor2;
uint256 stor3;

function _fallback() payable {
    stor2 = 0
    stor3 = 0
    return code.data[34 len 2899]
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
address elcoinAddress;
uint256 stor10;
mapping of uint256 prizes;
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

function elcoin() payable {
    return address(elcoinAddress)
}

function startTime() payable {
    return startTime
}

function prizes(uint256 arg1, address arg2) payable {
    return prizes[arg1][arg2]
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
    return stor[(2 * arg1) + code.data[2867 len 32]], stor568A[arg1]
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
    call address(stor0).getNodeAddress(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args 0x656c636f696e0000000000000000000000000000000000000000000000000000
    require ext_call.success
    uint256(stor10) = ext_call.return_data[0] or Mask(96, 160, uint256(stor10))
    return 1
}

function transfer(address arg1, address arg2, uint256 arg3) payable {
    if address(stor0):
        call address(stor0).hasRelation(bytes32 rg1, bytes32 rg2, address rg3) with:
             gas gas_remaining - 25050 wei
            args stor1.length, 0x656c636f696e0000000000000000000000000000000000000000000000000000, msg.sender
        require ext_call.success
        if ext_call.return_data[0]:
            if periodicity != 0:
                if uint8(auctionSize) != 0:
                    if prize != 0:
                        counter++
                        if arg3 < minTx:
                            if counter >= periodicity:
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
                                        require s < uint8(auctionSize)
                                        mem[(32 * s) + 228] = stor[code.data[2867 len 32] + (2 * uint8(idx))]
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
                                    require 0 < uint8(auctionSize)
                                    mem[228] = stor[code.data[2867 len 32] + (2 * uint8(idx))]
                                    idx = idx + 1
                                    s = 1
                                    t = stor568A[2 * uint8(idx)]
                                    continue 
                                if s != 0:
                                    if msize < (32 * uint8(auctionSize)) + 228:
                                        mem[(32 * uint8(auctionSize)) + 228] = s
                                        if startTime > block.timestamp:
                                            t = 0
                                            u = 0
                                            v = 0
                                            while uint8(u) < s:
                                                require uint8(u) < uint8(auctionSize)
                                                _827 = mem[(32 * uint8(u)) + 228]
                                                if prizes[stor2][address(mem[(32 * uint8(u)) + 228])]:
                                                    mem[0] = mem[(32 * uint8(u)) + 240 len 20]
                                                    mem[32] = sha3(round, 11)
                                                    prizes[stor2][address(mem[(32 * uint8(u)) + 228])] += prize / s
                                                    t = mem[(32 * uint8(u)) + 228]
                                                    u = u + 1
                                                    v = v
                                                    continue 
                                                require v < s
                                                mem[(32 * uint8(auctionSize)) + (32 * v) + 260] = mem[(32 * uint8(u)) + 240 len 20]
                                                mem[0] = address(_827)
                                                mem[32] = sha3(round, 11)
                                                prizes[stor2][address(_827)] += prize / s
                                                t = _827
                                                u = u + 1
                                                v = v + 1
                                                continue 
                                            u = 0
                                            w = t
                                            w = 0
                                            while uint8(w) < v:
                                                require uint8(w) < s
                                                _1809 = mem[(32 * uint8(auctionSize)) + (32 * uint8(w)) + 260]
                                                mem[0] = mem[(32 * uint8(auctionSize)) + (32 * uint8(w)) + 272 len 20]
                                                mem[32] = sha3(round, 11)
                                                mem[(32 * uint8(auctionSize)) + (32 * s) + 264] = mem[(32 * uint8(auctionSize)) + (32 * uint8(w)) + 272 len 20]
                                                mem[(32 * uint8(auctionSize)) + (32 * s) + 296] = prizes[stor2][address(_1809)]
                                                call address(elcoinAddress).0xf8b71c64 with:
                                                     gas gas_remaining - 25050 wei
                                                    args mem[(32 * uint8(auctionSize)) + (32 * s) + 264], prizes[stor2][address(_1809)]
                                                mem[(32 * uint8(auctionSize)) + (32 * s) + 260] = ext_call.return_data[0]
                                                require ext_call.success
                                                if ext_call.return_data[0]:
                                                    mem[(32 * uint8(auctionSize)) + (32 * s) + 260] = prizes[stor2][address(_1809)]
                                                    mem[(32 * uint8(auctionSize)) + (32 * s) + 292] = uint8(w)
                                                    emit Reward(prizes[stor2][address(_1809)], uint8(w), address(_1809), round);
                                                u = prizes[stor2][address(_1809)]
                                                w = _1809
                                                w = w + 1
                                                continue 
                                        else:
                                            if 0 == (block.timestamp - startTime / 24 * 3600) + 1 % 360:
                                                t = 0
                                                u = 0
                                                v = 0
                                                while uint8(u) < s:
                                                    require uint8(u) < uint8(auctionSize)
                                                    _821 = mem[(32 * uint8(u)) + 228]
                                                    if prizes[stor2][address(mem[(32 * uint8(u)) + 228])]:
                                                        mem[0] = mem[(32 * uint8(u)) + 240 len 20]
                                                        mem[32] = sha3(round, 11)
                                                        prizes[stor2][address(mem[(32 * uint8(u)) + 228])] += 2 * prize / s
                                                        t = mem[(32 * uint8(u)) + 228]
                                                        u = u + 1
                                                        v = v
                                                        continue 
                                                    require v < s
                                                    mem[(32 * uint8(auctionSize)) + (32 * v) + 260] = mem[(32 * uint8(u)) + 240 len 20]
                                                    mem[0] = address(_821)
                                                    mem[32] = sha3(round, 11)
                                                    prizes[stor2][address(_821)] += 2 * prize / s
                                                    t = _821
                                                    u = u + 1
                                                    v = v + 1
                                                    continue 
                                                u = 0
                                                w = t
                                                w = 0
                                                while uint8(w) < v:
                                                    require uint8(w) < s
                                                    _1795 = mem[(32 * uint8(auctionSize)) + (32 * uint8(w)) + 260]
                                                    mem[0] = mem[(32 * uint8(auctionSize)) + (32 * uint8(w)) + 272 len 20]
                                                    mem[32] = sha3(round, 11)
                                                    mem[(32 * uint8(auctionSize)) + (32 * s) + 264] = mem[(32 * uint8(auctionSize)) + (32 * uint8(w)) + 272 len 20]
                                                    mem[(32 * uint8(auctionSize)) + (32 * s) + 296] = prizes[stor2][address(_1795)]
                                                    call address(elcoinAddress).0xf8b71c64 with:
                                                         gas gas_remaining - 25050 wei
                                                        args mem[(32 * uint8(auctionSize)) + (32 * s) + 264], prizes[stor2][address(_1795)]
                                                    mem[(32 * uint8(auctionSize)) + (32 * s) + 260] = ext_call.return_data[0]
                                                    require ext_call.success
                                                    if ext_call.return_data[0]:
                                                        mem[(32 * uint8(auctionSize)) + (32 * s) + 260] = prizes[stor2][address(_1795)]
                                                        mem[(32 * uint8(auctionSize)) + (32 * s) + 292] = uint8(w)
                                                        emit Reward(prizes[stor2][address(_1795)], uint8(w), address(_1795), round);
                                                    u = prizes[stor2][address(_1795)]
                                                    w = _1795
                                                    w = w + 1
                                                    continue 
                                            else:
                                                t = 0
                                                u = 0
                                                v = 0
                                                while uint8(u) < s:
                                                    require uint8(u) < uint8(auctionSize)
                                                    _824 = mem[(32 * uint8(u)) + 228]
                                                    if prizes[stor2][address(mem[(32 * uint8(u)) + 228])]:
                                                        mem[0] = mem[(32 * uint8(u)) + 240 len 20]
                                                        mem[32] = sha3(round, 11)
                                                        prizes[stor2][address(mem[(32 * uint8(u)) + 228])] += prize / s
                                                        t = mem[(32 * uint8(u)) + 228]
                                                        u = u + 1
                                                        v = v
                                                        continue 
                                                    require v < s
                                                    mem[(32 * uint8(auctionSize)) + (32 * v) + 260] = mem[(32 * uint8(u)) + 240 len 20]
                                                    mem[0] = address(_824)
                                                    mem[32] = sha3(round, 11)
                                                    prizes[stor2][address(_824)] += prize / s
                                                    t = _824
                                                    u = u + 1
                                                    v = v + 1
                                                    continue 
                                                u = 0
                                                w = t
                                                w = 0
                                                while uint8(w) < v:
                                                    require uint8(w) < s
                                                    _1802 = mem[(32 * uint8(auctionSize)) + (32 * uint8(w)) + 260]
                                                    mem[0] = mem[(32 * uint8(auctionSize)) + (32 * uint8(w)) + 272 len 20]
                                                    mem[32] = sha3(round, 11)
                                                    mem[(32 * uint8(auctionSize)) + (32 * s) + 264] = mem[(32 * uint8(auctionSize)) + (32 * uint8(w)) + 272 len 20]
                                                    mem[(32 * uint8(auctionSize)) + (32 * s) + 296] = prizes[stor2][address(_1802)]
                                                    call address(elcoinAddress).0xf8b71c64 with:
                                                         gas gas_remaining - 25050 wei
                                                        args mem[(32 * uint8(auctionSize)) + (32 * s) + 264], prizes[stor2][address(_1802)]
                                                    mem[(32 * uint8(auctionSize)) + (32 * s) + 260] = ext_call.return_data[0]
                                                    require ext_call.success
                                                    if ext_call.return_data[0]:
                                                        mem[(32 * uint8(auctionSize)) + (32 * s) + 260] = prizes[stor2][address(_1802)]
                                                        mem[(32 * uint8(auctionSize)) + (32 * s) + 292] = uint8(w)
                                                        emit Reward(prizes[stor2][address(_1802)], uint8(w), address(_1802), round);
                                                    u = prizes[stor2][address(_1802)]
                                                    w = _1802
                                                    w = w + 1
                                                    continue 
                                    else:
                                        _msize = max(0, 32 * s)
                                        mem[_msize + 260] = s
                                        if startTime > block.timestamp:
                                            t = 0
                                            u = 0
                                            v = 0
                                            while uint8(u) < s:
                                                require uint8(u) < uint8(auctionSize)
                                                _836 = mem[(32 * uint8(u)) + 228]
                                                if prizes[stor2][address(mem[(32 * uint8(u)) + 228])]:
                                                    mem[0] = mem[(32 * uint8(u)) + 240 len 20]
                                                    mem[32] = sha3(round, 11)
                                                    prizes[stor2][address(mem[(32 * uint8(u)) + 228])] += prize / s
                                                    t = mem[(32 * uint8(u)) + 228]
                                                    u = u + 1
                                                    v = v
                                                    continue 
                                                require v < s, mem[(32 * s) + 292 len 0]
                                                mem[(_msize + 260) + (32 * v) + 32] = mem[(32 * uint8(u)) + 240 len 20]
                                                mem[0] = address(_836)
                                                mem[32] = sha3(round, 11)
                                                prizes[stor2][address(_836)] += prize / s
                                                t = _836
                                                u = u + 1
                                                v = v + 1
                                                continue 
                                            u = 0
                                            w = t
                                            w = 0
                                            while uint8(w) < v:
                                                require uint8(w) < mem[_msize + 260]
                                                _1830 = mem[(_msize + 260) + (32 * uint8(w)) + 32]
                                                mem[0] = mem[(_msize + 260) + (32 * uint8(w)) + 44 len 20]
                                                mem[32] = sha3(round, 11)
                                                mem[(_msize + 260) + (32 * s) + 36] = mem[(_msize + 260) + (32 * uint8(w)) + 44 len 20]
                                                mem[(_msize + 260) + (32 * s) + 68] = prizes[stor2][address(_1830)]
                                                call address(elcoinAddress).0xf8b71c64 with:
                                                     gas gas_remaining - 25050 wei
                                                    args mem[(_msize + 260) + (32 * s) + 36], prizes[stor2][address(_1830)]
                                                mem[(_msize + 260) + (32 * s) + 32] = ext_call.return_data[0]
                                                require ext_call.success
                                                if ext_call.return_data[0]:
                                                    mem[(_msize + 260) + (32 * s) + 32] = prizes[stor2][address(_1830)]
                                                    mem[(_msize + 260) + (32 * s) + 64] = uint8(w)
                                                    emit Reward(prizes[stor2][address(_1830)], uint8(w), address(_1830), round);
                                                u = prizes[stor2][address(_1830)]
                                                w = _1830
                                                w = w + 1
                                                continue 
                                        else:
                                            if 0 == (block.timestamp - startTime / 24 * 3600) + 1 % 360:
                                                t = 0
                                                u = 0
                                                v = 0
                                                while uint8(u) < s:
                                                    require uint8(u) < uint8(auctionSize)
                                                    _830 = mem[(32 * uint8(u)) + 228]
                                                    if prizes[stor2][address(mem[(32 * uint8(u)) + 228])]:
                                                        mem[0] = mem[(32 * uint8(u)) + 240 len 20]
                                                        mem[32] = sha3(round, 11)
                                                        prizes[stor2][address(mem[(32 * uint8(u)) + 228])] += 2 * prize / s
                                                        t = mem[(32 * uint8(u)) + 228]
                                                        u = u + 1
                                                        v = v
                                                        continue 
                                                    require v < s, mem[(32 * s) + 292 len 0]
                                                    mem[(_msize + 260) + (32 * v) + 32] = mem[(32 * uint8(u)) + 240 len 20]
                                                    mem[0] = address(_830)
                                                    mem[32] = sha3(round, 11)
                                                    prizes[stor2][address(_830)] += 2 * prize / s
                                                    t = _830
                                                    u = u + 1
                                                    v = v + 1
                                                    continue 
                                                u = 0
                                                w = t
                                                w = 0
                                                while uint8(w) < v:
                                                    require uint8(w) < mem[_msize + 260]
                                                    _1816 = mem[(_msize + 260) + (32 * uint8(w)) + 32]
                                                    mem[0] = mem[(_msize + 260) + (32 * uint8(w)) + 44 len 20]
                                                    mem[32] = sha3(round, 11)
                                                    mem[(_msize + 260) + (32 * s) + 36] = mem[(_msize + 260) + (32 * uint8(w)) + 44 len 20]
                                                    mem[(_msize + 260) + (32 * s) + 68] = prizes[stor2][address(_1816)]
                                                    call address(elcoinAddress).0xf8b71c64 with:
                                                         gas gas_remaining - 25050 wei
                                                        args mem[(_msize + 260) + (32 * s) + 36], prizes[stor2][address(_1816)]
                                                    mem[(_msize + 260) + (32 * s) + 32] = ext_call.return_data[0]
                                                    require ext_call.success
                                                    if ext_call.return_data[0]:
                                                        mem[(_msize + 260) + (32 * s) + 32] = prizes[stor2][address(_1816)]
                                                        mem[(_msize + 260) + (32 * s) + 64] = uint8(w)
                                                        emit Reward(prizes[stor2][address(_1816)], uint8(w), address(_1816), round);
                                                    u = prizes[stor2][address(_1816)]
                                                    w = _1816
                                                    w = w + 1
                                                    continue 
                                            else:
                                                t = 0
                                                u = 0
                                                v = 0
                                                while uint8(u) < s:
                                                    require uint8(u) < uint8(auctionSize)
                                                    _833 = mem[(32 * uint8(u)) + 228]
                                                    if prizes[stor2][address(mem[(32 * uint8(u)) + 228])]:
                                                        mem[0] = mem[(32 * uint8(u)) + 240 len 20]
                                                        mem[32] = sha3(round, 11)
                                                        prizes[stor2][address(mem[(32 * uint8(u)) + 228])] += prize / s
                                                        t = mem[(32 * uint8(u)) + 228]
                                                        u = u + 1
                                                        v = v
                                                        continue 
                                                    require v < s, mem[(32 * s) + 292 len 0]
                                                    mem[(_msize + 260) + (32 * v) + 32] = mem[(32 * uint8(u)) + 240 len 20]
                                                    mem[0] = address(_833)
                                                    mem[32] = sha3(round, 11)
                                                    prizes[stor2][address(_833)] += prize / s
                                                    t = _833
                                                    u = u + 1
                                                    v = v + 1
                                                    continue 
                                                u = 0
                                                w = t
                                                w = 0
                                                while uint8(w) < v:
                                                    require uint8(w) < mem[_msize + 260]
                                                    _1823 = mem[(_msize + 260) + (32 * uint8(w)) + 32]
                                                    mem[0] = mem[(_msize + 260) + (32 * uint8(w)) + 44 len 20]
                                                    mem[32] = sha3(round, 11)
                                                    mem[(_msize + 260) + (32 * s) + 36] = mem[(_msize + 260) + (32 * uint8(w)) + 44 len 20]
                                                    mem[(_msize + 260) + (32 * s) + 68] = prizes[stor2][address(_1823)]
                                                    call address(elcoinAddress).0xf8b71c64 with:
                                                         gas gas_remaining - 25050 wei
                                                        args mem[(_msize + 260) + (32 * s) + 36], prizes[stor2][address(_1823)]
                                                    mem[(_msize + 260) + (32 * s) + 32] = ext_call.return_data[0]
                                                    require ext_call.success
                                                    if ext_call.return_data[0]:
                                                        mem[(_msize + 260) + (32 * s) + 32] = prizes[stor2][address(_1823)]
                                                        mem[(_msize + 260) + (32 * s) + 64] = uint8(w)
                                                        emit Reward(prizes[stor2][address(_1823)], uint8(w), address(_1823), round);
                                                    u = prizes[stor2][address(_1823)]
                                                    w = _1823
                                                    w = w + 1
                                                    continue 
                                counter = 0
                                round++
                                stor4.length = 0
                                idx = code.data[2867 len 32]
                                while code.data[2867 len 32] + (2 * stor4.length) > idx:
                                    stor[idx] = 0
                                    stor1[idx] = 0
                                    idx = idx + 2
                                    continue 
                        else:
                            if counter <= periodicity - uint8(auctionSize):
                                if counter >= periodicity:
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
                                            require s < uint8(auctionSize)
                                            mem[(32 * s) + 228] = stor[code.data[2867 len 32] + (2 * uint8(idx))]
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
                                        require 0 < uint8(auctionSize)
                                        mem[228] = stor[code.data[2867 len 32] + (2 * uint8(idx))]
                                        idx = idx + 1
                                        s = 1
                                        t = stor568A[2 * uint8(idx)]
                                        continue 
                                    if s != 0:
                                        if msize < (32 * uint8(auctionSize)) + 228:
                                            mem[(32 * uint8(auctionSize)) + 228] = s
                                            if startTime > block.timestamp:
                                                t = 0
                                                u = 0
                                                v = 0
                                                while uint8(u) < s:
                                                    require uint8(u) < uint8(auctionSize)
                                                    _863 = mem[(32 * uint8(u)) + 228]
                                                    if prizes[stor2][address(mem[(32 * uint8(u)) + 228])]:
                                                        mem[0] = mem[(32 * uint8(u)) + 240 len 20]
                                                        mem[32] = sha3(round, 11)
                                                        prizes[stor2][address(mem[(32 * uint8(u)) + 228])] += prize / s
                                                        t = mem[(32 * uint8(u)) + 228]
                                                        u = u + 1
                                                        v = v
                                                        continue 
                                                    require v < s
                                                    mem[(32 * uint8(auctionSize)) + (32 * v) + 260] = mem[(32 * uint8(u)) + 240 len 20]
                                                    mem[0] = address(_863)
                                                    mem[32] = sha3(round, 11)
                                                    prizes[stor2][address(_863)] += prize / s
                                                    t = _863
                                                    u = u + 1
                                                    v = v + 1
                                                    continue 
                                                u = 0
                                                w = t
                                                w = 0
                                                while uint8(w) < v:
                                                    require uint8(w) < s
                                                    _1893 = mem[(32 * uint8(auctionSize)) + (32 * uint8(w)) + 260]
                                                    mem[0] = mem[(32 * uint8(auctionSize)) + (32 * uint8(w)) + 272 len 20]
                                                    mem[32] = sha3(round, 11)
                                                    mem[(32 * uint8(auctionSize)) + (32 * s) + 264] = mem[(32 * uint8(auctionSize)) + (32 * uint8(w)) + 272 len 20]
                                                    mem[(32 * uint8(auctionSize)) + (32 * s) + 296] = prizes[stor2][address(_1893)]
                                                    call address(elcoinAddress).0xf8b71c64 with:
                                                         gas gas_remaining - 25050 wei
                                                        args mem[(32 * uint8(auctionSize)) + (32 * s) + 264], prizes[stor2][address(_1893)]
                                                    mem[(32 * uint8(auctionSize)) + (32 * s) + 260] = ext_call.return_data[0]
                                                    require ext_call.success
                                                    if ext_call.return_data[0]:
                                                        mem[(32 * uint8(auctionSize)) + (32 * s) + 260] = prizes[stor2][address(_1893)]
                                                        mem[(32 * uint8(auctionSize)) + (32 * s) + 292] = uint8(w)
                                                        emit Reward(prizes[stor2][address(_1893)], uint8(w), address(_1893), round);
                                                    u = prizes[stor2][address(_1893)]
                                                    w = _1893
                                                    w = w + 1
                                                    continue 
                                            else:
                                                if 0 == (block.timestamp - startTime / 24 * 3600) + 1 % 360:
                                                    t = 0
                                                    u = 0
                                                    v = 0
                                                    while uint8(u) < s:
                                                        require uint8(u) < uint8(auctionSize)
                                                        _857 = mem[(32 * uint8(u)) + 228]
                                                        if prizes[stor2][address(mem[(32 * uint8(u)) + 228])]:
                                                            mem[0] = mem[(32 * uint8(u)) + 240 len 20]
                                                            mem[32] = sha3(round, 11)
                                                            prizes[stor2][address(mem[(32 * uint8(u)) + 228])] += 2 * prize / s
                                                            t = mem[(32 * uint8(u)) + 228]
                                                            u = u + 1
                                                            v = v
                                                            continue 
                                                        require v < s
                                                        mem[(32 * uint8(auctionSize)) + (32 * v) + 260] = mem[(32 * uint8(u)) + 240 len 20]
                                                        mem[0] = address(_857)
                                                        mem[32] = sha3(round, 11)
                                                        prizes[stor2][address(_857)] += 2 * prize / s
                                                        t = _857
                                                        u = u + 1
                                                        v = v + 1
                                                        continue 
                                                    u = 0
                                                    w = t
                                                    w = 0
                                                    while uint8(w) < v:
                                                        require uint8(w) < s
                                                        _1879 = mem[(32 * uint8(auctionSize)) + (32 * uint8(w)) + 260]
                                                        mem[0] = mem[(32 * uint8(auctionSize)) + (32 * uint8(w)) + 272 len 20]
                                                        mem[32] = sha3(round, 11)
                                                        mem[(32 * uint8(auctionSize)) + (32 * s) + 264] = mem[(32 * uint8(auctionSize)) + (32 * uint8(w)) + 272 len 20]
                                                        mem[(32 * uint8(auctionSize)) + (32 * s) + 296] = prizes[stor2][address(_1879)]
                                                        call address(elcoinAddress).0xf8b71c64 with:
                                                             gas gas_remaining - 25050 wei
                                                            args mem[(32 * uint8(auctionSize)) + (32 * s) + 264], prizes[stor2][address(_1879)]
                                                        mem[(32 * uint8(auctionSize)) + (32 * s) + 260] = ext_call.return_data[0]
                                                        require ext_call.success
                                                        if ext_call.return_data[0]:
                                                            mem[(32 * uint8(auctionSize)) + (32 * s) + 260] = prizes[stor2][address(_1879)]
                                                            mem[(32 * uint8(auctionSize)) + (32 * s) + 292] = uint8(w)
                                                            emit Reward(prizes[stor2][address(_1879)], uint8(w), address(_1879), round);
                                                        u = prizes[stor2][address(_1879)]
                                                        w = _1879
                                                        w = w + 1
                                                        continue 
                                                else:
                                                    t = 0
                                                    u = 0
                                                    v = 0
                                                    while uint8(u) < s:
                                                        require uint8(u) < uint8(auctionSize)
                                                        _860 = mem[(32 * uint8(u)) + 228]
                                                        if prizes[stor2][address(mem[(32 * uint8(u)) + 228])]:
                                                            mem[0] = mem[(32 * uint8(u)) + 240 len 20]
                                                            mem[32] = sha3(round, 11)
                                                            prizes[stor2][address(mem[(32 * uint8(u)) + 228])] += prize / s
                                                            t = mem[(32 * uint8(u)) + 228]
                                                            u = u + 1
                                                            v = v
                                                            continue 
                                                        require v < s
                                                        mem[(32 * uint8(auctionSize)) + (32 * v) + 260] = mem[(32 * uint8(u)) + 240 len 20]
                                                        mem[0] = address(_860)
                                                        mem[32] = sha3(round, 11)
                                                        prizes[stor2][address(_860)] += prize / s
                                                        t = _860
                                                        u = u + 1
                                                        v = v + 1
                                                        continue 
                                                    u = 0
                                                    w = t
                                                    w = 0
                                                    while uint8(w) < v:
                                                        require uint8(w) < s
                                                        _1886 = mem[(32 * uint8(auctionSize)) + (32 * uint8(w)) + 260]
                                                        mem[0] = mem[(32 * uint8(auctionSize)) + (32 * uint8(w)) + 272 len 20]
                                                        mem[32] = sha3(round, 11)
                                                        mem[(32 * uint8(auctionSize)) + (32 * s) + 264] = mem[(32 * uint8(auctionSize)) + (32 * uint8(w)) + 272 len 20]
                                                        mem[(32 * uint8(auctionSize)) + (32 * s) + 296] = prizes[stor2][address(_1886)]
                                                        call address(elcoinAddress).0xf8b71c64 with:
                                                             gas gas_remaining - 25050 wei
                                                            args mem[(32 * uint8(auctionSize)) + (32 * s) + 264], prizes[stor2][address(_1886)]
                                                        mem[(32 * uint8(auctionSize)) + (32 * s) + 260] = ext_call.return_data[0]
                                                        require ext_call.success
                                                        if ext_call.return_data[0]:
                                                            mem[(32 * uint8(auctionSize)) + (32 * s) + 260] = prizes[stor2][address(_1886)]
                                                            mem[(32 * uint8(auctionSize)) + (32 * s) + 292] = uint8(w)
                                                            emit Reward(prizes[stor2][address(_1886)], uint8(w), address(_1886), round);
                                                        u = prizes[stor2][address(_1886)]
                                                        w = _1886
                                                        w = w + 1
                                                        continue 
                                        else:
                                            _msize = max(0, 32 * s)
                                            mem[_msize + 260] = s
                                            if startTime > block.timestamp:
                                                t = 0
                                                u = 0
                                                v = 0
                                                while uint8(u) < s:
                                                    require uint8(u) < uint8(auctionSize)
                                                    _872 = mem[(32 * uint8(u)) + 228]
                                                    if prizes[stor2][address(mem[(32 * uint8(u)) + 228])]:
                                                        mem[0] = mem[(32 * uint8(u)) + 240 len 20]
                                                        mem[32] = sha3(round, 11)
                                                        prizes[stor2][address(mem[(32 * uint8(u)) + 228])] += prize / s
                                                        t = mem[(32 * uint8(u)) + 228]
                                                        u = u + 1
                                                        v = v
                                                        continue 
                                                    require v < s, mem[(32 * s) + 292 len 0]
                                                    mem[(_msize + 260) + (32 * v) + 32] = mem[(32 * uint8(u)) + 240 len 20]
                                                    mem[0] = address(_872)
                                                    mem[32] = sha3(round, 11)
                                                    prizes[stor2][address(_872)] += prize / s
                                                    t = _872
                                                    u = u + 1
                                                    v = v + 1
                                                    continue 
                                                u = 0
                                                w = t
                                                w = 0
                                                while uint8(w) < v:
                                                    require uint8(w) < mem[_msize + 260]
                                                    _1914 = mem[(_msize + 260) + (32 * uint8(w)) + 32]
                                                    mem[0] = mem[(_msize + 260) + (32 * uint8(w)) + 44 len 20]
                                                    mem[32] = sha3(round, 11)
                                                    mem[(_msize + 260) + (32 * s) + 36] = mem[(_msize + 260) + (32 * uint8(w)) + 44 len 20]
                                                    mem[(_msize + 260) + (32 * s) + 68] = prizes[stor2][address(_1914)]
                                                    call address(elcoinAddress).0xf8b71c64 with:
                                                         gas gas_remaining - 25050 wei
                                                        args mem[(_msize + 260) + (32 * s) + 36], prizes[stor2][address(_1914)]
                                                    mem[(_msize + 260) + (32 * s) + 32] = ext_call.return_data[0]
                                                    require ext_call.success
                                                    if ext_call.return_data[0]:
                                                        mem[(_msize + 260) + (32 * s) + 32] = prizes[stor2][address(_1914)]
                                                        mem[(_msize + 260) + (32 * s) + 64] = uint8(w)
                                                        emit Reward(prizes[stor2][address(_1914)], uint8(w), address(_1914), round);
                                                    u = prizes[stor2][address(_1914)]
                                                    w = _1914
                                                    w = w + 1
                                                    continue 
                                            else:
                                                if 0 == (block.timestamp - startTime / 24 * 3600) + 1 % 360:
                                                    t = 0
                                                    u = 0
                                                    v = 0
                                                    while uint8(u) < s:
                                                        require uint8(u) < uint8(auctionSize)
                                                        _866 = mem[(32 * uint8(u)) + 228]
                                                        if prizes[stor2][address(mem[(32 * uint8(u)) + 228])]:
                                                            mem[0] = mem[(32 * uint8(u)) + 240 len 20]
                                                            mem[32] = sha3(round, 11)
                                                            prizes[stor2][address(mem[(32 * uint8(u)) + 228])] += 2 * prize / s
                                                            t = mem[(32 * uint8(u)) + 228]
                                                            u = u + 1
                                                            v = v
                                                            continue 
                                                        require v < s, mem[(32 * s) + 292 len 0]
                                                        mem[(_msize + 260) + (32 * v) + 32] = mem[(32 * uint8(u)) + 240 len 20]
                                                        mem[0] = address(_866)
                                                        mem[32] = sha3(round, 11)
                                                        prizes[stor2][address(_866)] += 2 * prize / s
                                                        t = _866
                                                        u = u + 1
                                                        v = v + 1
                                                        continue 
                                                    u = 0
                                                    w = t
                                                    w = 0
                                                    while uint8(w) < v:
                                                        require uint8(w) < mem[_msize + 260]
                                                        _1900 = mem[(_msize + 260) + (32 * uint8(w)) + 32]
                                                        mem[0] = mem[(_msize + 260) + (32 * uint8(w)) + 44 len 20]
                                                        mem[32] = sha3(round, 11)
                                                        mem[(_msize + 260) + (32 * s) + 36] = mem[(_msize + 260) + (32 * uint8(w)) + 44 len 20]
                                                        mem[(_msize + 260) + (32 * s) + 68] = prizes[stor2][address(_1900)]
                                                        call address(elcoinAddress).0xf8b71c64 with:
                                                             gas gas_remaining - 25050 wei
                                                            args mem[(_msize + 260) + (32 * s) + 36], prizes[stor2][address(_1900)]
                                                        mem[(_msize + 260) + (32 * s) + 32] = ext_call.return_data[0]
                                                        require ext_call.success
                                                        if ext_call.return_data[0]:
                                                            mem[(_msize + 260) + (32 * s) + 32] = prizes[stor2][address(_1900)]
                                                            mem[(_msize + 260) + (32 * s) + 64] = uint8(w)
                                                            emit Reward(prizes[stor2][address(_1900)], uint8(w), address(_1900), round);
                                                        u = prizes[stor2][address(_1900)]
                                                        w = _1900
                                                        w = w + 1
                                                        continue 
                                                else:
                                                    t = 0
                                                    u = 0
                                                    v = 0
                                                    while uint8(u) < s:
                                                        require uint8(u) < uint8(auctionSize)
                                                        _869 = mem[(32 * uint8(u)) + 228]
                                                        if prizes[stor2][address(mem[(32 * uint8(u)) + 228])]:
                                                            mem[0] = mem[(32 * uint8(u)) + 240 len 20]
                                                            mem[32] = sha3(round, 11)
                                                            prizes[stor2][address(mem[(32 * uint8(u)) + 228])] += prize / s
                                                            t = mem[(32 * uint8(u)) + 228]
                                                            u = u + 1
                                                            v = v
                                                            continue 
                                                        require v < s, mem[(32 * s) + 292 len 0]
                                                        mem[(_msize + 260) + (32 * v) + 32] = mem[(32 * uint8(u)) + 240 len 20]
                                                        mem[0] = address(_869)
                                                        mem[32] = sha3(round, 11)
                                                        prizes[stor2][address(_869)] += prize / s
                                                        t = _869
                                                        u = u + 1
                                                        v = v + 1
                                                        continue 
                                                    u = 0
                                                    w = t
                                                    w = 0
                                                    while uint8(w) < v:
                                                        require uint8(w) < mem[_msize + 260]
                                                        _1907 = mem[(_msize + 260) + (32 * uint8(w)) + 32]
                                                        mem[0] = mem[(_msize + 260) + (32 * uint8(w)) + 44 len 20]
                                                        mem[32] = sha3(round, 11)
                                                        mem[(_msize + 260) + (32 * s) + 36] = mem[(_msize + 260) + (32 * uint8(w)) + 44 len 20]
                                                        mem[(_msize + 260) + (32 * s) + 68] = prizes[stor2][address(_1907)]
                                                        call address(elcoinAddress).0xf8b71c64 with:
                                                             gas gas_remaining - 25050 wei
                                                            args mem[(_msize + 260) + (32 * s) + 36], prizes[stor2][address(_1907)]
                                                        mem[(_msize + 260) + (32 * s) + 32] = ext_call.return_data[0]
                                                        require ext_call.success
                                                        if ext_call.return_data[0]:
                                                            mem[(_msize + 260) + (32 * s) + 32] = prizes[stor2][address(_1907)]
                                                            mem[(_msize + 260) + (32 * s) + 64] = uint8(w)
                                                            emit Reward(prizes[stor2][address(_1907)], uint8(w), address(_1907), round);
                                                        u = prizes[stor2][address(_1907)]
                                                        w = _1907
                                                        w = w + 1
                                                        continue 
                                    counter = 0
                                    round++
                                    stor4.length = 0
                                    idx = code.data[2867 len 32]
                                    while code.data[2867 len 32] + (2 * stor4.length) > idx:
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
                                                require s < uint8(auctionSize)
                                                mem[(32 * s) + 256] = stor[code.data[2867 len 32] + (2 * uint8(idx))]
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
                                            require 0 < uint8(auctionSize)
                                            mem[256] = stor[code.data[2867 len 32] + (2 * uint8(idx))]
                                            idx = idx + 1
                                            s = 1
                                            t = stor568A[2 * uint8(idx)]
                                            continue 
                                        if s != 0:
                                            if msize < (32 * uint8(auctionSize)) + 256:
                                                mem[(32 * uint8(auctionSize)) + 256] = s
                                                if startTime > block.timestamp:
                                                    t = 0
                                                    u = 0
                                                    v = 0
                                                    while uint8(u) < s:
                                                        require uint8(u) < uint8(auctionSize)
                                                        _899 = mem[(32 * uint8(u)) + 256]
                                                        if prizes[stor2][address(mem[(32 * uint8(u)) + 256])]:
                                                            mem[0] = mem[(32 * uint8(u)) + 268 len 20]
                                                            mem[32] = sha3(round, 11)
                                                            prizes[stor2][address(mem[(32 * uint8(u)) + 256])] += prize / s
                                                            t = mem[(32 * uint8(u)) + 256]
                                                            u = u + 1
                                                            v = v
                                                            continue 
                                                        require v < s
                                                        mem[(32 * uint8(auctionSize)) + (32 * v) + 288] = mem[(32 * uint8(u)) + 268 len 20]
                                                        mem[0] = address(_899)
                                                        mem[32] = sha3(round, 11)
                                                        prizes[stor2][address(_899)] += prize / s
                                                        t = _899
                                                        u = u + 1
                                                        v = v + 1
                                                        continue 
                                                    u = 0
                                                    w = t
                                                    w = 0
                                                    while uint8(w) < v:
                                                        require uint8(w) < s
                                                        _1977 = mem[(32 * uint8(auctionSize)) + (32 * uint8(w)) + 288]
                                                        mem[0] = mem[(32 * uint8(auctionSize)) + (32 * uint8(w)) + 300 len 20]
                                                        mem[32] = sha3(round, 11)
                                                        mem[(32 * uint8(auctionSize)) + (32 * s) + 292] = mem[(32 * uint8(auctionSize)) + (32 * uint8(w)) + 300 len 20]
                                                        mem[(32 * uint8(auctionSize)) + (32 * s) + 324] = prizes[stor2][address(_1977)]
                                                        call address(elcoinAddress).0xf8b71c64 with:
                                                             gas gas_remaining - 25050 wei
                                                            args mem[(32 * uint8(auctionSize)) + (32 * s) + 292], prizes[stor2][address(_1977)]
                                                        mem[(32 * uint8(auctionSize)) + (32 * s) + 288] = ext_call.return_data[0]
                                                        require ext_call.success
                                                        if ext_call.return_data[0]:
                                                            mem[(32 * uint8(auctionSize)) + (32 * s) + 288] = prizes[stor2][address(_1977)]
                                                            mem[(32 * uint8(auctionSize)) + (32 * s) + 320] = uint8(w)
                                                            emit Reward(prizes[stor2][address(_1977)], uint8(w), address(_1977), round);
                                                        u = prizes[stor2][address(_1977)]
                                                        w = _1977
                                                        w = w + 1
                                                        continue 
                                                else:
                                                    if 0 == (block.timestamp - startTime / 24 * 3600) + 1 % 360:
                                                        t = 0
                                                        u = 0
                                                        v = 0
                                                        while uint8(u) < s:
                                                            require uint8(u) < uint8(auctionSize)
                                                            _893 = mem[(32 * uint8(u)) + 256]
                                                            if prizes[stor2][address(mem[(32 * uint8(u)) + 256])]:
                                                                mem[0] = mem[(32 * uint8(u)) + 268 len 20]
                                                                mem[32] = sha3(round, 11)
                                                                prizes[stor2][address(mem[(32 * uint8(u)) + 256])] += 2 * prize / s
                                                                t = mem[(32 * uint8(u)) + 256]
                                                                u = u + 1
                                                                v = v
                                                                continue 
                                                            require v < s
                                                            mem[(32 * uint8(auctionSize)) + (32 * v) + 288] = mem[(32 * uint8(u)) + 268 len 20]
                                                            mem[0] = address(_893)
                                                            mem[32] = sha3(round, 11)
                                                            prizes[stor2][address(_893)] += 2 * prize / s
                                                            t = _893
                                                            u = u + 1
                                                            v = v + 1
                                                            continue 
                                                        u = 0
                                                        w = t
                                                        w = 0
                                                        while uint8(w) < v:
                                                            require uint8(w) < s
                                                            _1963 = mem[(32 * uint8(auctionSize)) + (32 * uint8(w)) + 288]
                                                            mem[0] = mem[(32 * uint8(auctionSize)) + (32 * uint8(w)) + 300 len 20]
                                                            mem[32] = sha3(round, 11)
                                                            mem[(32 * uint8(auctionSize)) + (32 * s) + 292] = mem[(32 * uint8(auctionSize)) + (32 * uint8(w)) + 300 len 20]
                                                            mem[(32 * uint8(auctionSize)) + (32 * s) + 324] = prizes[stor2][address(_1963)]
                                                            call address(elcoinAddress).0xf8b71c64 with:
                                                                 gas gas_remaining - 25050 wei
                                                                args mem[(32 * uint8(auctionSize)) + (32 * s) + 292], prizes[stor2][address(_1963)]
                                                            mem[(32 * uint8(auctionSize)) + (32 * s) + 288] = ext_call.return_data[0]
                                                            require ext_call.success
                                                            if ext_call.return_data[0]:
                                                                mem[(32 * uint8(auctionSize)) + (32 * s) + 288] = prizes[stor2][address(_1963)]
                                                                mem[(32 * uint8(auctionSize)) + (32 * s) + 320] = uint8(w)
                                                                emit Reward(prizes[stor2][address(_1963)], uint8(w), address(_1963), round);
                                                            u = prizes[stor2][address(_1963)]
                                                            w = _1963
                                                            w = w + 1
                                                            continue 
                                                    else:
                                                        t = 0
                                                        u = 0
                                                        v = 0
                                                        while uint8(u) < s:
                                                            require uint8(u) < uint8(auctionSize)
                                                            _896 = mem[(32 * uint8(u)) + 256]
                                                            if prizes[stor2][address(mem[(32 * uint8(u)) + 256])]:
                                                                mem[0] = mem[(32 * uint8(u)) + 268 len 20]
                                                                mem[32] = sha3(round, 11)
                                                                prizes[stor2][address(mem[(32 * uint8(u)) + 256])] += prize / s
                                                                t = mem[(32 * uint8(u)) + 256]
                                                                u = u + 1
                                                                v = v
                                                                continue 
                                                            require v < s
                                                            mem[(32 * uint8(auctionSize)) + (32 * v) + 288] = mem[(32 * uint8(u)) + 268 len 20]
                                                            mem[0] = address(_896)
                                                            mem[32] = sha3(round, 11)
                                                            prizes[stor2][address(_896)] += prize / s
                                                            t = _896
                                                            u = u + 1
                                                            v = v + 1
                                                            continue 
                                                        u = 0
                                                        w = t
                                                        w = 0
                                                        while uint8(w) < v:
                                                            require uint8(w) < s
                                                            _1970 = mem[(32 * uint8(auctionSize)) + (32 * uint8(w)) + 288]
                                                            mem[0] = mem[(32 * uint8(auctionSize)) + (32 * uint8(w)) + 300 len 20]
                                                            mem[32] = sha3(round, 11)
                                                            mem[(32 * uint8(auctionSize)) + (32 * s) + 292] = mem[(32 * uint8(auctionSize)) + (32 * uint8(w)) + 300 len 20]
                                                            mem[(32 * uint8(auctionSize)) + (32 * s) + 324] = prizes[stor2][address(_1970)]
                                                            call address(elcoinAddress).0xf8b71c64 with:
                                                                 gas gas_remaining - 25050 wei
                                                                args mem[(32 * uint8(auctionSize)) + (32 * s) + 292], prizes[stor2][address(_1970)]
                                                            mem[(32 * uint8(auctionSize)) + (32 * s) + 288] = ext_call.return_data[0]
                                                            require ext_call.success
                                                            if ext_call.return_data[0]:
                                                                mem[(32 * uint8(auctionSize)) + (32 * s) + 288] = prizes[stor2][address(_1970)]
                                                                mem[(32 * uint8(auctionSize)) + (32 * s) + 320] = uint8(w)
                                                                emit Reward(prizes[stor2][address(_1970)], uint8(w), address(_1970), round);
                                                            u = prizes[stor2][address(_1970)]
                                                            w = _1970
                                                            w = w + 1
                                                            continue 
                                            else:
                                                _msize = max(0, 32 * s)
                                                mem[_msize + 288] = s
                                                if startTime > block.timestamp:
                                                    t = 0
                                                    u = 0
                                                    v = 0
                                                    while uint8(u) < s:
                                                        require uint8(u) < uint8(auctionSize)
                                                        _908 = mem[(32 * uint8(u)) + 256]
                                                        if prizes[stor2][address(mem[(32 * uint8(u)) + 256])]:
                                                            mem[0] = mem[(32 * uint8(u)) + 268 len 20]
                                                            mem[32] = sha3(round, 11)
                                                            prizes[stor2][address(mem[(32 * uint8(u)) + 256])] += prize / s
                                                            t = mem[(32 * uint8(u)) + 256]
                                                            u = u + 1
                                                            v = v
                                                            continue 
                                                        require v < s, mem[(32 * s) + 320 len 0]
                                                        mem[(_msize + 288) + (32 * v) + 32] = mem[(32 * uint8(u)) + 268 len 20]
                                                        mem[0] = address(_908)
                                                        mem[32] = sha3(round, 11)
                                                        prizes[stor2][address(_908)] += prize / s
                                                        t = _908
                                                        u = u + 1
                                                        v = v + 1
                                                        continue 
                                                    u = 0
                                                    w = t
                                                    w = 0
                                                    while uint8(w) < v:
                                                        require uint8(w) < mem[_msize + 288]
                                                        _1998 = mem[(_msize + 288) + (32 * uint8(w)) + 32]
                                                        mem[0] = mem[(_msize + 288) + (32 * uint8(w)) + 44 len 20]
                                                        mem[32] = sha3(round, 11)
                                                        mem[(_msize + 288) + (32 * s) + 36] = mem[(_msize + 288) + (32 * uint8(w)) + 44 len 20]
                                                        mem[(_msize + 288) + (32 * s) + 68] = prizes[stor2][address(_1998)]
                                                        call address(elcoinAddress).0xf8b71c64 with:
                                                             gas gas_remaining - 25050 wei
                                                            args mem[(_msize + 288) + (32 * s) + 36], prizes[stor2][address(_1998)]
                                                        mem[(_msize + 288) + (32 * s) + 32] = ext_call.return_data[0]
                                                        require ext_call.success
                                                        if ext_call.return_data[0]:
                                                            mem[(_msize + 288) + (32 * s) + 32] = prizes[stor2][address(_1998)]
                                                            mem[(_msize + 288) + (32 * s) + 64] = uint8(w)
                                                            emit Reward(prizes[stor2][address(_1998)], uint8(w), address(_1998), round);
                                                        u = prizes[stor2][address(_1998)]
                                                        w = _1998
                                                        w = w + 1
                                                        continue 
                                                else:
                                                    if 0 == (block.timestamp - startTime / 24 * 3600) + 1 % 360:
                                                        t = 0
                                                        u = 0
                                                        v = 0
                                                        while uint8(u) < s:
                                                            require uint8(u) < uint8(auctionSize)
                                                            _902 = mem[(32 * uint8(u)) + 256]
                                                            if prizes[stor2][address(mem[(32 * uint8(u)) + 256])]:
                                                                mem[0] = mem[(32 * uint8(u)) + 268 len 20]
                                                                mem[32] = sha3(round, 11)
                                                                prizes[stor2][address(mem[(32 * uint8(u)) + 256])] += 2 * prize / s
                                                                t = mem[(32 * uint8(u)) + 256]
                                                                u = u + 1
                                                                v = v
                                                                continue 
                                                            require v < s, mem[(32 * s) + 320 len 0]
                                                            mem[(_msize + 288) + (32 * v) + 32] = mem[(32 * uint8(u)) + 268 len 20]
                                                            mem[0] = address(_902)
                                                            mem[32] = sha3(round, 11)
                                                            prizes[stor2][address(_902)] += 2 * prize / s
                                                            t = _902
                                                            u = u + 1
                                                            v = v + 1
                                                            continue 
                                                        u = 0
                                                        w = t
                                                        w = 0
                                                        while uint8(w) < v:
                                                            require uint8(w) < mem[_msize + 288]
                                                            _1984 = mem[(_msize + 288) + (32 * uint8(w)) + 32]
                                                            mem[0] = mem[(_msize + 288) + (32 * uint8(w)) + 44 len 20]
                                                            mem[32] = sha3(round, 11)
                                                            mem[(_msize + 288) + (32 * s) + 36] = mem[(_msize + 288) + (32 * uint8(w)) + 44 len 20]
                                                            mem[(_msize + 288) + (32 * s) + 68] = prizes[stor2][address(_1984)]
                                                            call address(elcoinAddress).0xf8b71c64 with:
                                                                 gas gas_remaining - 25050 wei
                                                                args mem[(_msize + 288) + (32 * s) + 36], prizes[stor2][address(_1984)]
                                                            mem[(_msize + 288) + (32 * s) + 32] = ext_call.return_data[0]
                                                            require ext_call.success
                                                            if ext_call.return_data[0]:
                                                                mem[(_msize + 288) + (32 * s) + 32] = prizes[stor2][address(_1984)]
                                                                mem[(_msize + 288) + (32 * s) + 64] = uint8(w)
                                                                emit Reward(prizes[stor2][address(_1984)], uint8(w), address(_1984), round);
                                                            u = prizes[stor2][address(_1984)]
                                                            w = _1984
                                                            w = w + 1
                                                            continue 
                                                    else:
                                                        t = 0
                                                        u = 0
                                                        v = 0
                                                        while uint8(u) < s:
                                                            require uint8(u) < uint8(auctionSize)
                                                            _905 = mem[(32 * uint8(u)) + 256]
                                                            if prizes[stor2][address(mem[(32 * uint8(u)) + 256])]:
                                                                mem[0] = mem[(32 * uint8(u)) + 268 len 20]
                                                                mem[32] = sha3(round, 11)
                                                                prizes[stor2][address(mem[(32 * uint8(u)) + 256])] += prize / s
                                                                t = mem[(32 * uint8(u)) + 256]
                                                                u = u + 1
                                                                v = v
                                                                continue 
                                                            require v < s, mem[(32 * s) + 320 len 0]
                                                            mem[(_msize + 288) + (32 * v) + 32] = mem[(32 * uint8(u)) + 268 len 20]
                                                            mem[0] = address(_905)
                                                            mem[32] = sha3(round, 11)
                                                            prizes[stor2][address(_905)] += prize / s
                                                            t = _905
                                                            u = u + 1
                                                            v = v + 1
                                                            continue 
                                                        u = 0
                                                        w = t
                                                        w = 0
                                                        while uint8(w) < v:
                                                            require uint8(w) < mem[_msize + 288]
                                                            _1991 = mem[(_msize + 288) + (32 * uint8(w)) + 32]
                                                            mem[0] = mem[(_msize + 288) + (32 * uint8(w)) + 44 len 20]
                                                            mem[32] = sha3(round, 11)
                                                            mem[(_msize + 288) + (32 * s) + 36] = mem[(_msize + 288) + (32 * uint8(w)) + 44 len 20]
                                                            mem[(_msize + 288) + (32 * s) + 68] = prizes[stor2][address(_1991)]
                                                            call address(elcoinAddress).0xf8b71c64 with:
                                                                 gas gas_remaining - 25050 wei
                                                                args mem[(_msize + 288) + (32 * s) + 36], prizes[stor2][address(_1991)]
                                                            mem[(_msize + 288) + (32 * s) + 32] = ext_call.return_data[0]
                                                            require ext_call.success
                                                            if ext_call.return_data[0]:
                                                                mem[(_msize + 288) + (32 * s) + 32] = prizes[stor2][address(_1991)]
                                                                mem[(_msize + 288) + (32 * s) + 64] = uint8(w)
                                                                emit Reward(prizes[stor2][address(_1991)], uint8(w), address(_1991), round);
                                                            u = prizes[stor2][address(_1991)]
                                                            w = _1991
                                                            w = w + 1
                                                            continue 
                                        counter = 0
                                        round++
                                        stor4.length = 0
                                        idx = code.data[2867 len 32]
                                        while code.data[2867 len 32] + (2 * stor4.length) > idx:
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
                                                require s < uint8(auctionSize)
                                                mem[(32 * s) + 256] = stor[code.data[2867 len 32] + (2 * uint8(idx))]
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
                                            require 0 < uint8(auctionSize)
                                            mem[256] = stor[code.data[2867 len 32] + (2 * uint8(idx))]
                                            idx = idx + 1
                                            s = 1
                                            t = stor568A[2 * uint8(idx)]
                                            continue 
                                        if s != 0:
                                            if msize < (32 * uint8(auctionSize)) + 256:
                                                mem[(32 * uint8(auctionSize)) + 256] = s
                                                if startTime > block.timestamp:
                                                    t = 0
                                                    u = 0
                                                    v = 0
                                                    while uint8(u) < s:
                                                        require uint8(u) < uint8(auctionSize)
                                                        _2027 = mem[(32 * uint8(u)) + 256]
                                                        if prizes[stor2][address(mem[(32 * uint8(u)) + 256])]:
                                                            mem[0] = mem[(32 * uint8(u)) + 268 len 20]
                                                            mem[32] = sha3(round, 11)
                                                            prizes[stor2][address(mem[(32 * uint8(u)) + 256])] += prize / s
                                                            t = mem[(32 * uint8(u)) + 256]
                                                            u = u + 1
                                                            v = v
                                                            continue 
                                                        require v < s
                                                        mem[(32 * uint8(auctionSize)) + (32 * v) + 288] = mem[(32 * uint8(u)) + 268 len 20]
                                                        mem[0] = address(_2027)
                                                        mem[32] = sha3(round, 11)
                                                        prizes[stor2][address(_2027)] += prize / s
                                                        t = _2027
                                                        u = u + 1
                                                        v = v + 1
                                                        continue 
                                                    u = 0
                                                    w = t
                                                    w = 0
                                                    while uint8(w) < v:
                                                        require uint8(w) < s
                                                        _2457 = mem[(32 * uint8(auctionSize)) + (32 * uint8(w)) + 288]
                                                        mem[0] = mem[(32 * uint8(auctionSize)) + (32 * uint8(w)) + 300 len 20]
                                                        mem[32] = sha3(round, 11)
                                                        mem[(32 * uint8(auctionSize)) + (32 * s) + 292] = mem[(32 * uint8(auctionSize)) + (32 * uint8(w)) + 300 len 20]
                                                        mem[(32 * uint8(auctionSize)) + (32 * s) + 324] = prizes[stor2][address(_2457)]
                                                        call address(elcoinAddress).0xf8b71c64 with:
                                                             gas gas_remaining - 25050 wei
                                                            args mem[(32 * uint8(auctionSize)) + (32 * s) + 292], prizes[stor2][address(_2457)]
                                                        mem[(32 * uint8(auctionSize)) + (32 * s) + 288] = ext_call.return_data[0]
                                                        require ext_call.success
                                                        if ext_call.return_data[0]:
                                                            mem[(32 * uint8(auctionSize)) + (32 * s) + 288] = prizes[stor2][address(_2457)]
                                                            mem[(32 * uint8(auctionSize)) + (32 * s) + 320] = uint8(w)
                                                            emit Reward(prizes[stor2][address(_2457)], uint8(w), address(_2457), round);
                                                        u = prizes[stor2][address(_2457)]
                                                        w = _2457
                                                        w = w + 1
                                                        continue 
                                                else:
                                                    if 0 == (block.timestamp - startTime / 24 * 3600) + 1 % 360:
                                                        t = 0
                                                        u = 0
                                                        v = 0
                                                        while uint8(u) < s:
                                                            require uint8(u) < uint8(auctionSize)
                                                            _2021 = mem[(32 * uint8(u)) + 256]
                                                            if prizes[stor2][address(mem[(32 * uint8(u)) + 256])]:
                                                                mem[0] = mem[(32 * uint8(u)) + 268 len 20]
                                                                mem[32] = sha3(round, 11)
                                                                prizes[stor2][address(mem[(32 * uint8(u)) + 256])] += 2 * prize / s
                                                                t = mem[(32 * uint8(u)) + 256]
                                                                u = u + 1
                                                                v = v
                                                                continue 
                                                            require v < s
                                                            mem[(32 * uint8(auctionSize)) + (32 * v) + 288] = mem[(32 * uint8(u)) + 268 len 20]
                                                            mem[0] = address(_2021)
                                                            mem[32] = sha3(round, 11)
                                                            prizes[stor2][address(_2021)] += 2 * prize / s
                                                            t = _2021
                                                            u = u + 1
                                                            v = v + 1
                                                            continue 
                                                        u = 0
                                                        w = t
                                                        w = 0
                                                        while uint8(w) < v:
                                                            require uint8(w) < s
                                                            _2443 = mem[(32 * uint8(auctionSize)) + (32 * uint8(w)) + 288]
                                                            mem[0] = mem[(32 * uint8(auctionSize)) + (32 * uint8(w)) + 300 len 20]
                                                            mem[32] = sha3(round, 11)
                                                            mem[(32 * uint8(auctionSize)) + (32 * s) + 292] = mem[(32 * uint8(auctionSize)) + (32 * uint8(w)) + 300 len 20]
                                                            mem[(32 * uint8(auctionSize)) + (32 * s) + 324] = prizes[stor2][address(_2443)]
                                                            call address(elcoinAddress).0xf8b71c64 with:
                                                                 gas gas_remaining - 25050 wei
                                                                args mem[(32 * uint8(auctionSize)) + (32 * s) + 292], prizes[stor2][address(_2443)]
                                                            mem[(32 * uint8(auctionSize)) + (32 * s) + 288] = ext_call.return_data[0]
                                                            require ext_call.success
                                                            if ext_call.return_data[0]:
                                                                mem[(32 * uint8(auctionSize)) + (32 * s) + 288] = prizes[stor2][address(_2443)]
                                                                mem[(32 * uint8(auctionSize)) + (32 * s) + 320] = uint8(w)
                                                                emit Reward(prizes[stor2][address(_2443)], uint8(w), address(_2443), round);
                                                            u = prizes[stor2][address(_2443)]
                                                            w = _2443
                                                            w = w + 1
                                                            continue 
                                                    else:
                                                        t = 0
                                                        u = 0
                                                        v = 0
                                                        while uint8(u) < s:
                                                            require uint8(u) < uint8(auctionSize)
                                                            _2024 = mem[(32 * uint8(u)) + 256]
                                                            if prizes[stor2][address(mem[(32 * uint8(u)) + 256])]:
                                                                mem[0] = mem[(32 * uint8(u)) + 268 len 20]
                                                                mem[32] = sha3(round, 11)
                                                                prizes[stor2][address(mem[(32 * uint8(u)) + 256])] += prize / s
                                                                t = mem[(32 * uint8(u)) + 256]
                                                                u = u + 1
                                                                v = v
                                                                continue 
                                                            require v < s
                                                            mem[(32 * uint8(auctionSize)) + (32 * v) + 288] = mem[(32 * uint8(u)) + 268 len 20]
                                                            mem[0] = address(_2024)
                                                            mem[32] = sha3(round, 11)
                                                            prizes[stor2][address(_2024)] += prize / s
                                                            t = _2024
                                                            u = u + 1
                                                            v = v + 1
                                                            continue 
                                                        u = 0
                                                        w = t
                                                        w = 0
                                                        while uint8(w) < v:
                                                            require uint8(w) < s
                                                            _2450 = mem[(32 * uint8(auctionSize)) + (32 * uint8(w)) + 288]
                                                            mem[0] = mem[(32 * uint8(auctionSize)) + (32 * uint8(w)) + 300 len 20]
                                                            mem[32] = sha3(round, 11)
                                                            mem[(32 * uint8(auctionSize)) + (32 * s) + 292] = mem[(32 * uint8(auctionSize)) + (32 * uint8(w)) + 300 len 20]
                                                            mem[(32 * uint8(auctionSize)) + (32 * s) + 324] = prizes[stor2][address(_2450)]
                                                            call address(elcoinAddress).0xf8b71c64 with:
                                                                 gas gas_remaining - 25050 wei
                                                                args mem[(32 * uint8(auctionSize)) + (32 * s) + 292], prizes[stor2][address(_2450)]
                                                            mem[(32 * uint8(auctionSize)) + (32 * s) + 288] = ext_call.return_data[0]
                                                            require ext_call.success
                                                            if ext_call.return_data[0]:
                                                                mem[(32 * uint8(auctionSize)) + (32 * s) + 288] = prizes[stor2][address(_2450)]
                                                                mem[(32 * uint8(auctionSize)) + (32 * s) + 320] = uint8(w)
                                                                emit Reward(prizes[stor2][address(_2450)], uint8(w), address(_2450), round);
                                                            u = prizes[stor2][address(_2450)]
                                                            w = _2450
                                                            w = w + 1
                                                            continue 
                                            else:
                                                _msize = max(0, 32 * s)
                                                mem[_msize + 288] = s
                                                if startTime > block.timestamp:
                                                    t = 0
                                                    u = 0
                                                    v = 0
                                                    while uint8(u) < s:
                                                        require uint8(u) < uint8(auctionSize)
                                                        _2036 = mem[(32 * uint8(u)) + 256]
                                                        if prizes[stor2][address(mem[(32 * uint8(u)) + 256])]:
                                                            mem[0] = mem[(32 * uint8(u)) + 268 len 20]
                                                            mem[32] = sha3(round, 11)
                                                            prizes[stor2][address(mem[(32 * uint8(u)) + 256])] += prize / s
                                                            t = mem[(32 * uint8(u)) + 256]
                                                            u = u + 1
                                                            v = v
                                                            continue 
                                                        require v < s, mem[(32 * s) + 320 len 0]
                                                        mem[(_msize + 288) + (32 * v) + 32] = mem[(32 * uint8(u)) + 268 len 20]
                                                        mem[0] = address(_2036)
                                                        mem[32] = sha3(round, 11)
                                                        prizes[stor2][address(_2036)] += prize / s
                                                        t = _2036
                                                        u = u + 1
                                                        v = v + 1
                                                        continue 
                                                    u = 0
                                                    w = t
                                                    w = 0
                                                    while uint8(w) < v:
                                                        require uint8(w) < mem[_msize + 288]
                                                        _2478 = mem[(_msize + 288) + (32 * uint8(w)) + 32]
                                                        mem[0] = mem[(_msize + 288) + (32 * uint8(w)) + 44 len 20]
                                                        mem[32] = sha3(round, 11)
                                                        mem[(_msize + 288) + (32 * s) + 36] = mem[(_msize + 288) + (32 * uint8(w)) + 44 len 20]
                                                        mem[(_msize + 288) + (32 * s) + 68] = prizes[stor2][address(_2478)]
                                                        call address(elcoinAddress).0xf8b71c64 with:
                                                             gas gas_remaining - 25050 wei
                                                            args mem[(_msize + 288) + (32 * s) + 36], prizes[stor2][address(_2478)]
                                                        mem[(_msize + 288) + (32 * s) + 32] = ext_call.return_data[0]
                                                        require ext_call.success
                                                        if ext_call.return_data[0]:
                                                            mem[(_msize + 288) + (32 * s) + 32] = prizes[stor2][address(_2478)]
                                                            mem[(_msize + 288) + (32 * s) + 64] = uint8(w)
                                                            emit Reward(prizes[stor2][address(_2478)], uint8(w), address(_2478), round);
                                                        u = prizes[stor2][address(_2478)]
                                                        w = _2478
                                                        w = w + 1
                                                        continue 
                                                else:
                                                    if 0 == (block.timestamp - startTime / 24 * 3600) + 1 % 360:
                                                        t = 0
                                                        u = 0
                                                        v = 0
                                                        while uint8(u) < s:
                                                            require uint8(u) < uint8(auctionSize)
                                                            _2030 = mem[(32 * uint8(u)) + 256]
                                                            if prizes[stor2][address(mem[(32 * uint8(u)) + 256])]:
                                                                mem[0] = mem[(32 * uint8(u)) + 268 len 20]
                                                                mem[32] = sha3(round, 11)
                                                                prizes[stor2][address(mem[(32 * uint8(u)) + 256])] += 2 * prize / s
                                                                t = mem[(32 * uint8(u)) + 256]
                                                                u = u + 1
                                                                v = v
                                                                continue 
                                                            require v < s, mem[(32 * s) + 320 len 0]
                                                            mem[(_msize + 288) + (32 * v) + 32] = mem[(32 * uint8(u)) + 268 len 20]
                                                            mem[0] = address(_2030)
                                                            mem[32] = sha3(round, 11)
                                                            prizes[stor2][address(_2030)] += 2 * prize / s
                                                            t = _2030
                                                            u = u + 1
                                                            v = v + 1
                                                            continue 
                                                        u = 0
                                                        w = t
                                                        w = 0
                                                        while uint8(w) < v:
                                                            require uint8(w) < mem[_msize + 288]
                                                            _2464 = mem[(_msize + 288) + (32 * uint8(w)) + 32]
                                                            mem[0] = mem[(_msize + 288) + (32 * uint8(w)) + 44 len 20]
                                                            mem[32] = sha3(round, 11)
                                                            mem[(_msize + 288) + (32 * s) + 36] = mem[(_msize + 288) + (32 * uint8(w)) + 44 len 20]
                                                            mem[(_msize + 288) + (32 * s) + 68] = prizes[stor2][address(_2464)]
                                                            call address(elcoinAddress).0xf8b71c64 with:
                                                                 gas gas_remaining - 25050 wei
                                                                args mem[(_msize + 288) + (32 * s) + 36], prizes[stor2][address(_2464)]
                                                            mem[(_msize + 288) + (32 * s) + 32] = ext_call.return_data[0]
                                                            require ext_call.success
                                                            if ext_call.return_data[0]:
                                                                mem[(_msize + 288) + (32 * s) + 32] = prizes[stor2][address(_2464)]
                                                                mem[(_msize + 288) + (32 * s) + 64] = uint8(w)
                                                                emit Reward(prizes[stor2][address(_2464)], uint8(w), address(_2464), round);
                                                            u = prizes[stor2][address(_2464)]
                                                            w = _2464
                                                            w = w + 1
                                                            continue 
                                                    else:
                                                        t = 0
                                                        u = 0
                                                        v = 0
                                                        while uint8(u) < s:
                                                            require uint8(u) < uint8(auctionSize)
                                                            _2033 = mem[(32 * uint8(u)) + 256]
                                                            if prizes[stor2][address(mem[(32 * uint8(u)) + 256])]:
                                                                mem[0] = mem[(32 * uint8(u)) + 268 len 20]
                                                                mem[32] = sha3(round, 11)
                                                                prizes[stor2][address(mem[(32 * uint8(u)) + 256])] += prize / s
                                                                t = mem[(32 * uint8(u)) + 256]
                                                                u = u + 1
                                                                v = v
                                                                continue 
                                                            require v < s, mem[(32 * s) + 320 len 0]
                                                            mem[(_msize + 288) + (32 * v) + 32] = mem[(32 * uint8(u)) + 268 len 20]
                                                            mem[0] = address(_2033)
                                                            mem[32] = sha3(round, 11)
                                                            prizes[stor2][address(_2033)] += prize / s
                                                            t = _2033
                                                            u = u + 1
                                                            v = v + 1
                                                            continue 
                                                        u = 0
                                                        w = t
                                                        w = 0
                                                        while uint8(w) < v:
                                                            require uint8(w) < mem[_msize + 288]
                                                            _2471 = mem[(_msize + 288) + (32 * uint8(w)) + 32]
                                                            mem[0] = mem[(_msize + 288) + (32 * uint8(w)) + 44 len 20]
                                                            mem[32] = sha3(round, 11)
                                                            mem[(_msize + 288) + (32 * s) + 36] = mem[(_msize + 288) + (32 * uint8(w)) + 44 len 20]
                                                            mem[(_msize + 288) + (32 * s) + 68] = prizes[stor2][address(_2471)]
                                                            call address(elcoinAddress).0xf8b71c64 with:
                                                                 gas gas_remaining - 25050 wei
                                                                args mem[(_msize + 288) + (32 * s) + 36], prizes[stor2][address(_2471)]
                                                            mem[(_msize + 288) + (32 * s) + 32] = ext_call.return_data[0]
                                                            require ext_call.success
                                                            if ext_call.return_data[0]:
                                                                mem[(_msize + 288) + (32 * s) + 32] = prizes[stor2][address(_2471)]
                                                                mem[(_msize + 288) + (32 * s) + 64] = uint8(w)
                                                                emit Reward(prizes[stor2][address(_2471)], uint8(w), address(_2471), round);
                                                            u = prizes[stor2][address(_2471)]
                                                            w = _2471
                                                            w = w + 1
                                                            continue 
                                        counter = 0
                                        round++
                                        stor4.length = 0
                                        idx = code.data[2867 len 32]
                                        while code.data[2867 len 32] + (2 * stor4.length) > idx:
                                            stor[idx] = 0
                                            stor1[idx] = 0
                                            idx = idx + 2
                                            continue 
}



}

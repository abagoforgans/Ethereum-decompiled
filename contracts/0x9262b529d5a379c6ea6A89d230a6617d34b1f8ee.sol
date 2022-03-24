contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 9211]




// =====================  Runtime code  =====================


const getMinFunding = 0


mapping of struct stor0;
array of uint256 stor1;
array of uint256 stor7;

function _fallback() payable {
  stop
}

function calcMarketFee(bytes32 arg1, uint256 arg2) payable {
    return (arg2 * stor0[arg1].field_256 / 10^6)
}

function getMarket(bytes32 arg1) payable {
    return stor0[arg1].field_0, 
           stor0[arg1].field_256,
           stor0[arg1].field_512,
           stor0[arg1].field_768,
           address(stor0[arg1].field_1024),
           address(stor0[arg1].field_1280),
           stor0[arg1].field_1536
}

function getShareDistribution(bytes32 arg1) payable {
    mem[8288] = 0
    mem[8320 len 8160] = 0
    mem[0] = arg1
    mem[32] = 0
    idx = 0
    while uint8(idx) < stor0[arg1].field_1792:
        require uint8(idx) < stor7[sha3(mem[0 len 64])]
        mem[0] = sha3(mem[0 len 64]) + 7
        require uint8(idx) < 256
        mem[(32 * uint8(idx)) + 8288] = stor[uint8(idx) + sha3(mem[0])]
        mem[0] = arg1
        mem[32] = 0
        idx = idx + 1
        continue 
    return memory
      from 8288
       len 8192
}

function withdrawFees(bytes32 arg1) payable {
    require address(stor0[arg1].field_1024) == msg.sender
    call code.data[9179 len 32].0x8c172fa2 with:
         gas gas_remaining - 25050 wei
        args stor0[arg1].field_0
    require ext_call.success
    stor0[arg1].field_512 = 0
    if stor0[arg1].field_512 <= 0:
        return stor0[arg1].field_512
    call address(ext_call.return_data[192]).0xa9059cbb with:
         gas gas_remaining - 25050 wei
        args msg.sender, stor0[arg1].field_512
    require ext_call.success
    require ext_call.return_data[0]
    return stor0[arg1].field_512
}

function getShareDistributionWithTimestamp(bytes32 arg1) payable {
    require 0 < stor0[arg1].field_1792 + 1
    mem[192] = block.timestamp
    mem[0] = arg1
    mem[32] = 0
    idx = 0
    while uint8(idx) < stor0[arg1].field_1792:
        require uint8(idx) < stor7[sha3(mem[0 len 64])]
        mem[0] = sha3(mem[0 len 64]) + 7
        require uint8(idx + 1) < stor0[arg1].field_1792 + 1
        mem[(32 * uint8(idx + 1)) + 192] = stor[uint8(idx) + sha3(mem[0])]
        mem[0] = arg1
        mem[32] = 0
        idx = idx + 1
        continue 
    return Array(len=stor0[arg1].field_1792 + 1, data=mem[192 len 32 * stor0[arg1].field_1792 + 1])
}

function closeMarket(bytes32 arg1) payable {
    require msg.sender == address(stor0[arg1].field_1024)
    mem[0] = arg1
    mem[32] = 0
    idx = 0
    while uint8(idx) < stor0[arg1].field_1792:
        call code.data[9179 len 32].0x1f0c1e0c with:
             gas gas_remaining - 25050 wei
            args stor[sha3(mem[0 len 64])], uint8(idx)
        require ext_call.success
        require uint8(idx) < stor0[arg1].field_1792
        mem[100] = msg.sender
        mem[132] = stor[uint8(idx) + ('array', 7, ('map', ('param', 'arg1'), ('name', 'stor0', 0)))].field_0
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining - 25050 wei
            args msg.sender, stor[uint8(idx) + ('array', 7, ('map', ('param', 'arg1'), ('name', 'stor0', 0)))].field_0
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
        require uint8(idx) < stor0[arg1].field_1792
        stor[('array', 7, ('map', ('param', 'arg1'), ('name', 'stor0', 0))) + uint8(idx)].field_0 = 0
        mem[0] = arg1
        mem[32] = 0
        idx = idx + 1
        continue 
    stor0[arg1].field_0 = 0
    stor0[arg1].field_256 = 0
    stor0[arg1].field_512 = 0
    stor0[arg1].field_768 = 0
    address(stor0[arg1].field_1024) = 0
    address(stor0[arg1].field_1280) = 0
    stor0[arg1].field_1536 = 0
    stor0[arg1].field_1792 = 0
    idx = 0
    while stor0[arg1].field_1792 > idx:
        stor0[arg1][idx + 7].field_0 = 0
        idx = idx + 1
        continue 
    return 1
}

function getMarketHashes(bytes32[] arg1) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    mem[(32 * arg1.length) + 160] = 0
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 1
        if stor1[mem[(32 * idx) + 128]] <= 0:
            idx = idx + 1
            s = s
            continue 
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 128]
        idx = idx + 1
        s = stor1[mem[(32 * idx) + 128]] + s + 2
        continue 
    mem[(32 * arg1.length) + 192] = s
    idx = 0
    t = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 1
        if stor1[mem[(32 * idx) + 128]] <= 0:
            idx = idx + 1
            t = t
            continue 
        require idx < arg1.length
        require t < s
        mem[(32 * arg1.length) + (32 * t) + 224] = mem[(32 * idx) + 128]
        require idx < arg1.length
        require t + 1 < s
        mem[(32 * arg1.length) + (32 * t + 1) + 224] = stor1[mem[(32 * idx) + 128]]
        require idx < arg1.length
        require idx < arg1.length
        if var24005 >= stor1[mem[(32 * idx) + 128]]:
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 1
            idx = idx + 1
            t = t + stor1[mem[(32 * idx) + 128]] + 2
            continue 
        require var28005 < stor1[mem[(32 * idx) + 128]]
        require var30003 + t + 2 < s
        mem[(32 * arg1.length) + (32 * var32001) + 224] = var32003
        require idx < arg1.length
        require idx < arg1.length
        if var36005 >= stor1[mem[(32 * idx) + 128]]:
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 1
            idx = idx + 1
            t = t + stor1[mem[(32 * idx) + 128]] + 2
            continue 
        require var40005 < stor1[mem[(32 * idx) + 128]]
        require var42003 + t + 2 < s
        mem[(32 * arg1.length) + (32 * var44001) + 224] = var44003
        require idx < arg1.length
        require idx < arg1.length
        if var48005 >= stor1[mem[(32 * idx) + 128]]:
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 1
            idx = idx + 1
            t = t + stor1[mem[(32 * idx) + 128]] + 2
            continue 
        require var52005 < stor1[mem[(32 * idx) + 128]]
        require var54003 + t + 2 < s
        # nil
    return Array(len=s, data=mem[(32 * arg1.length) + 224 len 32 * s])
}

function shortSellShares(bytes32 arg1, uint8 arg2, uint256 arg3, uint256 arg4) payable {
    call code.data[9179 len 32].0x8c172fa2 with:
         gas gas_remaining - 25050 wei
        args stor0[arg1].field_0
    require ext_call.success
    call code.data[9179 len 32].0xc51cf179 with:
         gas gas_remaining - 25050 wei
        args arg3
    call address(ext_call.return_data[192]).0x23b872dd with:
         gas gas_remaining - 25050 wei
        args msg.sender, address(this.address), arg3 + ext_call.return_data[0]
    require ext_call.return_data[0]
    call address(code.data[9179 len 32]).0xc51cf179 with:
         gas gas_remaining - 25050 wei
        args arg3
    require ext_call.success
    call address(ext_call.return_data[192]).approve(address rg1, uint256 rg2) with:
         gas gas_remaining - 25050 wei
        args address(code.data[9179 len 32]), arg3 + ext_call.return_data[0]
    require ext_call.return_data[0]
    call address(code.data[9179 len 32]).0xc51cf179 with:
         gas gas_remaining - 25050 wei
        args arg3
    require ext_call.success
    call address(code.data[9179 len 32]).buyAllOutcomes(bytes32 rg1, uint256 rg2) with:
         gas gas_remaining - 25050 wei
        args stor0[arg1].field_0, arg3 + ext_call.return_data[0]
    require ext_call.return_data[0]
    call code.data[9179 len 32].0x1f0c1e0c with:
         gas gas_remaining - 25050 wei
        args stor0[arg1].field_0, arg2
    require ext_call.success
    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
         gas gas_remaining - 25050 wei
        args address(this.address), arg3
    require ext_call.return_data[0]
    call this.address.0xdb833e3a with:
         gas gas_remaining - 25050 wei
        args 0, uint32(arg1), arg2 << 248, arg3, arg4
    require ext_call.success
    require ext_call.return_data[0]
    idx = 0
    while uint8(idx) < ext_call.return_data[160]:
        if uint8(idx) == arg2:
            idx = idx + 1
            continue 
        call code.data[9179 len 32].0x1f0c1e0c with:
             gas gas_remaining - 25050 wei
            args stor0[arg1].field_0, uint8(idx)
        require ext_call.success
        mem[100] = msg.sender
        mem[132] = arg3
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining - 25050 wei
            args msg.sender, arg3
        mem[96] = ext_call.return_data[0]
        require ext_call.return_data[0]
        idx = idx + 1
        continue 
    call address(ext_call.return_data[192]).0xa9059cbb with:
         gas gas_remaining - 25050 wei
        args msg.sender, ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
    call address(code.data[9179 len 32]).0xc51cf179 with:
         gas gas_remaining - 25050 wei
        args arg3
    require ext_call.success
    return arg3
}

function sellShares(bytes32 arg1, uint8 arg2, uint256 arg3, uint256 arg4) payable {
    call code.data[9179 len 32].0x8c172fa2 with:
         gas gas_remaining - 25050 wei
        args stor0[arg1].field_0
    mem[96 len 352] = ext_call.return_data[0 len 352]
    require ext_call.success
    if not stor0[arg1].field_1792:
        call address(stor0[arg1].field_1280).0xf47cd671 with:
             gas gas_remaining - 25050 wei
            args 0, uint32(arg1), stor0[arg1].field_768, 160, arg2 << 248, arg3, stor0[arg1].field_1792
    else:
        mem[292] = stor0[arg1][7].field_0
        idx = 292
        s = 0
        while (32 * stor0[arg1].field_1792) + 292 > idx + 32:
            mem[idx + 32] = stor0[arg1][s + 7].field_256
            idx = idx + 32
            s = s + 1
            continue 
        call address(stor0[arg1].field_1280).0xf47cd671 with:
             gas gas_remaining - 25050 wei
            args 0, uint32(arg1), stor0[arg1].field_768, 160, arg2 << 248, arg3, stor0[arg1].field_1792, mem[292 len 32 * stor0[arg1].field_1792]
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if ext_call.return_data[0] - (ext_call.return_data[0] * stor0[arg1].field_256 / 10^6) < arg4:
        return 0
    call code.data[9179 len 32].0x1f0c1e0c with:
         gas gas_remaining - 25050 wei
        args stor0[arg1].field_0, arg2
    require ext_call.success
    call address(ext_call.return_data[0]).0x23b872dd with:
         gas gas_remaining - 25050 wei
        args msg.sender, address(this.address), arg3
    require ext_call.return_data[0]
    call address(code.data[9179 len 32]).0x4025b293 with:
         gas gas_remaining - 25050 wei
        args stor0[arg1].field_0, ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
    require arg2 < stor0[arg1].field_1792
    stor[('array', 7, ('map', ('param', 'arg1'), ('name', 'stor0', 0))) + arg2].field_0 += arg3
    mem[0] = arg1
    mem[32] = 0
    idx = 0
    while uint8(idx) < stor0[arg1].field_1792:
        require uint8(idx) < stor7[sha3(mem[0 len 64])]
        require stor[sha3(sha3(mem[0 len 64]) + 7) + uint8(idx)] >= ext_call.return_data[0]
        require uint8(idx) < stor0[arg1].field_1792
        stor[uint8(idx) + ('array', 7, ('map', ('param', 'arg1'), ('name', 'stor0', 0)))].field_0 -= ext_call.return_data[0]
        mem[0] = arg1
        mem[32] = 0
        idx = idx + 1
        continue 
    stor0[arg1].field_512 += ext_call.return_data[0] * stor0[arg1].field_256 / 10^6
    call address(ext_call.return_data[192]).0xa9059cbb with:
         gas gas_remaining - 25050 wei
        args msg.sender, ext_call.return_data[0] - (ext_call.return_data[0] * stor0[arg1].field_256 / 10^6)
    if ext_call.success:
        if ext_call.return_data[0]:
            return (ext_call.return_data[0] - (ext_call.return_data[0] * stor0[arg1].field_256 / 10^6))
    revert 
}

function createMarket(bytes32 arg1, uint256 arg2, uint256 arg3, address arg4) payable {
    call address(code.data[9179 len 32]).0x8c172fa2 with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    if stor0[arg1][msg.sender][arg4].field_768 != 0:
        return 0
    if arg2 > 500000:
        return 0
    if 0 == ext_call.return_data[160]:
        return 0
    call address(code.data[9179 len 32]).0xc51cf179 with:
         gas gas_remaining - 25050 wei
        args arg3
    require ext_call.success
    call address(ext_call.return_data[192]).0x23b872dd with:
         gas gas_remaining - 25050 wei
        args msg.sender, address(this.address), arg3 + ext_call.return_data[0]
    require ext_call.return_data[0]
    call address(code.data[9179 len 32]).0xc51cf179 with:
         gas gas_remaining - 25050 wei
        args arg3
    require ext_call.success
    call address(ext_call.return_data[192]).approve(address rg1, uint256 rg2) with:
         gas gas_remaining - 25050 wei
        args address(code.data[9179 len 32]), arg3 + ext_call.return_data[0]
    require ext_call.return_data[0]
    call address(code.data[9179 len 32]).0xc51cf179 with:
         gas gas_remaining - 25050 wei
        args arg3
    require ext_call.success
    call address(code.data[9179 len 32]).buyAllOutcomes(bytes32 rg1, uint256 rg2) with:
         gas gas_remaining - 25050 wei
        args arg1, arg3 + ext_call.return_data[0]
    require ext_call.return_data[0]
    stor0[arg1][msg.sender][arg4].field_1792 = ext_call.return_data[160]
    if not ext_call.return_data[160]:
        idx = 0
        while stor0[arg1][msg.sender][arg4].field_1792 > idx:
            stor0[arg1][msg.sender][arg4][idx + 7].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 480
        while (32 * ext_call.return_data[160]) + 480 > idx:
            stor0[arg1][msg.sender][arg4][s + 7].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ext_call.return_data[160]) + 31) >> 5
        while stor0[arg1][msg.sender][arg4].field_1792 > idx:
            stor0[arg1][msg.sender][arg4][idx + 7].field_0 = 0
            idx = idx + 1
            continue 
    idx = 0
    while uint8(idx) < ext_call.return_data[160]:
        mem[32] = 0
        require uint8(idx) < stor0[arg1][msg.sender][arg4].field_1792
        mem[0] = sha3(sha3(arg1, msg.sender, arg4), 0) + 7
        stor[('array', 7, ('map', ('data', ('param', 'arg1'), 'msg.sender', ('param', 'arg4')), ('name', 'stor0', 0))) + uint8(idx)].field_0 = arg3
        idx = idx + 1
        continue 
    stor1[arg1]++
    if not stor1[arg1] <= stor1[arg1] + 1:
        idx = stor1[arg1] + 1
        while stor1[arg1] > idx:
            stor1[arg1][idx] = 0
            idx = idx + 1
            continue 
    stor1[arg1][stor1[arg1]] = sha3(arg1, msg.sender, arg4)
    stor0[arg1][msg.sender][arg4].field_256 = arg2
    stor0[arg1][msg.sender][arg4].field_768 = arg3
    stor0[arg1][msg.sender][arg4].field_0 = arg1
    stor0[arg1][msg.sender][arg4].field_1024 = msg.sender or Mask(96, 160, stor0[arg1][msg.sender][arg4].field_1024)
    stor0[arg1][msg.sender][arg4].field_1280 = arg4 or Mask(96, 160, stor0[arg1][msg.sender][arg4].field_1280)
    stor0[arg1][msg.sender][arg4].field_1536 = block.number
    return sha3(arg1, msg.sender, arg4)
}

function buyShares(bytes32 arg1, uint8 arg2, uint256 arg3, uint256 arg4) payable {
    call code.data[9179 len 32].0x8c172fa2 with:
         gas gas_remaining - 25050 wei
        args stor0[arg1].field_0
    mem[96 len 352] = ext_call.return_data[0 len 352]
    require ext_call.success
    if not stor0[arg1].field_1792:
        call address(stor0[arg1].field_1280).0x439978d with:
             gas gas_remaining - 25050 wei
            args 0, uint32(arg1), stor0[arg1].field_768, 160, arg2 << 248, arg3, stor0[arg1].field_1792
    else:
        mem[292] = stor0[arg1][7].field_0
        idx = 292
        s = 0
        while (32 * stor0[arg1].field_1792) + 292 > idx + 32:
            mem[idx + 32] = stor0[arg1][s + 7].field_256
            idx = idx + 32
            s = s + 1
            continue 
        call address(stor0[arg1].field_1280).0x439978d with:
             gas gas_remaining - 25050 wei
            args 0, uint32(arg1), stor0[arg1].field_768, 160, arg2 << 248, arg3, stor0[arg1].field_1792, mem[292 len 32 * stor0[arg1].field_1792]
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    call address(code.data[9179 len 32]).0xc51cf179 with:
         gas gas_remaining - 25050 wei
        args arg3
    require ext_call.success
    if (2 * ext_call.return_data[0]) + (ext_call.return_data[0] * stor0[arg1].field_256 / 10^6) > arg4:
        return 0
    call address(ext_call.return_data[192]).0x23b872dd with:
         gas gas_remaining - 25050 wei
        args msg.sender, address(this.address), (2 * ext_call.return_data[0]) + (ext_call.return_data[0] * stor0[arg1].field_256 / 10^6)
    require ext_call.success
    require ext_call.return_data[0]
    call address(ext_call.return_data[192]).approve(address rg1, uint256 rg2) with:
         gas gas_remaining - 25050 wei
        args code.data[9179 len 32], 2 * ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
    call code.data[9179 len 32].buyAllOutcomes(bytes32 rg1, uint256 rg2) with:
         gas gas_remaining - 25050 wei
        args stor0[arg1].field_0, 2 * ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
    mem[0] = arg1
    mem[32] = 0
    idx = 0
    while uint8(idx) < stor0[arg1].field_1792:
        require uint8(idx) < stor7[sha3(mem[0 len 64])]
        mem[0] = sha3(mem[0 len 64]) + 7
        stor[sha3(mem[0]) + uint8(idx)] += ext_call.return_data[0]
        mem[0] = arg1
        mem[32] = 0
        idx = idx + 1
        continue 
    if arg2 < stor0[arg1].field_1792:
        if arg3 <= stor[('array', 7, ('map', ('param', 'arg1'), ('name', 'stor0', 0))) + arg2].field_0:
            stor0[arg1].field_512 += ext_call.return_data[0] * stor0[arg1].field_256 / 10^6
            if arg2 < stor0[arg1].field_1792:
                stor[arg2 + ('array', 7, ('map', ('param', 'arg1'), ('name', 'stor0', 0)))].field_0 -= arg3
                call code.data[9179 len 32].0x1f0c1e0c with:
                     gas gas_remaining - 25050 wei
                    args stor0[arg1].field_0, arg2
                if ext_call.success:
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining - 25050 wei
                        args msg.sender, arg3
                    if ext_call.return_data[0]:
                        return ((2 * ext_call.return_data[0]) + (ext_call.return_data[0] * stor0[arg1].field_256 / 10^6))
    revert 
}

function getMarkets(bytes32[] arg1, address arg2) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    mem[(32 * arg1.length) + 160] = 0
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 0
        if stor0[mem[(32 * idx) + 128]].field_0 <= 0:
            idx = idx + 1
            s = s
            continue 
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 128]
        if arg2 != 0:
            if address(stor0[mem[(32 * idx) + 128]].field_1024) != arg2:
                idx = idx + 1
                s = s
                continue 
        mem[32] = 0
        idx = idx + 1
        s = s + stor0[mem[(32 * idx) + 128]].field_1792 + 9
        continue 
    mem[(32 * arg1.length) + 192] = s
    idx = 0
    t = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 0
        if stor0[mem[(32 * idx) + 128]].field_0 <= 0:
            idx = idx + 1
            t = t
            continue 
        require idx < arg1.length
        if 0 == arg2:
            require t < s
            mem[(32 * arg1.length) + (32 * t) + 224] = mem[(32 * idx) + 128]
            require idx < arg1.length
            require t + 1 < s
            mem[(32 * arg1.length) + (32 * t + 1) + 224] = stor0[mem[(32 * idx) + 128]].field_0
            require idx < arg1.length
            require t + 2 < s
            mem[(32 * arg1.length) + (32 * t + 2) + 224] = stor0[mem[(32 * idx) + 128]].field_256
            require idx < arg1.length
            require t + 3 < s
            mem[(32 * arg1.length) + (32 * t + 3) + 224] = stor0[mem[(32 * idx) + 128]].field_512
            require idx < arg1.length
            require t + 4 < s
            mem[(32 * arg1.length) + (32 * t + 4) + 224] = stor0[mem[(32 * idx) + 128]].field_768
            require idx < arg1.length
            require t + 5 < s
            mem[(32 * arg1.length) + (32 * t + 5) + 224] = address(stor0[mem[(32 * idx) + 128]].field_1024)
            require idx < arg1.length
            require t + 6 < s
            mem[(32 * arg1.length) + (32 * t + 6) + 224] = address(stor0[mem[(32 * idx) + 128]].field_1280)
            require idx < arg1.length
            require t + 7 < s
            mem[(32 * arg1.length) + (32 * t + 7) + 224] = stor0[mem[(32 * idx) + 128]].field_1536
            require idx < arg1.length
            require t + 8 < s
            mem[(32 * arg1.length) + (32 * t + 8) + 224] = stor0[mem[(32 * idx) + 128]].field_1792
            require idx < arg1.length
            require idx < arg1.length
            if var40005 >= stor0[mem[(32 * idx) + 128]].field_1792:
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 0
                idx = idx + 1
                t = t + stor0[mem[(32 * idx) + 128]].field_1792 + 9
                continue 
            require var44005 < stor0[mem[(32 * idx) + 128]].field_1792
            require t + var46003 + 9 < s
            mem[(32 * arg1.length) + (32 * var48001) + 224] = var48003
            require idx < arg1.length
            require idx < arg1.length
            if var52005 >= stor0[mem[(32 * idx) + 128]].field_1792:
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 0
                idx = idx + 1
                t = t + stor0[mem[(32 * idx) + 128]].field_1792 + 9
                continue 
            require var56005 < stor0[mem[(32 * idx) + 128]].field_1792
            require t + var58003 + 9 < s
            mem[(32 * arg1.length) + (32 * var60001) + 224] = var60003
            require idx < arg1.length
            require idx < arg1.length
            if var64005 >= stor0[mem[(32 * idx) + 128]].field_1792:
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 0
                idx = idx + 1
                t = t + stor0[mem[(32 * idx) + 128]].field_1792 + 9
                continue 
            require var68005 < stor0[mem[(32 * idx) + 128]].field_1792
            require t + var70003 + 9 < s
            # nil
        else:
            mem[0] = mem[(32 * idx) + 128]
            if address(stor0[mem[(32 * idx) + 128]].field_1024) != arg2:
                idx = idx + 1
                t = t
                continue 
            require idx < arg1.length
            require t < s
            mem[(32 * arg1.length) + (32 * t) + 224] = mem[(32 * idx) + 128]
            require idx < arg1.length
            require t + 1 < s
            mem[(32 * arg1.length) + (32 * t + 1) + 224] = stor0[mem[(32 * idx) + 128]].field_0
            require idx < arg1.length
            require t + 2 < s
            mem[(32 * arg1.length) + (32 * t + 2) + 224] = stor0[mem[(32 * idx) + 128]].field_256
            require idx < arg1.length
            require t + 3 < s
            mem[(32 * arg1.length) + (32 * t + 3) + 224] = stor0[mem[(32 * idx) + 128]].field_512
            require idx < arg1.length
            require t + 4 < s
            mem[(32 * arg1.length) + (32 * t + 4) + 224] = stor0[mem[(32 * idx) + 128]].field_768
            require idx < arg1.length
            require t + 5 < s
            mem[(32 * arg1.length) + (32 * t + 5) + 224] = address(stor0[mem[(32 * idx) + 128]].field_1024)
            require idx < arg1.length
            require t + 6 < s
            mem[(32 * arg1.length) + (32 * t + 6) + 224] = address(stor0[mem[(32 * idx) + 128]].field_1280)
            require idx < arg1.length
            require t + 7 < s
            mem[(32 * arg1.length) + (32 * t + 7) + 224] = stor0[mem[(32 * idx) + 128]].field_1536
            require idx < arg1.length
            require t + 8 < s
            mem[(32 * arg1.length) + (32 * t + 8) + 224] = stor0[mem[(32 * idx) + 128]].field_1792
            require idx < arg1.length
            require idx < arg1.length
            if var42005 >= stor0[mem[(32 * idx) + 128]].field_1792:
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 0
                idx = idx + 1
                t = t + stor0[mem[(32 * idx) + 128]].field_1792 + 9
                continue 
            require var46005 < stor0[mem[(32 * idx) + 128]].field_1792
            require t + var48003 + 9 < s
            mem[(32 * arg1.length) + (32 * var50001) + 224] = var50003
            require idx < arg1.length
            require idx < arg1.length
            if var54005 >= stor0[mem[(32 * idx) + 128]].field_1792:
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 0
                idx = idx + 1
                t = t + stor0[mem[(32 * idx) + 128]].field_1792 + 9
                continue 
            require var58005 < stor0[mem[(32 * idx) + 128]].field_1792
            require t + var60003 + 9 < s
            mem[(32 * arg1.length) + (32 * var62001) + 224] = var62003
            require idx < arg1.length
            require idx < arg1.length
            if var66005 >= stor0[mem[(32 * idx) + 128]].field_1792:
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 0
                idx = idx + 1
                t = t + stor0[mem[(32 * idx) + 128]].field_1792 + 9
                continue 
            require var70005 < stor0[mem[(32 * idx) + 128]].field_1792
            require t + var72003 + 9 < s
            # nil
    return Array(len=s, data=mem[(32 * arg1.length) + 224 len 32 * s])
}



}

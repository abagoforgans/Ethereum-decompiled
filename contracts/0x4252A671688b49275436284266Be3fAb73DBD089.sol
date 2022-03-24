contract main {


// =======================  Init code  ======================


address stor0; offset 8
uint256 stor4;

function _fallback() payable {
    stor0 = 0xf736b196bb552e5e9e2e4162ba13f74caff352f4
    stor4 = 2000
    return code.data[65 len 9856]
}



// =====================  Runtime code  =====================


uint8 stor0;
address stor0;
address stor0; offset 8
uint256 stor0; offset 8
mapping of struct event;
array of uint256 stor2;
mapping of uint8 stor3;
uint256 baseFee;
array of uint256 stor9;

function getBaseFee() payable {
    return baseFee
}

function isPermanentlyApproved(address arg1, address arg2) payable {
    return bool(stor3[address(arg1)][address(arg2)])
}

function getEventTokenAddress(bytes32 arg1, uint256 arg2) payable {
    require arg2 < uint256(event[arg1].field_2304)
    return address(stor[arg2 + ('array', 9, ('map', ('param', 'arg1'), ('name', 'event', 1)))].field_0)
}

function getEvent(bytes32 arg1) payable {
    return uint256(event[arg1].field_0), 
           address(event[arg1].field_256),
           bool(uint8(event[arg1].field_416)),
           uint256(event[arg1].field_512),
           uint256(event[arg1].field_768),
           uint256(event[arg1].field_2304),
           address(event[arg1].field_1024),
           address(event[arg1].field_1280),
           uint256(event[arg1].field_1536),
           bool(uint8(event[arg1].field_1792)),
           uint256(event[arg1].field_2048)
}

function _fallback() payable {
  stop
}

function calcBaseFee(uint256 arg1) payable {
    return (arg1 * baseFee / 10^6)
}

function calcBaseFeeForShares(uint256 arg1) payable {
    return ((10^6 * arg1 / -baseFee + 10^6) - arg1)
}

function permitPermanentApproval(address arg1) payable {
    stor3[address(msg.sender)][address(arg1)] = 1
    return 1
}

function revokePermanentApproval(address arg1) payable {
    stor3[address(msg.sender)][address(arg1)] = 0
    return 1
}

function changeDAO(address arg1) payable {
    require msg.sender == address(stor0.field_8)
    Mask(248, 0, stor0.field_8) = Mask(248, 0, arg1)
    return 1
}

function changeBaseFee(uint256 arg1) payable {
    require address(stor0.field_8) == msg.sender
    if arg1 >= 10^6:
        return 0
    baseFee = arg1
    return 1
}

function redeemAllOutcomes(bytes32 arg1, uint256 arg2) payable {
    mem[0] = arg1
    mem[32] = 1
    idx = 0
    while idx < uint256(event[arg1].field_2304):
        require idx < stor9[sha3(mem[0 len 64])]
        mem[0] = sha3(mem[0 len 64]) + 9
        mem[100] = msg.sender
        mem[132] = arg2
        call address(stor[idx + sha3(mem[0])]).0x721a37d2 with:
             gas gas_remaining - 25050 wei
            args msg.sender, arg2
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
        mem[0] = arg1
        mem[32] = 1
        idx = idx + 1
        continue 
    call address(event[arg1].field_1024).0xa9059cbb with:
         gas gas_remaining - 25050 wei
        args msg.sender, arg2
    if ext_call.success:
        if ext_call.return_data[0]:
            return 1
    revert 
}

function buyAllOutcomes(bytes32 arg1, uint256 arg2) payable {
    call address(event[arg1].field_1024).0x23b872dd with:
         gas gas_remaining - 25050 wei
        args msg.sender, address(this.address), arg2
    require ext_call.success
    require ext_call.return_data[0]
    if arg2 * baseFee / 10^6 > 0:
        call address(event[arg1].field_1024).0xa9059cbb with:
             gas gas_remaining - 25050 wei
            args address(stor0.field_0), arg2 * baseFee / 10^6
        require ext_call.success
        require ext_call.return_data[0]
    mem[0] = arg1
    mem[32] = 1
    idx = 0
    while uint8(idx) < uint256(event[arg1].field_2304):
        require uint8(idx) < stor9[sha3(mem[0 len 64])]
        mem[0] = sha3(mem[0 len 64]) + 9
        mem[100] = msg.sender
        mem[132] = arg2 - (arg2 * baseFee / 10^6)
        call address(stor[uint8(idx) + sha3(mem[0])]).0x475a9fa9 with:
             gas gas_remaining - 25050 wei
            args msg.sender, arg2 - (arg2 * baseFee / 10^6)
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
        mem[0] = arg1
        mem[32] = 1
        idx = idx + 1
        continue 
    return 1
}

function getEventHashes(bytes32[] arg1) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    mem[(32 * arg1.length) + 160] = 0
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 2
        if stor2[mem[(32 * idx) + 128]] <= 0:
            idx = idx + 1
            s = s
            continue 
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 128]
        idx = idx + 1
        s = s + stor2[mem[(32 * idx) + 128]] + 2
        continue 
    mem[(32 * arg1.length) + 192] = s
    idx = 0
    t = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 2
        if stor2[mem[(32 * idx) + 128]] <= 0:
            idx = idx + 1
            t = t
            continue 
        require idx < arg1.length
        require t < s
        mem[(32 * arg1.length) + (32 * t) + 224] = mem[(32 * idx) + 128]
        require idx < arg1.length
        require t + 1 < s
        mem[(32 * arg1.length) + (32 * t + 1) + 224] = stor2[mem[(32 * idx) + 128]]
        require idx < arg1.length
        require idx < arg1.length
        if var24005 >= stor2[mem[(32 * idx) + 128]]:
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 2
            idx = idx + 1
            t = t + stor2[mem[(32 * idx) + 128]] + 2
            continue 
        require var28005 < stor2[mem[(32 * idx) + 128]]
        require var30003 + t + 2 < s
        mem[(32 * arg1.length) + (32 * var32001) + 224] = var32003
        require idx < arg1.length
        require idx < arg1.length
        if var36005 >= stor2[mem[(32 * idx) + 128]]:
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 2
            idx = idx + 1
            t = t + stor2[mem[(32 * idx) + 128]] + 2
            continue 
        require var40005 < stor2[mem[(32 * idx) + 128]]
        require var42003 + t + 2 < s
        mem[(32 * arg1.length) + (32 * var44001) + 224] = var44003
        require idx < arg1.length
        require idx < arg1.length
        if var48005 >= stor2[mem[(32 * idx) + 128]]:
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 2
            idx = idx + 1
            t = t + stor2[mem[(32 * idx) + 128]] + 2
            continue 
        require var52005 < stor2[mem[(32 * idx) + 128]]
        require var54003 + t + 2 < s
        # nil
    return Array(len=s, data=mem[(32 * arg1.length) + 224 len 32 * s])
}

function createEvent(bytes32 arg1, bool arg2, int256 arg3, int256 arg4, uint8 arg5, address arg6, address arg7, bytes32[] arg8) payable {
    if 0 == arg1:
        return 0
    if arg2:
        if arg3 >= arg4:
            return 0
    if arg5 < 2:
        return 0
    if 0 == arg7:
        return 0
    if 0 == arg6:
        return 0
    if uint256(event[arg1][uint8(arg2)][arg3][arg4][arg5][arg6][arg7][call.data[arg8 + 36 len 32 * arg8.length]].field_0) > 0:
        return 0
    call arg7.getFee(bytes32[] rg1) with:
         gas gas_remaining - 25050 wei
        args Array(len=arg8.length, data=call.data[arg8 + 36 len 32 * arg8.length])
    require ext_call.success
    if ext_call.return_data[0] > 0:
        call address(ext_call.return_data[32]).0x23b872dd with:
             gas gas_remaining - 25050 wei
            args msg.sender, address(this.address), ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
        call address(ext_call.return_data[32]).approve(address rg1, uint256 rg2) with:
             gas gas_remaining - 25050 wei
            args address(arg7), ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
    call arg7.registerEvent(bytes32[] rg1) with:
         gas gas_remaining - 25050 wei
        args Array(len=arg8.length, data=call.data[arg8 + 36 len 32 * arg8.length])
    require ext_call.success
    require ext_call.return_data[0]
    stor2[arg1]++
    if not stor2[arg1] <= stor2[arg1] + 1:
        idx = stor2[arg1] + 1
        while stor2[arg1] > idx:
            stor2[arg1][idx] = 0
            idx = idx + 1
            continue 
    stor2[arg1][stor2[arg1]] = sha3(arg1, uint8(arg2), arg3, arg4, arg5, arg6, arg7, call.data[arg8 + 36 len 32 * arg8.length])
    uint256(event[arg1][uint8(arg2)][arg3][arg4][arg5][arg6][arg7][call.data[arg8 + 36 len 32 * arg8.length]].field_0) = arg1
    uint256(event[arg1][uint8(arg2)][arg3][arg4][arg5][arg6][arg7][call.data[arg8 + 36 len 32 * arg8.length]].field_1280) = arg7 or Mask(96, 160, uint256(event[arg1][uint8(arg2)][arg3][arg4][arg5][arg6][arg7][call.data[arg8 + 36 len 32 * arg8.length]].field_1280))
    uint256(event[arg1][uint8(arg2)][arg3][arg4][arg5][arg6][arg7][call.data[arg8 + 36 len 32 * arg8.length]].field_1536) = ext_call.return_data[0]
    Mask(96, 0, event[arg1][uint8(arg2)][arg3][arg4][arg5][arg6][arg7][call.data[arg8 + 36 len 32 * arg8.length]].field_416) = Mask(96, 0, arg2)
    uint256(event[arg1][uint8(arg2)][arg3][arg4][arg5][arg6][arg7][call.data[arg8 + 36 len 32 * arg8.length]].field_512) = arg3
    uint256(event[arg1][uint8(arg2)][arg3][arg4][arg5][arg6][arg7][call.data[arg8 + 36 len 32 * arg8.length]].field_768) = arg4
    uint256(event[arg1][uint8(arg2)][arg3][arg4][arg5][arg6][arg7][call.data[arg8 + 36 len 32 * arg8.length]].field_1024) = arg6 or Mask(96, 160, uint256(event[arg1][uint8(arg2)][arg3][arg4][arg5][arg6][arg7][call.data[arg8 + 36 len 32 * arg8.length]].field_1024))
    uint256(event[arg1][uint8(arg2)][arg3][arg4][arg5][arg6][arg7][call.data[arg8 + 36 len 32 * arg8.length]].field_256) = msg.sender or Mask(96, 160, uint256(event[arg1][uint8(arg2)][arg3][arg4][arg5][arg6][arg7][call.data[arg8 + 36 len 32 * arg8.length]].field_256))
    idx = 0
    while uint8(idx) < arg5:
        mem[32] = 1
        uint256(event[arg1][uint8(arg2)][arg3][arg4][arg5][arg6][arg7][call.data[arg8 + 36 len 32 * arg8.length]].field_2304)++
        if not uint256(event[arg1][uint8(arg2)][arg3][arg4][arg5][arg6][arg7][call.data[arg8 + 36 len 32 * arg8.length]].field_2304) > uint256(event[arg1][uint8(arg2)][arg3][arg4][arg5][arg6][arg7][call.data[arg8 + 36 len 32 * arg8.length]].field_2304) + 1:
            mem[0] = sha3(sha3(arg1, uint8(arg2), arg3, arg4, arg5, arg6, arg7, call.data[arg8 + 36 len 32 * arg8.length]), 1) + 9
            mem[(32 * arg8.length) + 128 len 1095] = code.data[8761 len 1095]
            create contract with 0 wei
                            code: code.data[8761 len 1095]
            uint256(stor[uint256(event[arg1][uint8(arg2)][arg3][arg4][arg5][arg6][arg7][call.data[arg8 + 36 len 32 * arg8.length]].field_2304) + ('array', 9, ('map', ('data', ('param', 'arg1'), ('mask_shl', 8, 0, 0, ('param', 'arg2')), ('param', 'arg3'), ('param', 'arg4'), ('param', 'arg5'), ('param', 'arg6'), ('param', 'arg7'), ('call.data', ('add', 36, ('param', 'arg8')), ('mul', 32, ('cd', ('add', 4, ('param', 'arg8')))))), ('name', 'event', 1)))].field_0) = Mask(96, 0, stor[uint256(event[arg1][uint8(arg2)][arg3][arg4][arg5][arg6][arg7][call.data[arg8 + 36 len 32 * arg8.length]].field_2304) + ('array', 9, ('map', ('data', ('param', 'arg1'), ('mask_shl', 8, 0, 0, ('param', 'arg2')), ('param', 'arg3'), ('param', 'arg4'), ('param', 'arg5'), ('param', 'arg6'), ('param', 'arg7'), ('call.data', ('add', 36, ('param', 'arg8')), ('mul', 32, ('cd', ('add', 4, ('param', 'arg8')))))), ('name', 'event', 1)))].field_160)
            idx = idx + 1
            continue 
        s = uint256(event[arg1][uint8(arg2)][arg3][arg4][arg5][arg6][arg7][call.data[arg8 + 36 len 32 * arg8.length]].field_2304) + sha3(sha3(sha3(arg1, uint8(arg2), arg3, arg4, arg5, arg6, arg7, call.data[arg8 + 36 len 32 * arg8.length]), 1) + 9) + 1
        while sha3(sha3(sha3(arg1, uint8(arg2), arg3, arg4, arg5, arg6, arg7, call.data[arg8 + 36 len 32 * arg8.length]), 1) + 9) + uint256(event[arg1][uint8(arg2)][arg3][arg4][arg5][arg6][arg7][call.data[arg8 + 36 len 32 * arg8.length]].field_2304) > s:
            uint256(stor[s]) = 0
            s = s + 1
            continue 
        mem[0] = sha3(sha3(arg1, uint8(arg2), arg3, arg4, arg5, arg6, arg7, call.data[arg8 + 36 len 32 * arg8.length]), 1) + 9
        mem[(32 * arg8.length) + 128 len 1095] = code.data[8761 len 1095]
        create contract with 0 wei
                        code: code.data[8761 len 1095]
        uint256(stor[uint256(event[arg1][uint8(arg2)][arg3][arg4][arg5][arg6][arg7][call.data[arg8 + 36 len 32 * arg8.length]].field_2304) + ('array', 9, ('map', ('data', ('param', 'arg1'), ('mask_shl', 8, 0, 0, ('param', 'arg2')), ('param', 'arg3'), ('param', 'arg4'), ('param', 'arg5'), ('param', 'arg6'), ('param', 'arg7'), ('call.data', ('add', 36, ('param', 'arg8')), ('mul', 32, ('cd', ('add', 4, ('param', 'arg8')))))), ('name', 'event', 1)))].field_0) = Mask(96, 0, stor[uint256(event[arg1][uint8(arg2)][arg3][arg4][arg5][arg6][arg7][call.data[arg8 + 36 len 32 * arg8.length]].field_2304) + ('array', 9, ('map', ('data', ('param', 'arg1'), ('mask_shl', 8, 0, 0, ('param', 'arg2')), ('param', 'arg3'), ('param', 'arg4'), ('param', 'arg5'), ('param', 'arg6'), ('param', 'arg7'), ('call.data', ('add', 36, ('param', 'arg8')), ('mul', 32, ('cd', ('add', 4, ('param', 'arg8')))))), ('name', 'event', 1)))].field_160)
        s = uint256(event[arg1][uint8(arg2)][arg3][arg4][arg5][arg6][arg7][call.data[arg8 + 36 len 32 * arg8.length]].field_2304) + sha3(sha3(sha3(arg1, uint8(arg2), arg3, arg4, arg5, arg6, arg7, call.data[arg8 + 36 len 32 * arg8.length]), 1) + 9) + 1
        continue 
    return sha3(arg1, uint8(arg2), arg3, arg4, arg5, arg6, arg7, call.data[arg8 + 36 len 32 * arg8.length])
}

function redeemWinnings(bytes32 arg1) payable {
    require not uint8(stor0.field_0)
    uint8(stor0.field_0) = 1
    if not uint8(event[arg1].field_1792):
        call address(event[arg1].field_1280).isOutcomeSet(bytes32 rg1) with:
             gas gas_remaining - 25050 wei
            args uint256(event[arg1].field_1536)
        require ext_call.success
        if not ext_call.return_data[0]:
            uint8(stor0.field_0) = 0
            return 0
        call address(event[arg1].field_1280).getOutcome(bytes32 rg1) with:
             gas gas_remaining - 25050 wei
            args uint256(event[arg1].field_1536)
        require ext_call.success
        uint256(event[arg1].field_2048) = ext_call.return_data[0]
        uint8(event[arg1].field_1792) = 1
    if not uint8(event[arg1].field_416):
        require uint256(event[arg1].field_2048) < uint256(event[arg1].field_2304)
        call address(stor[('array', 9, ('map', ('param', 'arg1'), ('name', 'event', 1))) + uint256(event[arg1].field_2048)].field_0).0x70a08231 with:
             gas gas_remaining - 25050 wei
            args msg.sender
        require ext_call.success
        mem[0] = arg1
        mem[32] = 1
        s = 0
        idx = 0
        while uint8(idx) < uint256(event[arg1].field_2304):
            require uint8(idx) < stor9[sha3(mem[0 len 64])]
            mem[0] = sha3(mem[0 len 64]) + 9
            call address(stor[uint8(idx) + sha3(mem[0])]).0x70a08231 with:
                 gas gas_remaining - 25050 wei
                args msg.sender
            require ext_call.success
            require uint8(idx) < uint256(event[arg1].field_2304)
            mem[100] = msg.sender
            mem[132] = ext_call.return_data[0]
            call address(stor[uint8(idx) + ('array', 9, ('map', ('param', 'arg1'), ('name', 'event', 1)))].field_0).0x721a37d2 with:
                 gas gas_remaining - 25050 wei
                args msg.sender, ext_call.return_data[0]
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            require ext_call.return_data[0]
            mem[0] = arg1
            mem[32] = 1
            s = ext_call.return_data[0]
            idx = idx + 1
            continue 
        call address(event[arg1].field_1024).0xa9059cbb with:
             gas gas_remaining - 25050 wei
            args msg.sender, ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
        uint8(stor0.field_0) = 0
        return ext_call.return_data[0]
    if uint256(event[arg1].field_2048) >= uint256(event[arg1].field_512):
        if uint256(event[arg1].field_2048) <= uint256(event[arg1].field_768):
            require 1 < uint256(event[arg1].field_2304)
            call address(event[arg1][9].field_256).0x70a08231 with:
                 gas gas_remaining - 25050 wei
                args msg.sender
            require ext_call.success
            require 0 < uint256(event[arg1].field_2304)
            call address(event[arg1][9].field_0).0x70a08231 with:
                 gas gas_remaining - 25050 wei
                args msg.sender
            require ext_call.success
            mem[0] = arg1
            mem[32] = 1
            s = 0
            idx = 0
            while uint8(idx) < uint256(event[arg1].field_2304):
                require uint8(idx) < stor9[sha3(mem[0 len 64])]
                mem[0] = sha3(mem[0 len 64]) + 9
                call address(stor[uint8(idx) + sha3(mem[0])]).0x70a08231 with:
                     gas gas_remaining - 25050 wei
                    args msg.sender
                require ext_call.success
                require uint8(idx) < uint256(event[arg1].field_2304)
                mem[100] = msg.sender
                mem[132] = ext_call.return_data[0]
                call address(stor[uint8(idx) + ('array', 9, ('map', ('param', 'arg1'), ('name', 'event', 1)))].field_0).0x721a37d2 with:
                     gas gas_remaining - 25050 wei
                    args msg.sender, ext_call.return_data[0]
                mem[96] = ext_call.return_data[0]
                require ext_call.success
                require ext_call.return_data[0]
                mem[0] = arg1
                mem[32] = 1
                s = ext_call.return_data[0]
                idx = idx + 1
                continue 
            call address(event[arg1].field_1024).0xa9059cbb with:
                 gas gas_remaining - 25050 wei
                args msg.sender, (ext_call.return_data[0] * uint16(-((10000 * uint256(event[arg1].field_2048)) - (10000 * uint256(event[arg1].field_512)) / uint256(event[arg1].field_768) - uint256(event[arg1].field_512)) + 10000)) + (10000 * ext_call.return_data[0]) - (uint16(-((10000 * uint256(event[arg1].field_2048)) - (10000 * uint256(event[arg1].field_512)) / uint256(event[arg1].field_768) - uint256(event[arg1].field_512)) + 10000) * ext_call.return_data[0]) / 10000
            require ext_call.success
            require ext_call.return_data[0]
            uint8(stor0.field_0) = 0
            return ((ext_call.return_data[0] * uint16(-((10000 * uint256(event[arg1].field_2048)) - (10000 * uint256(event[arg1].field_512)) / uint256(event[arg1].field_768) - uint256(event[arg1].field_512)) + 10000)) + (10000 * ext_call.return_data[0]) - (uint16(-((10000 * uint256(event[arg1].field_2048)) - (10000 * uint256(event[arg1].field_512)) / uint256(event[arg1].field_768) - uint256(event[arg1].field_512)) + 10000) * ext_call.return_data[0]) / 10000)
    require 1 < uint256(event[arg1].field_2304)
    call address(event[arg1][9].field_256).0x70a08231 with:
         gas gas_remaining - 25050 wei
        args msg.sender
    require ext_call.success
    require 0 < uint256(event[arg1].field_2304)
    call address(event[arg1][9].field_0).0x70a08231 with:
         gas gas_remaining - 25050 wei
        args msg.sender
    require ext_call.success
    mem[0] = arg1
    mem[32] = 1
    s = 0
    idx = 0
    while uint8(idx) < uint256(event[arg1].field_2304):
        require uint8(idx) < stor9[sha3(mem[0 len 64])]
        mem[0] = sha3(mem[0 len 64]) + 9
        call address(stor[uint8(idx) + sha3(mem[0])]).0x70a08231 with:
             gas gas_remaining - 25050 wei
            args msg.sender
        require ext_call.success
        require uint8(idx) < uint256(event[arg1].field_2304)
        mem[100] = msg.sender
        mem[132] = ext_call.return_data[0]
        call address(stor[uint8(idx) + ('array', 9, ('map', ('param', 'arg1'), ('name', 'event', 1)))].field_0).0x721a37d2 with:
             gas gas_remaining - 25050 wei
            args msg.sender, ext_call.return_data[0]
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
        mem[0] = arg1
        mem[32] = 1
        s = ext_call.return_data[0]
        idx = idx + 1
        continue 
    call address(event[arg1].field_1024).0xa9059cbb with:
         gas gas_remaining - 25050 wei
        args msg.sender, 10000 * ext_call.return_data[0] / 10000
    require ext_call.success
    require ext_call.return_data[0]
    uint8(stor0.field_0) = 0
    return (10000 * ext_call.return_data[0] / 10000)
}

function getShares(address arg1, bytes32[] arg2) payable {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0
    mem[(32 * arg2.length) + 160] = 0
    idx = 0
    s = 0
    while idx < arg2.length:
        require idx < arg2.length
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 1
        if uint8(var14006) < uint256(event[mem[(32 * idx) + 128]].field_2304):
            require idx < arg2.length
            require uint8(var18007) < uint256(event[mem[(32 * idx) + 128]].field_2304)
            mem[(32 * arg2.length) + 196] = arg1
            call address(stor[var20001 + sha3(var20002)]).0x70a08231 with:
                 gas gas_remaining - 25050 wei
                args arg1
            mem[(32 * arg2.length) + 192] = ext_call.return_data[0]
            require ext_call.success
            if ext_call.return_data[0] > 0:
                require idx < arg2.length
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 1
                idx = idx + 1
                s = s + uint256(event[mem[(32 * idx) + 128]].field_2304) + 2
                continue 
            require idx < arg2.length
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 1
            _680 = sha3(mem[(32 * idx) + 128], 1)
            t = var22006
            while uint8(t + 1) < stor9[_680]:
                require idx < arg2.length
                require uint8(t + 1) < stor9[('map', ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32)), ('mem', ('range', 32, 32)))]
                _703 = sha3(sha3(mem[(32 * idx) + 128], mem[32]) + 9)
                mem[(32 * arg2.length) + 196] = arg1
                call address(stor[uint8(t + 1) + _703]).0x70a08231 with:
                     gas gas_remaining - 25050 wei
                    args arg1
                mem[(32 * arg2.length) + 192] = ext_call.return_data[0]
                require ext_call.success
                if ext_call.return_data[0] <= 0:
                    require idx < arg2.length
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 1
                    t = t + 1
                    continue 
                require idx < arg2.length
                require idx + 1 < arg2.length
                mem[0] = mem[(32 * idx + 1) + 128]
                mem[32] = 1
                idx = idx + 1
                s = s + uint256(event[mem[(32 * idx) + 128]].field_2304) + 2
                continue 
        idx = idx + 1
        s = s
        continue 
    mem[(32 * arg2.length) + 228] = s
    idx = 0
    t = 0
    while idx < arg2.length:
        require idx < arg2.length
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 1
        if uint8(var19006) >= uint256(event[mem[(32 * idx) + 128]].field_2304):
            idx = idx + 1
            t = t
            continue 
        require idx < arg2.length
        require uint8(var23007) < uint256(event[mem[(32 * idx) + 128]].field_2304)
        mem[(32 * arg2.length) + (32 * s) + 264] = arg1
        call address(stor[var25001 + sha3(var25002)]).0x70a08231 with:
             gas gas_remaining - 25050 wei
            args address(arg1)
        mem[(32 * arg2.length) + (32 * s) + 260] = ext_call.return_data[0]
        require ext_call.success
        if ext_call.return_data[0] <= 0:
            require idx < arg2.length
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 1
            _794 = sha3(mem[(32 * idx) + 128], 1)
            u = var27006
            while uint8(u + 1) < stor9[_794]:
                require idx < arg2.length
                require uint8(u + 1) < stor9[('map', ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32)), ('mem', ('range', 32, 32)))]
                _819 = sha3(sha3(mem[(32 * idx) + 128], mem[32]) + 9)
                mem[(32 * arg2.length) + (32 * s) + 264] = arg1
                call address(stor[uint8(u + 1) + _819]).0x70a08231 with:
                     gas gas_remaining - 25050 wei
                    args address(arg1)
                mem[(32 * arg2.length) + (32 * s) + 260] = ext_call.return_data[0]
                require ext_call.success
                if ext_call.return_data[0] <= 0:
                    require idx < arg2.length
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 1
                    u = u + 1
                    continue 
                require idx < arg2.length
                require t < s
                mem[(32 * arg2.length) + (32 * t) + 260] = mem[(32 * idx) + 128]
                require idx < arg2.length
                require t + 1 < s
                mem[(32 * arg2.length) + (32 * t + 1) + 260] = uint256(event[mem[(32 * idx) + 128]].field_2304)
                require idx < arg2.length
                if uint8(var44006) >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                    require idx + 1 < arg2.length
                    mem[0] = mem[(32 * idx + 1) + 128]
                    mem[32] = 1
                    idx = idx + 1
                    t = t + uint8(var44006 + 2)
                    continue 
                require idx < arg2.length
                require uint8(var48006) < uint256(event[mem[(32 * idx) + 128]].field_2304)
                mem[(32 * arg2.length) + (32 * s) + 264] = arg1
                call address(stor[var50001 + sha3(var50002)]).0x70a08231 with:
                     gas gas_remaining - 25050 wei
                    args address(arg1)
                mem[(32 * arg2.length) + (32 * s) + 260] = ext_call.return_data[0]
                require ext_call.success
                require t + uint8(var50004) + 2 < s
                mem[(32 * arg2.length) + (32 * t + uint8(var50004) + 2) + 260] = ext_call.return_data[0]
                require idx < arg2.length
                mem[32] = 1
                _1153 = sha3(mem[(32 * idx) + 128], 1)
                v = (32 * arg2.length) + (32 * s) + 296
                v = address(stor[var50001 + sha3(var50002)])
                u = var50004
                while uint8(u + 1) < stor9[_1153]:
                    require idx < arg2.length
                    require uint8(u + 1) < stor9[('map', ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32)), ('mem', ('range', 32, 32)))]
                    _1163 = sha3(sha3(mem[(32 * idx) + 128], mem[32]) + 9)
                    mem[(32 * arg2.length) + (32 * s) + 264] = arg1
                    call address(stor[uint8(u + 1) + _1163]).0x70a08231 with:
                         gas gas_remaining - 25050 wei
                        args address(arg1)
                    mem[(32 * arg2.length) + (32 * s) + 260] = ext_call.return_data[0]
                    require ext_call.success
                    require idx < arg2.length
                    require t + uint8(u + 1) + 2 < s
                    mem[(32 * arg2.length) + (32 * t + uint8(u + 1) + 2) + 260] = ext_call.return_data[0]
                    require idx < arg2.length
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 1
                    v = (32 * arg2.length) + (32 * s) + 296
                    v = address(stor[uint8(u + 1) + _1163])
                    u = u + 1
                    continue 
                require idx + 1 < arg2.length
                mem[0] = mem[(32 * idx + 1) + 128]
                mem[32] = 1
                idx = idx + 1
                t = t + uint8(None + 3)
                continue 
            idx = idx + 1
            t = t
            continue 
        require idx < arg2.length
        require t < s
        mem[(32 * arg2.length) + (32 * t) + 260] = mem[(32 * idx) + 128]
        require idx < arg2.length
        require t + 1 < s
        mem[(32 * arg2.length) + (32 * t + 1) + 260] = uint256(event[mem[(32 * idx) + 128]].field_2304)
        require idx < arg2.length
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 1
        if uint8(var36006) >= uint256(event[mem[(32 * idx) + 128]].field_2304):
            idx = idx + 1
            t = t + uint8(var36006 + 2)
            continue 
        require idx < arg2.length
        require uint8(var40006) < uint256(event[mem[(32 * idx) + 128]].field_2304)
        mem[(32 * arg2.length) + (32 * s) + 264] = arg1
        call address(stor[var42001 + sha3(var42002)]).0x70a08231 with:
             gas gas_remaining - 25050 wei
            args address(arg1)
        mem[(32 * arg2.length) + (32 * s) + 260] = ext_call.return_data[0]
        require ext_call.success
        require t + uint8(var42004) + 2 < s
        mem[(32 * arg2.length) + (32 * t + uint8(var42004) + 2) + 260] = ext_call.return_data[0]
        require idx < arg2.length
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 1
        _1113 = sha3(mem[(32 * idx) + 128], 1)
        v = (32 * arg2.length) + (32 * s) + 296
        v = address(stor[var42001 + sha3(var42002)])
        u = var42004
        while uint8(u + 1) < stor9[_1113]:
            require idx < arg2.length
            require uint8(u + 1) < stor9[('map', ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32)), ('mem', ('range', 32, 32)))]
            _1133 = sha3(sha3(mem[(32 * idx) + 128], mem[32]) + 9)
            mem[(32 * arg2.length) + (32 * s) + 264] = arg1
            call address(stor[uint8(u + 1) + _1133]).0x70a08231 with:
                 gas gas_remaining - 25050 wei
                args address(arg1)
            mem[(32 * arg2.length) + (32 * s) + 260] = ext_call.return_data[0]
            require ext_call.success
            require t + uint8(u + 1) + 2 < s
            mem[(32 * arg2.length) + (32 * t + uint8(u + 1) + 2) + 260] = ext_call.return_data[0]
            require idx < arg2.length
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 1
            v = (32 * arg2.length) + (32 * s) + 296
            v = address(stor[uint8(u + 1) + _1133])
            u = u + 1
            continue 
        idx = idx + 1
        t = t + uint8(None + 3)
        continue 
    return Array(len=s, data=mem[(32 * arg2.length) + 260 len 32 * s])
}

function sub_d6911046(?) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    mem[(32 * arg1.length) + 160] = 0
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 1
        if uint256(event[mem[(32 * idx) + 128]].field_0) <= 0:
            idx = idx + 1
            s = s
            continue 
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 128]
        if arg2 != 0:
            if arg2 != address(event[mem[(32 * idx) + 128]].field_1280):
                idx = idx + 1
                s = s
                continue 
        mem[32] = 1
        if arg3 != 0:
            if address(event[mem[(32 * idx) + 128]].field_1024) != arg3:
                idx = idx + 1
                s = s
                continue 
        if arg4 != 0:
            if address(event[mem[(32 * idx) + 128]].field_256) != arg4:
                idx = idx + 1
                s = s
                continue 
        idx = idx + 1
        s = s + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
        continue 
    mem[(32 * arg1.length) + 192] = s
    idx = 0
    t = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 1
        if uint256(event[mem[(32 * idx) + 128]].field_0) <= 0:
            idx = idx + 1
            t = t
            continue 
        require idx < arg1.length
        if 0 == arg2:
            if 0 == arg3:
                if 0 == arg4:
                    require t < s
                    mem[(32 * arg1.length) + (32 * t) + 224] = mem[(32 * idx) + 128]
                    require idx < arg1.length
                    require t + 1 < s
                    mem[(32 * arg1.length) + (32 * t + 1) + 224] = uint256(event[mem[(32 * idx) + 128]].field_0)
                    require idx < arg1.length
                    require t + 2 < s
                    mem[(32 * arg1.length) + (32 * t + 2) + 224] = address(event[mem[(32 * idx) + 128]].field_256)
                    require idx < arg1.length
                    require t + 3 < s
                    if not uint8(event[mem[(32 * idx) + 128]].field_416):
                        mem[(32 * arg1.length) + (32 * t + 3) + 224] = 0
                        require idx < arg1.length
                        require t + 4 < s
                        mem[(32 * arg1.length) + (32 * t + 4) + 224] = uint256(event[mem[(32 * idx) + 128]].field_512)
                        require idx < arg1.length
                        require t + 5 < s
                        mem[(32 * arg1.length) + (32 * t + 5) + 224] = uint256(event[mem[(32 * idx) + 128]].field_768)
                        require idx < arg1.length
                        require t + 6 < s
                        mem[(32 * arg1.length) + (32 * t + 6) + 224] = address(event[mem[(32 * idx) + 128]].field_1024)
                        require idx < arg1.length
                        require t + 7 < s
                        mem[(32 * arg1.length) + (32 * t + 7) + 224] = address(event[mem[(32 * idx) + 128]].field_1280)
                        require idx < arg1.length
                        require t + 8 < s
                        mem[(32 * arg1.length) + (32 * t + 8) + 224] = uint256(event[mem[(32 * idx) + 128]].field_1536)
                        require idx < arg1.length
                        require t + 9 < s
                        if not uint8(event[mem[(32 * idx) + 128]].field_1792):
                            mem[(32 * arg1.length) + (32 * t + 9) + 224] = 0
                            require idx < arg1.length
                            require t + 10 < s
                            mem[(32 * arg1.length) + (32 * t + 10) + 224] = uint256(event[mem[(32 * idx) + 128]].field_2048)
                            require idx < arg1.length
                            require t + 11 < s
                            mem[(32 * arg1.length) + (32 * t + 11) + 224] = uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require idx < arg1.length
                            require idx < arg1.length
                            if var54005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var58005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var60003 + t + 12 < s
                            mem[(32 * arg1.length) + (32 * var62001) + 224] = var62003
                            require idx < arg1.length
                            require idx < arg1.length
                            if var66005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var70005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var72003 + t + 12 < s
                            mem[(32 * arg1.length) + (32 * var74001) + 224] = var74003
                            require idx < arg1.length
                            require idx < arg1.length
                            if var78005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var82005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var84003 + t + 12 < s
                            # nil
                        else:
                            mem[(32 * arg1.length) + (32 * t + 9) + 224] = 1
                            require idx < arg1.length
                            require t + 10 < s
                            mem[(32 * arg1.length) + (32 * t + 10) + 224] = uint256(event[mem[(32 * idx) + 128]].field_2048)
                            require idx < arg1.length
                            require t + 11 < s
                            mem[(32 * arg1.length) + (32 * t + 11) + 224] = uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require idx < arg1.length
                            require idx < arg1.length
                            if var54005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var58005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var60003 + t + 12 < s
                            mem[(32 * arg1.length) + (32 * var62001) + 224] = var62003
                            require idx < arg1.length
                            require idx < arg1.length
                            if var66005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var70005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var72003 + t + 12 < s
                            mem[(32 * arg1.length) + (32 * var74001) + 224] = var74003
                            require idx < arg1.length
                            require idx < arg1.length
                            if var78005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var82005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var84003 + t + 12 < s
                            # nil
                    else:
                        mem[(32 * arg1.length) + (32 * t + 3) + 224] = 1
                        require idx < arg1.length
                        require t + 4 < s
                        mem[(32 * arg1.length) + (32 * t + 4) + 224] = uint256(event[mem[(32 * idx) + 128]].field_512)
                        require idx < arg1.length
                        require t + 5 < s
                        mem[(32 * arg1.length) + (32 * t + 5) + 224] = uint256(event[mem[(32 * idx) + 128]].field_768)
                        require idx < arg1.length
                        require t + 6 < s
                        mem[(32 * arg1.length) + (32 * t + 6) + 224] = address(event[mem[(32 * idx) + 128]].field_1024)
                        require idx < arg1.length
                        require t + 7 < s
                        mem[(32 * arg1.length) + (32 * t + 7) + 224] = address(event[mem[(32 * idx) + 128]].field_1280)
                        require idx < arg1.length
                        require t + 8 < s
                        mem[(32 * arg1.length) + (32 * t + 8) + 224] = uint256(event[mem[(32 * idx) + 128]].field_1536)
                        require idx < arg1.length
                        require t + 9 < s
                        if not uint8(event[mem[(32 * idx) + 128]].field_1792):
                            mem[(32 * arg1.length) + (32 * t + 9) + 224] = 0
                            require idx < arg1.length
                            require t + 10 < s
                            mem[(32 * arg1.length) + (32 * t + 10) + 224] = uint256(event[mem[(32 * idx) + 128]].field_2048)
                            require idx < arg1.length
                            require t + 11 < s
                            mem[(32 * arg1.length) + (32 * t + 11) + 224] = uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require idx < arg1.length
                            require idx < arg1.length
                            if var54005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var58005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var60003 + t + 12 < s
                            mem[(32 * arg1.length) + (32 * var62001) + 224] = var62003
                            require idx < arg1.length
                            require idx < arg1.length
                            if var66005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var70005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var72003 + t + 12 < s
                            mem[(32 * arg1.length) + (32 * var74001) + 224] = var74003
                            require idx < arg1.length
                            require idx < arg1.length
                            if var78005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var82005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var84003 + t + 12 < s
                            # nil
                        else:
                            mem[(32 * arg1.length) + (32 * t + 9) + 224] = 1
                            require idx < arg1.length
                            require t + 10 < s
                            mem[(32 * arg1.length) + (32 * t + 10) + 224] = uint256(event[mem[(32 * idx) + 128]].field_2048)
                            require idx < arg1.length
                            require t + 11 < s
                            mem[(32 * arg1.length) + (32 * t + 11) + 224] = uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require idx < arg1.length
                            require idx < arg1.length
                            if var54005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var58005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var60003 + t + 12 < s
                            mem[(32 * arg1.length) + (32 * var62001) + 224] = var62003
                            require idx < arg1.length
                            require idx < arg1.length
                            if var66005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var70005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var72003 + t + 12 < s
                            mem[(32 * arg1.length) + (32 * var74001) + 224] = var74003
                            require idx < arg1.length
                            require idx < arg1.length
                            if var78005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var82005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var84003 + t + 12 < s
                            # nil
                else:
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 1
                    if address(event[mem[(32 * idx) + 128]].field_256) != arg4:
                        idx = idx + 1
                        t = t
                        continue 
                    require idx < arg1.length
                    require t < s
                    mem[(32 * arg1.length) + (32 * t) + 224] = mem[(32 * idx) + 128]
                    require idx < arg1.length
                    require t + 1 < s
                    mem[(32 * arg1.length) + (32 * t + 1) + 224] = uint256(event[mem[(32 * idx) + 128]].field_0)
                    require idx < arg1.length
                    require t + 2 < s
                    mem[(32 * arg1.length) + (32 * t + 2) + 224] = address(event[mem[(32 * idx) + 128]].field_256)
                    require idx < arg1.length
                    require t + 3 < s
                    if not uint8(event[mem[(32 * idx) + 128]].field_416):
                        mem[(32 * arg1.length) + (32 * t + 3) + 224] = 0
                        require idx < arg1.length
                        require t + 4 < s
                        mem[(32 * arg1.length) + (32 * t + 4) + 224] = uint256(event[mem[(32 * idx) + 128]].field_512)
                        require idx < arg1.length
                        require t + 5 < s
                        mem[(32 * arg1.length) + (32 * t + 5) + 224] = uint256(event[mem[(32 * idx) + 128]].field_768)
                        require idx < arg1.length
                        require t + 6 < s
                        mem[(32 * arg1.length) + (32 * t + 6) + 224] = address(event[mem[(32 * idx) + 128]].field_1024)
                        require idx < arg1.length
                        require t + 7 < s
                        mem[(32 * arg1.length) + (32 * t + 7) + 224] = address(event[mem[(32 * idx) + 128]].field_1280)
                        require idx < arg1.length
                        require t + 8 < s
                        mem[(32 * arg1.length) + (32 * t + 8) + 224] = uint256(event[mem[(32 * idx) + 128]].field_1536)
                        require idx < arg1.length
                        require t + 9 < s
                        if not uint8(event[mem[(32 * idx) + 128]].field_1792):
                            mem[(32 * arg1.length) + (32 * t + 9) + 224] = 0
                            require idx < arg1.length
                            require t + 10 < s
                            mem[(32 * arg1.length) + (32 * t + 10) + 224] = uint256(event[mem[(32 * idx) + 128]].field_2048)
                            require idx < arg1.length
                            require t + 11 < s
                            mem[(32 * arg1.length) + (32 * t + 11) + 224] = uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require idx < arg1.length
                            require idx < arg1.length
                            if var56005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var60005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var62003 + t + 12 < s
                            mem[(32 * arg1.length) + (32 * var64001) + 224] = var64003
                            require idx < arg1.length
                            require idx < arg1.length
                            if var68005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var72005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var74003 + t + 12 < s
                            mem[(32 * arg1.length) + (32 * var76001) + 224] = var76003
                            require idx < arg1.length
                            require idx < arg1.length
                            if var80005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var84005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var86003 + t + 12 < s
                            # nil
                        else:
                            mem[(32 * arg1.length) + (32 * t + 9) + 224] = 1
                            require idx < arg1.length
                            require t + 10 < s
                            mem[(32 * arg1.length) + (32 * t + 10) + 224] = uint256(event[mem[(32 * idx) + 128]].field_2048)
                            require idx < arg1.length
                            require t + 11 < s
                            mem[(32 * arg1.length) + (32 * t + 11) + 224] = uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require idx < arg1.length
                            require idx < arg1.length
                            if var56005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var60005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var62003 + t + 12 < s
                            mem[(32 * arg1.length) + (32 * var64001) + 224] = var64003
                            require idx < arg1.length
                            require idx < arg1.length
                            if var68005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var72005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var74003 + t + 12 < s
                            mem[(32 * arg1.length) + (32 * var76001) + 224] = var76003
                            require idx < arg1.length
                            require idx < arg1.length
                            if var80005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var84005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var86003 + t + 12 < s
                            # nil
                    else:
                        mem[(32 * arg1.length) + (32 * t + 3) + 224] = 1
                        require idx < arg1.length
                        require t + 4 < s
                        mem[(32 * arg1.length) + (32 * t + 4) + 224] = uint256(event[mem[(32 * idx) + 128]].field_512)
                        require idx < arg1.length
                        require t + 5 < s
                        mem[(32 * arg1.length) + (32 * t + 5) + 224] = uint256(event[mem[(32 * idx) + 128]].field_768)
                        require idx < arg1.length
                        require t + 6 < s
                        mem[(32 * arg1.length) + (32 * t + 6) + 224] = address(event[mem[(32 * idx) + 128]].field_1024)
                        require idx < arg1.length
                        require t + 7 < s
                        mem[(32 * arg1.length) + (32 * t + 7) + 224] = address(event[mem[(32 * idx) + 128]].field_1280)
                        require idx < arg1.length
                        require t + 8 < s
                        mem[(32 * arg1.length) + (32 * t + 8) + 224] = uint256(event[mem[(32 * idx) + 128]].field_1536)
                        require idx < arg1.length
                        require t + 9 < s
                        if not uint8(event[mem[(32 * idx) + 128]].field_1792):
                            mem[(32 * arg1.length) + (32 * t + 9) + 224] = 0
                            require idx < arg1.length
                            require t + 10 < s
                            mem[(32 * arg1.length) + (32 * t + 10) + 224] = uint256(event[mem[(32 * idx) + 128]].field_2048)
                            require idx < arg1.length
                            require t + 11 < s
                            mem[(32 * arg1.length) + (32 * t + 11) + 224] = uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require idx < arg1.length
                            require idx < arg1.length
                            if var56005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var60005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var62003 + t + 12 < s
                            mem[(32 * arg1.length) + (32 * var64001) + 224] = var64003
                            require idx < arg1.length
                            require idx < arg1.length
                            if var68005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var72005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var74003 + t + 12 < s
                            mem[(32 * arg1.length) + (32 * var76001) + 224] = var76003
                            require idx < arg1.length
                            require idx < arg1.length
                            if var80005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var84005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var86003 + t + 12 < s
                            # nil
                        else:
                            mem[(32 * arg1.length) + (32 * t + 9) + 224] = 1
                            require idx < arg1.length
                            require t + 10 < s
                            mem[(32 * arg1.length) + (32 * t + 10) + 224] = uint256(event[mem[(32 * idx) + 128]].field_2048)
                            require idx < arg1.length
                            require t + 11 < s
                            mem[(32 * arg1.length) + (32 * t + 11) + 224] = uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require idx < arg1.length
                            require idx < arg1.length
                            if var56005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var60005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var62003 + t + 12 < s
                            mem[(32 * arg1.length) + (32 * var64001) + 224] = var64003
                            require idx < arg1.length
                            require idx < arg1.length
                            if var68005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var72005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var74003 + t + 12 < s
                            mem[(32 * arg1.length) + (32 * var76001) + 224] = var76003
                            require idx < arg1.length
                            require idx < arg1.length
                            if var80005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var84005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var86003 + t + 12 < s
                            # nil
            else:
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 1
                if address(event[mem[(32 * idx) + 128]].field_1024) != arg3:
                    idx = idx + 1
                    t = t
                    continue 
                require idx < arg1.length
                if 0 == arg4:
                    require t < s
                    mem[(32 * arg1.length) + (32 * t) + 224] = mem[(32 * idx) + 128]
                    require idx < arg1.length
                    require t + 1 < s
                    mem[(32 * arg1.length) + (32 * t + 1) + 224] = uint256(event[mem[(32 * idx) + 128]].field_0)
                    require idx < arg1.length
                    require t + 2 < s
                    mem[(32 * arg1.length) + (32 * t + 2) + 224] = address(event[mem[(32 * idx) + 128]].field_256)
                    require idx < arg1.length
                    require t + 3 < s
                    if not uint8(event[mem[(32 * idx) + 128]].field_416):
                        mem[(32 * arg1.length) + (32 * t + 3) + 224] = 0
                        require idx < arg1.length
                        require t + 4 < s
                        mem[(32 * arg1.length) + (32 * t + 4) + 224] = uint256(event[mem[(32 * idx) + 128]].field_512)
                        require idx < arg1.length
                        require t + 5 < s
                        mem[(32 * arg1.length) + (32 * t + 5) + 224] = uint256(event[mem[(32 * idx) + 128]].field_768)
                        require idx < arg1.length
                        require t + 6 < s
                        mem[(32 * arg1.length) + (32 * t + 6) + 224] = address(event[mem[(32 * idx) + 128]].field_1024)
                        require idx < arg1.length
                        require t + 7 < s
                        mem[(32 * arg1.length) + (32 * t + 7) + 224] = address(event[mem[(32 * idx) + 128]].field_1280)
                        require idx < arg1.length
                        require t + 8 < s
                        mem[(32 * arg1.length) + (32 * t + 8) + 224] = uint256(event[mem[(32 * idx) + 128]].field_1536)
                        require idx < arg1.length
                        require t + 9 < s
                        if not uint8(event[mem[(32 * idx) + 128]].field_1792):
                            mem[(32 * arg1.length) + (32 * t + 9) + 224] = 0
                            require idx < arg1.length
                            require t + 10 < s
                            mem[(32 * arg1.length) + (32 * t + 10) + 224] = uint256(event[mem[(32 * idx) + 128]].field_2048)
                            require idx < arg1.length
                            require t + 11 < s
                            mem[(32 * arg1.length) + (32 * t + 11) + 224] = uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require idx < arg1.length
                            require idx < arg1.length
                            if var56005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var60005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var62003 + t + 12 < s
                            mem[(32 * arg1.length) + (32 * var64001) + 224] = var64003
                            require idx < arg1.length
                            require idx < arg1.length
                            if var68005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var72005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var74003 + t + 12 < s
                            mem[(32 * arg1.length) + (32 * var76001) + 224] = var76003
                            require idx < arg1.length
                            require idx < arg1.length
                            if var80005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var84005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var86003 + t + 12 < s
                            # nil
                        else:
                            mem[(32 * arg1.length) + (32 * t + 9) + 224] = 1
                            require idx < arg1.length
                            require t + 10 < s
                            mem[(32 * arg1.length) + (32 * t + 10) + 224] = uint256(event[mem[(32 * idx) + 128]].field_2048)
                            require idx < arg1.length
                            require t + 11 < s
                            mem[(32 * arg1.length) + (32 * t + 11) + 224] = uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require idx < arg1.length
                            require idx < arg1.length
                            if var56005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var60005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var62003 + t + 12 < s
                            mem[(32 * arg1.length) + (32 * var64001) + 224] = var64003
                            require idx < arg1.length
                            require idx < arg1.length
                            if var68005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var72005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var74003 + t + 12 < s
                            mem[(32 * arg1.length) + (32 * var76001) + 224] = var76003
                            require idx < arg1.length
                            require idx < arg1.length
                            if var80005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var84005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var86003 + t + 12 < s
                            # nil
                    else:
                        mem[(32 * arg1.length) + (32 * t + 3) + 224] = 1
                        require idx < arg1.length
                        require t + 4 < s
                        mem[(32 * arg1.length) + (32 * t + 4) + 224] = uint256(event[mem[(32 * idx) + 128]].field_512)
                        require idx < arg1.length
                        require t + 5 < s
                        mem[(32 * arg1.length) + (32 * t + 5) + 224] = uint256(event[mem[(32 * idx) + 128]].field_768)
                        require idx < arg1.length
                        require t + 6 < s
                        mem[(32 * arg1.length) + (32 * t + 6) + 224] = address(event[mem[(32 * idx) + 128]].field_1024)
                        require idx < arg1.length
                        require t + 7 < s
                        mem[(32 * arg1.length) + (32 * t + 7) + 224] = address(event[mem[(32 * idx) + 128]].field_1280)
                        require idx < arg1.length
                        require t + 8 < s
                        mem[(32 * arg1.length) + (32 * t + 8) + 224] = uint256(event[mem[(32 * idx) + 128]].field_1536)
                        require idx < arg1.length
                        require t + 9 < s
                        if not uint8(event[mem[(32 * idx) + 128]].field_1792):
                            mem[(32 * arg1.length) + (32 * t + 9) + 224] = 0
                            require idx < arg1.length
                            require t + 10 < s
                            mem[(32 * arg1.length) + (32 * t + 10) + 224] = uint256(event[mem[(32 * idx) + 128]].field_2048)
                            require idx < arg1.length
                            require t + 11 < s
                            mem[(32 * arg1.length) + (32 * t + 11) + 224] = uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require idx < arg1.length
                            require idx < arg1.length
                            if var56005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var60005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var62003 + t + 12 < s
                            mem[(32 * arg1.length) + (32 * var64001) + 224] = var64003
                            require idx < arg1.length
                            require idx < arg1.length
                            if var68005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var72005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var74003 + t + 12 < s
                            mem[(32 * arg1.length) + (32 * var76001) + 224] = var76003
                            require idx < arg1.length
                            require idx < arg1.length
                            if var80005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var84005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var86003 + t + 12 < s
                            # nil
                        else:
                            mem[(32 * arg1.length) + (32 * t + 9) + 224] = 1
                            require idx < arg1.length
                            require t + 10 < s
                            mem[(32 * arg1.length) + (32 * t + 10) + 224] = uint256(event[mem[(32 * idx) + 128]].field_2048)
                            require idx < arg1.length
                            require t + 11 < s
                            mem[(32 * arg1.length) + (32 * t + 11) + 224] = uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require idx < arg1.length
                            require idx < arg1.length
                            if var56005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var60005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var62003 + t + 12 < s
                            mem[(32 * arg1.length) + (32 * var64001) + 224] = var64003
                            require idx < arg1.length
                            require idx < arg1.length
                            if var68005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var72005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var74003 + t + 12 < s
                            mem[(32 * arg1.length) + (32 * var76001) + 224] = var76003
                            require idx < arg1.length
                            require idx < arg1.length
                            if var80005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var84005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var86003 + t + 12 < s
                            # nil
                else:
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 1
                    if address(event[mem[(32 * idx) + 128]].field_256) != arg4:
                        idx = idx + 1
                        t = t
                        continue 
                    require idx < arg1.length
                    require t < s
                    mem[(32 * arg1.length) + (32 * t) + 224] = mem[(32 * idx) + 128]
                    require idx < arg1.length
                    require t + 1 < s
                    mem[(32 * arg1.length) + (32 * t + 1) + 224] = uint256(event[mem[(32 * idx) + 128]].field_0)
                    require idx < arg1.length
                    require t + 2 < s
                    mem[(32 * arg1.length) + (32 * t + 2) + 224] = address(event[mem[(32 * idx) + 128]].field_256)
                    require idx < arg1.length
                    require t + 3 < s
                    if not uint8(event[mem[(32 * idx) + 128]].field_416):
                        mem[(32 * arg1.length) + (32 * t + 3) + 224] = 0
                        require idx < arg1.length
                        require t + 4 < s
                        mem[(32 * arg1.length) + (32 * t + 4) + 224] = uint256(event[mem[(32 * idx) + 128]].field_512)
                        require idx < arg1.length
                        require t + 5 < s
                        mem[(32 * arg1.length) + (32 * t + 5) + 224] = uint256(event[mem[(32 * idx) + 128]].field_768)
                        require idx < arg1.length
                        require t + 6 < s
                        mem[(32 * arg1.length) + (32 * t + 6) + 224] = address(event[mem[(32 * idx) + 128]].field_1024)
                        require idx < arg1.length
                        require t + 7 < s
                        mem[(32 * arg1.length) + (32 * t + 7) + 224] = address(event[mem[(32 * idx) + 128]].field_1280)
                        require idx < arg1.length
                        require t + 8 < s
                        mem[(32 * arg1.length) + (32 * t + 8) + 224] = uint256(event[mem[(32 * idx) + 128]].field_1536)
                        require idx < arg1.length
                        require t + 9 < s
                        if not uint8(event[mem[(32 * idx) + 128]].field_1792):
                            mem[(32 * arg1.length) + (32 * t + 9) + 224] = 0
                            require idx < arg1.length
                            require t + 10 < s
                            mem[(32 * arg1.length) + (32 * t + 10) + 224] = uint256(event[mem[(32 * idx) + 128]].field_2048)
                            require idx < arg1.length
                            require t + 11 < s
                            mem[(32 * arg1.length) + (32 * t + 11) + 224] = uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require idx < arg1.length
                            require idx < arg1.length
                            if var58005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var62005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var64003 + t + 12 < s
                            mem[(32 * arg1.length) + (32 * var66001) + 224] = var66003
                            require idx < arg1.length
                            require idx < arg1.length
                            if var70005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var74005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var76003 + t + 12 < s
                            mem[(32 * arg1.length) + (32 * var78001) + 224] = var78003
                            require idx < arg1.length
                            require idx < arg1.length
                            if var82005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var86005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var88003 + t + 12 < s
                            # nil
                        else:
                            mem[(32 * arg1.length) + (32 * t + 9) + 224] = 1
                            require idx < arg1.length
                            require t + 10 < s
                            mem[(32 * arg1.length) + (32 * t + 10) + 224] = uint256(event[mem[(32 * idx) + 128]].field_2048)
                            require idx < arg1.length
                            require t + 11 < s
                            mem[(32 * arg1.length) + (32 * t + 11) + 224] = uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require idx < arg1.length
                            require idx < arg1.length
                            if var58005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var62005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var64003 + t + 12 < s
                            mem[(32 * arg1.length) + (32 * var66001) + 224] = var66003
                            require idx < arg1.length
                            require idx < arg1.length
                            if var70005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var74005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var76003 + t + 12 < s
                            mem[(32 * arg1.length) + (32 * var78001) + 224] = var78003
                            require idx < arg1.length
                            require idx < arg1.length
                            if var82005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var86005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var88003 + t + 12 < s
                            # nil
                    else:
                        mem[(32 * arg1.length) + (32 * t + 3) + 224] = 1
                        require idx < arg1.length
                        require t + 4 < s
                        mem[(32 * arg1.length) + (32 * t + 4) + 224] = uint256(event[mem[(32 * idx) + 128]].field_512)
                        require idx < arg1.length
                        require t + 5 < s
                        mem[(32 * arg1.length) + (32 * t + 5) + 224] = uint256(event[mem[(32 * idx) + 128]].field_768)
                        require idx < arg1.length
                        require t + 6 < s
                        mem[(32 * arg1.length) + (32 * t + 6) + 224] = address(event[mem[(32 * idx) + 128]].field_1024)
                        require idx < arg1.length
                        require t + 7 < s
                        mem[(32 * arg1.length) + (32 * t + 7) + 224] = address(event[mem[(32 * idx) + 128]].field_1280)
                        require idx < arg1.length
                        require t + 8 < s
                        mem[(32 * arg1.length) + (32 * t + 8) + 224] = uint256(event[mem[(32 * idx) + 128]].field_1536)
                        require idx < arg1.length
                        require t + 9 < s
                        if not uint8(event[mem[(32 * idx) + 128]].field_1792):
                            mem[(32 * arg1.length) + (32 * t + 9) + 224] = 0
                            require idx < arg1.length
                            require t + 10 < s
                            mem[(32 * arg1.length) + (32 * t + 10) + 224] = uint256(event[mem[(32 * idx) + 128]].field_2048)
                            require idx < arg1.length
                            require t + 11 < s
                            mem[(32 * arg1.length) + (32 * t + 11) + 224] = uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require idx < arg1.length
                            require idx < arg1.length
                            if var58005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var62005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var64003 + t + 12 < s
                            mem[(32 * arg1.length) + (32 * var66001) + 224] = var66003
                            require idx < arg1.length
                            require idx < arg1.length
                            if var70005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var74005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var76003 + t + 12 < s
                            mem[(32 * arg1.length) + (32 * var78001) + 224] = var78003
                            require idx < arg1.length
                            require idx < arg1.length
                            if var82005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var86005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var88003 + t + 12 < s
                            # nil
                        else:
                            mem[(32 * arg1.length) + (32 * t + 9) + 224] = 1
                            require idx < arg1.length
                            require t + 10 < s
                            mem[(32 * arg1.length) + (32 * t + 10) + 224] = uint256(event[mem[(32 * idx) + 128]].field_2048)
                            require idx < arg1.length
                            require t + 11 < s
                            mem[(32 * arg1.length) + (32 * t + 11) + 224] = uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require idx < arg1.length
                            require idx < arg1.length
                            if var58005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var62005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var64003 + t + 12 < s
                            mem[(32 * arg1.length) + (32 * var66001) + 224] = var66003
                            require idx < arg1.length
                            require idx < arg1.length
                            if var70005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var74005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var76003 + t + 12 < s
                            mem[(32 * arg1.length) + (32 * var78001) + 224] = var78003
                            require idx < arg1.length
                            require idx < arg1.length
                            if var82005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var86005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var88003 + t + 12 < s
                            # nil
        else:
            mem[0] = mem[(32 * idx) + 128]
            if arg2 != address(event[mem[(32 * idx) + 128]].field_1280):
                idx = idx + 1
                t = t
                continue 
            require idx < arg1.length
            if 0 == arg3:
                if 0 == arg4:
                    require t < s
                    mem[(32 * arg1.length) + (32 * t) + 224] = mem[(32 * idx) + 128]
                    require idx < arg1.length
                    require t + 1 < s
                    mem[(32 * arg1.length) + (32 * t + 1) + 224] = uint256(event[mem[(32 * idx) + 128]].field_0)
                    require idx < arg1.length
                    require t + 2 < s
                    mem[(32 * arg1.length) + (32 * t + 2) + 224] = address(event[mem[(32 * idx) + 128]].field_256)
                    require idx < arg1.length
                    require t + 3 < s
                    if not uint8(event[mem[(32 * idx) + 128]].field_416):
                        mem[(32 * arg1.length) + (32 * t + 3) + 224] = 0
                        require idx < arg1.length
                        require t + 4 < s
                        mem[(32 * arg1.length) + (32 * t + 4) + 224] = uint256(event[mem[(32 * idx) + 128]].field_512)
                        require idx < arg1.length
                        require t + 5 < s
                        mem[(32 * arg1.length) + (32 * t + 5) + 224] = uint256(event[mem[(32 * idx) + 128]].field_768)
                        require idx < arg1.length
                        require t + 6 < s
                        mem[(32 * arg1.length) + (32 * t + 6) + 224] = address(event[mem[(32 * idx) + 128]].field_1024)
                        require idx < arg1.length
                        require t + 7 < s
                        mem[(32 * arg1.length) + (32 * t + 7) + 224] = address(event[mem[(32 * idx) + 128]].field_1280)
                        require idx < arg1.length
                        require t + 8 < s
                        mem[(32 * arg1.length) + (32 * t + 8) + 224] = uint256(event[mem[(32 * idx) + 128]].field_1536)
                        require idx < arg1.length
                        require t + 9 < s
                        if not uint8(event[mem[(32 * idx) + 128]].field_1792):
                            mem[(32 * arg1.length) + (32 * t + 9) + 224] = 0
                            require idx < arg1.length
                            require t + 10 < s
                            mem[(32 * arg1.length) + (32 * t + 10) + 224] = uint256(event[mem[(32 * idx) + 128]].field_2048)
                            require idx < arg1.length
                            require t + 11 < s
                            mem[(32 * arg1.length) + (32 * t + 11) + 224] = uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require idx < arg1.length
                            require idx < arg1.length
                            if var56005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var60005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var62003 + t + 12 < s
                            mem[(32 * arg1.length) + (32 * var64001) + 224] = var64003
                            require idx < arg1.length
                            require idx < arg1.length
                            if var68005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var72005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var74003 + t + 12 < s
                            mem[(32 * arg1.length) + (32 * var76001) + 224] = var76003
                            require idx < arg1.length
                            require idx < arg1.length
                            if var80005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var84005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var86003 + t + 12 < s
                            # nil
                        else:
                            mem[(32 * arg1.length) + (32 * t + 9) + 224] = 1
                            require idx < arg1.length
                            require t + 10 < s
                            mem[(32 * arg1.length) + (32 * t + 10) + 224] = uint256(event[mem[(32 * idx) + 128]].field_2048)
                            require idx < arg1.length
                            require t + 11 < s
                            mem[(32 * arg1.length) + (32 * t + 11) + 224] = uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require idx < arg1.length
                            require idx < arg1.length
                            if var56005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var60005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var62003 + t + 12 < s
                            mem[(32 * arg1.length) + (32 * var64001) + 224] = var64003
                            require idx < arg1.length
                            require idx < arg1.length
                            if var68005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var72005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var74003 + t + 12 < s
                            mem[(32 * arg1.length) + (32 * var76001) + 224] = var76003
                            require idx < arg1.length
                            require idx < arg1.length
                            if var80005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var84005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var86003 + t + 12 < s
                            # nil
                    else:
                        mem[(32 * arg1.length) + (32 * t + 3) + 224] = 1
                        require idx < arg1.length
                        require t + 4 < s
                        mem[(32 * arg1.length) + (32 * t + 4) + 224] = uint256(event[mem[(32 * idx) + 128]].field_512)
                        require idx < arg1.length
                        require t + 5 < s
                        mem[(32 * arg1.length) + (32 * t + 5) + 224] = uint256(event[mem[(32 * idx) + 128]].field_768)
                        require idx < arg1.length
                        require t + 6 < s
                        mem[(32 * arg1.length) + (32 * t + 6) + 224] = address(event[mem[(32 * idx) + 128]].field_1024)
                        require idx < arg1.length
                        require t + 7 < s
                        mem[(32 * arg1.length) + (32 * t + 7) + 224] = address(event[mem[(32 * idx) + 128]].field_1280)
                        require idx < arg1.length
                        require t + 8 < s
                        mem[(32 * arg1.length) + (32 * t + 8) + 224] = uint256(event[mem[(32 * idx) + 128]].field_1536)
                        require idx < arg1.length
                        require t + 9 < s
                        if not uint8(event[mem[(32 * idx) + 128]].field_1792):
                            mem[(32 * arg1.length) + (32 * t + 9) + 224] = 0
                            require idx < arg1.length
                            require t + 10 < s
                            mem[(32 * arg1.length) + (32 * t + 10) + 224] = uint256(event[mem[(32 * idx) + 128]].field_2048)
                            require idx < arg1.length
                            require t + 11 < s
                            mem[(32 * arg1.length) + (32 * t + 11) + 224] = uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require idx < arg1.length
                            require idx < arg1.length
                            if var56005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var60005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var62003 + t + 12 < s
                            mem[(32 * arg1.length) + (32 * var64001) + 224] = var64003
                            require idx < arg1.length
                            require idx < arg1.length
                            if var68005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var72005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var74003 + t + 12 < s
                            mem[(32 * arg1.length) + (32 * var76001) + 224] = var76003
                            require idx < arg1.length
                            require idx < arg1.length
                            if var80005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var84005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var86003 + t + 12 < s
                            # nil
                        else:
                            mem[(32 * arg1.length) + (32 * t + 9) + 224] = 1
                            require idx < arg1.length
                            require t + 10 < s
                            mem[(32 * arg1.length) + (32 * t + 10) + 224] = uint256(event[mem[(32 * idx) + 128]].field_2048)
                            require idx < arg1.length
                            require t + 11 < s
                            mem[(32 * arg1.length) + (32 * t + 11) + 224] = uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require idx < arg1.length
                            require idx < arg1.length
                            if var56005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var60005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var62003 + t + 12 < s
                            mem[(32 * arg1.length) + (32 * var64001) + 224] = var64003
                            require idx < arg1.length
                            require idx < arg1.length
                            if var68005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var72005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var74003 + t + 12 < s
                            mem[(32 * arg1.length) + (32 * var76001) + 224] = var76003
                            require idx < arg1.length
                            require idx < arg1.length
                            if var80005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var84005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var86003 + t + 12 < s
                            # nil
                else:
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 1
                    if address(event[mem[(32 * idx) + 128]].field_256) != arg4:
                        idx = idx + 1
                        t = t
                        continue 
                    require idx < arg1.length
                    require t < s
                    mem[(32 * arg1.length) + (32 * t) + 224] = mem[(32 * idx) + 128]
                    require idx < arg1.length
                    require t + 1 < s
                    mem[(32 * arg1.length) + (32 * t + 1) + 224] = uint256(event[mem[(32 * idx) + 128]].field_0)
                    require idx < arg1.length
                    require t + 2 < s
                    mem[(32 * arg1.length) + (32 * t + 2) + 224] = address(event[mem[(32 * idx) + 128]].field_256)
                    require idx < arg1.length
                    require t + 3 < s
                    if not uint8(event[mem[(32 * idx) + 128]].field_416):
                        mem[(32 * arg1.length) + (32 * t + 3) + 224] = 0
                        require idx < arg1.length
                        require t + 4 < s
                        mem[(32 * arg1.length) + (32 * t + 4) + 224] = uint256(event[mem[(32 * idx) + 128]].field_512)
                        require idx < arg1.length
                        require t + 5 < s
                        mem[(32 * arg1.length) + (32 * t + 5) + 224] = uint256(event[mem[(32 * idx) + 128]].field_768)
                        require idx < arg1.length
                        require t + 6 < s
                        mem[(32 * arg1.length) + (32 * t + 6) + 224] = address(event[mem[(32 * idx) + 128]].field_1024)
                        require idx < arg1.length
                        require t + 7 < s
                        mem[(32 * arg1.length) + (32 * t + 7) + 224] = address(event[mem[(32 * idx) + 128]].field_1280)
                        require idx < arg1.length
                        require t + 8 < s
                        mem[(32 * arg1.length) + (32 * t + 8) + 224] = uint256(event[mem[(32 * idx) + 128]].field_1536)
                        require idx < arg1.length
                        require t + 9 < s
                        if not uint8(event[mem[(32 * idx) + 128]].field_1792):
                            mem[(32 * arg1.length) + (32 * t + 9) + 224] = 0
                            require idx < arg1.length
                            require t + 10 < s
                            mem[(32 * arg1.length) + (32 * t + 10) + 224] = uint256(event[mem[(32 * idx) + 128]].field_2048)
                            require idx < arg1.length
                            require t + 11 < s
                            mem[(32 * arg1.length) + (32 * t + 11) + 224] = uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require idx < arg1.length
                            require idx < arg1.length
                            if var58005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var62005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var64003 + t + 12 < s
                            mem[(32 * arg1.length) + (32 * var66001) + 224] = var66003
                            require idx < arg1.length
                            require idx < arg1.length
                            if var70005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var74005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var76003 + t + 12 < s
                            mem[(32 * arg1.length) + (32 * var78001) + 224] = var78003
                            require idx < arg1.length
                            require idx < arg1.length
                            if var82005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var86005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var88003 + t + 12 < s
                            # nil
                        else:
                            mem[(32 * arg1.length) + (32 * t + 9) + 224] = 1
                            require idx < arg1.length
                            require t + 10 < s
                            mem[(32 * arg1.length) + (32 * t + 10) + 224] = uint256(event[mem[(32 * idx) + 128]].field_2048)
                            require idx < arg1.length
                            require t + 11 < s
                            mem[(32 * arg1.length) + (32 * t + 11) + 224] = uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require idx < arg1.length
                            require idx < arg1.length
                            if var58005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var62005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var64003 + t + 12 < s
                            mem[(32 * arg1.length) + (32 * var66001) + 224] = var66003
                            require idx < arg1.length
                            require idx < arg1.length
                            if var70005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var74005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var76003 + t + 12 < s
                            mem[(32 * arg1.length) + (32 * var78001) + 224] = var78003
                            require idx < arg1.length
                            require idx < arg1.length
                            if var82005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var86005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var88003 + t + 12 < s
                            # nil
                    else:
                        mem[(32 * arg1.length) + (32 * t + 3) + 224] = 1
                        require idx < arg1.length
                        require t + 4 < s
                        mem[(32 * arg1.length) + (32 * t + 4) + 224] = uint256(event[mem[(32 * idx) + 128]].field_512)
                        require idx < arg1.length
                        require t + 5 < s
                        mem[(32 * arg1.length) + (32 * t + 5) + 224] = uint256(event[mem[(32 * idx) + 128]].field_768)
                        require idx < arg1.length
                        require t + 6 < s
                        mem[(32 * arg1.length) + (32 * t + 6) + 224] = address(event[mem[(32 * idx) + 128]].field_1024)
                        require idx < arg1.length
                        require t + 7 < s
                        mem[(32 * arg1.length) + (32 * t + 7) + 224] = address(event[mem[(32 * idx) + 128]].field_1280)
                        require idx < arg1.length
                        require t + 8 < s
                        mem[(32 * arg1.length) + (32 * t + 8) + 224] = uint256(event[mem[(32 * idx) + 128]].field_1536)
                        require idx < arg1.length
                        require t + 9 < s
                        if not uint8(event[mem[(32 * idx) + 128]].field_1792):
                            mem[(32 * arg1.length) + (32 * t + 9) + 224] = 0
                            require idx < arg1.length
                            require t + 10 < s
                            mem[(32 * arg1.length) + (32 * t + 10) + 224] = uint256(event[mem[(32 * idx) + 128]].field_2048)
                            require idx < arg1.length
                            require t + 11 < s
                            mem[(32 * arg1.length) + (32 * t + 11) + 224] = uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require idx < arg1.length
                            require idx < arg1.length
                            if var58005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var62005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var64003 + t + 12 < s
                            mem[(32 * arg1.length) + (32 * var66001) + 224] = var66003
                            require idx < arg1.length
                            require idx < arg1.length
                            if var70005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var74005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var76003 + t + 12 < s
                            mem[(32 * arg1.length) + (32 * var78001) + 224] = var78003
                            require idx < arg1.length
                            require idx < arg1.length
                            if var82005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var86005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var88003 + t + 12 < s
                            # nil
                        else:
                            mem[(32 * arg1.length) + (32 * t + 9) + 224] = 1
                            require idx < arg1.length
                            require t + 10 < s
                            mem[(32 * arg1.length) + (32 * t + 10) + 224] = uint256(event[mem[(32 * idx) + 128]].field_2048)
                            require idx < arg1.length
                            require t + 11 < s
                            mem[(32 * arg1.length) + (32 * t + 11) + 224] = uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require idx < arg1.length
                            require idx < arg1.length
                            if var58005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var62005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var64003 + t + 12 < s
                            mem[(32 * arg1.length) + (32 * var66001) + 224] = var66003
                            require idx < arg1.length
                            require idx < arg1.length
                            if var70005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var74005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var76003 + t + 12 < s
                            mem[(32 * arg1.length) + (32 * var78001) + 224] = var78003
                            require idx < arg1.length
                            require idx < arg1.length
                            if var82005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var86005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var88003 + t + 12 < s
                            # nil
            else:
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 1
                if address(event[mem[(32 * idx) + 128]].field_1024) != arg3:
                    idx = idx + 1
                    t = t
                    continue 
                require idx < arg1.length
                if 0 == arg4:
                    require t < s
                    mem[(32 * arg1.length) + (32 * t) + 224] = mem[(32 * idx) + 128]
                    require idx < arg1.length
                    require t + 1 < s
                    mem[(32 * arg1.length) + (32 * t + 1) + 224] = uint256(event[mem[(32 * idx) + 128]].field_0)
                    require idx < arg1.length
                    require t + 2 < s
                    mem[(32 * arg1.length) + (32 * t + 2) + 224] = address(event[mem[(32 * idx) + 128]].field_256)
                    require idx < arg1.length
                    require t + 3 < s
                    if not uint8(event[mem[(32 * idx) + 128]].field_416):
                        mem[(32 * arg1.length) + (32 * t + 3) + 224] = 0
                        require idx < arg1.length
                        require t + 4 < s
                        mem[(32 * arg1.length) + (32 * t + 4) + 224] = uint256(event[mem[(32 * idx) + 128]].field_512)
                        require idx < arg1.length
                        require t + 5 < s
                        mem[(32 * arg1.length) + (32 * t + 5) + 224] = uint256(event[mem[(32 * idx) + 128]].field_768)
                        require idx < arg1.length
                        require t + 6 < s
                        mem[(32 * arg1.length) + (32 * t + 6) + 224] = address(event[mem[(32 * idx) + 128]].field_1024)
                        require idx < arg1.length
                        require t + 7 < s
                        mem[(32 * arg1.length) + (32 * t + 7) + 224] = address(event[mem[(32 * idx) + 128]].field_1280)
                        require idx < arg1.length
                        require t + 8 < s
                        mem[(32 * arg1.length) + (32 * t + 8) + 224] = uint256(event[mem[(32 * idx) + 128]].field_1536)
                        require idx < arg1.length
                        require t + 9 < s
                        if not uint8(event[mem[(32 * idx) + 128]].field_1792):
                            mem[(32 * arg1.length) + (32 * t + 9) + 224] = 0
                            require idx < arg1.length
                            require t + 10 < s
                            mem[(32 * arg1.length) + (32 * t + 10) + 224] = uint256(event[mem[(32 * idx) + 128]].field_2048)
                            require idx < arg1.length
                            require t + 11 < s
                            mem[(32 * arg1.length) + (32 * t + 11) + 224] = uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require idx < arg1.length
                            require idx < arg1.length
                            if var58005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var62005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var64003 + t + 12 < s
                            mem[(32 * arg1.length) + (32 * var66001) + 224] = var66003
                            require idx < arg1.length
                            require idx < arg1.length
                            if var70005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var74005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var76003 + t + 12 < s
                            mem[(32 * arg1.length) + (32 * var78001) + 224] = var78003
                            require idx < arg1.length
                            require idx < arg1.length
                            if var82005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var86005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var88003 + t + 12 < s
                            # nil
                        else:
                            mem[(32 * arg1.length) + (32 * t + 9) + 224] = 1
                            require idx < arg1.length
                            require t + 10 < s
                            mem[(32 * arg1.length) + (32 * t + 10) + 224] = uint256(event[mem[(32 * idx) + 128]].field_2048)
                            require idx < arg1.length
                            require t + 11 < s
                            mem[(32 * arg1.length) + (32 * t + 11) + 224] = uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require idx < arg1.length
                            require idx < arg1.length
                            if var58005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var62005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var64003 + t + 12 < s
                            mem[(32 * arg1.length) + (32 * var66001) + 224] = var66003
                            require idx < arg1.length
                            require idx < arg1.length
                            if var70005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var74005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var76003 + t + 12 < s
                            mem[(32 * arg1.length) + (32 * var78001) + 224] = var78003
                            require idx < arg1.length
                            require idx < arg1.length
                            if var82005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var86005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var88003 + t + 12 < s
                            # nil
                    else:
                        mem[(32 * arg1.length) + (32 * t + 3) + 224] = 1
                        require idx < arg1.length
                        require t + 4 < s
                        mem[(32 * arg1.length) + (32 * t + 4) + 224] = uint256(event[mem[(32 * idx) + 128]].field_512)
                        require idx < arg1.length
                        require t + 5 < s
                        mem[(32 * arg1.length) + (32 * t + 5) + 224] = uint256(event[mem[(32 * idx) + 128]].field_768)
                        require idx < arg1.length
                        require t + 6 < s
                        mem[(32 * arg1.length) + (32 * t + 6) + 224] = address(event[mem[(32 * idx) + 128]].field_1024)
                        require idx < arg1.length
                        require t + 7 < s
                        mem[(32 * arg1.length) + (32 * t + 7) + 224] = address(event[mem[(32 * idx) + 128]].field_1280)
                        require idx < arg1.length
                        require t + 8 < s
                        mem[(32 * arg1.length) + (32 * t + 8) + 224] = uint256(event[mem[(32 * idx) + 128]].field_1536)
                        require idx < arg1.length
                        require t + 9 < s
                        if not uint8(event[mem[(32 * idx) + 128]].field_1792):
                            mem[(32 * arg1.length) + (32 * t + 9) + 224] = 0
                            require idx < arg1.length
                            require t + 10 < s
                            mem[(32 * arg1.length) + (32 * t + 10) + 224] = uint256(event[mem[(32 * idx) + 128]].field_2048)
                            require idx < arg1.length
                            require t + 11 < s
                            mem[(32 * arg1.length) + (32 * t + 11) + 224] = uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require idx < arg1.length
                            require idx < arg1.length
                            if var58005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var62005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var64003 + t + 12 < s
                            mem[(32 * arg1.length) + (32 * var66001) + 224] = var66003
                            require idx < arg1.length
                            require idx < arg1.length
                            if var70005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var74005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var76003 + t + 12 < s
                            mem[(32 * arg1.length) + (32 * var78001) + 224] = var78003
                            require idx < arg1.length
                            require idx < arg1.length
                            if var82005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var86005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var88003 + t + 12 < s
                            # nil
                        else:
                            mem[(32 * arg1.length) + (32 * t + 9) + 224] = 1
                            require idx < arg1.length
                            require t + 10 < s
                            mem[(32 * arg1.length) + (32 * t + 10) + 224] = uint256(event[mem[(32 * idx) + 128]].field_2048)
                            require idx < arg1.length
                            require t + 11 < s
                            mem[(32 * arg1.length) + (32 * t + 11) + 224] = uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require idx < arg1.length
                            require idx < arg1.length
                            if var58005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var62005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var64003 + t + 12 < s
                            mem[(32 * arg1.length) + (32 * var66001) + 224] = var66003
                            require idx < arg1.length
                            require idx < arg1.length
                            if var70005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var74005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var76003 + t + 12 < s
                            mem[(32 * arg1.length) + (32 * var78001) + 224] = var78003
                            require idx < arg1.length
                            require idx < arg1.length
                            if var82005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var86005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var88003 + t + 12 < s
                            # nil
                else:
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 1
                    if address(event[mem[(32 * idx) + 128]].field_256) != arg4:
                        idx = idx + 1
                        t = t
                        continue 
                    require idx < arg1.length
                    require t < s
                    mem[(32 * arg1.length) + (32 * t) + 224] = mem[(32 * idx) + 128]
                    require idx < arg1.length
                    require t + 1 < s
                    mem[(32 * arg1.length) + (32 * t + 1) + 224] = uint256(event[mem[(32 * idx) + 128]].field_0)
                    require idx < arg1.length
                    require t + 2 < s
                    mem[(32 * arg1.length) + (32 * t + 2) + 224] = address(event[mem[(32 * idx) + 128]].field_256)
                    require idx < arg1.length
                    require t + 3 < s
                    if not uint8(event[mem[(32 * idx) + 128]].field_416):
                        mem[(32 * arg1.length) + (32 * t + 3) + 224] = 0
                        require idx < arg1.length
                        require t + 4 < s
                        mem[(32 * arg1.length) + (32 * t + 4) + 224] = uint256(event[mem[(32 * idx) + 128]].field_512)
                        require idx < arg1.length
                        require t + 5 < s
                        mem[(32 * arg1.length) + (32 * t + 5) + 224] = uint256(event[mem[(32 * idx) + 128]].field_768)
                        require idx < arg1.length
                        require t + 6 < s
                        mem[(32 * arg1.length) + (32 * t + 6) + 224] = address(event[mem[(32 * idx) + 128]].field_1024)
                        require idx < arg1.length
                        require t + 7 < s
                        mem[(32 * arg1.length) + (32 * t + 7) + 224] = address(event[mem[(32 * idx) + 128]].field_1280)
                        require idx < arg1.length
                        require t + 8 < s
                        mem[(32 * arg1.length) + (32 * t + 8) + 224] = uint256(event[mem[(32 * idx) + 128]].field_1536)
                        require idx < arg1.length
                        require t + 9 < s
                        if not uint8(event[mem[(32 * idx) + 128]].field_1792):
                            mem[(32 * arg1.length) + (32 * t + 9) + 224] = 0
                            require idx < arg1.length
                            require t + 10 < s
                            mem[(32 * arg1.length) + (32 * t + 10) + 224] = uint256(event[mem[(32 * idx) + 128]].field_2048)
                            require idx < arg1.length
                            require t + 11 < s
                            mem[(32 * arg1.length) + (32 * t + 11) + 224] = uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require idx < arg1.length
                            require idx < arg1.length
                            if var60005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var64005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var66003 + t + 12 < s
                            mem[(32 * arg1.length) + (32 * var68001) + 224] = var68003
                            require idx < arg1.length
                            require idx < arg1.length
                            if var72005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var76005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var78003 + t + 12 < s
                            mem[(32 * arg1.length) + (32 * var80001) + 224] = var80003
                            require idx < arg1.length
                            require idx < arg1.length
                            if var84005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var88005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var90003 + t + 12 < s
                            # nil
                        else:
                            mem[(32 * arg1.length) + (32 * t + 9) + 224] = 1
                            require idx < arg1.length
                            require t + 10 < s
                            mem[(32 * arg1.length) + (32 * t + 10) + 224] = uint256(event[mem[(32 * idx) + 128]].field_2048)
                            require idx < arg1.length
                            require t + 11 < s
                            mem[(32 * arg1.length) + (32 * t + 11) + 224] = uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require idx < arg1.length
                            require idx < arg1.length
                            if var60005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var64005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var66003 + t + 12 < s
                            mem[(32 * arg1.length) + (32 * var68001) + 224] = var68003
                            require idx < arg1.length
                            require idx < arg1.length
                            if var72005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var76005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var78003 + t + 12 < s
                            mem[(32 * arg1.length) + (32 * var80001) + 224] = var80003
                            require idx < arg1.length
                            require idx < arg1.length
                            if var84005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var88005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var90003 + t + 12 < s
                            # nil
                    else:
                        mem[(32 * arg1.length) + (32 * t + 3) + 224] = 1
                        require idx < arg1.length
                        require t + 4 < s
                        mem[(32 * arg1.length) + (32 * t + 4) + 224] = uint256(event[mem[(32 * idx) + 128]].field_512)
                        require idx < arg1.length
                        require t + 5 < s
                        mem[(32 * arg1.length) + (32 * t + 5) + 224] = uint256(event[mem[(32 * idx) + 128]].field_768)
                        require idx < arg1.length
                        require t + 6 < s
                        mem[(32 * arg1.length) + (32 * t + 6) + 224] = address(event[mem[(32 * idx) + 128]].field_1024)
                        require idx < arg1.length
                        require t + 7 < s
                        mem[(32 * arg1.length) + (32 * t + 7) + 224] = address(event[mem[(32 * idx) + 128]].field_1280)
                        require idx < arg1.length
                        require t + 8 < s
                        mem[(32 * arg1.length) + (32 * t + 8) + 224] = uint256(event[mem[(32 * idx) + 128]].field_1536)
                        require idx < arg1.length
                        require t + 9 < s
                        if not uint8(event[mem[(32 * idx) + 128]].field_1792):
                            mem[(32 * arg1.length) + (32 * t + 9) + 224] = 0
                            require idx < arg1.length
                            require t + 10 < s
                            mem[(32 * arg1.length) + (32 * t + 10) + 224] = uint256(event[mem[(32 * idx) + 128]].field_2048)
                            require idx < arg1.length
                            require t + 11 < s
                            mem[(32 * arg1.length) + (32 * t + 11) + 224] = uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require idx < arg1.length
                            require idx < arg1.length
                            if var60005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var64005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var66003 + t + 12 < s
                            mem[(32 * arg1.length) + (32 * var68001) + 224] = var68003
                            require idx < arg1.length
                            require idx < arg1.length
                            if var72005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var76005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var78003 + t + 12 < s
                            mem[(32 * arg1.length) + (32 * var80001) + 224] = var80003
                            require idx < arg1.length
                            require idx < arg1.length
                            if var84005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var88005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var90003 + t + 12 < s
                            # nil
                        else:
                            mem[(32 * arg1.length) + (32 * t + 9) + 224] = 1
                            require idx < arg1.length
                            require t + 10 < s
                            mem[(32 * arg1.length) + (32 * t + 10) + 224] = uint256(event[mem[(32 * idx) + 128]].field_2048)
                            require idx < arg1.length
                            require t + 11 < s
                            mem[(32 * arg1.length) + (32 * t + 11) + 224] = uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require idx < arg1.length
                            require idx < arg1.length
                            if var60005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var64005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var66003 + t + 12 < s
                            mem[(32 * arg1.length) + (32 * var68001) + 224] = var68003
                            require idx < arg1.length
                            require idx < arg1.length
                            if var72005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var76005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var78003 + t + 12 < s
                            mem[(32 * arg1.length) + (32 * var80001) + 224] = var80003
                            require idx < arg1.length
                            require idx < arg1.length
                            if var84005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 1
                                idx = idx + 1
                                t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                continue 
                            require var88005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                            require var90003 + t + 12 < s
                            # nil
    return Array(len=s, data=mem[(32 * arg1.length) + 224 len 32 * s])
}



}

contract main {


// =======================  Init code  ======================


address stor0; offset 8
uint256 stor4;

function _fallback() payable {
    stor0 = 0x950ca4a06c78934a148b7a3ff3ea8fc366f77a06
    stor4 = 2000
    return code.data[65 len 10146]
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
        mem[100] = msg.sender
        mem[132] = arg2
        call address(stor[idx + sha3(sha3(mem[0 len 64]) + 9)]).0x721a37d2 with:
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
        mem[100] = msg.sender
        mem[132] = arg2 - (arg2 * baseFee / 10^6)
        call address(stor[uint8(idx) + sha3(sha3(mem[0 len 64]) + 9)]).0x475a9fa9 with:
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
        mem[32] = 2
        idx = idx + 1
        s = s + stor2[mem[(32 * idx) + 128]] + 2
        continue 
    mem[(32 * arg1.length) + 192] = s
    if not s:
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
            if var25005 >= stor2[mem[(32 * idx) + 128]]:
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 2
                idx = idx + 1
                t = t + stor2[mem[(32 * idx) + 128]] + 2
                continue 
            require var29005 < stor2[mem[(32 * idx) + 128]]
            require var31003 + t + 2 < s
            mem[(32 * arg1.length) + (32 * var33001) + 224] = var33003
            require idx < arg1.length
            require idx < arg1.length
            if var37005 >= stor2[mem[(32 * idx) + 128]]:
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 2
                idx = idx + 1
                t = t + stor2[mem[(32 * idx) + 128]] + 2
                continue 
            require var41005 < stor2[mem[(32 * idx) + 128]]
            require var43003 + t + 2 < s
            mem[(32 * arg1.length) + (32 * var45001) + 224] = var45003
            require idx < arg1.length
            require idx < arg1.length
            if var49005 >= stor2[mem[(32 * idx) + 128]]:
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 2
                idx = idx + 1
                t = t + stor2[mem[(32 * idx) + 128]] + 2
                continue 
            require var53005 < stor2[mem[(32 * idx) + 128]]
            require var55003 + t + 2 < s
            # nil
    else:
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
            if var26005 >= stor2[mem[(32 * idx) + 128]]:
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 2
                idx = idx + 1
                t = t + stor2[mem[(32 * idx) + 128]] + 2
                continue 
            require var30005 < stor2[mem[(32 * idx) + 128]]
            require var32003 + t + 2 < s
            mem[(32 * arg1.length) + (32 * var34001) + 224] = var34003
            require idx < arg1.length
            require idx < arg1.length
            if var38005 >= stor2[mem[(32 * idx) + 128]]:
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 2
                idx = idx + 1
                t = t + stor2[mem[(32 * idx) + 128]] + 2
                continue 
            require var42005 < stor2[mem[(32 * idx) + 128]]
            require var44003 + t + 2 < s
            mem[(32 * arg1.length) + (32 * var46001) + 224] = var46003
            require idx < arg1.length
            require idx < arg1.length
            if var50005 < stor2[mem[(32 * idx) + 128]]:
                require var54005 < stor2[mem[(32 * idx) + 128]]
                # nil
            else:
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 2
                idx = idx + 1
                t = t + stor2[mem[(32 * idx) + 128]] + 2
                continue 
    return Array(len=s, data=mem[(32 * arg1.length) + 224 len 32 * s])
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
            call address(stor[uint8(idx) + sha3(sha3(mem[0 len 64]) + 9)]).0x70a08231 with:
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
                call address(stor[uint8(idx) + sha3(sha3(mem[0 len 64]) + 9)]).0x70a08231 with:
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
        call address(stor[uint8(idx) + sha3(sha3(mem[0 len 64]) + 9)]).0x70a08231 with:
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
            mem[(32 * arg8.length) + 128 len 1078] = code.data[9068 len 1078]
            create contract with 0 wei
                            code: code.data[9068 len 1078]
            uint256(stor[uint256(event[arg1][uint8(arg2)][arg3][arg4][arg5][arg6][arg7][call.data[arg8 + 36 len 32 * arg8.length]].field_2304) + ('array', 9, ('map', ('data', ('param', 'arg1'), ('mask_shl', 8, 0, 0, ('param', 'arg2')), ('param', 'arg3'), ('param', 'arg4'), ('param', 'arg5'), ('param', 'arg6'), ('param', 'arg7'), ('call.data', ('add', 36, ('param', 'arg8')), ('mul', 32, ('cd', ('add', 4, ('param', 'arg8')))))), ('name', 'event', 1)))].field_0) = Mask(96, 0, stor[uint256(event[arg1][uint8(arg2)][arg3][arg4][arg5][arg6][arg7][call.data[arg8 + 36 len 32 * arg8.length]].field_2304) + ('array', 9, ('map', ('data', ('param', 'arg1'), ('mask_shl', 8, 0, 0, ('param', 'arg2')), ('param', 'arg3'), ('param', 'arg4'), ('param', 'arg5'), ('param', 'arg6'), ('param', 'arg7'), ('call.data', ('add', 36, ('param', 'arg8')), ('mul', 32, ('cd', ('add', 4, ('param', 'arg8')))))), ('name', 'event', 1)))].field_160)
            idx = idx + 1
            continue 
        s = uint256(event[arg1][uint8(arg2)][arg3][arg4][arg5][arg6][arg7][call.data[arg8 + 36 len 32 * arg8.length]].field_2304) + sha3(sha3(sha3(arg1, uint8(arg2), arg3, arg4, arg5, arg6, arg7, call.data[arg8 + 36 len 32 * arg8.length]), 1) + 9) + 1
        while sha3(sha3(sha3(arg1, uint8(arg2), arg3, arg4, arg5, arg6, arg7, call.data[arg8 + 36 len 32 * arg8.length]), 1) + 9) + uint256(event[arg1][uint8(arg2)][arg3][arg4][arg5][arg6][arg7][call.data[arg8 + 36 len 32 * arg8.length]].field_2304) > s:
            uint256(stor[s]) = 0
            s = s + 1
            continue 
        mem[0] = sha3(sha3(arg1, uint8(arg2), arg3, arg4, arg5, arg6, arg7, call.data[arg8 + 36 len 32 * arg8.length]), 1) + 9
        mem[(32 * arg8.length) + 128 len 1078] = code.data[9068 len 1078]
        create contract with 0 wei
                        code: code.data[9068 len 1078]
        uint256(stor[uint256(event[arg1][uint8(arg2)][arg3][arg4][arg5][arg6][arg7][call.data[arg8 + 36 len 32 * arg8.length]].field_2304) + ('array', 9, ('map', ('data', ('param', 'arg1'), ('mask_shl', 8, 0, 0, ('param', 'arg2')), ('param', 'arg3'), ('param', 'arg4'), ('param', 'arg5'), ('param', 'arg6'), ('param', 'arg7'), ('call.data', ('add', 36, ('param', 'arg8')), ('mul', 32, ('cd', ('add', 4, ('param', 'arg8')))))), ('name', 'event', 1)))].field_0) = Mask(96, 0, stor[uint256(event[arg1][uint8(arg2)][arg3][arg4][arg5][arg6][arg7][call.data[arg8 + 36 len 32 * arg8.length]].field_2304) + ('array', 9, ('map', ('data', ('param', 'arg1'), ('mask_shl', 8, 0, 0, ('param', 'arg2')), ('param', 'arg3'), ('param', 'arg4'), ('param', 'arg5'), ('param', 'arg6'), ('param', 'arg7'), ('call.data', ('add', 36, ('param', 'arg8')), ('mul', 32, ('cd', ('add', 4, ('param', 'arg8')))))), ('name', 'event', 1)))].field_160)
        s = uint256(event[arg1][uint8(arg2)][arg3][arg4][arg5][arg6][arg7][call.data[arg8 + 36 len 32 * arg8.length]].field_2304) + sha3(sha3(sha3(arg1, uint8(arg2), arg3, arg4, arg5, arg6, arg7, call.data[arg8 + 36 len 32 * arg8.length]), 1) + 9) + 1
        continue 
    return sha3(arg1, uint8(arg2), arg3, arg4, arg5, arg6, arg7, call.data[arg8 + 36 len 32 * arg8.length])
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
            _1084 = sha3(mem[(32 * idx) + 128], 1)
            t = var22006
            while uint8(t + 1) < stor9[_1084]:
                require idx < arg2.length
                require uint8(t + 1) < uint256(event[mem[(32 * idx) + 128]].field_2304)
                mem[0] = sha3(mem[(32 * idx) + 128], 1) + 9
                mem[(32 * arg2.length) + 196] = arg1
                call address(stor[uint8(t + 1) + sha3(mem[0])]).0x70a08231 with:
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
    if not s:
        idx = 0
        t = 0
        while idx < arg2.length:
            require idx < arg2.length
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 1
            if uint8(var20006) >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                idx = idx + 1
                t = t
                continue 
            require idx < arg2.length
            require uint8(var24007) < uint256(event[mem[(32 * idx) + 128]].field_2304)
            mem[(32 * arg2.length) + (32 * s) + 264] = arg1
            call address(stor[var26001 + sha3(var26002)]).0x70a08231 with:
                 gas gas_remaining - 25050 wei
                args address(arg1)
            mem[(32 * arg2.length) + (32 * s) + 260] = ext_call.return_data[0]
            require ext_call.success
            if ext_call.return_data[0] <= 0:
                require idx < arg2.length
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 1
                _1261 = sha3(mem[(32 * idx) + 128], 1)
                u = var28006
                while uint8(u + 1) < stor9[_1261]:
                    require idx < arg2.length
                    require uint8(u + 1) < uint256(event[mem[(32 * idx) + 128]].field_2304)
                    mem[0] = sha3(mem[(32 * idx) + 128], 1) + 9
                    mem[(32 * arg2.length) + (32 * s) + 264] = arg1
                    call address(stor[uint8(u + 1) + sha3(mem[0])]).0x70a08231 with:
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
                    if uint8(var45006) >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                        require idx + 1 < arg2.length
                        mem[0] = mem[(32 * idx + 1) + 128]
                        mem[32] = 1
                        idx = idx + 1
                        t = t + uint8(var45006 + 2)
                        continue 
                    require idx < arg2.length
                    require uint8(var49006) < uint256(event[mem[(32 * idx) + 128]].field_2304)
                    mem[(32 * arg2.length) + (32 * s) + 264] = arg1
                    call address(stor[var51001 + sha3(var51002)]).0x70a08231 with:
                         gas gas_remaining - 25050 wei
                        args address(arg1)
                    mem[(32 * arg2.length) + (32 * s) + 260] = ext_call.return_data[0]
                    require ext_call.success
                    require t + uint8(var51004) + 2 < s
                    mem[(32 * arg2.length) + (32 * t + uint8(var51004) + 2) + 260] = ext_call.return_data[0]
                    require idx < arg2.length
                    mem[0] = mem[(32 * idx) + 128]
                    _2042 = sha3(mem[(32 * idx) + 128], 1)
                    v = (32 * arg2.length) + (32 * s) + 296
                    v = address(stor[var51001 + sha3(var51002)])
                    u = var51004
                    while uint8(u + 1) < stor9[_2042]:
                        require idx < arg2.length
                        require uint8(u + 1) < uint256(event[mem[(32 * idx) + 128]].field_2304)
                        mem[0] = sha3(mem[(32 * idx) + 128], 1) + 9
                        _2072 = sha3(sha3(mem[(32 * idx) + 128], 1) + 9)
                        mem[(32 * arg2.length) + (32 * s) + 264] = arg1
                        call address(stor[uint8(u + 1) + sha3(mem[0])]).0x70a08231 with:
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
                        v = address(stor[uint8(u + 1) + _2072])
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
            if uint8(var37006) >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                idx = idx + 1
                t = t + uint8(var37006 + 2)
                continue 
            require idx < arg2.length
            require uint8(var41006) < uint256(event[mem[(32 * idx) + 128]].field_2304)
            mem[(32 * arg2.length) + (32 * s) + 264] = arg1
            call address(stor[var43001 + sha3(var43002)]).0x70a08231 with:
                 gas gas_remaining - 25050 wei
                args address(arg1)
            mem[(32 * arg2.length) + (32 * s) + 260] = ext_call.return_data[0]
            require ext_call.success
            require t + uint8(var43004) + 2 < s
            mem[(32 * arg2.length) + (32 * t + uint8(var43004) + 2) + 260] = ext_call.return_data[0]
            require idx < arg2.length
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 1
            _1950 = sha3(mem[(32 * idx) + 128], 1)
            v = (32 * arg2.length) + (32 * s) + 296
            v = address(stor[var43001 + sha3(var43002)])
            u = var43004
            while uint8(u + 1) < stor9[_1950]:
                require idx < arg2.length
                require uint8(u + 1) < uint256(event[mem[(32 * idx) + 128]].field_2304)
                mem[0] = sha3(mem[(32 * idx) + 128], 1) + 9
                _1986 = sha3(sha3(mem[(32 * idx) + 128], 1) + 9)
                mem[(32 * arg2.length) + (32 * s) + 264] = arg1
                call address(stor[uint8(u + 1) + sha3(mem[0])]).0x70a08231 with:
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
                v = address(stor[uint8(u + 1) + _1986])
                u = u + 1
                continue 
            idx = idx + 1
            t = t + uint8(None + 3)
            continue 
    else:
        idx = 0
        t = 0
        while idx < arg2.length:
            require idx < arg2.length
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 1
            if uint8(var21006) >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                idx = idx + 1
                t = t
                continue 
            require idx < arg2.length
            require uint8(var25007) < uint256(event[mem[(32 * idx) + 128]].field_2304)
            mem[(32 * arg2.length) + (32 * s) + 264] = arg1
            call address(stor[var27001 + sha3(var27002)]).0x70a08231 with:
                 gas gas_remaining - 25050 wei
                args address(arg1)
            mem[(32 * arg2.length) + (32 * s) + 260] = ext_call.return_data[0]
            require ext_call.success
            if ext_call.return_data[0] <= 0:
                require idx < arg2.length
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 1
                _1458 = sha3(mem[(32 * idx) + 128], 1)
                u = var29006
                while uint8(u + 1) < stor9[_1458]:
                    require idx < arg2.length
                    require uint8(u + 1) < uint256(event[mem[(32 * idx) + 128]].field_2304)
                    mem[0] = sha3(mem[(32 * idx) + 128], 1) + 9
                    mem[(32 * arg2.length) + (32 * s) + 264] = arg1
                    call address(stor[uint8(u + 1) + sha3(mem[0])]).0x70a08231 with:
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
                    if uint8(var46006) >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                        require idx + 1 < arg2.length
                        mem[0] = mem[(32 * idx + 1) + 128]
                        mem[32] = 1
                        idx = idx + 1
                        t = t + uint8(var46006 + 2)
                        continue 
                    require idx < arg2.length
                    require uint8(var50006) < uint256(event[mem[(32 * idx) + 128]].field_2304)
                    mem[(32 * arg2.length) + (32 * s) + 264] = arg1
                    call address(stor[var52001 + sha3(var52002)]).0x70a08231 with:
                         gas gas_remaining - 25050 wei
                        args address(arg1)
                    mem[(32 * arg2.length) + (32 * s) + 260] = ext_call.return_data[0]
                    require ext_call.success
                    require t + uint8(var52004) + 2 < s
                    mem[(32 * arg2.length) + (32 * t + uint8(var52004) + 2) + 260] = ext_call.return_data[0]
                    require idx < arg2.length
                    mem[0] = mem[(32 * idx) + 128]
                    _2097 = sha3(mem[(32 * idx) + 128], 1)
                    v = (32 * arg2.length) + (32 * s) + 296
                    v = address(stor[var52001 + sha3(var52002)])
                    u = var52004
                    while uint8(u + 1) < stor9[_2097]:
                        require idx < arg2.length
                        require uint8(u + 1) < uint256(event[mem[(32 * idx) + 128]].field_2304)
                        mem[0] = sha3(mem[(32 * idx) + 128], 1) + 9
                        _2107 = sha3(sha3(mem[(32 * idx) + 128], 1) + 9)
                        mem[(32 * arg2.length) + (32 * s) + 264] = arg1
                        call address(stor[uint8(u + 1) + sha3(mem[0])]).0x70a08231 with:
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
                        v = address(stor[uint8(u + 1) + _2107])
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
            if uint8(var38006) >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                idx = idx + 1
                t = t + uint8(var38006 + 2)
                continue 
            require idx < arg2.length
            require uint8(var42006) < uint256(event[mem[(32 * idx) + 128]].field_2304)
            mem[(32 * arg2.length) + (32 * s) + 264] = arg1
            call address(stor[var44001 + sha3(var44002)]).0x70a08231 with:
                 gas gas_remaining - 25050 wei
                args address(arg1)
            mem[(32 * arg2.length) + (32 * s) + 260] = ext_call.return_data[0]
            require ext_call.success
            require t + uint8(var44004) + 2 < s
            mem[(32 * arg2.length) + (32 * t + uint8(var44004) + 2) + 260] = ext_call.return_data[0]
            require idx < arg2.length
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 1
            _2045 = sha3(mem[(32 * idx) + 128], 1)
            v = (32 * arg2.length) + (32 * s) + 296
            v = address(stor[var44001 + sha3(var44002)])
            u = var44004
            while uint8(u + 1) < stor9[_2045]:
                require idx < arg2.length
                require uint8(u + 1) < uint256(event[mem[(32 * idx) + 128]].field_2304)
                mem[0] = sha3(mem[(32 * idx) + 128], 1) + 9
                _2077 = sha3(sha3(mem[(32 * idx) + 128], 1) + 9)
                mem[(32 * arg2.length) + (32 * s) + 264] = arg1
                call address(stor[uint8(u + 1) + sha3(mem[0])]).0x70a08231 with:
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
                v = address(stor[uint8(u + 1) + _2077])
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
        mem[32] = 1
        if arg2 != 0:
            if address(event[mem[(32 * idx) + 128]].field_1280) != arg2:
                idx = idx + 1
                s = s
                continue 
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
    if not s:
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
                                if var55005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var59005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var61003 + t + 12 < s
                                mem[(32 * arg1.length) + (32 * var63001) + 224] = var63003
                                require idx < arg1.length
                                require idx < arg1.length
                                if var67005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var71005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var73003 + t + 12 < s
                                mem[(32 * arg1.length) + (32 * var75001) + 224] = var75003
                                require idx < arg1.length
                                require idx < arg1.length
                                if var79005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var83005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var85003 + t + 12 < s
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
                                if var55005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var59005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var61003 + t + 12 < s
                                mem[(32 * arg1.length) + (32 * var63001) + 224] = var63003
                                require idx < arg1.length
                                require idx < arg1.length
                                if var67005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var71005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var73003 + t + 12 < s
                                mem[(32 * arg1.length) + (32 * var75001) + 224] = var75003
                                require idx < arg1.length
                                require idx < arg1.length
                                if var79005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var83005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var85003 + t + 12 < s
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
                                if var55005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var59005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var61003 + t + 12 < s
                                mem[(32 * arg1.length) + (32 * var63001) + 224] = var63003
                                require idx < arg1.length
                                require idx < arg1.length
                                if var67005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var71005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var73003 + t + 12 < s
                                mem[(32 * arg1.length) + (32 * var75001) + 224] = var75003
                                require idx < arg1.length
                                require idx < arg1.length
                                if var79005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var83005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var85003 + t + 12 < s
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
                                if var55005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var59005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var61003 + t + 12 < s
                                mem[(32 * arg1.length) + (32 * var63001) + 224] = var63003
                                require idx < arg1.length
                                require idx < arg1.length
                                if var67005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var71005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var73003 + t + 12 < s
                                mem[(32 * arg1.length) + (32 * var75001) + 224] = var75003
                                require idx < arg1.length
                                require idx < arg1.length
                                if var79005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var83005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var85003 + t + 12 < s
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
                                if var57005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var61005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var63003 + t + 12 < s
                                mem[(32 * arg1.length) + (32 * var65001) + 224] = var65003
                                require idx < arg1.length
                                require idx < arg1.length
                                if var69005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var73005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var75003 + t + 12 < s
                                mem[(32 * arg1.length) + (32 * var77001) + 224] = var77003
                                require idx < arg1.length
                                require idx < arg1.length
                                if var81005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var85005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var87003 + t + 12 < s
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
                                if var57005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var61005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var63003 + t + 12 < s
                                mem[(32 * arg1.length) + (32 * var65001) + 224] = var65003
                                require idx < arg1.length
                                require idx < arg1.length
                                if var69005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var73005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var75003 + t + 12 < s
                                mem[(32 * arg1.length) + (32 * var77001) + 224] = var77003
                                require idx < arg1.length
                                require idx < arg1.length
                                if var81005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var85005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var87003 + t + 12 < s
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
                                if var57005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var61005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var63003 + t + 12 < s
                                mem[(32 * arg1.length) + (32 * var65001) + 224] = var65003
                                require idx < arg1.length
                                require idx < arg1.length
                                if var69005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var73005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var75003 + t + 12 < s
                                mem[(32 * arg1.length) + (32 * var77001) + 224] = var77003
                                require idx < arg1.length
                                require idx < arg1.length
                                if var81005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var85005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var87003 + t + 12 < s
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
                                if var57005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var61005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var63003 + t + 12 < s
                                mem[(32 * arg1.length) + (32 * var65001) + 224] = var65003
                                require idx < arg1.length
                                require idx < arg1.length
                                if var69005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var73005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var75003 + t + 12 < s
                                mem[(32 * arg1.length) + (32 * var77001) + 224] = var77003
                                require idx < arg1.length
                                require idx < arg1.length
                                if var81005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var85005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var87003 + t + 12 < s
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
                                if var57005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var61005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var63003 + t + 12 < s
                                mem[(32 * arg1.length) + (32 * var65001) + 224] = var65003
                                require idx < arg1.length
                                require idx < arg1.length
                                if var69005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var73005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var75003 + t + 12 < s
                                mem[(32 * arg1.length) + (32 * var77001) + 224] = var77003
                                require idx < arg1.length
                                require idx < arg1.length
                                if var81005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var85005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var87003 + t + 12 < s
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
                                if var57005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var61005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var63003 + t + 12 < s
                                mem[(32 * arg1.length) + (32 * var65001) + 224] = var65003
                                require idx < arg1.length
                                require idx < arg1.length
                                if var69005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var73005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var75003 + t + 12 < s
                                mem[(32 * arg1.length) + (32 * var77001) + 224] = var77003
                                require idx < arg1.length
                                require idx < arg1.length
                                if var81005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var85005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var87003 + t + 12 < s
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
                                if var57005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var61005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var63003 + t + 12 < s
                                mem[(32 * arg1.length) + (32 * var65001) + 224] = var65003
                                require idx < arg1.length
                                require idx < arg1.length
                                if var69005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var73005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var75003 + t + 12 < s
                                mem[(32 * arg1.length) + (32 * var77001) + 224] = var77003
                                require idx < arg1.length
                                require idx < arg1.length
                                if var81005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var85005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var87003 + t + 12 < s
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
                                if var57005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var61005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var63003 + t + 12 < s
                                mem[(32 * arg1.length) + (32 * var65001) + 224] = var65003
                                require idx < arg1.length
                                require idx < arg1.length
                                if var69005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var73005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var75003 + t + 12 < s
                                mem[(32 * arg1.length) + (32 * var77001) + 224] = var77003
                                require idx < arg1.length
                                require idx < arg1.length
                                if var81005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var85005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var87003 + t + 12 < s
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
                                if var59005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var63005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var65003 + t + 12 < s
                                mem[(32 * arg1.length) + (32 * var67001) + 224] = var67003
                                require idx < arg1.length
                                require idx < arg1.length
                                if var71005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var75005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var77003 + t + 12 < s
                                mem[(32 * arg1.length) + (32 * var79001) + 224] = var79003
                                require idx < arg1.length
                                require idx < arg1.length
                                if var83005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var87005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var89003 + t + 12 < s
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
                                if var59005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var63005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var65003 + t + 12 < s
                                mem[(32 * arg1.length) + (32 * var67001) + 224] = var67003
                                require idx < arg1.length
                                require idx < arg1.length
                                if var71005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var75005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var77003 + t + 12 < s
                                mem[(32 * arg1.length) + (32 * var79001) + 224] = var79003
                                require idx < arg1.length
                                require idx < arg1.length
                                if var83005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var87005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var89003 + t + 12 < s
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
                                if var59005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var63005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var65003 + t + 12 < s
                                mem[(32 * arg1.length) + (32 * var67001) + 224] = var67003
                                require idx < arg1.length
                                require idx < arg1.length
                                if var71005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var75005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var77003 + t + 12 < s
                                mem[(32 * arg1.length) + (32 * var79001) + 224] = var79003
                                require idx < arg1.length
                                require idx < arg1.length
                                if var83005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var87005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var89003 + t + 12 < s
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
                                if var59005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var63005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var65003 + t + 12 < s
                                mem[(32 * arg1.length) + (32 * var67001) + 224] = var67003
                                require idx < arg1.length
                                require idx < arg1.length
                                if var71005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var75005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var77003 + t + 12 < s
                                mem[(32 * arg1.length) + (32 * var79001) + 224] = var79003
                                require idx < arg1.length
                                require idx < arg1.length
                                if var83005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var87005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var89003 + t + 12 < s
                                # nil
            else:
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 1
                if address(event[mem[(32 * idx) + 128]].field_1280) != arg2:
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
                                if var57005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var61005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var63003 + t + 12 < s
                                mem[(32 * arg1.length) + (32 * var65001) + 224] = var65003
                                require idx < arg1.length
                                require idx < arg1.length
                                if var69005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var73005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var75003 + t + 12 < s
                                mem[(32 * arg1.length) + (32 * var77001) + 224] = var77003
                                require idx < arg1.length
                                require idx < arg1.length
                                if var81005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var85005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var87003 + t + 12 < s
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
                                if var57005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var61005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var63003 + t + 12 < s
                                mem[(32 * arg1.length) + (32 * var65001) + 224] = var65003
                                require idx < arg1.length
                                require idx < arg1.length
                                if var69005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var73005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var75003 + t + 12 < s
                                mem[(32 * arg1.length) + (32 * var77001) + 224] = var77003
                                require idx < arg1.length
                                require idx < arg1.length
                                if var81005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var85005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var87003 + t + 12 < s
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
                                if var57005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var61005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var63003 + t + 12 < s
                                mem[(32 * arg1.length) + (32 * var65001) + 224] = var65003
                                require idx < arg1.length
                                require idx < arg1.length
                                if var69005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var73005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var75003 + t + 12 < s
                                mem[(32 * arg1.length) + (32 * var77001) + 224] = var77003
                                require idx < arg1.length
                                require idx < arg1.length
                                if var81005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var85005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var87003 + t + 12 < s
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
                                if var57005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var61005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var63003 + t + 12 < s
                                mem[(32 * arg1.length) + (32 * var65001) + 224] = var65003
                                require idx < arg1.length
                                require idx < arg1.length
                                if var69005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var73005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var75003 + t + 12 < s
                                mem[(32 * arg1.length) + (32 * var77001) + 224] = var77003
                                require idx < arg1.length
                                require idx < arg1.length
                                if var81005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var85005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var87003 + t + 12 < s
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
                                if var59005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var63005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var65003 + t + 12 < s
                                mem[(32 * arg1.length) + (32 * var67001) + 224] = var67003
                                require idx < arg1.length
                                require idx < arg1.length
                                if var71005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var75005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var77003 + t + 12 < s
                                mem[(32 * arg1.length) + (32 * var79001) + 224] = var79003
                                require idx < arg1.length
                                require idx < arg1.length
                                if var83005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var87005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var89003 + t + 12 < s
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
                                if var59005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var63005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var65003 + t + 12 < s
                                mem[(32 * arg1.length) + (32 * var67001) + 224] = var67003
                                require idx < arg1.length
                                require idx < arg1.length
                                if var71005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var75005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var77003 + t + 12 < s
                                mem[(32 * arg1.length) + (32 * var79001) + 224] = var79003
                                require idx < arg1.length
                                require idx < arg1.length
                                if var83005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var87005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var89003 + t + 12 < s
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
                                if var59005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var63005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var65003 + t + 12 < s
                                mem[(32 * arg1.length) + (32 * var67001) + 224] = var67003
                                require idx < arg1.length
                                require idx < arg1.length
                                if var71005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var75005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var77003 + t + 12 < s
                                mem[(32 * arg1.length) + (32 * var79001) + 224] = var79003
                                require idx < arg1.length
                                require idx < arg1.length
                                if var83005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var87005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var89003 + t + 12 < s
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
                                if var59005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var63005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var65003 + t + 12 < s
                                mem[(32 * arg1.length) + (32 * var67001) + 224] = var67003
                                require idx < arg1.length
                                require idx < arg1.length
                                if var71005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var75005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var77003 + t + 12 < s
                                mem[(32 * arg1.length) + (32 * var79001) + 224] = var79003
                                require idx < arg1.length
                                require idx < arg1.length
                                if var83005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var87005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var89003 + t + 12 < s
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
                                if var59005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var63005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var65003 + t + 12 < s
                                mem[(32 * arg1.length) + (32 * var67001) + 224] = var67003
                                require idx < arg1.length
                                require idx < arg1.length
                                if var71005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var75005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var77003 + t + 12 < s
                                mem[(32 * arg1.length) + (32 * var79001) + 224] = var79003
                                require idx < arg1.length
                                require idx < arg1.length
                                if var83005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var87005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var89003 + t + 12 < s
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
                                if var59005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var63005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var65003 + t + 12 < s
                                mem[(32 * arg1.length) + (32 * var67001) + 224] = var67003
                                require idx < arg1.length
                                require idx < arg1.length
                                if var71005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var75005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var77003 + t + 12 < s
                                mem[(32 * arg1.length) + (32 * var79001) + 224] = var79003
                                require idx < arg1.length
                                require idx < arg1.length
                                if var83005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var87005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var89003 + t + 12 < s
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
                                if var59005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var63005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var65003 + t + 12 < s
                                mem[(32 * arg1.length) + (32 * var67001) + 224] = var67003
                                require idx < arg1.length
                                require idx < arg1.length
                                if var71005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var75005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var77003 + t + 12 < s
                                mem[(32 * arg1.length) + (32 * var79001) + 224] = var79003
                                require idx < arg1.length
                                require idx < arg1.length
                                if var83005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var87005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var89003 + t + 12 < s
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
                                if var59005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var63005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var65003 + t + 12 < s
                                mem[(32 * arg1.length) + (32 * var67001) + 224] = var67003
                                require idx < arg1.length
                                require idx < arg1.length
                                if var71005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var75005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var77003 + t + 12 < s
                                mem[(32 * arg1.length) + (32 * var79001) + 224] = var79003
                                require idx < arg1.length
                                require idx < arg1.length
                                if var83005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var87005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var89003 + t + 12 < s
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
                                if var61005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var65005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var67003 + t + 12 < s
                                mem[(32 * arg1.length) + (32 * var69001) + 224] = var69003
                                require idx < arg1.length
                                require idx < arg1.length
                                if var73005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var77005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var79003 + t + 12 < s
                                mem[(32 * arg1.length) + (32 * var81001) + 224] = var81003
                                require idx < arg1.length
                                require idx < arg1.length
                                if var85005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var89005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var91003 + t + 12 < s
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
                                if var61005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var65005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var67003 + t + 12 < s
                                mem[(32 * arg1.length) + (32 * var69001) + 224] = var69003
                                require idx < arg1.length
                                require idx < arg1.length
                                if var73005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var77005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var79003 + t + 12 < s
                                mem[(32 * arg1.length) + (32 * var81001) + 224] = var81003
                                require idx < arg1.length
                                require idx < arg1.length
                                if var85005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var89005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var91003 + t + 12 < s
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
                                if var61005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var65005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var67003 + t + 12 < s
                                mem[(32 * arg1.length) + (32 * var69001) + 224] = var69003
                                require idx < arg1.length
                                require idx < arg1.length
                                if var73005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var77005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var79003 + t + 12 < s
                                mem[(32 * arg1.length) + (32 * var81001) + 224] = var81003
                                require idx < arg1.length
                                require idx < arg1.length
                                if var85005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var89005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var91003 + t + 12 < s
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
                                if var61005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var65005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var67003 + t + 12 < s
                                mem[(32 * arg1.length) + (32 * var69001) + 224] = var69003
                                require idx < arg1.length
                                require idx < arg1.length
                                if var73005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var77005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var79003 + t + 12 < s
                                mem[(32 * arg1.length) + (32 * var81001) + 224] = var81003
                                require idx < arg1.length
                                require idx < arg1.length
                                if var85005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var89005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var91003 + t + 12 < s
                                # nil
    else:
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
                                if var80005 < uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    require var84005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                    # nil
                                else:
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
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
                                if var80005 < uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    require var84005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                    # nil
                                else:
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
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
                                if var80005 < uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    require var84005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                    # nil
                                else:
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
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
                                if var80005 < uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    require var84005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                    # nil
                                else:
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
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
                                if var82005 < uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    require var86005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                    # nil
                                else:
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
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
                                if var82005 < uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    require var86005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                    # nil
                                else:
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
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
                                if var82005 < uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    require var86005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                    # nil
                                else:
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
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
                                if var82005 < uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    require var86005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                    # nil
                                else:
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
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
                                if var82005 < uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    require var86005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                    # nil
                                else:
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
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
                                if var82005 < uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    require var86005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                    # nil
                                else:
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
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
                                if var82005 < uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    require var86005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                    # nil
                                else:
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
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
                                if var82005 < uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    require var86005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                    # nil
                                else:
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
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
                                if var84005 < uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    require var88005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                    # nil
                                else:
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
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
                                if var84005 < uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    require var88005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                    # nil
                                else:
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
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
                                if var84005 < uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    require var88005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                    # nil
                                else:
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
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
                                if var84005 < uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    require var88005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                    # nil
                                else:
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
            else:
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 1
                if address(event[mem[(32 * idx) + 128]].field_1280) != arg2:
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
                                if var82005 < uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    require var86005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                    # nil
                                else:
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
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
                                if var82005 < uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    require var86005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                    # nil
                                else:
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
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
                                if var82005 < uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    require var86005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                    # nil
                                else:
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
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
                                if var82005 < uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    require var86005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                    # nil
                                else:
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
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
                                if var84005 < uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    require var88005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                    # nil
                                else:
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
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
                                if var84005 < uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    require var88005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                    # nil
                                else:
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
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
                                if var84005 < uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    require var88005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                    # nil
                                else:
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
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
                                if var84005 < uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    require var88005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                    # nil
                                else:
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
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
                                if var84005 < uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    require var88005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                    # nil
                                else:
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
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
                                if var84005 < uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    require var88005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                    # nil
                                else:
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
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
                                if var84005 < uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    require var88005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                    # nil
                                else:
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
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
                                if var84005 < uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    require var88005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                    # nil
                                else:
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
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
                                if var62005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var66005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var68003 + t + 12 < s
                                mem[(32 * arg1.length) + (32 * var70001) + 224] = var70003
                                require idx < arg1.length
                                require idx < arg1.length
                                if var74005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var78005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var80003 + t + 12 < s
                                mem[(32 * arg1.length) + (32 * var82001) + 224] = var82003
                                require idx < arg1.length
                                require idx < arg1.length
                                if var86005 < uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    require var90005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                    # nil
                                else:
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
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
                                if var62005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var66005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var68003 + t + 12 < s
                                mem[(32 * arg1.length) + (32 * var70001) + 224] = var70003
                                require idx < arg1.length
                                require idx < arg1.length
                                if var74005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var78005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var80003 + t + 12 < s
                                mem[(32 * arg1.length) + (32 * var82001) + 224] = var82003
                                require idx < arg1.length
                                require idx < arg1.length
                                if var86005 < uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    require var90005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                    # nil
                                else:
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
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
                                if var62005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var66005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var68003 + t + 12 < s
                                mem[(32 * arg1.length) + (32 * var70001) + 224] = var70003
                                require idx < arg1.length
                                require idx < arg1.length
                                if var74005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var78005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var80003 + t + 12 < s
                                mem[(32 * arg1.length) + (32 * var82001) + 224] = var82003
                                require idx < arg1.length
                                require idx < arg1.length
                                if var86005 < uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    require var90005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                    # nil
                                else:
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
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
                                if var62005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var66005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var68003 + t + 12 < s
                                mem[(32 * arg1.length) + (32 * var70001) + 224] = var70003
                                require idx < arg1.length
                                require idx < arg1.length
                                if var74005 >= uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
                                require var78005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                require var80003 + t + 12 < s
                                mem[(32 * arg1.length) + (32 * var82001) + 224] = var82003
                                require idx < arg1.length
                                require idx < arg1.length
                                if var86005 < uint256(event[mem[(32 * idx) + 128]].field_2304):
                                    require var90005 < uint256(event[mem[(32 * idx) + 128]].field_2304)
                                    # nil
                                else:
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 1
                                    idx = idx + 1
                                    t = t + uint256(event[mem[(32 * idx) + 128]].field_2304) + 12
                                    continue 
    return Array(len=s, data=mem[(32 * arg1.length) + 224 len 32 * s])
}



}

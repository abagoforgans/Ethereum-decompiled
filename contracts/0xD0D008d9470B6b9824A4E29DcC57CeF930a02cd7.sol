contract main {




// =====================  Runtime code  =====================


const sub_77bb1361(?) = 0x33a8ba7202230fa1cee2aac7bac322939edc7ba0a48b0989335a5f87a5770369

const ONE = 10^18


mapping of struct stor0;
address operatorAddress;
address sub_0cc893e2Address;

function sub_0cc893e2(?) {
    return sub_0cc893e2Address
}

function operator() {
    return operatorAddress
}

function _fallback() payable {
    revert
}

function sub_b800919e(?) {
    if sub_0cc893e2Address != msg.sender:
        revert with 0, 'PPF_CAN_NOT_SET_OPERATOR_OWNER'
    if not arg1:
        revert with 0, 'PPF_OPERATOR_OWNER_ADDRESS_ZERO'
    sub_0cc893e2Address = arg1
    emit 0x99ac3391: arg1
}

function setOperator(address arg1) {
    if operatorAddress != msg.sender:
        if sub_0cc893e2Address != msg.sender:
            revert with 0, 'PPF_CAN_NOT_SET_OPERATOR'
    if not arg1:
        revert with 0, 'PPF_OPERATOR_ADDRESS_ZERO'
    operatorAddress = arg1
    emit SetOperator(arg1);
}

function get(address arg1, address arg2) {
    if arg1 == arg2:
        if block.timestamp > test266151307():
            revert with 0, 'UINT64_NUMBER_TOO_BIG'
        return 10^18, uint64(block.timestamp)
    if arg1 < arg2:
        if not stor0[arg1][Mask(96, 64, arg2) >> 64][mem[200 len 8]].field_128:
            return 0
        if arg1 < arg2:
            mem[168] = stor0[arg1][Mask(96, 64, arg2) >> 64][mem[200 len 8]].field_0
        else:
            require stor0[arg1][Mask(96, 64, arg2) >> 64][mem[200 len 8]].field_0
            mem[168] = uint128(1000000000000000000 * 10^18 / stor0[arg1][Mask(96, 64, arg2) >> 64][mem[200 len 8]].field_0)
        mem[200] = stor0[arg1][Mask(96, 64, arg2) >> 64][mem[200 len 8]].field_128
    else:
        if not stor0[arg2][Mask(96, 64, arg1) >> 64][mem[200 len 8]].field_128:
            return 0
        if arg1 < arg2:
            mem[168] = stor0[arg2][Mask(96, 64, arg1) >> 64][mem[200 len 8]].field_0
        else:
            require stor0[arg2][Mask(96, 64, arg1) >> 64][mem[200 len 8]].field_0
            mem[168] = uint128(1000000000000000000 * 10^18 / stor0[arg2][Mask(96, 64, arg1) >> 64][mem[200 len 8]].field_0)
        mem[200] = stor0[arg2][Mask(96, 64, arg1) >> 64][mem[200 len 8]].field_128
    return memory
      from 168
       len 64
}

function update(address arg1, address arg2, uint128 arg3, uint64 arg4, bytes arg5) {
    mem[128 len arg5.length] = arg5[all]
    if arg1 < arg2:
        mem[ceil32(arg5.length) + 160] = address(arg1)
        mem[ceil32(arg5.length) + 180] = address(arg2)
        mem[ceil32(arg5.length) + 128] = 40
        if arg4 <= stor0[arg1][Mask(96, 64, arg2) >> 64][mem[ceil32(arg5.length) + 232 len 8]].field_128:
            revert with 0, 'PPF_BAD_RATE_TIMESTAMP'
        mem[ceil32(arg5.length) + 200] = 22
        if arg4 > block.timestamp:
            revert with 0, 'PPF_BAD_RATE_TIMESTAMP'
        if arg3 <= 0:
            revert with 0, 'PPF_INVALID_RATE_VALUE'
        if arg2 == arg1:
            revert with 0, 'PPF_EQUAL_BASE_QUOTE_ADDRESSES'
        if arg5.length != 65:
            if operatorAddress != 0:
                revert with 0, 'PPF_BAD_SIGNATURE'
        else:
            if 27 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27):
                signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(0x33a8ba7202230fa1cee2aac7bac322939edc7ba0a48b0989335a5f87a5770369, arg1, arg2, arg3, arg4)), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                if address(signer) != operatorAddress:
                    revert with 0, 'PPF_BAD_SIGNATURE'
            else:
                if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
                    if operatorAddress != 0:
                        revert with 0, 'PPF_BAD_SIGNATURE'
                else:
                    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(0x33a8ba7202230fa1cee2aac7bac322939edc7ba0a48b0989335a5f87a5770369, arg1, arg2, arg3, arg4)), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    if address(signer) != operatorAddress:
                        revert with 0, 'PPF_BAD_SIGNATURE'
        if arg1 < arg2:
            stor0[arg1][Mask(96, 64, arg2) >> 64][mem[ceil32(arg5.length) + 232 len 8]].field_0 = arg3
        else:
            require arg3
            stor0[arg1][Mask(96, 64, arg2) >> 64][mem[ceil32(arg5.length) + 232 len 8]].field_0 = uint128(1000000000000000000 * 10^18 / arg3)
        stor0[arg1][Mask(96, 64, arg2) >> 64][mem[ceil32(arg5.length) + 232 len 8]].field_128 = arg4
    else:
        mem[ceil32(arg5.length) + 160] = address(arg2)
        mem[ceil32(arg5.length) + 180] = address(arg1)
        mem[ceil32(arg5.length) + 128] = 40
        if arg4 <= stor0[arg2][Mask(96, 64, arg1) >> 64][mem[ceil32(arg5.length) + 232 len 8]].field_128:
            revert with 0, 'PPF_BAD_RATE_TIMESTAMP'
        mem[ceil32(arg5.length) + 200] = 22
        if arg4 > block.timestamp:
            revert with 0, 'PPF_BAD_RATE_TIMESTAMP'
        if arg3 <= 0:
            revert with 0, 'PPF_INVALID_RATE_VALUE'
        if arg2 == arg1:
            revert with 0, 'PPF_EQUAL_BASE_QUOTE_ADDRESSES'
        if arg5.length != 65:
            if operatorAddress != 0:
                revert with 0, 'PPF_BAD_SIGNATURE'
        else:
            if 27 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27):
                signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(0x33a8ba7202230fa1cee2aac7bac322939edc7ba0a48b0989335a5f87a5770369, arg1, arg2, arg3, arg4)), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                if address(signer) != operatorAddress:
                    revert with 0, 'PPF_BAD_SIGNATURE'
            else:
                if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
                    if operatorAddress != 0:
                        revert with 0, 'PPF_BAD_SIGNATURE'
                else:
                    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(0x33a8ba7202230fa1cee2aac7bac322939edc7ba0a48b0989335a5f87a5770369, arg1, arg2, arg3, arg4)), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    if address(signer) != operatorAddress:
                        revert with 0, 'PPF_BAD_SIGNATURE'
        if arg1 < arg2:
            stor0[arg2][Mask(96, 64, arg1) >> 64][mem[ceil32(arg5.length) + 232 len 8]].field_0 = arg3
        else:
            require arg3
            stor0[arg2][Mask(96, 64, arg1) >> 64][mem[ceil32(arg5.length) + 232 len 8]].field_0 = uint128(1000000000000000000 * 10^18 / arg3)
        stor0[arg2][Mask(96, 64, arg1) >> 64][mem[ceil32(arg5.length) + 232 len 8]].field_128 = arg4
    emit 0xdc3cf748: arg3 << 128, arg4, arg1, arg2
}

function sub_0dfcdb07(?) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = arg3.length
    mem[(32 * arg2.length) + (32 * arg1.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 192] = arg4.length
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224] = arg5.length
    mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 256 len arg5.length] = arg5[all]
    mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(arg5.length) + 256] = 27
    mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(arg5.length) + 288] = 'PPF_BASE_ADDRESSES_LEN_ZERO'
    if not arg1.length:
        revert with 0, 'PPF_BASE_ADDRESSES_LEN_ZERO'
    mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(arg5.length) + 320] = 32
    mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(arg5.length) + 352] = 'PPF_QUOTE_ADDRESSES_LEN_MISMATCH'
    if arg2.length != arg1.length:
        revert with 0, 'PPF_QUOTE_ADDRESSES_LEN_MISMATCH'
    mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(arg5.length) + 384] = 28
    mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(arg5.length) + 416] = 'PPF_RATE_VALUES_LEN_MISMATCH'
    if arg3.length != arg1.length:
        revert with 0, 'PPF_RATE_VALUES_LEN_MISMATCH'
    mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(arg5.length) + 448] = 32
    mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(arg5.length) + 480] = 'PPF_RATE_TIMESTAMPS_LEN_MISMATCH'
    if arg4.length != arg1.length:
        revert with 0, 'PPF_RATE_TIMESTAMPS_LEN_MISMATCH'
    mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(arg5.length) + 512] = 27
    mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(arg5.length) + 544] = 'PPF_SIGNATURES_LEN_MISMATCH'
    if arg5.length / 65 != arg1.length:
        revert with 0, 'PPF_SIGNATURES_LEN_MISMATCH'
    mem[64] = (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(arg5.length) + 640
    mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(arg5.length) + 576] = 27
    mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(arg5.length) + 608] = 'PPF_SIGNATURES_LEN_MISMATCH'
    if arg5.length % 65:
        revert with 0, 'PPF_SIGNATURES_LEN_MISMATCH'
    s = 0
    s = 96
    idx = 0
    while idx < arg1.length:
        _454 = mem[64]
        mem[mem[64]] = 65
        mem[64] = mem[64] + 128
        mem[_454 + 32 len 2080] = code.data[6346 len 2080]
        mem[_454 + 32] = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + (65 * idx) + 256]
        mem[_454 + 64] = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + (65 * idx) + 288]
        mem[_454 + 96 len 8] = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + (65 * idx) + 289]
        require idx < mem[96]
        _465 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        _479 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
        _487 = mem[(32 * idx) + (32 * arg2.length) + (32 * arg1.length) + 192]
        require idx < mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 192]
        _489 = mem[(32 * idx) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224]
        if mem[(32 * idx) + 140 len 20] < mem[(32 * idx) + (32 * arg1.length) + 172 len 20]:
            mem[_454 + 160] = address(mem[(32 * idx) + 128])
            mem[_454 + 180] = address(_479)
            mem[_454 + 128] = 40
            mem[64] = _454 + 200
            t = _454 + 160
            u = _454 + 200
            s = 40
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_454 + 232] = mem[_454 + 216 len 8] or Mask(192, 64, mem[_454 + 232])
            _849 = sha3(mem[_454 + 200 len 40])
            mem[0] = sha3(mem[_454 + 200 len 40])
            mem[32] = 0
            if uint64(_489) <= stor0[mem[0]].field_128:
                mem[_454 + 264] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_454 + 268] = 32
                idx = 32
                while idx < 22:
                    mem[idx + _454 + 332] = mem[idx + _454 + 232]
                    idx = idx + 32
                    continue 
                revert with 0, 'PPF_BAD_RATE_TIMESTAMP'
            mem[_454 + 200] = 22
            mem[_454 + 232] = 'PPF_BAD_RATE_TIMESTAMP'
            if uint64(_489) > block.timestamp:
                mem[_454 + 264] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_454 + 268] = 32
                idx = 32
                while idx < 22:
                    mem[idx + _454 + 332] = mem[idx + _454 + 232]
                    idx = idx + 32
                    continue 
                revert with 0, 'PPF_BAD_RATE_TIMESTAMP'
            mem[_454 + 264] = 22
            mem[_454 + 296] = 'PPF_INVALID_RATE_VALUE'
            if uint128(_487) <= 0:
                mem[_454 + 328] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_454 + 332] = 32
                idx = 32
                while idx < 22:
                    mem[idx + _454 + 396] = mem[idx + _454 + 296]
                    idx = idx + 32
                    continue 
                revert with 0, 'PPF_INVALID_RATE_VALUE'
            mem[_454 + 328] = 30
            mem[_454 + 360] = 'PPF_EQUAL_BASE_QUOTE_ADDRESSES'
            if address(_479) == address(_465):
                mem[_454 + 392] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_454 + 396] = 32
                idx = 32
                while idx < 30:
                    mem[idx + _454 + 460] = mem[idx + _454 + 360]
                    idx = idx + 32
                    continue 
                revert with 0, 'PPF_EQUAL_BASE_QUOTE_ADDRESSES'
            mem[_454 + 424] = 0x33a8ba7202230fa1cee2aac7bac322939edc7ba0a48b0989335a5f87a5770369
            mem[_454 + 456] = address(_465)
            mem[_454 + 476] = address(_479)
            mem[_454 + 496] = _487 << 128
            mem[_454 + 512] = _489 << 192
            mem[_454 + 392] = 96
            mem[64] = _454 + 520
            t = _454 + 424
            u = _454 + 520
            s = 96
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            _1198 = sha3(mem[mem[64] len _454 + -mem[64] + 616])
            _1236 = mem[64]
            mem[mem[64] + 32] = '\x19Ethereum Signed Message:\n32'
            mem[mem[64] + 60] = _1198
            _1237 = mem[64]
            mem[mem[64]] = 60
            mem[64] = mem[64] + 92
            _1238 = mem[_1237]
            t = _1237 + 32
            u = _1236 + 92
            s = mem[_1237]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_1236 + floor32(mem[_1237]) + 92] = mem[_1236 + floor32(mem[_1237]) + 92] and 256^(-(mem[_1237] % 32) + 32) - 1 or mem[_1237 + floor32(mem[_1237]) + 32] and !(256^(-(mem[_1237] % 32) + 32) - 1)
            _1463 = sha3(mem[mem[64] len _1236 + _1238 + -mem[64] + 92])
            if mem[_454] != 65:
                _1478 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1478] = 17
                mem[_1478 + 32] = 'PPF_BAD_SIGNATURE'
                if operatorAddress != 0:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 17
                    mem[mem[64] + 68] = 'PPF_BAD_SIGNATURE'
                    idx = 32
                    while idx < 17:
                        mem[idx + mem[64] + 68] = mem[idx + _1478 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'PPF_BAD_SIGNATURE'
                _1482 = mem[64]
                mem[64] = mem[64] + 64
                if address(_465) < address(_479):
                    mem[_1482] = uint128(_487)
                    mem[_1482 + 32] = uint64(_489)
                    mem[0] = _849
                    mem[32] = 0
                    stor0[_849].field_0 = uint128(_487)
                else:
                    require uint128(_487)
                    mem[_1482] = uint128(1000000000000000000 * 10^18 / uint128(_487))
                    mem[_1482 + 32] = uint64(_489)
                    mem[0] = _849
                    mem[32] = 0
                    stor0[_849].field_0 = uint128(1000000000000000000 * 10^18 / uint128(_487))
                stor0[_849].field_128 = uint64(_489)
                mem[mem[64]] = uint128(_487)
                mem[mem[64] + 32] = uint64(_489)
            else:
                _1472 = mem[_454 + 32]
                _1473 = mem[_454 + 64]
                _1474 = mem[_454 + 96]
                if 27 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('var', '_454')), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('var', '_454')), 32))), 0) - 256) + 27):
                    _1480 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_1480 + 64] = uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_1474')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_1474')), 0) - 256) + 27)
                    signer = erecover(_1463, (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_1474')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_1474')), 0) - 256) + 27 << 248, _1472, _1473) 
                    mem[_1480] = signer
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1480 + 96
                    mem[_1480 + 32] = 17
                    mem[_1480 + 64] = 'PPF_BAD_SIGNATURE'
                    if address(signer) != operatorAddress:
                        mem[_1480 + 96] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1480 + 100] = 32
                        idx = 32
                        while idx < 17:
                            mem[idx + _1480 + 164] = mem[idx + _1480 + 64]
                            idx = idx + 32
                            continue 
                        revert with 0, 'PPF_BAD_SIGNATURE'
                    mem[64] = _1480 + 160
                    if address(_465) < address(_479):
                        mem[_1480 + 96] = uint128(_487)
                        mem[_1480 + 128] = uint64(_489)
                        mem[0] = _849
                        mem[32] = 0
                        stor0[_849].field_0 = uint128(_487)
                    else:
                        require uint128(_487)
                        mem[_1480 + 96] = uint128(1000000000000000000 * 10^18 / uint128(_487))
                        mem[_1480 + 128] = uint64(_489)
                        mem[0] = _849
                        mem[32] = 0
                        stor0[_849].field_0 = uint128(1000000000000000000 * 10^18 / uint128(_487))
                    stor0[_849].field_128 = uint64(_489)
                    mem[_1480 + 160] = uint128(_487)
                    mem[_1480 + 192] = uint64(_489)
                else:
                    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('var', '_454')), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('var', '_454')), 32))), 0) - 256) + 27) != 28:
                        _1515 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1515] = 17
                        mem[_1515 + 32] = 'PPF_BAD_SIGNATURE'
                        if operatorAddress != 0:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 17
                            mem[mem[64] + 68] = 'PPF_BAD_SIGNATURE'
                            idx = 32
                            while idx < 17:
                                mem[idx + mem[64] + 68] = mem[idx + _1515 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'PPF_BAD_SIGNATURE'
                        _1527 = mem[64]
                        mem[64] = mem[64] + 64
                        if address(_465) < address(_479):
                            mem[_1527] = uint128(_487)
                            mem[_1527 + 32] = uint64(_489)
                            mem[0] = _849
                            mem[32] = 0
                            stor0[_849].field_0 = uint128(_487)
                        else:
                            require uint128(_487)
                            mem[_1527] = uint128(1000000000000000000 * 10^18 / uint128(_487))
                            mem[_1527 + 32] = uint64(_489)
                            mem[0] = _849
                            mem[32] = 0
                            stor0[_849].field_0 = uint128(1000000000000000000 * 10^18 / uint128(_487))
                        stor0[_849].field_128 = uint64(_489)
                        mem[mem[64]] = uint128(_487)
                        mem[mem[64] + 32] = uint64(_489)
                    else:
                        _1494 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_1494 + 64] = uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_1474')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_1474')), 0) - 256) + 27)
                        signer = erecover(_1463, (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_1474')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_1474')), 0) - 256) + 27 << 248, _1472, _1473) 
                        mem[_1494] = signer
                        if not erecover.result:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _1494 + 96
                        mem[_1494 + 32] = 17
                        mem[_1494 + 64] = 'PPF_BAD_SIGNATURE'
                        if address(signer) != operatorAddress:
                            mem[_1494 + 96] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1494 + 100] = 32
                            idx = 32
                            while idx < 17:
                                mem[idx + _1494 + 164] = mem[idx + _1494 + 64]
                                idx = idx + 32
                                continue 
                            revert with 0, 'PPF_BAD_SIGNATURE'
                        mem[64] = _1494 + 160
                        if address(_465) < address(_479):
                            mem[_1494 + 96] = uint128(_487)
                            mem[_1494 + 128] = uint64(_489)
                            mem[0] = _849
                            mem[32] = 0
                            stor0[_849].field_0 = uint128(_487)
                        else:
                            require uint128(_487)
                            mem[_1494 + 96] = uint128(1000000000000000000 * 10^18 / uint128(_487))
                            mem[_1494 + 128] = uint64(_489)
                            mem[0] = _849
                            mem[32] = 0
                            stor0[_849].field_0 = uint128(1000000000000000000 * 10^18 / uint128(_487))
                        stor0[_849].field_128 = uint64(_489)
                        mem[_1494 + 160] = uint128(_487)
                        mem[_1494 + 192] = uint64(_489)
        else:
            mem[_454 + 160] = address(mem[(32 * idx) + (32 * arg1.length) + 160])
            mem[_454 + 180] = address(_465)
            mem[_454 + 128] = 40
            mem[64] = _454 + 200
            t = _454 + 160
            u = _454 + 200
            s = 40
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_454 + 232] = mem[_454 + 216 len 8] or Mask(192, 64, mem[_454 + 232])
            _854 = sha3(mem[_454 + 200 len 40])
            mem[0] = sha3(mem[_454 + 200 len 40])
            mem[32] = 0
            if uint64(_489) <= stor0[mem[0]].field_128:
                mem[_454 + 264] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_454 + 268] = 32
                idx = 32
                while idx < 22:
                    mem[idx + _454 + 332] = mem[idx + _454 + 232]
                    idx = idx + 32
                    continue 
                revert with 0, 'PPF_BAD_RATE_TIMESTAMP'
            mem[_454 + 200] = 22
            mem[_454 + 232] = 'PPF_BAD_RATE_TIMESTAMP'
            if uint64(_489) > block.timestamp:
                mem[_454 + 264] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_454 + 268] = 32
                idx = 32
                while idx < 22:
                    mem[idx + _454 + 332] = mem[idx + _454 + 232]
                    idx = idx + 32
                    continue 
                revert with 0, 'PPF_BAD_RATE_TIMESTAMP'
            mem[_454 + 264] = 22
            mem[_454 + 296] = 'PPF_INVALID_RATE_VALUE'
            if uint128(_487) <= 0:
                mem[_454 + 328] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_454 + 332] = 32
                idx = 32
                while idx < 22:
                    mem[idx + _454 + 396] = mem[idx + _454 + 296]
                    idx = idx + 32
                    continue 
                revert with 0, 'PPF_INVALID_RATE_VALUE'
            mem[_454 + 328] = 30
            mem[_454 + 360] = 'PPF_EQUAL_BASE_QUOTE_ADDRESSES'
            if address(_479) == address(_465):
                mem[_454 + 392] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_454 + 396] = 32
                idx = 32
                while idx < 30:
                    mem[idx + _454 + 460] = mem[idx + _454 + 360]
                    idx = idx + 32
                    continue 
                revert with 0, 'PPF_EQUAL_BASE_QUOTE_ADDRESSES'
            mem[_454 + 424] = 0x33a8ba7202230fa1cee2aac7bac322939edc7ba0a48b0989335a5f87a5770369
            mem[_454 + 456] = address(_465)
            mem[_454 + 476] = address(_479)
            mem[_454 + 496] = _487 << 128
            mem[_454 + 512] = _489 << 192
            mem[_454 + 392] = 96
            mem[64] = _454 + 520
            t = _454 + 424
            u = _454 + 520
            s = 96
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            _1207 = sha3(mem[mem[64] len _454 + -mem[64] + 616])
            _1239 = mem[64]
            mem[mem[64] + 32] = '\x19Ethereum Signed Message:\n32'
            mem[mem[64] + 60] = _1207
            _1240 = mem[64]
            mem[mem[64]] = 60
            mem[64] = mem[64] + 92
            _1241 = mem[_1240]
            t = _1240 + 32
            u = _1239 + 92
            s = mem[_1240]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_1239 + floor32(mem[_1240]) + 92] = mem[_1239 + floor32(mem[_1240]) + 92] and 256^(-(mem[_1240] % 32) + 32) - 1 or mem[_1240 + floor32(mem[_1240]) + 32] and !(256^(-(mem[_1240] % 32) + 32) - 1)
            _1468 = sha3(mem[mem[64] len _1239 + _1241 + -mem[64] + 92])
            if mem[_454] != 65:
                _1479 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1479] = 17
                mem[_1479 + 32] = 'PPF_BAD_SIGNATURE'
                if operatorAddress != 0:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 17
                    mem[mem[64] + 68] = 'PPF_BAD_SIGNATURE'
                    idx = 32
                    while idx < 17:
                        mem[idx + mem[64] + 68] = mem[idx + _1479 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'PPF_BAD_SIGNATURE'
                _1488 = mem[64]
                mem[64] = mem[64] + 64
                if address(_465) < address(_479):
                    mem[_1488] = uint128(_487)
                    mem[_1488 + 32] = uint64(_489)
                    mem[0] = _854
                    mem[32] = 0
                    stor0[_854].field_0 = uint128(_487)
                else:
                    require uint128(_487)
                    mem[_1488] = uint128(1000000000000000000 * 10^18 / uint128(_487))
                    mem[_1488 + 32] = uint64(_489)
                    mem[0] = _854
                    mem[32] = 0
                    stor0[_854].field_0 = uint128(1000000000000000000 * 10^18 / uint128(_487))
                stor0[_854].field_128 = uint64(_489)
                mem[mem[64]] = uint128(_487)
                mem[mem[64] + 32] = uint64(_489)
            else:
                _1475 = mem[_454 + 32]
                _1476 = mem[_454 + 64]
                _1477 = mem[_454 + 96]
                if 27 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('var', '_454')), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('var', '_454')), 32))), 0) - 256) + 27):
                    _1486 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_1486 + 64] = uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_1477')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_1477')), 0) - 256) + 27)
                    signer = erecover(_1468, (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_1477')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_1477')), 0) - 256) + 27 << 248, _1475, _1476) 
                    mem[_1486] = signer
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1486 + 96
                    mem[_1486 + 32] = 17
                    mem[_1486 + 64] = 'PPF_BAD_SIGNATURE'
                    if address(signer) != operatorAddress:
                        mem[_1486 + 96] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1486 + 100] = 32
                        idx = 32
                        while idx < 17:
                            mem[idx + _1486 + 164] = mem[idx + _1486 + 64]
                            idx = idx + 32
                            continue 
                        revert with 0, 'PPF_BAD_SIGNATURE'
                    mem[64] = _1486 + 160
                    if address(_465) < address(_479):
                        mem[_1486 + 96] = uint128(_487)
                        mem[_1486 + 128] = uint64(_489)
                        mem[0] = _854
                        mem[32] = 0
                        stor0[_854].field_0 = uint128(_487)
                    else:
                        require uint128(_487)
                        mem[_1486 + 96] = uint128(1000000000000000000 * 10^18 / uint128(_487))
                        mem[_1486 + 128] = uint64(_489)
                        mem[0] = _854
                        mem[32] = 0
                        stor0[_854].field_0 = uint128(1000000000000000000 * 10^18 / uint128(_487))
                    stor0[_854].field_128 = uint64(_489)
                    mem[_1486 + 160] = uint128(_487)
                    mem[_1486 + 192] = uint64(_489)
                else:
                    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('var', '_454')), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('var', '_454')), 32))), 0) - 256) + 27) != 28:
                        _1519 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1519] = 17
                        mem[_1519 + 32] = 'PPF_BAD_SIGNATURE'
                        if operatorAddress != 0:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 17
                            mem[mem[64] + 68] = 'PPF_BAD_SIGNATURE'
                            idx = 32
                            while idx < 17:
                                mem[idx + mem[64] + 68] = mem[idx + _1519 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'PPF_BAD_SIGNATURE'
                        _1537 = mem[64]
                        mem[64] = mem[64] + 64
                        if address(_465) < address(_479):
                            mem[_1537] = uint128(_487)
                            mem[_1537 + 32] = uint64(_489)
                            mem[0] = _854
                            mem[32] = 0
                            stor0[_854].field_0 = uint128(_487)
                        else:
                            require uint128(_487)
                            mem[_1537] = uint128(1000000000000000000 * 10^18 / uint128(_487))
                            mem[_1537 + 32] = uint64(_489)
                            mem[0] = _854
                            mem[32] = 0
                            stor0[_854].field_0 = uint128(1000000000000000000 * 10^18 / uint128(_487))
                        stor0[_854].field_128 = uint64(_489)
                        mem[mem[64]] = uint128(_487)
                        mem[mem[64] + 32] = uint64(_489)
                    else:
                        _1499 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_1499 + 64] = uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_1477')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_1477')), 0) - 256) + 27)
                        signer = erecover(_1468, (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_1477')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_1477')), 0) - 256) + 27 << 248, _1475, _1476) 
                        mem[_1499] = signer
                        if not erecover.result:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _1499 + 96
                        mem[_1499 + 32] = 17
                        mem[_1499 + 64] = 'PPF_BAD_SIGNATURE'
                        if address(signer) != operatorAddress:
                            mem[_1499 + 96] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1499 + 100] = 32
                            idx = 32
                            while idx < 17:
                                mem[idx + _1499 + 164] = mem[idx + _1499 + 64]
                                idx = idx + 32
                                continue 
                            revert with 0, 'PPF_BAD_SIGNATURE'
                        mem[64] = _1499 + 160
                        if address(_465) < address(_479):
                            mem[_1499 + 96] = uint128(_487)
                            mem[_1499 + 128] = uint64(_489)
                            mem[0] = _854
                            mem[32] = 0
                            stor0[_854].field_0 = uint128(_487)
                        else:
                            require uint128(_487)
                            mem[_1499 + 96] = uint128(1000000000000000000 * 10^18 / uint128(_487))
                            mem[_1499 + 128] = uint64(_489)
                            mem[0] = _854
                            mem[32] = 0
                            stor0[_854].field_0 = uint128(1000000000000000000 * 10^18 / uint128(_487))
                        stor0[_854].field_128 = uint64(_489)
                        mem[_1499 + 160] = uint128(_487)
                        mem[_1499 + 192] = uint64(_489)
        emit 0xdc3cf748: _487 << 128, uint64(_489), address(_465), address(_479)
        s = (65 * idx) + 32
        s = _454
        idx = idx + 1
        continue 
}



}

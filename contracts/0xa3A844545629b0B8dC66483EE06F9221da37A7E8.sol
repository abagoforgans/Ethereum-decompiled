contract main {




// =====================  Runtime code  =====================


#
#  - sub_0ffe8494(?)
#
address operatorAddress;

function operator() payable {
    return operatorAddress
}

function _fallback() payable {
    revert
}

function setOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    operatorAddress = arg1
}

function sub_0063817b(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(operatorAddress)
    staticcall operatorAddress.0xd7eb9379 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    return ext_call.return_data[0], 
           ext_call.return_data[32],
           ext_call.return_data[64],
           address(ext_call.return_data[96]),
           address(ext_call.return_data[128]),
           bool(ext_call.return_data[160])
}

function sub_19b6d4ba(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(operatorAddress)
    staticcall operatorAddress.0xefbf64a7 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 224
    return ext_call.return_data[0], 
           ext_call.return_data[32],
           ext_call.return_data[64],
           address(ext_call.return_data[96]),
           address(ext_call.return_data[128]),
           ext_call.return_data[160],
           ext_call.return_data[192]
}

function sub_21bb38f7(?) payable {
    require ext_code.size(operatorAddress)
    staticcall operatorAddress.0xa363fc96 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(operatorAddress)
    staticcall operatorAddress.lastReset() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(operatorAddress)
    staticcall operatorAddress.ONE_DAY() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(operatorAddress)
    staticcall operatorAddress.0x152ad433 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(operatorAddress)
    staticcall operatorAddress.0x94dd27d2 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], 
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0]
}

function getCurrentVote() payable {
    mem[96] = 0xf9b137d700000000000000000000000000000000000000000000000000000000
    require ext_code.size(operatorAddress)
    staticcall operatorAddress.0xf9b137d7 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 192
    _5 = mem[128]
    require mem[128] <= 4294967296
    require mem[128] + 32 <= return_data.size
    require return_data.size >= mem[mem[128] + 96] + mem[128] + 32 and mem[mem[128] + 96] <= 4294967296
    _7 = mem[160]
    _8 = mem[192]
    _9 = mem[224]
    _10 = mem[256]
    mem[ceil32(return_data.size) + 96] = mem[96]
    mem[ceil32(return_data.size) + 160] = address(_7)
    mem[ceil32(return_data.size) + 192] = _8
    mem[ceil32(return_data.size) + 224] = _9
    mem[ceil32(return_data.size) + 256] = _10
    mem[ceil32(return_data.size) + 128] = 192
    mem[ceil32(return_data.size) + 288] = mem[_5 + 96]
    _13 = mem[_5 + 96]
    mem[ceil32(return_data.size) + 320 len ceil32(mem[_5 + 96])] = mem[_5 + 128 len ceil32(mem[_5 + 96])]
    if not _13 % 32:
        return mem[ceil32(return_data.size) + 96], 192, address(_7), _8, _9, _10, mem[ceil32(return_data.size) + 288 len _13 + 32]
    mem[floor32(_13) + ceil32(return_data.size) + 320] = mem[floor32(_13) + ceil32(return_data.size) + -(_13 % 32) + 352 len _13 % 32]
    return mem[ceil32(return_data.size) + 96], 
           192,
           address(_7),
           _8,
           _9,
           _10,
           mem[ceil32(return_data.size) + 288 len floor32(_13) + 64]
}

function getContractInfo() payable {
    require ext_code.size(operatorAddress)
    staticcall operatorAddress.0x97d42e0 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(operatorAddress)
    staticcall operatorAddress.admin() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(operatorAddress)
    staticcall operatorAddress.0xe5448048 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(operatorAddress)
    staticcall operatorAddress.0x14e53a40 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(operatorAddress)
    staticcall operatorAddress.0x8ed24df1 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(operatorAddress)
    staticcall operatorAddress.getInvestorLength() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return address(ext_call.return_data[0]), 
           ext_call.return_data[0],
           ext_call.return_data[0],
           address(ext_call.return_data[0]),
           eth.balance(operatorAddress),
           ext_call.return_data[0],
           ext_call.return_data[0]
}

function sub_6d9900c0(?) payable {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = arg4.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _18 = mem[(32 * idx) + 128]
        require idx < arg2.length
        _20 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg3.length
        _22 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
        require idx < arg4.length
        _24 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = 0x6d462ae100000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 228] = _18
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 260] = _20
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 292] = _22
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 324] = address(_24)
        require ext_code.size(operatorAddress)
        call operatorAddress.0x6d462ae1 with:
             gas gas_remaining wei
            args _18, _20, _22, address(_24)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function sub_b95cf682(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = 0
    idx = 0
    while idx < arg2.length:
        _30 = mem[64]
        mem[mem[64]] = 5
        mem[64] = mem[64] + 192
        mem[_30 + 32 len 160] = code.data[11526 len 160]
        s = 5 * idx
        while s <= (5 * idx) + 4:
            require s < mem[96]
            require s - (5 * idx) < mem[_30]
            mem[_30 + (32 * s - (5 * idx)) + 32] = mem[(32 * s) + 140 len 20]
            s = s + 1
            continue 
        _51 = mem[64]
        mem[mem[64]] = 13
        mem[64] = mem[64] + 448
        mem[_51 + 32 len 416] = code.data[11526 len 416]
        s = 13 * idx
        while s <= (13 * idx) + 12:
            require s < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
            require s - (13 * idx) < mem[_51]
            mem[_51 + (32 * s - (13 * idx)) + 32] = mem[(32 * s) + (32 * arg1.length) + (32 * arg2.length) + 192]
            s = s + 1
            continue 
        require idx < mem[(32 * arg1.length) + 128]
        _69 = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[mem[64]] = 0x49f259700000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 36] = bool(_69)
        mem[mem[64] + 4] = 96
        mem[mem[64] + 100] = mem[_30]
        _72 = mem[_30]
        s = 0
        while s < 32 * _72:
            mem[s + mem[64] + 132] = mem[s + _30 + 32]
            s = s + 32
            continue 
        mem[mem[64] + 68] = (32 * _72) + 128
        mem[(32 * _72) + mem[64] + 132] = mem[_51]
        _79 = mem[_51]
        s = 0
        while s < 32 * _79:
            mem[s + (32 * _72) + mem[64] + 164] = mem[s + _51 + 32]
            s = s + 32
            continue 
        require ext_code.size(operatorAddress)
        call operatorAddress.0x49f2597 with:
             gas gas_remaining wei
            args 96, bool(_69), (32 * _72) + 128, mem[mem[64] + 100 len (32 * _79) + (32 * _72) + 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        s = floor32(_79) + 1
        continue 
}

function sub_0f335627(?) payable {
    require calldata.size - 4 >= 224
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = arg4.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + (32 * arg5.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = arg5.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + (32 * arg6.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256] = arg6.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 288 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    require arg7 <= 4294967296
    require arg7 + 36 <= calldata.size
    require arg7.length <= 4294967296 and arg7 + (32 * arg7.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288] = arg7.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320 len 32 * arg7.length] = call.data[arg7 + 36 len 32 * arg7.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 320] = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _27 = mem[(32 * idx) + 128]
        require idx < arg2.length
        _29 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg3.length
        _31 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
        require idx < arg4.length
        _33 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
        require idx < arg5.length
        _35 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256]
        require idx < arg6.length
        _37 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 288]
        require idx < arg7.length
        _39 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * idx) + 320]
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 320] = 0x8f0fb9e000000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 324] = _27
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 356] = _29
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 388] = _31
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 420] = address(_33)
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 452] = address(_35)
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 484] = _37
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 516] = _39
        require ext_code.size(operatorAddress)
        call operatorAddress.0x8f0fb9e0 with:
             gas gas_remaining wei
            args _27, _29, _31, address(_33), address(_35), _37, _39
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function sub_ab0b6739(?) payable {
    require ext_code.size(operatorAddress)
    staticcall operatorAddress.0x3f310896 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = ext_call.return_data[0]
    if not ext_call.return_data[0]:
        mem[(32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
        mem[(64 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
        mem[(98 * ext_call.return_data[0]) + 192] = ext_call.return_data[0]
        mem[64] = (131 * ext_call.return_data[0]) + 224
        idx = 0
        while idx < ext_call.return_data[0]:
            require ext_code.size(operatorAddress)
            staticcall operatorAddress.0x3865079f with:
                    gas gas_remaining wei
                   args idx
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(operatorAddress)
            staticcall operatorAddress.0x6a86e8fd with:
                    gas gas_remaining wei
                   args ext_call.return_data[0]
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 128
            require idx < mem[96]
            mem[(32 * idx) + 128] = ext_call.return_data[0]
            require idx < mem[(64 * ext_call.return_data[0]) + 160]
            mem[(64 * ext_call.return_data[0]) + (32 * idx) + 192] = ext_call.return_data[64]
            require idx < mem[(32 * ext_call.return_data[0]) + 128]
            mem[(32 * ext_call.return_data[0]) + (32 * idx) + 160] = address(ext_call.return_data[32])
            require idx < mem[(98 * ext_call.return_data[0]) + 192]
            mem[(98 * ext_call.return_data[0]) + (32 * idx) + 224] = ext_call.return_data[96]
            idx = idx + 1
            continue 
        mem[mem[64]] = 128
        mem[mem[64] + 128] = mem[96]
        mem[mem[64] + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 32] = (32 * mem[96]) + 160
        mem[(32 * mem[96]) + mem[64] + 160] = mem[(32 * ext_call.return_data[0]) + 128]
        _129 = mem[(32 * ext_call.return_data[0]) + 128]
        mem[(32 * mem[96]) + mem[64] + 192 len floor32(mem[(32 * ext_call.return_data[0]) + 128])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])]
        mem[mem[64] + 64] = (32 * _129) + (32 * mem[96]) + 192
        mem[(32 * _129) + (32 * mem[96]) + mem[64] + 192] = mem[(64 * ext_call.return_data[0]) + 160]
        _151 = mem[(64 * ext_call.return_data[0]) + 160]
        s = 0
        while ext_call.return_data[0] < 32 * _151:
            mem[ext_call.return_data[0] + (32 * _129) + (32 * mem[96]) + mem[64] + 224] = mem[(66 * ext_call.return_data[0]) + 192]
            s = ext_call.return_data[0] + 32
            continue 
        mem[mem[64] + 96] = (32 * _151) + (32 * _129) + (32 * mem[96]) + 224
        mem[(32 * _151) + (32 * _129) + (32 * mem[96]) + mem[64] + 224] = mem[(98 * ext_call.return_data[0]) + 192]
        _167 = mem[(98 * ext_call.return_data[0]) + 192]
        mem[(32 * _151) + (32 * _129) + (32 * mem[96]) + mem[64] + 256 len floor32(mem[(98 * ext_call.return_data[0]) + 192])] = mem[(98 * ext_call.return_data[0]) + 224 len floor32(mem[(98 * ext_call.return_data[0]) + 192])]
        return 128, 
               (32 * mem[96]) + 160,
               (32 * _129) + (32 * mem[96]) + 192,
               (32 * _151) + (32 * _129) + (32 * mem[96]) + 224,
               mem[mem[64] + 128 len (32 * _167) + (32 * _151) + (32 * _129) + (32 * mem[96]) + 128]
    mem[128 len 32 * ext_call.return_data[0]] = code.data[11526 len 32 * ext_call.return_data[0]]
    mem[(32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
    mem[(32 * ext_call.return_data[0]) + 160 len 32 * ext_call.return_data[0]] = code.data[11526 len 32 * ext_call.return_data[0]]
    mem[(64 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
    mem[(64 * ext_call.return_data[0]) + 192 len 32 * ext_call.return_data[0]] = code.data[11526 len 32 * ext_call.return_data[0]]
    mem[(98 * ext_call.return_data[0]) + 192] = ext_call.return_data[0]
    mem[64] = (131 * ext_call.return_data[0]) + 224
    mem[(98 * ext_call.return_data[0]) + 224 len 32 * ext_call.return_data[0]] = code.data[11526 len 32 * ext_call.return_data[0]]
    idx = 0
    while idx < ext_call.return_data[0]:
        require ext_code.size(operatorAddress)
        staticcall operatorAddress.0x3865079f with:
                gas gas_remaining wei
               args idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(operatorAddress)
        staticcall operatorAddress.0x6a86e8fd with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        require idx < mem[96]
        mem[(32 * idx) + 128] = ext_call.return_data[0]
        require idx < mem[(64 * ext_call.return_data[0]) + 160]
        mem[(64 * ext_call.return_data[0]) + (32 * idx) + 192] = ext_call.return_data[64]
        require idx < mem[(32 * ext_call.return_data[0]) + 128]
        mem[(32 * ext_call.return_data[0]) + (32 * idx) + 160] = address(ext_call.return_data[32])
        require idx < mem[(98 * ext_call.return_data[0]) + 192]
        mem[(98 * ext_call.return_data[0]) + (32 * idx) + 224] = ext_call.return_data[96]
        idx = idx + 1
        continue 
    mem[mem[64]] = 128
    mem[mem[64] + 128] = mem[96]
    mem[mem[64] + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + 32] = (32 * mem[96]) + 160
    mem[(32 * mem[96]) + mem[64] + 160] = mem[(32 * ext_call.return_data[0]) + 128]
    _132 = mem[(32 * ext_call.return_data[0]) + 128]
    mem[(32 * mem[96]) + mem[64] + 192 len floor32(mem[(32 * ext_call.return_data[0]) + 128])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])]
    mem[mem[64] + 64] = (32 * _132) + (32 * mem[96]) + 192
    mem[(32 * _132) + (32 * mem[96]) + mem[64] + 192] = mem[(64 * ext_call.return_data[0]) + 160]
    _154 = mem[(64 * ext_call.return_data[0]) + 160]
    s = 0
    while ext_call.return_data[0] < 32 * _154:
        mem[ext_call.return_data[0] + (32 * _132) + (32 * mem[96]) + mem[64] + 224] = mem[(66 * ext_call.return_data[0]) + 192]
        s = ext_call.return_data[0] + 32
        continue 
    mem[mem[64] + 96] = (32 * _154) + (32 * _132) + (32 * mem[96]) + 224
    mem[(32 * _154) + (32 * _132) + (32 * mem[96]) + mem[64] + 224] = mem[(98 * ext_call.return_data[0]) + 192]
    _170 = mem[(98 * ext_call.return_data[0]) + 192]
    mem[(32 * _154) + (32 * _132) + (32 * mem[96]) + mem[64] + 256 len floor32(mem[(98 * ext_call.return_data[0]) + 192])] = mem[(98 * ext_call.return_data[0]) + 224 len floor32(mem[(98 * ext_call.return_data[0]) + 192])]
    return 128, 
           (32 * mem[96]) + 160,
           (32 * _132) + (32 * mem[96]) + 192,
           (32 * _154) + (32 * _132) + (32 * mem[96]) + 224,
           mem[mem[64] + 128 len (32 * _170) + (32 * _154) + (32 * _132) + (32 * mem[96]) + 128]
}

function sub_1961eabc(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(operatorAddress)
    staticcall operatorAddress.0x395bf562 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 < 0:
        if arg2 > ext_call.return_data[0] - 1:
            mem[96] = ext_call.return_data[0]
            if not ext_call.return_data[0]:
                mem[(32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
                mem[(64 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
                mem[(98 * ext_call.return_data[0]) + 192] = ext_call.return_data[0]
                mem[(131 * ext_call.return_data[0]) + 224] = ext_call.return_data[0]
                mem[64] = (164 * ext_call.return_data[0]) + 256
                idx = 0
                while idx < ext_call.return_data[0]:
                    require ext_code.size(operatorAddress)
                    staticcall operatorAddress.0xe83a25c5 with:
                            gas gas_remaining wei
                           args idx
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(operatorAddress)
                    staticcall operatorAddress.0xd7eb9379 with:
                            gas gas_remaining wei
                           args ext_call.return_data[0]
                    mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 192
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = ext_call.return_data[0]
                    require idx < mem[(32 * ext_call.return_data[0]) + 128]
                    mem[(32 * ext_call.return_data[0]) + (32 * idx) + 160] = ext_call.return_data[32]
                    require idx < mem[(64 * ext_call.return_data[0]) + 160]
                    mem[(64 * ext_call.return_data[0]) + (32 * idx) + 192] = ext_call.return_data[64]
                    require idx < mem[(98 * ext_call.return_data[0]) + 192]
                    mem[(98 * ext_call.return_data[0]) + (32 * idx) + 224] = address(ext_call.return_data[96])
                    require idx < mem[(131 * ext_call.return_data[0]) + 224]
                    mem[(131 * ext_call.return_data[0]) + (32 * idx) + 256] = address(ext_call.return_data[128])
                    idx = idx + 1
                    continue 
                _337 = mem[64]
                mem[mem[64]] = 160
                mem[mem[64] + 160] = mem[96]
                _339 = mem[96]
                mem[mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[mem[64] + 32] = (32 * mem[96]) + 192
                mem[(32 * mem[96]) + mem[64] + 192] = mem[(32 * ext_call.return_data[0]) + 128]
                _602 = mem[(32 * ext_call.return_data[0]) + 128]
                mem[(32 * mem[96]) + mem[64] + 224 len floor32(mem[(32 * ext_call.return_data[0]) + 128])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])]
                mem[mem[64] + 64] = (32 * _602) + (32 * mem[96]) + 224
                mem[(32 * _602) + (32 * mem[96]) + mem[64] + 224] = mem[(64 * ext_call.return_data[0]) + 160]
                _714 = mem[(64 * ext_call.return_data[0]) + 160]
                mem[(32 * _602) + (32 * mem[96]) + mem[64] + 256 len floor32(mem[(64 * ext_call.return_data[0]) + 160])] = mem[(64 * ext_call.return_data[0]) + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])]
                mem[mem[64] + 96] = (32 * _714) + (32 * _602) + (32 * mem[96]) + 256
                mem[(32 * _714) + (32 * _602) + (32 * mem[96]) + mem[64] + 256] = mem[(98 * ext_call.return_data[0]) + 192]
                _802 = mem[(98 * ext_call.return_data[0]) + 192]
                s = 0
                while ext_call.return_data[0] < 32 * _802:
                    mem[ext_call.return_data[0] + (32 * _714) + (32 * _602) + (32 * _339) + mem[64] + 288] = mem[(99 * ext_call.return_data[0]) + 224]
                    s = ext_call.return_data[0] + 32
                    continue 
                mem[_337 + 128] = (32 * _802) + (32 * _714) + (32 * _602) + (32 * _339) + 288
                mem[(32 * _802) + (32 * _714) + (32 * _602) + (32 * _339) + _337 + 288] = mem[(131 * ext_call.return_data[0]) + 224]
                _866 = mem[(131 * ext_call.return_data[0]) + 224]
                mem[(32 * _802) + (32 * _714) + (32 * _602) + (32 * _339) + _337 + 320 len floor32(mem[(131 * ext_call.return_data[0]) + 224])] = mem[(131 * ext_call.return_data[0]) + 256 len floor32(mem[(131 * ext_call.return_data[0]) + 224])]
                return memory
                  from mem[64]
                   len (32 * _866) + (32 * _802) + (32 * _714) + (32 * _602) + (32 * _339) + _337 + -mem[64] + 320
            mem[128 len 32 * ext_call.return_data[0]] = code.data[11526 len 32 * ext_call.return_data[0]]
            mem[(32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
            mem[(32 * ext_call.return_data[0]) + 160 len 32 * ext_call.return_data[0]] = code.data[11526 len 32 * ext_call.return_data[0]]
            mem[(64 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
            mem[(64 * ext_call.return_data[0]) + 192 len 32 * ext_call.return_data[0]] = code.data[11526 len 32 * ext_call.return_data[0]]
            mem[(98 * ext_call.return_data[0]) + 192] = ext_call.return_data[0]
            mem[(98 * ext_call.return_data[0]) + 224 len 32 * ext_call.return_data[0]] = code.data[11526 len 32 * ext_call.return_data[0]]
            mem[(131 * ext_call.return_data[0]) + 224] = ext_call.return_data[0]
            mem[64] = (164 * ext_call.return_data[0]) + 256
            mem[(131 * ext_call.return_data[0]) + 256 len 32 * ext_call.return_data[0]] = code.data[11526 len 32 * ext_call.return_data[0]]
            idx = 0
            while idx < ext_call.return_data[0]:
                require ext_code.size(operatorAddress)
                staticcall operatorAddress.0xe83a25c5 with:
                        gas gas_remaining wei
                       args idx
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(operatorAddress)
                staticcall operatorAddress.0xd7eb9379 with:
                        gas gas_remaining wei
                       args ext_call.return_data[0]
                mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 192
                require idx < mem[96]
                mem[(32 * idx) + 128] = ext_call.return_data[0]
                require idx < mem[(32 * ext_call.return_data[0]) + 128]
                mem[(32 * ext_call.return_data[0]) + (32 * idx) + 160] = ext_call.return_data[32]
                require idx < mem[(64 * ext_call.return_data[0]) + 160]
                mem[(64 * ext_call.return_data[0]) + (32 * idx) + 192] = ext_call.return_data[64]
                require idx < mem[(98 * ext_call.return_data[0]) + 192]
                mem[(98 * ext_call.return_data[0]) + (32 * idx) + 224] = address(ext_call.return_data[96])
                require idx < mem[(131 * ext_call.return_data[0]) + 224]
                mem[(131 * ext_call.return_data[0]) + (32 * idx) + 256] = address(ext_call.return_data[128])
                idx = idx + 1
                continue 
            mem[mem[64]] = 160
            mem[mem[64] + 160] = mem[96]
            _342 = mem[96]
            mem[mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 32] = (32 * mem[96]) + 192
            mem[(32 * mem[96]) + mem[64] + 192] = mem[(32 * ext_call.return_data[0]) + 128]
            _605 = mem[(32 * ext_call.return_data[0]) + 128]
            mem[(32 * mem[96]) + mem[64] + 224 len floor32(mem[(32 * ext_call.return_data[0]) + 128])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])]
            mem[mem[64] + 64] = (32 * _605) + (32 * mem[96]) + 224
            mem[(32 * _605) + (32 * mem[96]) + mem[64] + 224] = mem[(64 * ext_call.return_data[0]) + 160]
            _717 = mem[(64 * ext_call.return_data[0]) + 160]
            mem[(32 * _605) + (32 * mem[96]) + mem[64] + 256 len floor32(mem[(64 * ext_call.return_data[0]) + 160])] = mem[(64 * ext_call.return_data[0]) + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])]
            mem[mem[64] + 96] = (32 * _717) + (32 * _605) + (32 * mem[96]) + 256
            mem[(32 * _717) + (32 * _605) + (32 * mem[96]) + mem[64] + 256] = mem[(98 * ext_call.return_data[0]) + 192]
            _805 = mem[(98 * ext_call.return_data[0]) + 192]
            s = 0
            while ext_call.return_data[0] < 32 * _805:
                mem[ext_call.return_data[0] + (32 * _717) + (32 * _605) + (32 * mem[96]) + mem[64] + 288] = mem[(99 * ext_call.return_data[0]) + 224]
                s = ext_call.return_data[0] + 32
                continue 
            mem[mem[64] + 128] = (32 * _805) + (32 * _717) + (32 * _605) + (32 * mem[96]) + 288
            mem[(32 * _805) + (32 * _717) + (32 * _605) + (32 * _342) + mem[64] + 288] = mem[(131 * ext_call.return_data[0]) + 224]
            _869 = mem[(131 * ext_call.return_data[0]) + 224]
            mem[(32 * _805) + (32 * _717) + (32 * _605) + (32 * _342) + mem[64] + 320 len floor32(mem[(131 * ext_call.return_data[0]) + 224])] = mem[(131 * ext_call.return_data[0]) + 256 len floor32(mem[(131 * ext_call.return_data[0]) + 224])]
            return 160, mem[mem[64] + 32 len (32 * _869) + (32 * _805) + (32 * _717) + (32 * _605) + (32 * _342) + 288]
        mem[96] = arg2 + 1
        if not arg2 + 1:
            mem[(32 * arg2 + 1) + 128] = arg2 + 1
            mem[(64 * arg2 + 1) + 160] = arg2 + 1
            mem[(98 * arg2) + 290] = arg2 + 1
            mem[(98 * arg2) + (32 * arg2 + 1) + 322] = arg2 + 1
            mem[64] = (98 * arg2) + (64 * arg2 + 1) + 354
            idx = 0
            while idx < arg2 + 1:
                require ext_code.size(operatorAddress)
                staticcall operatorAddress.0xe83a25c5 with:
                        gas gas_remaining wei
                       args idx
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(operatorAddress)
                staticcall operatorAddress.0xd7eb9379 with:
                        gas gas_remaining wei
                       args ext_call.return_data[0]
                mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 192
                require idx < mem[96]
                mem[(32 * idx) + 128] = ext_call.return_data[0]
                require idx < mem[(32 * arg2 + 1) + 128]
                mem[(32 * arg2 + 1) + (32 * idx) + 160] = ext_call.return_data[32]
                require idx < mem[(64 * arg2 + 1) + 160]
                mem[(64 * arg2 + 1) + (32 * idx) + 192] = ext_call.return_data[64]
                require idx < mem[(98 * arg2) + 290]
                mem[(98 * arg2) + (32 * idx) + 322] = address(ext_call.return_data[96])
                require idx < mem[(98 * arg2) + (32 * arg2 + 1) + 322]
                mem[(98 * arg2) + (32 * arg2 + 1) + (32 * idx) + 354] = address(ext_call.return_data[128])
                idx = idx + 1
                continue 
            _343 = mem[64]
            mem[mem[64]] = 160
            mem[mem[64] + 160] = mem[96]
            _345 = mem[96]
            mem[mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 32] = (32 * mem[96]) + 192
            mem[(32 * mem[96]) + mem[64] + 192] = mem[(32 * arg2 + 1) + 128]
            _608 = mem[(32 * arg2 + 1) + 128]
            mem[(32 * mem[96]) + mem[64] + 224 len floor32(mem[(32 * arg2 + 1) + 128])] = mem[(32 * arg2 + 1) + 160 len floor32(mem[(32 * arg2 + 1) + 128])]
            mem[mem[64] + 64] = (32 * _608) + (32 * mem[96]) + 224
            mem[(32 * _608) + (32 * mem[96]) + mem[64] + 224] = mem[(64 * arg2 + 1) + 160]
            _720 = mem[(64 * arg2 + 1) + 160]
            mem[(32 * _608) + (32 * mem[96]) + mem[64] + 256 len floor32(mem[(64 * arg2 + 1) + 160])] = mem[(64 * arg2 + 1) + 192 len floor32(mem[(64 * arg2 + 1) + 160])]
            mem[mem[64] + 96] = (32 * _720) + (32 * _608) + (32 * mem[96]) + 256
            mem[(32 * _720) + (32 * _608) + (32 * _345) + mem[64] + 256] = mem[(98 * arg2) + 290]
            _808 = mem[(98 * arg2) + 290]
            s = 0
            while arg2 + 1 < 32 * _808:
                mem[arg2 + (32 * _720) + (32 * _608) + (32 * _345) + mem[64] + 289] = mem[(99 * arg2) + 323]
                s = arg2 + 33
                continue 
            mem[_343 + 128] = (32 * _808) + (32 * _720) + (32 * _608) + (32 * _345) + 288
            mem[(32 * _808) + (32 * _720) + (32 * _608) + (32 * _345) + _343 + 288] = mem[(98 * arg2) + (32 * arg2 + 1) + 322]
            _872 = mem[(98 * arg2) + (32 * arg2 + 1) + 322]
            mem[(32 * _808) + (32 * _720) + (32 * _608) + (32 * _345) + _343 + 320 len floor32(mem[(98 * arg2) + (32 * arg2 + 1) + 322])] = mem[(98 * arg2) + (32 * arg2 + 1) + 354 len floor32(mem[(98 * arg2) + (32 * arg2 + 1) + 322])]
            return memory
              from mem[64]
               len (32 * _872) + (32 * _808) + (32 * _720) + (32 * _608) + (32 * _345) + _343 + -mem[64] + 320
        mem[128 len 32 * arg2 + 1] = code.data[11526 len 32 * arg2 + 1]
        mem[(32 * arg2 + 1) + 128] = arg2 + 1
        mem[(32 * arg2 + 1) + 160 len 32 * arg2 + 1] = code.data[11526 len 32 * arg2 + 1]
        mem[(64 * arg2 + 1) + 160] = arg2 + 1
        mem[(64 * arg2 + 1) + 192 len 32 * arg2 + 1] = code.data[11526 len 32 * arg2 + 1]
        mem[(98 * arg2) + 290] = arg2 + 1
        mem[(98 * arg2) + 322 len 32 * arg2 + 1] = code.data[11526 len 32 * arg2 + 1]
        mem[(98 * arg2) + (32 * arg2 + 1) + 322] = arg2 + 1
        mem[64] = (98 * arg2) + (64 * arg2 + 1) + 354
        mem[(98 * arg2) + (32 * arg2 + 1) + 354 len 32 * arg2 + 1] = code.data[11526 len 32 * arg2 + 1]
        idx = 0
        while idx < arg2 + 1:
            require ext_code.size(operatorAddress)
            staticcall operatorAddress.0xe83a25c5 with:
                    gas gas_remaining wei
                   args idx
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(operatorAddress)
            staticcall operatorAddress.0xd7eb9379 with:
                    gas gas_remaining wei
                   args ext_call.return_data[0]
            mem[mem[64] len 192] = ext_call.return_data[0 len 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 192
            require idx < mem[96]
            mem[(32 * idx) + 128] = ext_call.return_data[0]
            require idx < mem[(32 * arg2 + 1) + 128]
            mem[(32 * arg2 + 1) + (32 * idx) + 160] = ext_call.return_data[32]
            require idx < mem[(64 * arg2 + 1) + 160]
            mem[(64 * arg2 + 1) + (32 * idx) + 192] = ext_call.return_data[64]
            require idx < mem[(98 * arg2) + 290]
            mem[(98 * arg2) + (32 * idx) + 322] = address(ext_call.return_data[96])
            require idx < mem[(98 * arg2) + (32 * arg2 + 1) + 322]
            mem[(98 * arg2) + (32 * arg2 + 1) + (32 * idx) + 354] = address(ext_call.return_data[128])
            idx = idx + 1
            continue 
        mem[mem[64]] = 160
        mem[mem[64] + 160] = mem[96]
        _348 = mem[96]
        mem[mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 32] = (32 * mem[96]) + 192
        mem[(32 * mem[96]) + mem[64] + 192] = mem[(32 * arg2 + 1) + 128]
        _611 = mem[(32 * arg2 + 1) + 128]
        mem[(32 * mem[96]) + mem[64] + 224 len floor32(mem[(32 * arg2 + 1) + 128])] = mem[(32 * arg2 + 1) + 160 len floor32(mem[(32 * arg2 + 1) + 128])]
        mem[mem[64] + 64] = (32 * _611) + (32 * mem[96]) + 224
        mem[(32 * _611) + (32 * mem[96]) + mem[64] + 224] = mem[(64 * arg2 + 1) + 160]
        _723 = mem[(64 * arg2 + 1) + 160]
        mem[(32 * _611) + (32 * mem[96]) + mem[64] + 256 len floor32(mem[(64 * arg2 + 1) + 160])] = mem[(64 * arg2 + 1) + 192 len floor32(mem[(64 * arg2 + 1) + 160])]
        mem[mem[64] + 96] = (32 * _723) + (32 * _611) + (32 * mem[96]) + 256
        mem[(32 * _723) + (32 * _611) + (32 * mem[96]) + mem[64] + 256] = mem[(98 * arg2) + 290]
        _811 = mem[(98 * arg2) + 290]
        s = 0
        while arg2 + 1 < 32 * _811:
            mem[arg2 + (32 * _723) + (32 * _611) + (32 * mem[96]) + mem[64] + 289] = mem[(99 * arg2) + 323]
            s = arg2 + 33
            continue 
        mem[mem[64] + 128] = (32 * _811) + (32 * _723) + (32 * _611) + (32 * mem[96]) + 288
        mem[(32 * _811) + (32 * _723) + (32 * _611) + (32 * _348) + mem[64] + 288] = mem[(98 * arg2) + (32 * arg2 + 1) + 322]
        _875 = mem[(98 * arg2) + (32 * arg2 + 1) + 322]
        mem[(32 * _811) + (32 * _723) + (32 * _611) + (32 * _348) + mem[64] + 320 len floor32(mem[(98 * arg2) + (32 * arg2 + 1) + 322])] = mem[(98 * arg2) + (32 * arg2 + 1) + 354 len floor32(mem[(98 * arg2) + (32 * arg2 + 1) + 322])]
        return 160, mem[mem[64] + 32 len (32 * _875) + (32 * _811) + (32 * _723) + (32 * _611) + (32 * _348) + 288]
    if arg2 > ext_call.return_data[0] - 1:
        mem[96] = ext_call.return_data[0] - arg1
        if not ext_call.return_data[0] - arg1:
            mem[(32 * ext_call.return_data[0] - arg1) + 128] = ext_call.return_data[0] - arg1
            mem[(64 * ext_call.return_data[0] - arg1) + 160] = ext_call.return_data[0] - arg1
            mem[(98 * ext_call.return_data[0]) + (-98 * arg1) + 192] = ext_call.return_data[0] - arg1
            mem[(98 * ext_call.return_data[0]) + (-98 * arg1) + (32 * ext_call.return_data[0] - arg1) + 224] = ext_call.return_data[0] - arg1
            mem[64] = (98 * ext_call.return_data[0]) + (-98 * arg1) + (64 * ext_call.return_data[0] - arg1) + 256
            idx = 0
            while idx < ext_call.return_data[0] - arg1:
                require ext_code.size(operatorAddress)
                staticcall operatorAddress.0xe83a25c5 with:
                        gas gas_remaining wei
                       args (arg1 + idx)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(operatorAddress)
                staticcall operatorAddress.0xd7eb9379 with:
                        gas gas_remaining wei
                       args ext_call.return_data[0]
                mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 192
                require idx < mem[96]
                mem[(32 * idx) + 128] = ext_call.return_data[0]
                require idx < mem[(32 * ext_call.return_data[0] - arg1) + 128]
                mem[(32 * ext_call.return_data[0] - arg1) + (32 * idx) + 160] = ext_call.return_data[32]
                require idx < mem[(64 * ext_call.return_data[0] - arg1) + 160]
                mem[(64 * ext_call.return_data[0] - arg1) + (32 * idx) + 192] = ext_call.return_data[64]
                require idx < mem[(98 * ext_call.return_data[0]) + (-98 * arg1) + 192]
                mem[(98 * ext_call.return_data[0]) + (-98 * arg1) + (32 * idx) + 224] = address(ext_call.return_data[96])
                require idx < mem[(98 * ext_call.return_data[0]) + (-98 * arg1) + (32 * ext_call.return_data[0] - arg1) + 224]
                mem[(98 * ext_call.return_data[0]) + (-98 * arg1) + (32 * ext_call.return_data[0] - arg1) + (32 * idx) + 256] = address(ext_call.return_data[128])
                idx = idx + 1
                continue 
            _349 = mem[64]
            mem[mem[64]] = 160
            mem[mem[64] + 160] = mem[96]
            _351 = mem[96]
            mem[mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 32] = (32 * mem[96]) + 192
            mem[(32 * mem[96]) + mem[64] + 192] = mem[(32 * ext_call.return_data[0] - arg1) + 128]
            _614 = mem[(32 * ext_call.return_data[0] - arg1) + 128]
            mem[(32 * mem[96]) + mem[64] + 224 len floor32(mem[(32 * ext_call.return_data[0] - arg1) + 128])] = mem[(32 * ext_call.return_data[0] - arg1) + 160 len floor32(mem[(32 * ext_call.return_data[0] - arg1) + 128])]
            mem[mem[64] + 64] = (32 * _614) + (32 * mem[96]) + 224
            mem[(32 * _614) + (32 * mem[96]) + mem[64] + 224] = mem[(64 * ext_call.return_data[0] - arg1) + 160]
            _726 = mem[(64 * ext_call.return_data[0] - arg1) + 160]
            mem[(32 * _614) + (32 * mem[96]) + mem[64] + 256 len floor32(mem[(64 * ext_call.return_data[0] - arg1) + 160])] = mem[(64 * ext_call.return_data[0] - arg1) + 192 len floor32(mem[(64 * ext_call.return_data[0] - arg1) + 160])]
            mem[mem[64] + 96] = (32 * _726) + (32 * _614) + (32 * mem[96]) + 256
            mem[(32 * _726) + (32 * _614) + (32 * _351) + mem[64] + 256] = mem[(98 * ext_call.return_data[0]) + (-98 * arg1) + 192]
            _814 = mem[(98 * ext_call.return_data[0]) + (-98 * arg1) + 192]
            s = 0
            while ext_call.return_data[0] - arg1 < 32 * _814:
                mem[ext_call.return_data[0] + -arg1 + (32 * _726) + (32 * _614) + (32 * _351) + _349 + 288] = mem[(99 * ext_call.return_data[0]) + (-99 * arg1) + 224]
                s = ext_call.return_data[0] + -arg1 + 32
                continue 
            mem[_349 + 128] = (32 * _814) + (32 * _726) + (32 * _614) + (32 * _351) + 288
            mem[(32 * _814) + (32 * _726) + (32 * _614) + (32 * _351) + _349 + 288] = mem[(98 * ext_call.return_data[0]) + (-98 * arg1) + (32 * ext_call.return_data[0] - arg1) + 224]
            _878 = mem[(98 * ext_call.return_data[0]) + (-98 * arg1) + (32 * ext_call.return_data[0] - arg1) + 224]
            mem[(32 * _814) + (32 * _726) + (32 * _614) + (32 * _351) + _349 + 320 len floor32(mem[(98 * ext_call.return_data[0]) + (-98 * arg1) + (32 * ext_call.return_data[0] - arg1) + 224])] = mem[(98 * ext_call.return_data[0]) + (-98 * arg1) + (32 * ext_call.return_data[0] - arg1) + 256 len floor32(mem[(98 * ext_call.return_data[0]) + (-98 * arg1) + (32 * ext_call.return_data[0] - arg1) + 224])]
            return memory
              from mem[64]
               len (32 * _878) + (32 * _814) + (32 * _726) + (32 * _614) + (32 * _351) + _349 + -mem[64] + 320
        mem[128 len 32 * ext_call.return_data[0] - arg1] = code.data[11526 len 32 * ext_call.return_data[0] - arg1]
        mem[(32 * ext_call.return_data[0] - arg1) + 128] = ext_call.return_data[0] - arg1
        mem[(32 * ext_call.return_data[0] - arg1) + 160 len 32 * ext_call.return_data[0] - arg1] = code.data[11526 len 32 * ext_call.return_data[0] - arg1]
        mem[(64 * ext_call.return_data[0] - arg1) + 160] = ext_call.return_data[0] - arg1
        mem[(64 * ext_call.return_data[0] - arg1) + 192 len 32 * ext_call.return_data[0] - arg1] = code.data[11526 len 32 * ext_call.return_data[0] - arg1]
        mem[(98 * ext_call.return_data[0]) + (-98 * arg1) + 192] = ext_call.return_data[0] - arg1
        mem[(98 * ext_call.return_data[0]) + (-98 * arg1) + 224 len 32 * ext_call.return_data[0] - arg1] = code.data[11526 len 32 * ext_call.return_data[0] - arg1]
        mem[(98 * ext_call.return_data[0]) + (-98 * arg1) + (32 * ext_call.return_data[0] - arg1) + 224] = ext_call.return_data[0] - arg1
        mem[64] = (98 * ext_call.return_data[0]) + (-98 * arg1) + (64 * ext_call.return_data[0] - arg1) + 256
        mem[(98 * ext_call.return_data[0]) + (-98 * arg1) + (32 * ext_call.return_data[0] - arg1) + 256 len 32 * ext_call.return_data[0] - arg1] = code.data[11526 len 32 * ext_call.return_data[0] - arg1]
        idx = 0
        while idx < ext_call.return_data[0] - arg1:
            require ext_code.size(operatorAddress)
            staticcall operatorAddress.0xe83a25c5 with:
                    gas gas_remaining wei
                   args (arg1 + idx)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(operatorAddress)
            staticcall operatorAddress.0xd7eb9379 with:
                    gas gas_remaining wei
                   args ext_call.return_data[0]
            mem[mem[64] len 192] = ext_call.return_data[0 len 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 192
            require idx < mem[96]
            mem[(32 * idx) + 128] = ext_call.return_data[0]
            require idx < mem[(32 * ext_call.return_data[0] - arg1) + 128]
            mem[(32 * ext_call.return_data[0] - arg1) + (32 * idx) + 160] = ext_call.return_data[32]
            require idx < mem[(64 * ext_call.return_data[0] - arg1) + 160]
            mem[(64 * ext_call.return_data[0] - arg1) + (32 * idx) + 192] = ext_call.return_data[64]
            require idx < mem[(98 * ext_call.return_data[0]) + (-98 * arg1) + 192]
            mem[(98 * ext_call.return_data[0]) + (-98 * arg1) + (32 * idx) + 224] = address(ext_call.return_data[96])
            require idx < mem[(98 * ext_call.return_data[0]) + (-98 * arg1) + (32 * ext_call.return_data[0] - arg1) + 224]
            mem[(98 * ext_call.return_data[0]) + (-98 * arg1) + (32 * ext_call.return_data[0] - arg1) + (32 * idx) + 256] = address(ext_call.return_data[128])
            idx = idx + 1
            continue 
        _352 = mem[64]
        mem[mem[64]] = 160
        mem[mem[64] + 160] = mem[96]
        _354 = mem[96]
        mem[mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 32] = (32 * mem[96]) + 192
        mem[(32 * mem[96]) + mem[64] + 192] = mem[(32 * ext_call.return_data[0] - arg1) + 128]
        _617 = mem[(32 * ext_call.return_data[0] - arg1) + 128]
        mem[(32 * mem[96]) + mem[64] + 224 len floor32(mem[(32 * ext_call.return_data[0] - arg1) + 128])] = mem[(32 * ext_call.return_data[0] - arg1) + 160 len floor32(mem[(32 * ext_call.return_data[0] - arg1) + 128])]
        mem[mem[64] + 64] = (32 * _617) + (32 * mem[96]) + 224
        mem[(32 * _617) + (32 * mem[96]) + mem[64] + 224] = mem[(64 * ext_call.return_data[0] - arg1) + 160]
        _729 = mem[(64 * ext_call.return_data[0] - arg1) + 160]
        mem[(32 * _617) + (32 * mem[96]) + mem[64] + 256 len floor32(mem[(64 * ext_call.return_data[0] - arg1) + 160])] = mem[(64 * ext_call.return_data[0] - arg1) + 192 len floor32(mem[(64 * ext_call.return_data[0] - arg1) + 160])]
        mem[mem[64] + 96] = (32 * _729) + (32 * _617) + (32 * mem[96]) + 256
        mem[(32 * _729) + (32 * _617) + (32 * mem[96]) + mem[64] + 256] = mem[(98 * ext_call.return_data[0]) + (-98 * arg1) + 192]
        _817 = mem[(98 * ext_call.return_data[0]) + (-98 * arg1) + 192]
        s = 0
        while ext_call.return_data[0] - arg1 < 32 * _817:
            mem[ext_call.return_data[0] + -arg1 + (32 * _729) + (32 * _617) + (32 * _354) + _352 + 288] = mem[(99 * ext_call.return_data[0]) + (-99 * arg1) + 224]
            s = ext_call.return_data[0] + -arg1 + 32
            continue 
        mem[_352 + 128] = (32 * _817) + (32 * _729) + (32 * _617) + (32 * _354) + 288
        mem[(32 * _817) + (32 * _729) + (32 * _617) + (32 * _354) + _352 + 288] = mem[(98 * ext_call.return_data[0]) + (-98 * arg1) + (32 * ext_call.return_data[0] - arg1) + 224]
        _881 = mem[(98 * ext_call.return_data[0]) + (-98 * arg1) + (32 * ext_call.return_data[0] - arg1) + 224]
        mem[(32 * _817) + (32 * _729) + (32 * _617) + (32 * _354) + _352 + 320 len floor32(mem[(98 * ext_call.return_data[0]) + (-98 * arg1) + (32 * ext_call.return_data[0] - arg1) + 224])] = mem[(98 * ext_call.return_data[0]) + (-98 * arg1) + (32 * ext_call.return_data[0] - arg1) + 256 len floor32(mem[(98 * ext_call.return_data[0]) + (-98 * arg1) + (32 * ext_call.return_data[0] - arg1) + 224])]
        return memory
          from mem[64]
           len (32 * _881) + (32 * _817) + (32 * _729) + (32 * _617) + (32 * _354) + _352 + -mem[64] + 320
    mem[96] = arg2 + -arg1 + 1
    if not arg2 + -arg1 + 1:
        mem[(32 * arg2 + -arg1 + 1) + 128] = arg2 + -arg1 + 1
        mem[(64 * arg2 + -arg1 + 1) + 160] = arg2 + -arg1 + 1
        mem[(98 * arg2) + (-98 * arg1) + 290] = arg2 + -arg1 + 1
        mem[(98 * arg2) + (-98 * arg1) + (32 * arg2 + -arg1 + 1) + 322] = arg2 + -arg1 + 1
        mem[64] = (98 * arg2) + (-98 * arg1) + (64 * arg2 + -arg1 + 1) + 354
        idx = 0
        while idx < arg2 + -arg1 + 1:
            require ext_code.size(operatorAddress)
            staticcall operatorAddress.0xe83a25c5 with:
                    gas gas_remaining wei
                   args (arg1 + idx)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(operatorAddress)
            staticcall operatorAddress.0xd7eb9379 with:
                    gas gas_remaining wei
                   args ext_call.return_data[0]
            mem[mem[64] len 192] = ext_call.return_data[0 len 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 192
            require idx < mem[96]
            mem[(32 * idx) + 128] = ext_call.return_data[0]
            require idx < mem[(32 * arg2 + -arg1 + 1) + 128]
            mem[(32 * arg2 + -arg1 + 1) + (32 * idx) + 160] = ext_call.return_data[32]
            require idx < mem[(64 * arg2 + -arg1 + 1) + 160]
            mem[(64 * arg2 + -arg1 + 1) + (32 * idx) + 192] = ext_call.return_data[64]
            require idx < mem[(98 * arg2) + (-98 * arg1) + 290]
            mem[(98 * arg2) + (-98 * arg1) + (32 * idx) + 322] = address(ext_call.return_data[96])
            require idx < mem[(98 * arg2) + (-98 * arg1) + (32 * arg2 + -arg1 + 1) + 322]
            mem[(98 * arg2) + (-98 * arg1) + (32 * arg2 + -arg1 + 1) + (32 * idx) + 354] = address(ext_call.return_data[128])
            idx = idx + 1
            continue 
        _355 = mem[64]
        mem[mem[64]] = 160
        mem[mem[64] + 160] = mem[96]
        _357 = mem[96]
        mem[mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 32] = (32 * mem[96]) + 192
        mem[(32 * mem[96]) + mem[64] + 192] = mem[(32 * arg2 + -arg1 + 1) + 128]
        _620 = mem[(32 * arg2 + -arg1 + 1) + 128]
        mem[(32 * mem[96]) + mem[64] + 224 len floor32(mem[(32 * arg2 + -arg1 + 1) + 128])] = mem[(32 * arg2 + -arg1 + 1) + 160 len floor32(mem[(32 * arg2 + -arg1 + 1) + 128])]
        mem[mem[64] + 64] = (32 * _620) + (32 * mem[96]) + 224
        mem[(32 * _620) + (32 * mem[96]) + mem[64] + 224] = mem[(64 * arg2 + -arg1 + 1) + 160]
        _732 = mem[(64 * arg2 + -arg1 + 1) + 160]
        mem[(32 * _620) + (32 * mem[96]) + mem[64] + 256 len floor32(mem[(64 * arg2 + -arg1 + 1) + 160])] = mem[(64 * arg2 + -arg1 + 1) + 192 len floor32(mem[(64 * arg2 + -arg1 + 1) + 160])]
        mem[mem[64] + 96] = (32 * _732) + (32 * _620) + (32 * mem[96]) + 256
        mem[(32 * _732) + (32 * _620) + (32 * mem[96]) + mem[64] + 256] = mem[(98 * arg2) + (-98 * arg1) + 290]
        _820 = mem[(98 * arg2) + (-98 * arg1) + 290]
        s = 0
        while arg2 + -arg1 + 1 < 32 * _820:
            mem[arg2 + -arg1 + (32 * _732) + (32 * _620) + (32 * _357) + _355 + 289] = mem[(99 * arg2) + (-99 * arg1) + 323]
            s = arg2 + -arg1 + 33
            continue 
        mem[_355 + 128] = (32 * _820) + (32 * _732) + (32 * _620) + (32 * _357) + 288
        mem[(32 * _820) + (32 * _732) + (32 * _620) + (32 * _357) + _355 + 288] = mem[(98 * arg2) + (-98 * arg1) + (32 * arg2 + -arg1 + 1) + 322]
        _884 = mem[(98 * arg2) + (-98 * arg1) + (32 * arg2 + -arg1 + 1) + 322]
        mem[(32 * _820) + (32 * _732) + (32 * _620) + (32 * _357) + _355 + 320 len floor32(mem[(98 * arg2) + (-98 * arg1) + (32 * arg2 + -arg1 + 1) + 322])] = mem[(98 * arg2) + (-98 * arg1) + (32 * arg2 + -arg1 + 1) + 354 len floor32(mem[(98 * arg2) + (-98 * arg1) + (32 * arg2 + -arg1 + 1) + 322])]
        return memory
          from mem[64]
           len (32 * _884) + (32 * _820) + (32 * _732) + (32 * _620) + (32 * _357) + _355 + -mem[64] + 320
    mem[128 len 32 * arg2 + -arg1 + 1] = code.data[11526 len 32 * arg2 + -arg1 + 1]
    mem[(32 * arg2 + -arg1 + 1) + 128] = arg2 + -arg1 + 1
    mem[(32 * arg2 + -arg1 + 1) + 160 len 32 * arg2 + -arg1 + 1] = code.data[11526 len 32 * arg2 + -arg1 + 1]
    mem[(64 * arg2 + -arg1 + 1) + 160] = arg2 + -arg1 + 1
    mem[(64 * arg2 + -arg1 + 1) + 192 len 32 * arg2 + -arg1 + 1] = code.data[11526 len 32 * arg2 + -arg1 + 1]
    mem[(98 * arg2) + (-98 * arg1) + 290] = arg2 + -arg1 + 1
    mem[(98 * arg2) + (-98 * arg1) + 322 len 32 * arg2 + -arg1 + 1] = code.data[11526 len 32 * arg2 + -arg1 + 1]
    mem[(98 * arg2) + (-98 * arg1) + (32 * arg2 + -arg1 + 1) + 322] = arg2 + -arg1 + 1
    mem[64] = (98 * arg2) + (-98 * arg1) + (64 * arg2 + -arg1 + 1) + 354
    mem[(98 * arg2) + (-98 * arg1) + (32 * arg2 + -arg1 + 1) + 354 len 32 * arg2 + -arg1 + 1] = code.data[11526 len 32 * arg2 + -arg1 + 1]
    idx = 0
    while idx < arg2 + -arg1 + 1:
        require ext_code.size(operatorAddress)
        staticcall operatorAddress.0xe83a25c5 with:
                gas gas_remaining wei
               args (arg1 + idx)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(operatorAddress)
        staticcall operatorAddress.0xd7eb9379 with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 192
        require idx < mem[96]
        mem[(32 * idx) + 128] = ext_call.return_data[0]
        require idx < mem[(32 * arg2 + -arg1 + 1) + 128]
        mem[(32 * arg2 + -arg1 + 1) + (32 * idx) + 160] = ext_call.return_data[32]
        require idx < mem[(64 * arg2 + -arg1 + 1) + 160]
        mem[(64 * arg2 + -arg1 + 1) + (32 * idx) + 192] = ext_call.return_data[64]
        require idx < mem[(98 * arg2) + (-98 * arg1) + 290]
        mem[(98 * arg2) + (-98 * arg1) + (32 * idx) + 322] = address(ext_call.return_data[96])
        require idx < mem[(98 * arg2) + (-98 * arg1) + (32 * arg2 + -arg1 + 1) + 322]
        mem[(98 * arg2) + (-98 * arg1) + (32 * arg2 + -arg1 + 1) + (32 * idx) + 354] = address(ext_call.return_data[128])
        idx = idx + 1
        continue 
    _358 = mem[64]
    mem[mem[64]] = 160
    mem[mem[64] + 160] = mem[96]
    _360 = mem[96]
    mem[mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + 32] = (32 * mem[96]) + 192
    mem[(32 * mem[96]) + mem[64] + 192] = mem[(32 * arg2 + -arg1 + 1) + 128]
    _623 = mem[(32 * arg2 + -arg1 + 1) + 128]
    mem[(32 * mem[96]) + mem[64] + 224 len floor32(mem[(32 * arg2 + -arg1 + 1) + 128])] = mem[(32 * arg2 + -arg1 + 1) + 160 len floor32(mem[(32 * arg2 + -arg1 + 1) + 128])]
    mem[mem[64] + 64] = (32 * _623) + (32 * mem[96]) + 224
    mem[(32 * _623) + (32 * mem[96]) + mem[64] + 224] = mem[(64 * arg2 + -arg1 + 1) + 160]
    _735 = mem[(64 * arg2 + -arg1 + 1) + 160]
    mem[(32 * _623) + (32 * mem[96]) + mem[64] + 256 len floor32(mem[(64 * arg2 + -arg1 + 1) + 160])] = mem[(64 * arg2 + -arg1 + 1) + 192 len floor32(mem[(64 * arg2 + -arg1 + 1) + 160])]
    mem[mem[64] + 96] = (32 * _735) + (32 * _623) + (32 * mem[96]) + 256
    mem[(32 * _735) + (32 * _623) + (32 * mem[96]) + mem[64] + 256] = mem[(98 * arg2) + (-98 * arg1) + 290]
    _823 = mem[(98 * arg2) + (-98 * arg1) + 290]
    s = 0
    while arg2 + -arg1 + 1 < 32 * _823:
        mem[arg2 + -arg1 + (32 * _735) + (32 * _623) + (32 * _360) + _358 + 289] = mem[(99 * arg2) + (-99 * arg1) + 323]
        s = arg2 + -arg1 + 33
        continue 
    mem[_358 + 128] = (32 * _823) + (32 * _735) + (32 * _623) + (32 * _360) + 288
    mem[(32 * _823) + (32 * _735) + (32 * _623) + (32 * _360) + _358 + 288] = mem[(98 * arg2) + (-98 * arg1) + (32 * arg2 + -arg1 + 1) + 322]
    _887 = mem[(98 * arg2) + (-98 * arg1) + (32 * arg2 + -arg1 + 1) + 322]
    mem[(32 * _823) + (32 * _735) + (32 * _623) + (32 * _360) + _358 + 320 len floor32(mem[(98 * arg2) + (-98 * arg1) + (32 * arg2 + -arg1 + 1) + 322])] = mem[(98 * arg2) + (-98 * arg1) + (32 * arg2 + -arg1 + 1) + 354 len floor32(mem[(98 * arg2) + (-98 * arg1) + (32 * arg2 + -arg1 + 1) + 322])]
    return memory
      from mem[64]
       len (32 * _887) + (32 * _823) + (32 * _735) + (32 * _623) + (32 * _360) + _358 + -mem[64] + 320
}

function sub_ea02e803(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(operatorAddress)
    staticcall operatorAddress.getInvestorLength() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 >= 0:
        if arg2 > ext_call.return_data[0] - 1:
            mem[96] = (5 * ext_call.return_data[0]) - (5 * arg1)
            if not (5 * ext_call.return_data[0]) - (5 * arg1):
                mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128] = ext_call.return_data[0] - arg1
                if not ext_call.return_data[0] - arg1:
                    mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160] = 16 * ext_call.return_data[0] - arg1
                    if not Mask(252, 0, ext_call.return_data[0] - arg1):
                        mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192] = ext_call.return_data[0] - arg1
                        mem[64] = (32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + (32 * ext_call.return_data[0] - arg1) + 224
                        if not ext_call.return_data[0] - arg1:
                            idx = 0
                            while idx < ext_call.return_data[0] - arg1:
                                require ext_code.size(operatorAddress)
                                staticcall operatorAddress.0x95a25efa with:
                                        gas gas_remaining wei
                                       args (arg1 + idx)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64]] = 0x8f35a75e00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(ext_call.return_data[0])
                                require ext_code.size(operatorAddress)
                                staticcall operatorAddress.getInvestor(address arg1) with:
                                        gas gas_remaining wei
                                       args address(ext_call.return_data[0])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3332 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _3489 = mem[_3332]
                                require mem[_3332] <= 4294967296
                                require mem[_3332] + 32 <= return_data.size
                                require mem[_3332 + mem[_3332]] <= 4294967296 and mem[_3332] + (32 * mem[_3332 + mem[_3332]]) + 32 <= return_data.size
                                _3907 = mem[_3332 + 32]
                                _3908 = mem[_3332 + 64]
                                require mem[_3332 + 64] <= 4294967296
                                require mem[_3332 + 64] + 32 <= return_data.size
                                require mem[_3332 + mem[_3332 + 64]] <= 4294967296 and mem[_3332 + 64] + (32 * mem[_3332 + mem[_3332 + 64]]) + 32 <= return_data.size
                                _4833 = mem[_3332 + mem[_3332]]
                                s = 0
                                while s < _4833:
                                    require s < mem[_3332 + _3489]
                                    require (5 * idx) + s < mem[96]
                                    mem[(32 * (5 * idx) + s) + 128] = mem[(32 * s) + _3332 + _3489 + 44 len 20]
                                    s = s + 1
                                    continue 
                                require (5 * idx) + 4 < mem[96]
                                mem[(32 * (5 * idx) + 4) + 128] = address(ext_call.return_data[0])
                                _6241 = mem[_3332 + _3908]
                                s = 0
                                while s < _6241:
                                    require s < mem[_3332 + _3908]
                                    require (16 * idx) + s < mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160]
                                    mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + (32 * (16 * idx) + s) + 192] = mem[(32 * s) + _3332 + _3908 + 32]
                                    _6241 = mem[_3332 + _3908]
                                    s = s + 1
                                    continue 
                                require idx < mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128]
                                mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * idx) + 160] = bool(_3907)
                                require idx < mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192]
                                mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + (32 * idx) + 224] = address(ext_call.return_data[0])
                                idx = idx + 1
                                continue 
                            _2657 = mem[64]
                            mem[mem[64]] = 128
                            mem[mem[64] + 128] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192]
                            _2659 = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192]
                            mem[mem[64] + 160 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192])] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 224 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192])]
                            mem[mem[64] + 32] = (32 * _2659) + 160
                            mem[(32 * _2659) + mem[64] + 160] = mem[96]
                            _5026 = mem[96]
                            mem[(32 * _2659) + mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2659) + 192
                            mem[(32 * _5026) + (32 * _2659) + _2657 + 192] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128]
                            _6434 = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128]
                            mem[(32 * _5026) + (32 * _2659) + _2657 + 224 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128])] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 160 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128])]
                            mem[_2657 + 96] = (32 * _6434) + (32 * _5026) + (32 * _2659) + 224
                            mem[(32 * _6434) + (32 * _5026) + (32 * _2659) + _2657 + 224] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160]
                            _7202 = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160]
                            mem[(32 * _6434) + (32 * _5026) + (32 * _2659) + _2657 + 256 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160])] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 192 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160])]
                            return memory
                              from mem[64]
                               len (32 * _7202) + (32 * _6434) + (32 * _5026) + (32 * _2659) + _2657 + -mem[64] + 256
                        mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 224 len 32 * ext_call.return_data[0] - arg1] = code.data[11526 len 32 * ext_call.return_data[0] - arg1]
                        idx = 0
                        while idx < ext_call.return_data[0] - arg1:
                            require ext_code.size(operatorAddress)
                            staticcall operatorAddress.0x95a25efa with:
                                    gas gas_remaining wei
                                   args (arg1 + idx)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64]] = 0x8f35a75e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            require ext_code.size(operatorAddress)
                            staticcall operatorAddress.getInvestor(address arg1) with:
                                    gas gas_remaining wei
                                   args address(ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3336 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _3490 = mem[_3336]
                            require mem[_3336] <= 4294967296
                            require mem[_3336] + 32 <= return_data.size
                            require mem[_3336 + mem[_3336]] <= 4294967296 and mem[_3336] + (32 * mem[_3336 + mem[_3336]]) + 32 <= return_data.size
                            _3911 = mem[_3336 + 32]
                            _3912 = mem[_3336 + 64]
                            require mem[_3336 + 64] <= 4294967296
                            require mem[_3336 + 64] + 32 <= return_data.size
                            require mem[_3336 + mem[_3336 + 64]] <= 4294967296 and mem[_3336 + 64] + (32 * mem[_3336 + mem[_3336 + 64]]) + 32 <= return_data.size
                            _4834 = mem[_3336 + mem[_3336]]
                            s = 0
                            while s < _4834:
                                require s < mem[_3336 + _3490]
                                require (5 * idx) + s < mem[96]
                                mem[(32 * (5 * idx) + s) + 128] = mem[(32 * s) + _3336 + _3490 + 44 len 20]
                                s = s + 1
                                continue 
                            require (5 * idx) + 4 < mem[96]
                            mem[(32 * (5 * idx) + 4) + 128] = address(ext_call.return_data[0])
                            _6242 = mem[_3336 + _3912]
                            s = 0
                            while s < _6242:
                                require s < mem[_3336 + _3912]
                                require (16 * idx) + s < mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160]
                                mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + (32 * (16 * idx) + s) + 192] = mem[(32 * s) + _3336 + _3912 + 32]
                                _6242 = mem[_3336 + _3912]
                                s = s + 1
                                continue 
                            require idx < mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128]
                            mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * idx) + 160] = bool(_3911)
                            require idx < mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192]
                            mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + (32 * idx) + 224] = address(ext_call.return_data[0])
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 128
                        mem[mem[64] + 128] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192]
                        _2662 = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192]
                        mem[mem[64] + 160 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192])] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 224 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192])]
                        mem[mem[64] + 32] = (32 * _2662) + 160
                        mem[(32 * _2662) + mem[64] + 160] = mem[96]
                        _5031 = mem[96]
                        mem[(32 * _2662) + mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                        mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2662) + 192
                        mem[(32 * mem[96]) + (32 * _2662) + mem[64] + 192] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128]
                        _6439 = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128]
                        mem[(32 * mem[96]) + (32 * _2662) + mem[64] + 224 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128])] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 160 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128])]
                        mem[mem[64] + 96] = (32 * _6439) + (32 * mem[96]) + (32 * _2662) + 224
                        mem[(32 * _6439) + (32 * mem[96]) + (32 * _2662) + mem[64] + 224] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160]
                        _7205 = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160]
                        mem[(32 * _6439) + (32 * _5031) + (32 * _2662) + mem[64] + 256 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160])] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 192 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160])]
                        return 128, (32 * _2662) + 160, mem[mem[64] + 64 len (32 * _7205) + (32 * _6439) + (32 * _5031) + (32 * _2662) + 192]
                    mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 192 len 512 * ext_call.return_data[0] - arg1] = code.data[11526 len 512 * ext_call.return_data[0] - arg1]
                    mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192] = ext_call.return_data[0] - arg1
                    mem[64] = (32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + (32 * ext_call.return_data[0] - arg1) + 224
                    if not ext_call.return_data[0] - arg1:
                        idx = 0
                        while idx < ext_call.return_data[0] - arg1:
                            require ext_code.size(operatorAddress)
                            staticcall operatorAddress.0x95a25efa with:
                                    gas gas_remaining wei
                                   args (arg1 + idx)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64]] = 0x8f35a75e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            require ext_code.size(operatorAddress)
                            staticcall operatorAddress.getInvestor(address arg1) with:
                                    gas gas_remaining wei
                                   args address(ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3340 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _3491 = mem[_3340]
                            require mem[_3340] <= 4294967296
                            require mem[_3340] + 32 <= return_data.size
                            require mem[_3340 + mem[_3340]] <= 4294967296 and mem[_3340] + (32 * mem[_3340 + mem[_3340]]) + 32 <= return_data.size
                            _3915 = mem[_3340 + 32]
                            _3916 = mem[_3340 + 64]
                            require mem[_3340 + 64] <= 4294967296
                            require mem[_3340 + 64] + 32 <= return_data.size
                            require mem[_3340 + mem[_3340 + 64]] <= 4294967296 and mem[_3340 + 64] + (32 * mem[_3340 + mem[_3340 + 64]]) + 32 <= return_data.size
                            _4835 = mem[_3340 + mem[_3340]]
                            s = 0
                            while s < _4835:
                                require s < mem[_3340 + _3491]
                                require (5 * idx) + s < mem[96]
                                mem[(32 * (5 * idx) + s) + 128] = mem[(32 * s) + _3340 + _3491 + 44 len 20]
                                s = s + 1
                                continue 
                            require (5 * idx) + 4 < mem[96]
                            mem[(32 * (5 * idx) + 4) + 128] = address(ext_call.return_data[0])
                            _6243 = mem[_3340 + _3916]
                            s = 0
                            while s < _6243:
                                require s < mem[_3340 + _3916]
                                require (16 * idx) + s < mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160]
                                mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + (32 * (16 * idx) + s) + 192] = mem[(32 * s) + _3340 + _3916 + 32]
                                _6243 = mem[_3340 + _3916]
                                s = s + 1
                                continue 
                            require idx < mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128]
                            mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * idx) + 160] = bool(_3915)
                            require idx < mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192]
                            mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + (32 * idx) + 224] = address(ext_call.return_data[0])
                            idx = idx + 1
                            continue 
                        _2663 = mem[64]
                        mem[mem[64]] = 128
                        mem[mem[64] + 128] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192]
                        _2665 = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192]
                        mem[mem[64] + 160 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192])] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 224 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192])]
                        mem[mem[64] + 32] = (32 * _2665) + 160
                        mem[(32 * _2665) + mem[64] + 160] = mem[96]
                        _5036 = mem[96]
                        mem[(32 * _2665) + mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                        mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2665) + 192
                        mem[(32 * _5036) + (32 * _2665) + _2663 + 192] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128]
                        _6444 = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128]
                        mem[(32 * _5036) + (32 * _2665) + _2663 + 224 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128])] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 160 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128])]
                        mem[_2663 + 96] = (32 * _6444) + (32 * _5036) + (32 * _2665) + 224
                        mem[(32 * _6444) + (32 * _5036) + (32 * _2665) + _2663 + 224] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160]
                        _7208 = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160]
                        mem[(32 * _6444) + (32 * _5036) + (32 * _2665) + _2663 + 256 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160])] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 192 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160])]
                        return memory
                          from mem[64]
                           len (32 * _7208) + (32 * _6444) + (32 * _5036) + (32 * _2665) + _2663 + -mem[64] + 256
                    mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 224 len 32 * ext_call.return_data[0] - arg1] = code.data[11526 len 32 * ext_call.return_data[0] - arg1]
                    idx = 0
                    while idx < ext_call.return_data[0] - arg1:
                        require ext_code.size(operatorAddress)
                        staticcall operatorAddress.0x95a25efa with:
                                gas gas_remaining wei
                               args (arg1 + idx)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64]] = 0x8f35a75e00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
                        require ext_code.size(operatorAddress)
                        staticcall operatorAddress.getInvestor(address arg1) with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3344 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _3492 = mem[_3344]
                        require mem[_3344] <= 4294967296
                        require mem[_3344] + 32 <= return_data.size
                        require mem[_3344 + mem[_3344]] <= 4294967296 and mem[_3344] + (32 * mem[_3344 + mem[_3344]]) + 32 <= return_data.size
                        _3919 = mem[_3344 + 32]
                        _3920 = mem[_3344 + 64]
                        require mem[_3344 + 64] <= 4294967296
                        require mem[_3344 + 64] + 32 <= return_data.size
                        require mem[_3344 + mem[_3344 + 64]] <= 4294967296 and mem[_3344 + 64] + (32 * mem[_3344 + mem[_3344 + 64]]) + 32 <= return_data.size
                        _4836 = mem[_3344 + mem[_3344]]
                        s = 0
                        while s < _4836:
                            require s < mem[_3344 + _3492]
                            require (5 * idx) + s < mem[96]
                            mem[(32 * (5 * idx) + s) + 128] = mem[(32 * s) + _3344 + _3492 + 44 len 20]
                            s = s + 1
                            continue 
                        require (5 * idx) + 4 < mem[96]
                        mem[(32 * (5 * idx) + 4) + 128] = address(ext_call.return_data[0])
                        _6244 = mem[_3344 + _3920]
                        s = 0
                        while s < _6244:
                            require s < mem[_3344 + _3920]
                            require (16 * idx) + s < mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160]
                            mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + (32 * (16 * idx) + s) + 192] = mem[(32 * s) + _3344 + _3920 + 32]
                            _6244 = mem[_3344 + _3920]
                            s = s + 1
                            continue 
                        require idx < mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128]
                        mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * idx) + 160] = bool(_3919)
                        require idx < mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192]
                        mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + (32 * idx) + 224] = address(ext_call.return_data[0])
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 128
                    mem[mem[64] + 128] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192]
                    _2668 = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192]
                    mem[mem[64] + 160 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192])] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 224 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192])]
                    mem[mem[64] + 32] = (32 * _2668) + 160
                    mem[(32 * _2668) + mem[64] + 160] = mem[96]
                    _5041 = mem[96]
                    mem[(32 * _2668) + mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                    mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2668) + 192
                    mem[(32 * mem[96]) + (32 * _2668) + mem[64] + 192] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128]
                    _6449 = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128]
                    mem[(32 * mem[96]) + (32 * _2668) + mem[64] + 224 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128])] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 160 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128])]
                    mem[mem[64] + 96] = (32 * _6449) + (32 * mem[96]) + (32 * _2668) + 224
                    mem[(32 * _6449) + (32 * mem[96]) + (32 * _2668) + mem[64] + 224] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160]
                    _7211 = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160]
                    mem[(32 * _6449) + (32 * _5041) + (32 * _2668) + mem[64] + 256 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160])] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 192 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160])]
                    return 128, (32 * _2668) + 160, mem[mem[64] + 64 len (32 * _7211) + (32 * _6449) + (32 * _5041) + (32 * _2668) + 192]
                mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 160 len 32 * ext_call.return_data[0] - arg1] = code.data[11526 len 32 * ext_call.return_data[0] - arg1]
                mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160] = 16 * ext_call.return_data[0] - arg1
                if not Mask(252, 0, ext_call.return_data[0] - arg1):
                    mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192] = ext_call.return_data[0] - arg1
                    mem[64] = (32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + (32 * ext_call.return_data[0] - arg1) + 224
                    if not ext_call.return_data[0] - arg1:
                        idx = 0
                        while idx < ext_call.return_data[0] - arg1:
                            require ext_code.size(operatorAddress)
                            staticcall operatorAddress.0x95a25efa with:
                                    gas gas_remaining wei
                                   args (arg1 + idx)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64]] = 0x8f35a75e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            require ext_code.size(operatorAddress)
                            staticcall operatorAddress.getInvestor(address arg1) with:
                                    gas gas_remaining wei
                                   args address(ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3348 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _3493 = mem[_3348]
                            require mem[_3348] <= 4294967296
                            require mem[_3348] + 32 <= return_data.size
                            require mem[_3348 + mem[_3348]] <= 4294967296 and mem[_3348] + (32 * mem[_3348 + mem[_3348]]) + 32 <= return_data.size
                            _3923 = mem[_3348 + 32]
                            _3924 = mem[_3348 + 64]
                            require mem[_3348 + 64] <= 4294967296
                            require mem[_3348 + 64] + 32 <= return_data.size
                            require mem[_3348 + mem[_3348 + 64]] <= 4294967296 and mem[_3348 + 64] + (32 * mem[_3348 + mem[_3348 + 64]]) + 32 <= return_data.size
                            _4837 = mem[_3348 + mem[_3348]]
                            s = 0
                            while s < _4837:
                                require s < mem[_3348 + _3493]
                                require (5 * idx) + s < mem[96]
                                mem[(32 * (5 * idx) + s) + 128] = mem[(32 * s) + _3348 + _3493 + 44 len 20]
                                s = s + 1
                                continue 
                            require (5 * idx) + 4 < mem[96]
                            mem[(32 * (5 * idx) + 4) + 128] = address(ext_call.return_data[0])
                            _6245 = mem[_3348 + _3924]
                            s = 0
                            while s < _6245:
                                require s < mem[_3348 + _3924]
                                require (16 * idx) + s < mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160]
                                mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + (32 * (16 * idx) + s) + 192] = mem[(32 * s) + _3348 + _3924 + 32]
                                _6245 = mem[_3348 + _3924]
                                s = s + 1
                                continue 
                            require idx < mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128]
                            mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * idx) + 160] = bool(_3923)
                            require idx < mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192]
                            mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + (32 * idx) + 224] = address(ext_call.return_data[0])
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 128
                        mem[mem[64] + 128] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192]
                        _2671 = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192]
                        mem[mem[64] + 160 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192])] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 224 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192])]
                        mem[mem[64] + 32] = (32 * _2671) + 160
                        mem[(32 * _2671) + mem[64] + 160] = mem[96]
                        _5046 = mem[96]
                        mem[(32 * _2671) + mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                        mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2671) + 192
                        mem[(32 * mem[96]) + (32 * _2671) + mem[64] + 192] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128]
                        _6454 = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128]
                        mem[(32 * mem[96]) + (32 * _2671) + mem[64] + 224 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128])] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 160 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128])]
                        mem[mem[64] + 96] = (32 * _6454) + (32 * mem[96]) + (32 * _2671) + 224
                        mem[(32 * _6454) + (32 * mem[96]) + (32 * _2671) + mem[64] + 224] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160]
                        _7214 = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160]
                        mem[(32 * _6454) + (32 * _5046) + (32 * _2671) + mem[64] + 256 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160])] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 192 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160])]
                        return 128, (32 * _2671) + 160, mem[mem[64] + 64 len (32 * _7214) + (32 * _6454) + (32 * _5046) + (32 * _2671) + 192]
                    mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 224 len 32 * ext_call.return_data[0] - arg1] = code.data[11526 len 32 * ext_call.return_data[0] - arg1]
                    idx = 0
                    while idx < ext_call.return_data[0] - arg1:
                        require ext_code.size(operatorAddress)
                        staticcall operatorAddress.0x95a25efa with:
                                gas gas_remaining wei
                               args (arg1 + idx)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64]] = 0x8f35a75e00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
                        require ext_code.size(operatorAddress)
                        staticcall operatorAddress.getInvestor(address arg1) with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3352 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _3494 = mem[_3352]
                        require mem[_3352] <= 4294967296
                        require mem[_3352] + 32 <= return_data.size
                        require mem[_3352 + mem[_3352]] <= 4294967296 and mem[_3352] + (32 * mem[_3352 + mem[_3352]]) + 32 <= return_data.size
                        _3927 = mem[_3352 + 32]
                        _3928 = mem[_3352 + 64]
                        require mem[_3352 + 64] <= 4294967296
                        require mem[_3352 + 64] + 32 <= return_data.size
                        require mem[_3352 + mem[_3352 + 64]] <= 4294967296 and mem[_3352 + 64] + (32 * mem[_3352 + mem[_3352 + 64]]) + 32 <= return_data.size
                        _4838 = mem[_3352 + mem[_3352]]
                        s = 0
                        while s < _4838:
                            require s < mem[_3352 + _3494]
                            require (5 * idx) + s < mem[96]
                            mem[(32 * (5 * idx) + s) + 128] = mem[(32 * s) + _3352 + _3494 + 44 len 20]
                            s = s + 1
                            continue 
                        require (5 * idx) + 4 < mem[96]
                        mem[(32 * (5 * idx) + 4) + 128] = address(ext_call.return_data[0])
                        _6246 = mem[_3352 + _3928]
                        s = 0
                        while s < _6246:
                            require s < mem[_3352 + _3928]
                            require (16 * idx) + s < mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160]
                            mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + (32 * (16 * idx) + s) + 192] = mem[(32 * s) + _3352 + _3928 + 32]
                            _6246 = mem[_3352 + _3928]
                            s = s + 1
                            continue 
                        require idx < mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128]
                        mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * idx) + 160] = bool(_3927)
                        require idx < mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192]
                        mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + (32 * idx) + 224] = address(ext_call.return_data[0])
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 128
                    mem[mem[64] + 128] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192]
                    _2674 = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192]
                    mem[mem[64] + 160 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192])] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 224 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192])]
                    mem[mem[64] + 32] = (32 * _2674) + 160
                    mem[(32 * _2674) + mem[64] + 160] = mem[96]
                    mem[(32 * _2674) + mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                    mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2674) + 192
                    mem[(32 * mem[96]) + (32 * _2674) + mem[64] + 192] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128]
                    _6459 = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128]
                    mem[(32 * mem[96]) + (32 * _2674) + mem[64] + 224 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128])] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 160 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128])]
                    mem[mem[64] + 96] = (32 * _6459) + (32 * mem[96]) + (32 * _2674) + 224
                    mem[(32 * _6459) + (32 * mem[96]) + (32 * _2674) + mem[64] + 224] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160]
                    _7217 = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160]
                    mem[(32 * _6459) + (32 * mem[96]) + (32 * _2674) + mem[64] + 256 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160])] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 192 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160])]
                    return Array(len=mem[mem[64] + 128 len (32 * _2674) + 32], data=mem[96], mem[mem[64] + (32 * _2674) + 192 len (32 * _7217) + (32 * _6459) + (32 * mem[96]) + 64]), 
                           (32 * _2674) + 160,
                           (32 * mem[96]) + (32 * _2674) + 192,
                           (32 * _6459) + (32 * mem[96]) + (32 * _2674) + 224
                mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 192 len 512 * ext_call.return_data[0] - arg1] = code.data[11526 len 512 * ext_call.return_data[0] - arg1]
                mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192] = ext_call.return_data[0] - arg1
                mem[64] = (32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + (32 * ext_call.return_data[0] - arg1) + 224
                if not ext_call.return_data[0] - arg1:
                    idx = 0
                    while idx < ext_call.return_data[0] - arg1:
                        require ext_code.size(operatorAddress)
                        staticcall operatorAddress.0x95a25efa with:
                                gas gas_remaining wei
                               args (arg1 + idx)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64]] = 0x8f35a75e00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
                        require ext_code.size(operatorAddress)
                        staticcall operatorAddress.getInvestor(address arg1) with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3356 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _3495 = mem[_3356]
                        require mem[_3356] <= 4294967296
                        require mem[_3356] + 32 <= return_data.size
                        require mem[_3356 + mem[_3356]] <= 4294967296 and mem[_3356] + (32 * mem[_3356 + mem[_3356]]) + 32 <= return_data.size
                        _3931 = mem[_3356 + 32]
                        _3932 = mem[_3356 + 64]
                        require mem[_3356 + 64] <= 4294967296
                        require mem[_3356 + 64] + 32 <= return_data.size
                        require mem[_3356 + mem[_3356 + 64]] <= 4294967296 and mem[_3356 + 64] + (32 * mem[_3356 + mem[_3356 + 64]]) + 32 <= return_data.size
                        _4839 = mem[_3356 + mem[_3356]]
                        s = 0
                        while s < _4839:
                            require s < mem[_3356 + _3495]
                            require (5 * idx) + s < mem[96]
                            mem[(32 * (5 * idx) + s) + 128] = mem[(32 * s) + _3356 + _3495 + 44 len 20]
                            s = s + 1
                            continue 
                        require (5 * idx) + 4 < mem[96]
                        mem[(32 * (5 * idx) + 4) + 128] = address(ext_call.return_data[0])
                        _6247 = mem[_3356 + _3932]
                        s = 0
                        while s < _6247:
                            require s < mem[_3356 + _3932]
                            require (16 * idx) + s < mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160]
                            mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + (32 * (16 * idx) + s) + 192] = mem[(32 * s) + _3356 + _3932 + 32]
                            _6247 = mem[_3356 + _3932]
                            s = s + 1
                            continue 
                        require idx < mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128]
                        mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * idx) + 160] = bool(_3931)
                        require idx < mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192]
                        mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + (32 * idx) + 224] = address(ext_call.return_data[0])
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 128
                    mem[mem[64] + 128] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192]
                    _2677 = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192]
                    mem[mem[64] + 160 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192])] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 224 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192])]
                    mem[mem[64] + 32] = (32 * _2677) + 160
                    mem[(32 * _2677) + mem[64] + 160] = mem[96]
                    mem[(32 * _2677) + mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                    mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2677) + 192
                    mem[(32 * mem[96]) + (32 * _2677) + mem[64] + 192] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128]
                    _6464 = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128]
                    mem[(32 * mem[96]) + (32 * _2677) + mem[64] + 224 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128])] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 160 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128])]
                    mem[mem[64] + 96] = (32 * _6464) + (32 * mem[96]) + (32 * _2677) + 224
                    mem[(32 * _6464) + (32 * mem[96]) + (32 * _2677) + mem[64] + 224] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160]
                    _7220 = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160]
                    mem[(32 * _6464) + (32 * mem[96]) + (32 * _2677) + mem[64] + 256 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160])] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 192 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160])]
                    return Array(len=mem[mem[64] + 128 len (32 * _2677) + 32], data=mem[96], mem[mem[64] + (32 * _2677) + 192 len (32 * _7220) + (32 * _6464) + (32 * mem[96]) + 64]), 
                           (32 * _2677) + 160,
                           (32 * mem[96]) + (32 * _2677) + 192,
                           (32 * _6464) + (32 * mem[96]) + (32 * _2677) + 224
                mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 224 len 32 * ext_call.return_data[0] - arg1] = code.data[11526 len 32 * ext_call.return_data[0] - arg1]
                idx = 0
                while idx < ext_call.return_data[0] - arg1:
                    require ext_code.size(operatorAddress)
                    staticcall operatorAddress.0x95a25efa with:
                            gas gas_remaining wei
                           args (arg1 + idx)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64]] = 0x8f35a75e00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(ext_call.return_data[0])
                    require ext_code.size(operatorAddress)
                    staticcall operatorAddress.getInvestor(address arg1) with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3360 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _3496 = mem[_3360]
                    require mem[_3360] <= 4294967296
                    require mem[_3360] + 32 <= return_data.size
                    require mem[_3360 + mem[_3360]] <= 4294967296 and mem[_3360] + (32 * mem[_3360 + mem[_3360]]) + 32 <= return_data.size
                    _3935 = mem[_3360 + 32]
                    _3936 = mem[_3360 + 64]
                    require mem[_3360 + 64] <= 4294967296
                    require mem[_3360 + 64] + 32 <= return_data.size
                    require mem[_3360 + mem[_3360 + 64]] <= 4294967296 and mem[_3360 + 64] + (32 * mem[_3360 + mem[_3360 + 64]]) + 32 <= return_data.size
                    _4840 = mem[_3360 + mem[_3360]]
                    s = 0
                    while s < _4840:
                        require s < mem[_3360 + _3496]
                        require (5 * idx) + s < mem[96]
                        mem[(32 * (5 * idx) + s) + 128] = mem[(32 * s) + _3360 + _3496 + 44 len 20]
                        s = s + 1
                        continue 
                    require (5 * idx) + 4 < mem[96]
                    mem[(32 * (5 * idx) + 4) + 128] = address(ext_call.return_data[0])
                    _6248 = mem[_3360 + _3936]
                    s = 0
                    while s < _6248:
                        require s < mem[_3360 + _3936]
                        require (16 * idx) + s < mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160]
                        mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + (32 * (16 * idx) + s) + 192] = mem[(32 * s) + _3360 + _3936 + 32]
                        _6248 = mem[_3360 + _3936]
                        s = s + 1
                        continue 
                    require idx < mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128]
                    mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * idx) + 160] = bool(_3935)
                    require idx < mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192]
                    mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + (32 * idx) + 224] = address(ext_call.return_data[0])
                    idx = idx + 1
                    continue 
                _2678 = mem[64]
                mem[mem[64]] = 128
                mem[mem[64] + 128] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192]
                _2680 = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192]
                mem[mem[64] + 160 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192])] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 224 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192])]
                mem[mem[64] + 32] = (32 * _2680) + 160
                mem[(32 * _2680) + mem[64] + 160] = mem[96]
                _5061 = mem[96]
                mem[(32 * _2680) + mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2680) + 192
                mem[(32 * _5061) + (32 * _2680) + _2678 + 192] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128]
                _6469 = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128]
                mem[(32 * _5061) + (32 * _2680) + _2678 + 224 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128])] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 160 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128])]
                mem[_2678 + 96] = (32 * _6469) + (32 * _5061) + (32 * _2680) + 224
                mem[(32 * _6469) + (32 * _5061) + (32 * _2680) + _2678 + 224] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160]
                _7223 = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160]
                mem[(32 * _6469) + (32 * _5061) + (32 * _2680) + _2678 + 256 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160])] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 192 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160])]
                return memory
                  from mem[64]
                   len (32 * _7223) + (32 * _6469) + (32 * _5061) + (32 * _2680) + _2678 + -mem[64] + 256
            mem[128 len 32 * (5 * ext_call.return_data[0]) - (5 * arg1)] = code.data[11526 len 32 * (5 * ext_call.return_data[0]) - (5 * arg1)]
            mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128] = ext_call.return_data[0] - arg1
            if not ext_call.return_data[0] - arg1:
                mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160] = 16 * ext_call.return_data[0] - arg1
                if not Mask(252, 0, ext_call.return_data[0] - arg1):
                    mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192] = ext_call.return_data[0] - arg1
                    mem[64] = (32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + (32 * ext_call.return_data[0] - arg1) + 224
                    if not ext_call.return_data[0] - arg1:
                        idx = 0
                        while idx < ext_call.return_data[0] - arg1:
                            require ext_code.size(operatorAddress)
                            staticcall operatorAddress.0x95a25efa with:
                                    gas gas_remaining wei
                                   args (arg1 + idx)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64]] = 0x8f35a75e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            require ext_code.size(operatorAddress)
                            staticcall operatorAddress.getInvestor(address arg1) with:
                                    gas gas_remaining wei
                                   args address(ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3364 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _3497 = mem[_3364]
                            require mem[_3364] <= 4294967296
                            require mem[_3364] + 32 <= return_data.size
                            require mem[_3364 + mem[_3364]] <= 4294967296 and mem[_3364] + (32 * mem[_3364 + mem[_3364]]) + 32 <= return_data.size
                            _3939 = mem[_3364 + 32]
                            _3940 = mem[_3364 + 64]
                            require mem[_3364 + 64] <= 4294967296
                            require mem[_3364 + 64] + 32 <= return_data.size
                            require mem[_3364 + mem[_3364 + 64]] <= 4294967296 and mem[_3364 + 64] + (32 * mem[_3364 + mem[_3364 + 64]]) + 32 <= return_data.size
                            _4841 = mem[_3364 + mem[_3364]]
                            s = 0
                            while s < _4841:
                                require s < mem[_3364 + _3497]
                                require (5 * idx) + s < mem[96]
                                mem[(32 * (5 * idx) + s) + 128] = mem[(32 * s) + _3364 + _3497 + 44 len 20]
                                s = s + 1
                                continue 
                            require (5 * idx) + 4 < mem[96]
                            mem[(32 * (5 * idx) + 4) + 128] = address(ext_call.return_data[0])
                            _6249 = mem[_3364 + _3940]
                            s = 0
                            while s < _6249:
                                require s < mem[_3364 + _3940]
                                require (16 * idx) + s < mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160]
                                mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + (32 * (16 * idx) + s) + 192] = mem[(32 * s) + _3364 + _3940 + 32]
                                _6249 = mem[_3364 + _3940]
                                s = s + 1
                                continue 
                            require idx < mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128]
                            mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * idx) + 160] = bool(_3939)
                            require idx < mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192]
                            mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + (32 * idx) + 224] = address(ext_call.return_data[0])
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 128
                        mem[mem[64] + 128] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192]
                        _2683 = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192]
                        mem[mem[64] + 160 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192])] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 224 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192])]
                        mem[mem[64] + 32] = (32 * _2683) + 160
                        mem[(32 * _2683) + mem[64] + 160] = mem[96]
                        mem[(32 * _2683) + mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                        mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2683) + 192
                        mem[(32 * mem[96]) + (32 * _2683) + mem[64] + 192] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128]
                        _6474 = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128]
                        mem[(32 * mem[96]) + (32 * _2683) + mem[64] + 224 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128])] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 160 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128])]
                        mem[mem[64] + 96] = (32 * _6474) + (32 * mem[96]) + (32 * _2683) + 224
                        mem[(32 * _6474) + (32 * mem[96]) + (32 * _2683) + mem[64] + 224] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160]
                        _7226 = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160]
                        mem[(32 * _6474) + (32 * mem[96]) + (32 * _2683) + mem[64] + 256 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160])] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 192 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160])]
                        return Array(len=mem[mem[64] + 128 len (32 * _2683) + 32], data=mem[96], mem[mem[64] + (32 * _2683) + 192 len (32 * _7226) + (32 * _6474) + (32 * mem[96]) + 64]), 
                               (32 * _2683) + 160,
                               (32 * mem[96]) + (32 * _2683) + 192,
                               (32 * _6474) + (32 * mem[96]) + (32 * _2683) + 224
                    mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 224 len 32 * ext_call.return_data[0] - arg1] = code.data[11526 len 32 * ext_call.return_data[0] - arg1]
                    idx = 0
                    while idx < ext_call.return_data[0] - arg1:
                        require ext_code.size(operatorAddress)
                        staticcall operatorAddress.0x95a25efa with:
                                gas gas_remaining wei
                               args (arg1 + idx)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64]] = 0x8f35a75e00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
                        require ext_code.size(operatorAddress)
                        staticcall operatorAddress.getInvestor(address arg1) with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3368 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _3498 = mem[_3368]
                        require mem[_3368] <= 4294967296
                        require mem[_3368] + 32 <= return_data.size
                        require mem[_3368 + mem[_3368]] <= 4294967296 and mem[_3368] + (32 * mem[_3368 + mem[_3368]]) + 32 <= return_data.size
                        _3943 = mem[_3368 + 32]
                        _3944 = mem[_3368 + 64]
                        require mem[_3368 + 64] <= 4294967296
                        require mem[_3368 + 64] + 32 <= return_data.size
                        require mem[_3368 + mem[_3368 + 64]] <= 4294967296 and mem[_3368 + 64] + (32 * mem[_3368 + mem[_3368 + 64]]) + 32 <= return_data.size
                        _4842 = mem[_3368 + mem[_3368]]
                        s = 0
                        while s < _4842:
                            require s < mem[_3368 + _3498]
                            require (5 * idx) + s < mem[96]
                            mem[(32 * (5 * idx) + s) + 128] = mem[(32 * s) + _3368 + _3498 + 44 len 20]
                            s = s + 1
                            continue 
                        require (5 * idx) + 4 < mem[96]
                        mem[(32 * (5 * idx) + 4) + 128] = address(ext_call.return_data[0])
                        _6250 = mem[_3368 + _3944]
                        s = 0
                        while s < _6250:
                            require s < mem[_3368 + _3944]
                            require (16 * idx) + s < mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160]
                            mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + (32 * (16 * idx) + s) + 192] = mem[(32 * s) + _3368 + _3944 + 32]
                            _6250 = mem[_3368 + _3944]
                            s = s + 1
                            continue 
                        require idx < mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128]
                        mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * idx) + 160] = bool(_3943)
                        require idx < mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192]
                        mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + (32 * idx) + 224] = address(ext_call.return_data[0])
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 128
                    mem[mem[64] + 128] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192]
                    _2686 = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192]
                    mem[mem[64] + 160 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192])] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 224 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192])]
                    mem[mem[64] + 32] = (32 * _2686) + 160
                    mem[(32 * _2686) + mem[64] + 160] = mem[96]
                    mem[(32 * _2686) + mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                    mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2686) + 192
                    mem[(32 * mem[96]) + (32 * _2686) + mem[64] + 192] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128]
                    _6479 = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128]
                    mem[(32 * mem[96]) + (32 * _2686) + mem[64] + 224 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128])] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 160 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128])]
                    mem[mem[64] + 96] = (32 * _6479) + (32 * mem[96]) + (32 * _2686) + 224
                    mem[(32 * _6479) + (32 * mem[96]) + (32 * _2686) + mem[64] + 224] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160]
                    _7229 = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160]
                    mem[(32 * _6479) + (32 * mem[96]) + (32 * _2686) + mem[64] + 256 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160])] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 192 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160])]
                    return Array(len=mem[mem[64] + 128 len (32 * _2686) + 32], data=mem[96], mem[mem[64] + (32 * _2686) + 192 len (32 * _7229) + (32 * _6479) + (32 * mem[96]) + 64]), 
                           (32 * _2686) + 160,
                           (32 * mem[96]) + (32 * _2686) + 192,
                           (32 * _6479) + (32 * mem[96]) + (32 * _2686) + 224
                mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 192 len 512 * ext_call.return_data[0] - arg1] = code.data[11526 len 512 * ext_call.return_data[0] - arg1]
                mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192] = ext_call.return_data[0] - arg1
                mem[64] = (32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + (32 * ext_call.return_data[0] - arg1) + 224
                if ext_call.return_data[0] - arg1:
                    mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 224 len 32 * ext_call.return_data[0] - arg1] = code.data[11526 len 32 * ext_call.return_data[0] - arg1]
                    idx = 0
                    while idx < ext_call.return_data[0] - arg1:
                        require ext_code.size(operatorAddress)
                        staticcall operatorAddress.0x95a25efa with:
                                gas gas_remaining wei
                               args (arg1 + idx)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64]] = 0x8f35a75e00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
                        require ext_code.size(operatorAddress)
                        staticcall operatorAddress.getInvestor(address arg1) with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3376 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _3500 = mem[_3376]
                        require mem[_3376] <= 4294967296
                        require mem[_3376] + 32 <= return_data.size
                        require mem[_3376 + mem[_3376]] <= 4294967296 and mem[_3376] + (32 * mem[_3376 + mem[_3376]]) + 32 <= return_data.size
                        _3951 = mem[_3376 + 32]
                        _3952 = mem[_3376 + 64]
                        require mem[_3376 + 64] <= 4294967296
                        require mem[_3376 + 64] + 32 <= return_data.size
                        require mem[_3376 + mem[_3376 + 64]] <= 4294967296 and mem[_3376 + 64] + (32 * mem[_3376 + mem[_3376 + 64]]) + 32 <= return_data.size
                        _4844 = mem[_3376 + mem[_3376]]
                        s = 0
                        while s < _4844:
                            require s < mem[_3376 + _3500]
                            require (5 * idx) + s < mem[96]
                            mem[(32 * (5 * idx) + s) + 128] = mem[(32 * s) + _3376 + _3500 + 44 len 20]
                            s = s + 1
                            continue 
                        require (5 * idx) + 4 < mem[96]
                        mem[(32 * (5 * idx) + 4) + 128] = address(ext_call.return_data[0])
                        _6252 = mem[_3376 + _3952]
                        s = 0
                        while s < _6252:
                            require s < mem[_3376 + _3952]
                            require (16 * idx) + s < mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160]
                            mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + (32 * (16 * idx) + s) + 192] = mem[(32 * s) + _3376 + _3952 + 32]
                            _6252 = mem[_3376 + _3952]
                            s = s + 1
                            continue 
                        require idx < mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128]
                        mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * idx) + 160] = bool(_3951)
                        require idx < mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192]
                        mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + (32 * idx) + 224] = address(ext_call.return_data[0])
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 128
                    mem[mem[64] + 128] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192]
                    _2692 = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192]
                    mem[mem[64] + 160 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192])] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 224 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192])]
                    mem[mem[64] + 32] = (32 * _2692) + 160
                    mem[(32 * _2692) + mem[64] + 160] = mem[96]
                    mem[(32 * _2692) + mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                    mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2692) + 192
                    mem[(32 * mem[96]) + (32 * _2692) + mem[64] + 192] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128]
                    _6489 = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128]
                    mem[(32 * mem[96]) + (32 * _2692) + mem[64] + 224 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128])] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 160 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128])]
                    mem[mem[64] + 96] = (32 * _6489) + (32 * mem[96]) + (32 * _2692) + 224
                    mem[(32 * _6489) + (32 * mem[96]) + (32 * _2692) + mem[64] + 224] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160]
                    _7235 = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160]
                    mem[(32 * _6489) + (32 * mem[96]) + (32 * _2692) + mem[64] + 256 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160])] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 192 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160])]
                    return Array(len=mem[mem[64] + 128 len (32 * _2692) + 32], data=mem[96], mem[mem[64] + (32 * _2692) + 192 len (32 * _7235) + (32 * _6489) + (32 * mem[96]) + 64]), 
                           (32 * _2692) + 160,
                           (32 * mem[96]) + (32 * _2692) + 192,
                           (32 * _6489) + (32 * mem[96]) + (32 * _2692) + 224
                idx = 0
                while idx < ext_call.return_data[0] - arg1:
                    require ext_code.size(operatorAddress)
                    staticcall operatorAddress.0x95a25efa with:
                            gas gas_remaining wei
                           args (arg1 + idx)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64]] = 0x8f35a75e00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(ext_call.return_data[0])
                    require ext_code.size(operatorAddress)
                    staticcall operatorAddress.getInvestor(address arg1) with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3372 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _3499 = mem[_3372]
                    require mem[_3372] <= 4294967296
                    require mem[_3372] + 32 <= return_data.size
                    require mem[_3372 + mem[_3372]] <= 4294967296 and mem[_3372] + (32 * mem[_3372 + mem[_3372]]) + 32 <= return_data.size
                    _3947 = mem[_3372 + 32]
                    _3948 = mem[_3372 + 64]
                    require mem[_3372 + 64] <= 4294967296
                    require mem[_3372 + 64] + 32 <= return_data.size
                    require mem[_3372 + mem[_3372 + 64]] <= 4294967296 and mem[_3372 + 64] + (32 * mem[_3372 + mem[_3372 + 64]]) + 32 <= return_data.size
                    _4843 = mem[_3372 + mem[_3372]]
                    s = 0
                    while s < _4843:
                        require s < mem[_3372 + _3499]
                        require (5 * idx) + s < mem[96]
                        mem[(32 * (5 * idx) + s) + 128] = mem[(32 * s) + _3372 + _3499 + 44 len 20]
                        s = s + 1
                        continue 
                    require (5 * idx) + 4 < mem[96]
                    mem[(32 * (5 * idx) + 4) + 128] = address(ext_call.return_data[0])
                    _6251 = mem[_3372 + _3948]
                    s = 0
                    while s < _6251:
                        require s < mem[_3372 + _3948]
                        require (16 * idx) + s < mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160]
                        mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + (32 * (16 * idx) + s) + 192] = mem[(32 * s) + _3372 + _3948 + 32]
                        _6251 = mem[_3372 + _3948]
                        s = s + 1
                        continue 
                    require idx < mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128]
                    mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * idx) + 160] = bool(_3947)
                    require idx < mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192]
                    mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + (32 * idx) + 224] = address(ext_call.return_data[0])
                    idx = idx + 1
                    continue 
                _2687 = mem[64]
                mem[mem[64]] = 128
                mem[mem[64] + 128] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192]
                _2689 = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192]
                mem[mem[64] + 160 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192])] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 224 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192])]
                mem[mem[64] + 32] = (32 * _2689) + 160
                mem[(32 * _2689) + mem[64] + 160] = mem[96]
                _5076 = mem[96]
                mem[(32 * _2689) + mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2689) + 192
                mem[(32 * _5076) + (32 * _2689) + _2687 + 192] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128]
                _6484 = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128]
                mem[(32 * _5076) + (32 * _2689) + _2687 + 224 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128])] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 160 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128])]
                mem[_2687 + 96] = (32 * _6484) + (32 * _5076) + (32 * _2689) + 224
                mem[(32 * _6484) + (32 * _5076) + (32 * _2689) + _2687 + 224] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160]
                _7232 = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160]
                mem[(32 * _6484) + (32 * _5076) + (32 * _2689) + _2687 + 256 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160])] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 192 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160])]
                return memory
                  from mem[64]
                   len (32 * _7232) + (32 * _6484) + (32 * _5076) + (32 * _2689) + _2687 + -mem[64] + 256
            mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 160 len 32 * ext_call.return_data[0] - arg1] = code.data[11526 len 32 * ext_call.return_data[0] - arg1]
            mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160] = 16 * ext_call.return_data[0] - arg1
            if not Mask(252, 0, ext_call.return_data[0] - arg1):
                mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192] = ext_call.return_data[0] - arg1
                mem[64] = (32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + (32 * ext_call.return_data[0] - arg1) + 224
                if not ext_call.return_data[0] - arg1:
                    idx = 0
                    while idx < ext_call.return_data[0] - arg1:
                        require ext_code.size(operatorAddress)
                        staticcall operatorAddress.0x95a25efa with:
                                gas gas_remaining wei
                               args (arg1 + idx)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64]] = 0x8f35a75e00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
                        require ext_code.size(operatorAddress)
                        staticcall operatorAddress.getInvestor(address arg1) with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3380 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _3501 = mem[_3380]
                        require mem[_3380] <= 4294967296
                        require mem[_3380] + 32 <= return_data.size
                        require mem[_3380 + mem[_3380]] <= 4294967296 and mem[_3380] + (32 * mem[_3380 + mem[_3380]]) + 32 <= return_data.size
                        _3955 = mem[_3380 + 32]
                        _3956 = mem[_3380 + 64]
                        require mem[_3380 + 64] <= 4294967296
                        require mem[_3380 + 64] + 32 <= return_data.size
                        require mem[_3380 + mem[_3380 + 64]] <= 4294967296 and mem[_3380 + 64] + (32 * mem[_3380 + mem[_3380 + 64]]) + 32 <= return_data.size
                        _4845 = mem[_3380 + mem[_3380]]
                        s = 0
                        while s < _4845:
                            require s < mem[_3380 + _3501]
                            require (5 * idx) + s < mem[96]
                            mem[(32 * (5 * idx) + s) + 128] = mem[(32 * s) + _3380 + _3501 + 44 len 20]
                            s = s + 1
                            continue 
                        require (5 * idx) + 4 < mem[96]
                        mem[(32 * (5 * idx) + 4) + 128] = address(ext_call.return_data[0])
                        _6253 = mem[_3380 + _3956]
                        s = 0
                        while s < _6253:
                            require s < mem[_3380 + _3956]
                            require (16 * idx) + s < mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160]
                            mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + (32 * (16 * idx) + s) + 192] = mem[(32 * s) + _3380 + _3956 + 32]
                            _6253 = mem[_3380 + _3956]
                            s = s + 1
                            continue 
                        require idx < mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128]
                        mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * idx) + 160] = bool(_3955)
                        require idx < mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192]
                        mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + (32 * idx) + 224] = address(ext_call.return_data[0])
                        idx = idx + 1
                        continue 
                    _2693 = mem[64]
                    mem[mem[64]] = 128
                    mem[mem[64] + 128] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192]
                    _2695 = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192]
                    mem[mem[64] + 160 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192])] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 224 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192])]
                    mem[mem[64] + 32] = (32 * _2695) + 160
                    mem[(32 * _2695) + mem[64] + 160] = mem[96]
                    _5086 = mem[96]
                    mem[(32 * _2695) + mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                    mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2695) + 192
                    mem[(32 * _5086) + (32 * _2695) + _2693 + 192] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128]
                    _6494 = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128]
                    mem[(32 * _5086) + (32 * _2695) + _2693 + 224 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128])] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 160 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128])]
                    mem[_2693 + 96] = (32 * _6494) + (32 * _5086) + (32 * _2695) + 224
                    mem[(32 * _6494) + (32 * _5086) + (32 * _2695) + _2693 + 224] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160]
                    _7238 = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160]
                    mem[(32 * _6494) + (32 * _5086) + (32 * _2695) + _2693 + 256 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160])] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 192 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160])]
                    return memory
                      from mem[64]
                       len (32 * _7238) + (32 * _6494) + (32 * _5086) + (32 * _2695) + _2693 + -mem[64] + 256
                mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 224 len 32 * ext_call.return_data[0] - arg1] = code.data[11526 len 32 * ext_call.return_data[0] - arg1]
                idx = 0
                while idx < ext_call.return_data[0] - arg1:
                    require ext_code.size(operatorAddress)
                    staticcall operatorAddress.0x95a25efa with:
                            gas gas_remaining wei
                           args (arg1 + idx)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64]] = 0x8f35a75e00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(ext_call.return_data[0])
                    require ext_code.size(operatorAddress)
                    staticcall operatorAddress.getInvestor(address arg1) with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3384 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _3502 = mem[_3384]
                    require mem[_3384] <= 4294967296
                    require mem[_3384] + 32 <= return_data.size
                    require mem[_3384 + mem[_3384]] <= 4294967296 and mem[_3384] + (32 * mem[_3384 + mem[_3384]]) + 32 <= return_data.size
                    _3959 = mem[_3384 + 32]
                    _3960 = mem[_3384 + 64]
                    require mem[_3384 + 64] <= 4294967296
                    require mem[_3384 + 64] + 32 <= return_data.size
                    require mem[_3384 + mem[_3384 + 64]] <= 4294967296 and mem[_3384 + 64] + (32 * mem[_3384 + mem[_3384 + 64]]) + 32 <= return_data.size
                    _4846 = mem[_3384 + mem[_3384]]
                    s = 0
                    while s < _4846:
                        require s < mem[_3384 + _3502]
                        require (5 * idx) + s < mem[96]
                        mem[(32 * (5 * idx) + s) + 128] = mem[(32 * s) + _3384 + _3502 + 44 len 20]
                        s = s + 1
                        continue 
                    require (5 * idx) + 4 < mem[96]
                    mem[(32 * (5 * idx) + 4) + 128] = address(ext_call.return_data[0])
                    _6254 = mem[_3384 + _3960]
                    s = 0
                    while s < _6254:
                        require s < mem[_3384 + _3960]
                        require (16 * idx) + s < mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160]
                        mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + (32 * (16 * idx) + s) + 192] = mem[(32 * s) + _3384 + _3960 + 32]
                        _6254 = mem[_3384 + _3960]
                        s = s + 1
                        continue 
                    require idx < mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128]
                    mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * idx) + 160] = bool(_3959)
                    require idx < mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192]
                    mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + (32 * idx) + 224] = address(ext_call.return_data[0])
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 128
                mem[mem[64] + 128] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192]
                _2698 = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192]
                mem[mem[64] + 160 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192])] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 224 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192])]
                mem[mem[64] + 32] = (32 * _2698) + 160
                mem[(32 * _2698) + mem[64] + 160] = mem[96]
                _5091 = mem[96]
                mem[(32 * _2698) + mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2698) + 192
                mem[(32 * mem[96]) + (32 * _2698) + mem[64] + 192] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128]
                _6499 = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128]
                mem[(32 * mem[96]) + (32 * _2698) + mem[64] + 224 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128])] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 160 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128])]
                mem[mem[64] + 96] = (32 * _6499) + (32 * mem[96]) + (32 * _2698) + 224
                mem[(32 * _6499) + (32 * mem[96]) + (32 * _2698) + mem[64] + 224] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160]
                _7241 = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160]
                mem[(32 * _6499) + (32 * _5091) + (32 * _2698) + mem[64] + 256 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160])] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 192 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160])]
                return 128, (32 * _2698) + 160, mem[mem[64] + 64 len (32 * _7241) + (32 * _6499) + (32 * _5091) + (32 * _2698) + 192]
            mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 192 len 512 * ext_call.return_data[0] - arg1] = code.data[11526 len 512 * ext_call.return_data[0] - arg1]
            mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192] = ext_call.return_data[0] - arg1
            mem[64] = (32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + (32 * ext_call.return_data[0] - arg1) + 224
            if not ext_call.return_data[0] - arg1:
                idx = 0
                while idx < ext_call.return_data[0] - arg1:
                    require ext_code.size(operatorAddress)
                    staticcall operatorAddress.0x95a25efa with:
                            gas gas_remaining wei
                           args (arg1 + idx)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64]] = 0x8f35a75e00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(ext_call.return_data[0])
                    require ext_code.size(operatorAddress)
                    staticcall operatorAddress.getInvestor(address arg1) with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3388 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _3503 = mem[_3388]
                    require mem[_3388] <= 4294967296
                    require mem[_3388] + 32 <= return_data.size
                    require mem[_3388 + mem[_3388]] <= 4294967296 and mem[_3388] + (32 * mem[_3388 + mem[_3388]]) + 32 <= return_data.size
                    _3963 = mem[_3388 + 32]
                    _3964 = mem[_3388 + 64]
                    require mem[_3388 + 64] <= 4294967296
                    require mem[_3388 + 64] + 32 <= return_data.size
                    require mem[_3388 + mem[_3388 + 64]] <= 4294967296 and mem[_3388 + 64] + (32 * mem[_3388 + mem[_3388 + 64]]) + 32 <= return_data.size
                    _4847 = mem[_3388 + mem[_3388]]
                    s = 0
                    while s < _4847:
                        require s < mem[_3388 + _3503]
                        require (5 * idx) + s < mem[96]
                        mem[(32 * (5 * idx) + s) + 128] = mem[(32 * s) + _3388 + _3503 + 44 len 20]
                        s = s + 1
                        continue 
                    require (5 * idx) + 4 < mem[96]
                    mem[(32 * (5 * idx) + 4) + 128] = address(ext_call.return_data[0])
                    _6255 = mem[_3388 + _3964]
                    s = 0
                    while s < _6255:
                        require s < mem[_3388 + _3964]
                        require (16 * idx) + s < mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160]
                        mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + (32 * (16 * idx) + s) + 192] = mem[(32 * s) + _3388 + _3964 + 32]
                        _6255 = mem[_3388 + _3964]
                        s = s + 1
                        continue 
                    require idx < mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128]
                    mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * idx) + 160] = bool(_3963)
                    require idx < mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192]
                    mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + (32 * idx) + 224] = address(ext_call.return_data[0])
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 128
                mem[mem[64] + 128] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192]
                _2701 = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192]
                mem[mem[64] + 160 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192])] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 224 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192])]
                mem[mem[64] + 32] = (32 * _2701) + 160
                mem[(32 * _2701) + mem[64] + 160] = mem[96]
                mem[(32 * _2701) + mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2701) + 192
                mem[(32 * mem[96]) + (32 * _2701) + mem[64] + 192] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128]
                _6504 = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128]
                mem[(32 * mem[96]) + (32 * _2701) + mem[64] + 224 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128])] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 160 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128])]
                mem[mem[64] + 96] = (32 * _6504) + (32 * mem[96]) + (32 * _2701) + 224
                mem[(32 * _6504) + (32 * mem[96]) + (32 * _2701) + mem[64] + 224] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160]
                _7244 = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160]
                mem[(32 * _6504) + (32 * mem[96]) + (32 * _2701) + mem[64] + 256 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160])] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 192 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160])]
                return Array(len=mem[mem[64] + 128 len (32 * _2701) + 32], data=mem[96], mem[mem[64] + (32 * _2701) + 192 len (32 * _7244) + (32 * _6504) + (32 * mem[96]) + 64]), 
                       (32 * _2701) + 160,
                       (32 * mem[96]) + (32 * _2701) + 192,
                       (32 * _6504) + (32 * mem[96]) + (32 * _2701) + 224
            mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 224 len 32 * ext_call.return_data[0] - arg1] = code.data[11526 len 32 * ext_call.return_data[0] - arg1]
            idx = 0
            while idx < ext_call.return_data[0] - arg1:
                require ext_code.size(operatorAddress)
                staticcall operatorAddress.0x95a25efa with:
                        gas gas_remaining wei
                       args (arg1 + idx)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64]] = 0x8f35a75e00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(ext_call.return_data[0])
                require ext_code.size(operatorAddress)
                staticcall operatorAddress.getInvestor(address arg1) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3392 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _3504 = mem[_3392]
                require mem[_3392] <= 4294967296
                require mem[_3392] + 32 <= return_data.size
                require mem[_3392 + mem[_3392]] <= 4294967296 and mem[_3392] + (32 * mem[_3392 + mem[_3392]]) + 32 <= return_data.size
                _3967 = mem[_3392 + 32]
                _3968 = mem[_3392 + 64]
                require mem[_3392 + 64] <= 4294967296
                require mem[_3392 + 64] + 32 <= return_data.size
                require mem[_3392 + mem[_3392 + 64]] <= 4294967296 and mem[_3392 + 64] + (32 * mem[_3392 + mem[_3392 + 64]]) + 32 <= return_data.size
                _4848 = mem[_3392 + mem[_3392]]
                s = 0
                while s < _4848:
                    require s < mem[_3392 + _3504]
                    require (5 * idx) + s < mem[96]
                    mem[(32 * (5 * idx) + s) + 128] = mem[(32 * s) + _3392 + _3504 + 44 len 20]
                    s = s + 1
                    continue 
                require (5 * idx) + 4 < mem[96]
                mem[(32 * (5 * idx) + 4) + 128] = address(ext_call.return_data[0])
                _6256 = mem[_3392 + _3968]
                s = 0
                while s < _6256:
                    require s < mem[_3392 + _3968]
                    require (16 * idx) + s < mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160]
                    mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + (32 * (16 * idx) + s) + 192] = mem[(32 * s) + _3392 + _3968 + 32]
                    _6256 = mem[_3392 + _3968]
                    s = s + 1
                    continue 
                require idx < mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128]
                mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * idx) + 160] = bool(_3967)
                require idx < mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192]
                mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + (32 * idx) + 224] = address(ext_call.return_data[0])
                idx = idx + 1
                continue 
            mem[mem[64]] = 128
            mem[mem[64] + 128] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192]
            _2704 = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192]
            mem[mem[64] + 160 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192])] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 224 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (546 * ext_call.return_data[0]) + (-546 * arg1) + 192])]
            mem[mem[64] + 32] = (32 * _2704) + 160
            mem[(32 * _2704) + mem[64] + 160] = mem[96]
            _5101 = mem[96]
            mem[(32 * _2704) + mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2704) + 192
            mem[(32 * mem[96]) + (32 * _2704) + mem[64] + 192] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128]
            _6509 = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128]
            mem[(32 * mem[96]) + (32 * _2704) + mem[64] + 224 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128])] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 160 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + 128])]
            mem[mem[64] + 96] = (32 * _6509) + (32 * mem[96]) + (32 * _2704) + 224
            mem[(32 * _6509) + (32 * mem[96]) + (32 * _2704) + mem[64] + 224] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160]
            _7247 = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160]
            mem[(32 * _6509) + (32 * _5101) + (32 * _2704) + mem[64] + 256 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160])] = mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 192 len floor32(mem[(32 * (5 * ext_call.return_data[0]) - (5 * arg1)) + (32 * ext_call.return_data[0] - arg1) + 160])]
            return 128, (32 * _2704) + 160, mem[mem[64] + 64 len (32 * _7247) + (32 * _6509) + (32 * _5101) + (32 * _2704) + 192]
        mem[96] = (5 * arg2) + (-5 * arg1) + 5
        if not (5 * arg2) + (-5 * arg1) + 5:
            mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128] = arg2 + -arg1 + 1
            if not arg2 + -arg1 + 1:
                mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160] = 16 * arg2 + -arg1 + 1
                if not Mask(252, 0, arg2 + -arg1 + 1):
                    mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738] = arg2 + -arg1 + 1
                    mem[64] = (32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + (32 * arg2 + -arg1 + 1) + 770
                    if not arg2 + -arg1 + 1:
                        idx = 0
                        while idx < arg2 + -arg1 + 1:
                            require ext_code.size(operatorAddress)
                            staticcall operatorAddress.0x95a25efa with:
                                    gas gas_remaining wei
                                   args (arg1 + idx)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64]] = 0x8f35a75e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            require ext_code.size(operatorAddress)
                            staticcall operatorAddress.getInvestor(address arg1) with:
                                    gas gas_remaining wei
                                   args address(ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3396 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _3505 = mem[_3396]
                            require mem[_3396] <= 4294967296
                            require mem[_3396] + 32 <= return_data.size
                            require mem[_3396 + mem[_3396]] <= 4294967296 and mem[_3396] + (32 * mem[_3396 + mem[_3396]]) + 32 <= return_data.size
                            _3971 = mem[_3396 + 32]
                            _3972 = mem[_3396 + 64]
                            require mem[_3396 + 64] <= 4294967296
                            require mem[_3396 + 64] + 32 <= return_data.size
                            require mem[_3396 + mem[_3396 + 64]] <= 4294967296 and mem[_3396 + 64] + (32 * mem[_3396 + mem[_3396 + 64]]) + 32 <= return_data.size
                            _4849 = mem[_3396 + mem[_3396]]
                            s = 0
                            while s < _4849:
                                require s < mem[_3396 + _3505]
                                require (5 * idx) + s < mem[96]
                                mem[(32 * (5 * idx) + s) + 128] = mem[(32 * s) + _3396 + _3505 + 44 len 20]
                                s = s + 1
                                continue 
                            require (5 * idx) + 4 < mem[96]
                            mem[(32 * (5 * idx) + 4) + 128] = address(ext_call.return_data[0])
                            _6257 = mem[_3396 + _3972]
                            s = 0
                            while s < _6257:
                                require s < mem[_3396 + _3972]
                                require (16 * idx) + s < mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160]
                                mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + (32 * (16 * idx) + s) + 192] = mem[(32 * s) + _3396 + _3972 + 32]
                                _6257 = mem[_3396 + _3972]
                                s = s + 1
                                continue 
                            require idx < mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128]
                            mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * idx) + 160] = bool(_3971)
                            require idx < mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738]
                            mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + (32 * idx) + 770] = address(ext_call.return_data[0])
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 128
                        mem[mem[64] + 128] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738]
                        _2707 = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738]
                        mem[mem[64] + 160 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738])] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 770 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738])]
                        mem[mem[64] + 32] = (32 * _2707) + 160
                        mem[(32 * _2707) + mem[64] + 160] = mem[96]
                        _5106 = mem[96]
                        mem[(32 * _2707) + mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                        mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2707) + 192
                        mem[(32 * mem[96]) + (32 * _2707) + mem[64] + 192] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128]
                        _6514 = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128]
                        mem[(32 * mem[96]) + (32 * _2707) + mem[64] + 224 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128])] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 160 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128])]
                        mem[mem[64] + 96] = (32 * _6514) + (32 * mem[96]) + (32 * _2707) + 224
                        mem[(32 * _6514) + (32 * mem[96]) + (32 * _2707) + mem[64] + 224] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160]
                        _7250 = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160]
                        mem[(32 * _6514) + (32 * _5106) + (32 * _2707) + mem[64] + 256 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160])] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 192 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160])]
                        return 128, (32 * _2707) + 160, mem[mem[64] + 64 len (32 * _7250) + (32 * _6514) + (32 * _5106) + (32 * _2707) + 192]
                    mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 770 len 32 * arg2 + -arg1 + 1] = code.data[11526 len 32 * arg2 + -arg1 + 1]
                    idx = 0
                    while idx < arg2 + -arg1 + 1:
                        require ext_code.size(operatorAddress)
                        staticcall operatorAddress.0x95a25efa with:
                                gas gas_remaining wei
                               args (arg1 + idx)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64]] = 0x8f35a75e00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
                        require ext_code.size(operatorAddress)
                        staticcall operatorAddress.getInvestor(address arg1) with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3400 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _3506 = mem[_3400]
                        require mem[_3400] <= 4294967296
                        require mem[_3400] + 32 <= return_data.size
                        require mem[_3400 + mem[_3400]] <= 4294967296 and mem[_3400] + (32 * mem[_3400 + mem[_3400]]) + 32 <= return_data.size
                        _3975 = mem[_3400 + 32]
                        _3976 = mem[_3400 + 64]
                        require mem[_3400 + 64] <= 4294967296
                        require mem[_3400 + 64] + 32 <= return_data.size
                        require mem[_3400 + mem[_3400 + 64]] <= 4294967296 and mem[_3400 + 64] + (32 * mem[_3400 + mem[_3400 + 64]]) + 32 <= return_data.size
                        _4850 = mem[_3400 + mem[_3400]]
                        s = 0
                        while s < _4850:
                            require s < mem[_3400 + _3506]
                            require (5 * idx) + s < mem[96]
                            mem[(32 * (5 * idx) + s) + 128] = mem[(32 * s) + _3400 + _3506 + 44 len 20]
                            s = s + 1
                            continue 
                        require (5 * idx) + 4 < mem[96]
                        mem[(32 * (5 * idx) + 4) + 128] = address(ext_call.return_data[0])
                        _6258 = mem[_3400 + _3976]
                        s = 0
                        while s < _6258:
                            require s < mem[_3400 + _3976]
                            require (16 * idx) + s < mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160]
                            mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + (32 * (16 * idx) + s) + 192] = mem[(32 * s) + _3400 + _3976 + 32]
                            _6258 = mem[_3400 + _3976]
                            s = s + 1
                            continue 
                        require idx < mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128]
                        mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * idx) + 160] = bool(_3975)
                        require idx < mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738]
                        mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + (32 * idx) + 770] = address(ext_call.return_data[0])
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 128
                    mem[mem[64] + 128] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738]
                    _2710 = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738]
                    mem[mem[64] + 160 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738])] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 770 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738])]
                    mem[mem[64] + 32] = (32 * _2710) + 160
                    mem[(32 * _2710) + mem[64] + 160] = mem[96]
                    mem[(32 * _2710) + mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                    mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2710) + 192
                    mem[(32 * mem[96]) + (32 * _2710) + mem[64] + 192] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128]
                    _6519 = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128]
                    mem[(32 * mem[96]) + (32 * _2710) + mem[64] + 224 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128])] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 160 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128])]
                    mem[mem[64] + 96] = (32 * _6519) + (32 * mem[96]) + (32 * _2710) + 224
                    mem[(32 * _6519) + (32 * mem[96]) + (32 * _2710) + mem[64] + 224] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160]
                    _7253 = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160]
                    mem[(32 * _6519) + (32 * mem[96]) + (32 * _2710) + mem[64] + 256 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160])] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 192 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160])]
                    return Array(len=mem[mem[64] + 128 len (32 * _2710) + 32], data=mem[96], mem[mem[64] + (32 * _2710) + 192 len (32 * _7253) + (32 * _6519) + (32 * mem[96]) + 64]), 
                           (32 * _2710) + 160,
                           (32 * mem[96]) + (32 * _2710) + 192,
                           (32 * _6519) + (32 * mem[96]) + (32 * _2710) + 224
                mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 192 len 512 * arg2 + -arg1 + 1] = code.data[11526 len 512 * arg2 + -arg1 + 1]
                mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738] = arg2 + -arg1 + 1
                mem[64] = (32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + (32 * arg2 + -arg1 + 1) + 770
                if not arg2 + -arg1 + 1:
                    idx = 0
                    while idx < arg2 + -arg1 + 1:
                        require ext_code.size(operatorAddress)
                        staticcall operatorAddress.0x95a25efa with:
                                gas gas_remaining wei
                               args (arg1 + idx)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64]] = 0x8f35a75e00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
                        require ext_code.size(operatorAddress)
                        staticcall operatorAddress.getInvestor(address arg1) with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3404 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _3507 = mem[_3404]
                        require mem[_3404] <= 4294967296
                        require mem[_3404] + 32 <= return_data.size
                        require mem[_3404 + mem[_3404]] <= 4294967296 and mem[_3404] + (32 * mem[_3404 + mem[_3404]]) + 32 <= return_data.size
                        _3979 = mem[_3404 + 32]
                        _3980 = mem[_3404 + 64]
                        require mem[_3404 + 64] <= 4294967296
                        require mem[_3404 + 64] + 32 <= return_data.size
                        require mem[_3404 + mem[_3404 + 64]] <= 4294967296 and mem[_3404 + 64] + (32 * mem[_3404 + mem[_3404 + 64]]) + 32 <= return_data.size
                        _4851 = mem[_3404 + mem[_3404]]
                        s = 0
                        while s < _4851:
                            require s < mem[_3404 + _3507]
                            require (5 * idx) + s < mem[96]
                            mem[(32 * (5 * idx) + s) + 128] = mem[(32 * s) + _3404 + _3507 + 44 len 20]
                            s = s + 1
                            continue 
                        require (5 * idx) + 4 < mem[96]
                        mem[(32 * (5 * idx) + 4) + 128] = address(ext_call.return_data[0])
                        _6259 = mem[_3404 + _3980]
                        s = 0
                        while s < _6259:
                            require s < mem[_3404 + _3980]
                            require (16 * idx) + s < mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160]
                            mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + (32 * (16 * idx) + s) + 192] = mem[(32 * s) + _3404 + _3980 + 32]
                            _6259 = mem[_3404 + _3980]
                            s = s + 1
                            continue 
                        require idx < mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128]
                        mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * idx) + 160] = bool(_3979)
                        require idx < mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738]
                        mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + (32 * idx) + 770] = address(ext_call.return_data[0])
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 128
                    mem[mem[64] + 128] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738]
                    _2713 = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738]
                    mem[mem[64] + 160 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738])] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 770 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738])]
                    mem[mem[64] + 32] = (32 * _2713) + 160
                    mem[(32 * _2713) + mem[64] + 160] = mem[96]
                    _5116 = mem[96]
                    mem[(32 * _2713) + mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                    mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2713) + 192
                    mem[(32 * mem[96]) + (32 * _2713) + mem[64] + 192] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128]
                    _6524 = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128]
                    mem[(32 * mem[96]) + (32 * _2713) + mem[64] + 224 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128])] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 160 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128])]
                    mem[mem[64] + 96] = (32 * _6524) + (32 * mem[96]) + (32 * _2713) + 224
                    mem[(32 * _6524) + (32 * mem[96]) + (32 * _2713) + mem[64] + 224] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160]
                    _7256 = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160]
                    mem[(32 * _6524) + (32 * _5116) + (32 * _2713) + mem[64] + 256 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160])] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 192 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160])]
                    return 128, (32 * _2713) + 160, mem[mem[64] + 64 len (32 * _7256) + (32 * _6524) + (32 * _5116) + (32 * _2713) + 192]
                mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 770 len 32 * arg2 + -arg1 + 1] = code.data[11526 len 32 * arg2 + -arg1 + 1]
                idx = 0
                while idx < arg2 + -arg1 + 1:
                    require ext_code.size(operatorAddress)
                    staticcall operatorAddress.0x95a25efa with:
                            gas gas_remaining wei
                           args (arg1 + idx)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64]] = 0x8f35a75e00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(ext_call.return_data[0])
                    require ext_code.size(operatorAddress)
                    staticcall operatorAddress.getInvestor(address arg1) with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3408 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _3508 = mem[_3408]
                    require mem[_3408] <= 4294967296
                    require mem[_3408] + 32 <= return_data.size
                    require mem[_3408 + mem[_3408]] <= 4294967296 and mem[_3408] + (32 * mem[_3408 + mem[_3408]]) + 32 <= return_data.size
                    _3983 = mem[_3408 + 32]
                    _3984 = mem[_3408 + 64]
                    require mem[_3408 + 64] <= 4294967296
                    require mem[_3408 + 64] + 32 <= return_data.size
                    require mem[_3408 + mem[_3408 + 64]] <= 4294967296 and mem[_3408 + 64] + (32 * mem[_3408 + mem[_3408 + 64]]) + 32 <= return_data.size
                    _4852 = mem[_3408 + mem[_3408]]
                    s = 0
                    while s < _4852:
                        require s < mem[_3408 + _3508]
                        require (5 * idx) + s < mem[96]
                        mem[(32 * (5 * idx) + s) + 128] = mem[(32 * s) + _3408 + _3508 + 44 len 20]
                        s = s + 1
                        continue 
                    require (5 * idx) + 4 < mem[96]
                    mem[(32 * (5 * idx) + 4) + 128] = address(ext_call.return_data[0])
                    _6260 = mem[_3408 + _3984]
                    s = 0
                    while s < _6260:
                        require s < mem[_3408 + _3984]
                        require (16 * idx) + s < mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160]
                        mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + (32 * (16 * idx) + s) + 192] = mem[(32 * s) + _3408 + _3984 + 32]
                        _6260 = mem[_3408 + _3984]
                        s = s + 1
                        continue 
                    require idx < mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128]
                    mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * idx) + 160] = bool(_3983)
                    require idx < mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738]
                    mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + (32 * idx) + 770] = address(ext_call.return_data[0])
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 128
                mem[mem[64] + 128] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738]
                _2716 = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738]
                mem[mem[64] + 160 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738])] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 770 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738])]
                mem[mem[64] + 32] = (32 * _2716) + 160
                mem[(32 * _2716) + mem[64] + 160] = mem[96]
                mem[(32 * _2716) + mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2716) + 192
                mem[(32 * mem[96]) + (32 * _2716) + mem[64] + 192] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128]
                _6529 = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128]
                mem[(32 * mem[96]) + (32 * _2716) + mem[64] + 224 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128])] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 160 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128])]
                mem[mem[64] + 96] = (32 * _6529) + (32 * mem[96]) + (32 * _2716) + 224
                mem[(32 * _6529) + (32 * mem[96]) + (32 * _2716) + mem[64] + 224] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160]
                _7259 = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160]
                mem[(32 * _6529) + (32 * mem[96]) + (32 * _2716) + mem[64] + 256 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160])] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 192 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160])]
                return Array(len=mem[mem[64] + 128 len (32 * _2716) + 32], data=mem[96], mem[mem[64] + (32 * _2716) + 192 len (32 * _7259) + (32 * _6529) + (32 * mem[96]) + 64]), 
                       (32 * _2716) + 160,
                       (32 * mem[96]) + (32 * _2716) + 192,
                       (32 * _6529) + (32 * mem[96]) + (32 * _2716) + 224
            mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 160 len 32 * arg2 + -arg1 + 1] = code.data[11526 len 32 * arg2 + -arg1 + 1]
            mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160] = 16 * arg2 + -arg1 + 1
            if not Mask(252, 0, arg2 + -arg1 + 1):
                mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738] = arg2 + -arg1 + 1
                mem[64] = (32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + (32 * arg2 + -arg1 + 1) + 770
                if not arg2 + -arg1 + 1:
                    idx = 0
                    while idx < arg2 + -arg1 + 1:
                        require ext_code.size(operatorAddress)
                        staticcall operatorAddress.0x95a25efa with:
                                gas gas_remaining wei
                               args (arg1 + idx)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64]] = 0x8f35a75e00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
                        require ext_code.size(operatorAddress)
                        staticcall operatorAddress.getInvestor(address arg1) with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3412 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _3509 = mem[_3412]
                        require mem[_3412] <= 4294967296
                        require mem[_3412] + 32 <= return_data.size
                        require mem[_3412 + mem[_3412]] <= 4294967296 and mem[_3412] + (32 * mem[_3412 + mem[_3412]]) + 32 <= return_data.size
                        _3987 = mem[_3412 + 32]
                        _3988 = mem[_3412 + 64]
                        require mem[_3412 + 64] <= 4294967296
                        require mem[_3412 + 64] + 32 <= return_data.size
                        require mem[_3412 + mem[_3412 + 64]] <= 4294967296 and mem[_3412 + 64] + (32 * mem[_3412 + mem[_3412 + 64]]) + 32 <= return_data.size
                        _4853 = mem[_3412 + mem[_3412]]
                        s = 0
                        while s < _4853:
                            require s < mem[_3412 + _3509]
                            require (5 * idx) + s < mem[96]
                            mem[(32 * (5 * idx) + s) + 128] = mem[(32 * s) + _3412 + _3509 + 44 len 20]
                            s = s + 1
                            continue 
                        require (5 * idx) + 4 < mem[96]
                        mem[(32 * (5 * idx) + 4) + 128] = address(ext_call.return_data[0])
                        _6261 = mem[_3412 + _3988]
                        s = 0
                        while s < _6261:
                            require s < mem[_3412 + _3988]
                            require (16 * idx) + s < mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160]
                            mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + (32 * (16 * idx) + s) + 192] = mem[(32 * s) + _3412 + _3988 + 32]
                            _6261 = mem[_3412 + _3988]
                            s = s + 1
                            continue 
                        require idx < mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128]
                        mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * idx) + 160] = bool(_3987)
                        require idx < mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738]
                        mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + (32 * idx) + 770] = address(ext_call.return_data[0])
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 128
                    mem[mem[64] + 128] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738]
                    _2719 = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738]
                    mem[mem[64] + 160 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738])] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 770 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738])]
                    mem[mem[64] + 32] = (32 * _2719) + 160
                    mem[(32 * _2719) + mem[64] + 160] = mem[96]
                    _5126 = mem[96]
                    mem[(32 * _2719) + mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                    mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2719) + 192
                    mem[(32 * mem[96]) + (32 * _2719) + mem[64] + 192] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128]
                    _6534 = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128]
                    mem[(32 * mem[96]) + (32 * _2719) + mem[64] + 224 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128])] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 160 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128])]
                    mem[mem[64] + 96] = (32 * _6534) + (32 * mem[96]) + (32 * _2719) + 224
                    mem[(32 * _6534) + (32 * _5126) + (32 * _2719) + mem[64] + 224] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160]
                    _7262 = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160]
                    mem[(32 * _6534) + (32 * _5126) + (32 * _2719) + mem[64] + 256 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160])] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 192 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160])]
                    return 128, (32 * _2719) + 160, mem[mem[64] + 64 len (32 * _7262) + (32 * _6534) + (32 * _5126) + (32 * _2719) + 192]
                mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 770 len 32 * arg2 + -arg1 + 1] = code.data[11526 len 32 * arg2 + -arg1 + 1]
                idx = 0
                while idx < arg2 + -arg1 + 1:
                    require ext_code.size(operatorAddress)
                    staticcall operatorAddress.0x95a25efa with:
                            gas gas_remaining wei
                           args (arg1 + idx)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64]] = 0x8f35a75e00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(ext_call.return_data[0])
                    require ext_code.size(operatorAddress)
                    staticcall operatorAddress.getInvestor(address arg1) with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3416 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _3510 = mem[_3416]
                    require mem[_3416] <= 4294967296
                    require mem[_3416] + 32 <= return_data.size
                    require mem[_3416 + mem[_3416]] <= 4294967296 and mem[_3416] + (32 * mem[_3416 + mem[_3416]]) + 32 <= return_data.size
                    _3991 = mem[_3416 + 32]
                    _3992 = mem[_3416 + 64]
                    require mem[_3416 + 64] <= 4294967296
                    require mem[_3416 + 64] + 32 <= return_data.size
                    require mem[_3416 + mem[_3416 + 64]] <= 4294967296 and mem[_3416 + 64] + (32 * mem[_3416 + mem[_3416 + 64]]) + 32 <= return_data.size
                    _4854 = mem[_3416 + mem[_3416]]
                    s = 0
                    while s < _4854:
                        require s < mem[_3416 + _3510]
                        require (5 * idx) + s < mem[96]
                        mem[(32 * (5 * idx) + s) + 128] = mem[(32 * s) + _3416 + _3510 + 44 len 20]
                        s = s + 1
                        continue 
                    require (5 * idx) + 4 < mem[96]
                    mem[(32 * (5 * idx) + 4) + 128] = address(ext_call.return_data[0])
                    _6262 = mem[_3416 + _3992]
                    s = 0
                    while s < _6262:
                        require s < mem[_3416 + _3992]
                        require (16 * idx) + s < mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160]
                        mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + (32 * (16 * idx) + s) + 192] = mem[(32 * s) + _3416 + _3992 + 32]
                        _6262 = mem[_3416 + _3992]
                        s = s + 1
                        continue 
                    require idx < mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128]
                    mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * idx) + 160] = bool(_3991)
                    require idx < mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738]
                    mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + (32 * idx) + 770] = address(ext_call.return_data[0])
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 128
                mem[mem[64] + 128] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738]
                _2722 = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738]
                mem[mem[64] + 160 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738])] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 770 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738])]
                mem[mem[64] + 32] = (32 * _2722) + 160
                mem[(32 * _2722) + mem[64] + 160] = mem[96]
                _5131 = mem[96]
                mem[(32 * _2722) + mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2722) + 192
                mem[(32 * mem[96]) + (32 * _2722) + mem[64] + 192] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128]
                _6539 = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128]
                mem[(32 * mem[96]) + (32 * _2722) + mem[64] + 224 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128])] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 160 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128])]
                mem[mem[64] + 96] = (32 * _6539) + (32 * mem[96]) + (32 * _2722) + 224
                mem[(32 * _6539) + (32 * mem[96]) + (32 * _2722) + mem[64] + 224] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160]
                _7265 = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160]
                mem[(32 * _6539) + (32 * _5131) + (32 * _2722) + mem[64] + 256 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160])] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 192 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160])]
                return 128, (32 * _2722) + 160, mem[mem[64] + 64 len (32 * _7265) + (32 * _6539) + (32 * _5131) + (32 * _2722) + 192]
            mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 192 len 512 * arg2 + -arg1 + 1] = code.data[11526 len 512 * arg2 + -arg1 + 1]
            mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738] = arg2 + -arg1 + 1
            mem[64] = (32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + (32 * arg2 + -arg1 + 1) + 770
            if not arg2 + -arg1 + 1:
                idx = 0
                while idx < arg2 + -arg1 + 1:
                    require ext_code.size(operatorAddress)
                    staticcall operatorAddress.0x95a25efa with:
                            gas gas_remaining wei
                           args (arg1 + idx)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64]] = 0x8f35a75e00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(ext_call.return_data[0])
                    require ext_code.size(operatorAddress)
                    staticcall operatorAddress.getInvestor(address arg1) with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3420 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _3511 = mem[_3420]
                    require mem[_3420] <= 4294967296
                    require mem[_3420] + 32 <= return_data.size
                    require mem[_3420 + mem[_3420]] <= 4294967296 and mem[_3420] + (32 * mem[_3420 + mem[_3420]]) + 32 <= return_data.size
                    _3995 = mem[_3420 + 32]
                    _3996 = mem[_3420 + 64]
                    require mem[_3420 + 64] <= 4294967296
                    require mem[_3420 + 64] + 32 <= return_data.size
                    require mem[_3420 + mem[_3420 + 64]] <= 4294967296 and mem[_3420 + 64] + (32 * mem[_3420 + mem[_3420 + 64]]) + 32 <= return_data.size
                    _4855 = mem[_3420 + mem[_3420]]
                    s = 0
                    while s < _4855:
                        require s < mem[_3420 + _3511]
                        require (5 * idx) + s < mem[96]
                        mem[(32 * (5 * idx) + s) + 128] = mem[(32 * s) + _3420 + _3511 + 44 len 20]
                        s = s + 1
                        continue 
                    require (5 * idx) + 4 < mem[96]
                    mem[(32 * (5 * idx) + 4) + 128] = address(ext_call.return_data[0])
                    _6263 = mem[_3420 + _3996]
                    s = 0
                    while s < _6263:
                        require s < mem[_3420 + _3996]
                        require (16 * idx) + s < mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160]
                        mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + (32 * (16 * idx) + s) + 192] = mem[(32 * s) + _3420 + _3996 + 32]
                        _6263 = mem[_3420 + _3996]
                        s = s + 1
                        continue 
                    require idx < mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128]
                    mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * idx) + 160] = bool(_3995)
                    require idx < mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738]
                    mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + (32 * idx) + 770] = address(ext_call.return_data[0])
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 128
                mem[mem[64] + 128] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738]
                _2725 = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738]
                mem[mem[64] + 160 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738])] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 770 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738])]
                mem[mem[64] + 32] = (32 * _2725) + 160
                mem[(32 * _2725) + mem[64] + 160] = mem[96]
                _5136 = mem[96]
                mem[(32 * _2725) + mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2725) + 192
                mem[(32 * mem[96]) + (32 * _2725) + mem[64] + 192] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128]
                _6544 = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128]
                mem[(32 * mem[96]) + (32 * _2725) + mem[64] + 224 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128])] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 160 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128])]
                mem[mem[64] + 96] = (32 * _6544) + (32 * mem[96]) + (32 * _2725) + 224
                mem[(32 * _6544) + (32 * mem[96]) + (32 * _2725) + mem[64] + 224] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160]
                _7268 = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160]
                mem[(32 * _6544) + (32 * _5136) + (32 * _2725) + mem[64] + 256 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160])] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 192 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160])]
                return 128, (32 * _2725) + 160, mem[mem[64] + 64 len (32 * _7268) + (32 * _6544) + (32 * _5136) + (32 * _2725) + 192]
            mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 770 len 32 * arg2 + -arg1 + 1] = code.data[11526 len 32 * arg2 + -arg1 + 1]
            idx = 0
            while idx < arg2 + -arg1 + 1:
                require ext_code.size(operatorAddress)
                staticcall operatorAddress.0x95a25efa with:
                        gas gas_remaining wei
                       args (arg1 + idx)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64]] = 0x8f35a75e00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(ext_call.return_data[0])
                require ext_code.size(operatorAddress)
                staticcall operatorAddress.getInvestor(address arg1) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3424 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _3512 = mem[_3424]
                require mem[_3424] <= 4294967296
                require mem[_3424] + 32 <= return_data.size
                require mem[_3424 + mem[_3424]] <= 4294967296 and mem[_3424] + (32 * mem[_3424 + mem[_3424]]) + 32 <= return_data.size
                _3999 = mem[_3424 + 32]
                _4000 = mem[_3424 + 64]
                require mem[_3424 + 64] <= 4294967296
                require mem[_3424 + 64] + 32 <= return_data.size
                require mem[_3424 + mem[_3424 + 64]] <= 4294967296 and mem[_3424 + 64] + (32 * mem[_3424 + mem[_3424 + 64]]) + 32 <= return_data.size
                _4856 = mem[_3424 + mem[_3424]]
                s = 0
                while s < _4856:
                    require s < mem[_3424 + _3512]
                    require (5 * idx) + s < mem[96]
                    mem[(32 * (5 * idx) + s) + 128] = mem[(32 * s) + _3424 + _3512 + 44 len 20]
                    s = s + 1
                    continue 
                require (5 * idx) + 4 < mem[96]
                mem[(32 * (5 * idx) + 4) + 128] = address(ext_call.return_data[0])
                _6264 = mem[_3424 + _4000]
                s = 0
                while s < _6264:
                    require s < mem[_3424 + _4000]
                    require (16 * idx) + s < mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160]
                    mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + (32 * (16 * idx) + s) + 192] = mem[(32 * s) + _3424 + _4000 + 32]
                    _6264 = mem[_3424 + _4000]
                    s = s + 1
                    continue 
                require idx < mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128]
                mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * idx) + 160] = bool(_3999)
                require idx < mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738]
                mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + (32 * idx) + 770] = address(ext_call.return_data[0])
                idx = idx + 1
                continue 
            mem[mem[64]] = 128
            mem[mem[64] + 128] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738]
            _2728 = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738]
            mem[mem[64] + 160 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738])] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 770 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738])]
            mem[mem[64] + 32] = (32 * _2728) + 160
            mem[(32 * _2728) + mem[64] + 160] = mem[96]
            _5141 = mem[96]
            mem[(32 * _2728) + mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2728) + 192
            mem[(32 * mem[96]) + (32 * _2728) + mem[64] + 192] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128]
            _6549 = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128]
            mem[(32 * mem[96]) + (32 * _2728) + mem[64] + 224 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128])] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 160 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128])]
            mem[mem[64] + 96] = (32 * _6549) + (32 * mem[96]) + (32 * _2728) + 224
            mem[(32 * _6549) + (32 * mem[96]) + (32 * _2728) + mem[64] + 224] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160]
            _7271 = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160]
            mem[(32 * _6549) + (32 * _5141) + (32 * _2728) + mem[64] + 256 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160])] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 192 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160])]
            return 128, (32 * _2728) + 160, mem[mem[64] + 64 len (32 * _7271) + (32 * _6549) + (32 * _5141) + (32 * _2728) + 192]
        mem[128 len 32 * (5 * arg2) + (-5 * arg1) + 5] = code.data[11526 len 32 * (5 * arg2) + (-5 * arg1) + 5]
        mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128] = arg2 + -arg1 + 1
        if not arg2 + -arg1 + 1:
            mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160] = 16 * arg2 + -arg1 + 1
            if not Mask(252, 0, arg2 + -arg1 + 1):
                mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738] = arg2 + -arg1 + 1
                mem[64] = (32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + (32 * arg2 + -arg1 + 1) + 770
                if not arg2 + -arg1 + 1:
                    idx = 0
                    while idx < arg2 + -arg1 + 1:
                        require ext_code.size(operatorAddress)
                        staticcall operatorAddress.0x95a25efa with:
                                gas gas_remaining wei
                               args (arg1 + idx)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64]] = 0x8f35a75e00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
                        require ext_code.size(operatorAddress)
                        staticcall operatorAddress.getInvestor(address arg1) with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3428 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _3513 = mem[_3428]
                        require mem[_3428] <= 4294967296
                        require mem[_3428] + 32 <= return_data.size
                        require mem[_3428 + mem[_3428]] <= 4294967296 and mem[_3428] + (32 * mem[_3428 + mem[_3428]]) + 32 <= return_data.size
                        _4003 = mem[_3428 + 32]
                        _4004 = mem[_3428 + 64]
                        require mem[_3428 + 64] <= 4294967296
                        require mem[_3428 + 64] + 32 <= return_data.size
                        require mem[_3428 + mem[_3428 + 64]] <= 4294967296 and mem[_3428 + 64] + (32 * mem[_3428 + mem[_3428 + 64]]) + 32 <= return_data.size
                        _4857 = mem[_3428 + mem[_3428]]
                        s = 0
                        while s < _4857:
                            require s < mem[_3428 + _3513]
                            require (5 * idx) + s < mem[96]
                            mem[(32 * (5 * idx) + s) + 128] = mem[(32 * s) + _3428 + _3513 + 44 len 20]
                            s = s + 1
                            continue 
                        require (5 * idx) + 4 < mem[96]
                        mem[(32 * (5 * idx) + 4) + 128] = address(ext_call.return_data[0])
                        _6265 = mem[_3428 + _4004]
                        s = 0
                        while s < _6265:
                            require s < mem[_3428 + _4004]
                            require (16 * idx) + s < mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160]
                            mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + (32 * (16 * idx) + s) + 192] = mem[(32 * s) + _3428 + _4004 + 32]
                            _6265 = mem[_3428 + _4004]
                            s = s + 1
                            continue 
                        require idx < mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128]
                        mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * idx) + 160] = bool(_4003)
                        require idx < mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738]
                        mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + (32 * idx) + 770] = address(ext_call.return_data[0])
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 128
                    mem[mem[64] + 128] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738]
                    _2731 = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738]
                    mem[mem[64] + 160 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738])] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 770 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738])]
                    mem[mem[64] + 32] = (32 * _2731) + 160
                    mem[(32 * _2731) + mem[64] + 160] = mem[96]
                    mem[(32 * _2731) + mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                    mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2731) + 192
                    mem[(32 * mem[96]) + (32 * _2731) + mem[64] + 192] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128]
                    _6554 = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128]
                    mem[(32 * mem[96]) + (32 * _2731) + mem[64] + 224 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128])] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 160 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128])]
                    mem[mem[64] + 96] = (32 * _6554) + (32 * mem[96]) + (32 * _2731) + 224
                    mem[(32 * _6554) + (32 * mem[96]) + (32 * _2731) + mem[64] + 224] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160]
                    _7274 = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160]
                    mem[(32 * _6554) + (32 * mem[96]) + (32 * _2731) + mem[64] + 256 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160])] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 192 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160])]
                    return Array(len=mem[mem[64] + 128 len (32 * _2731) + 32], data=mem[96], mem[mem[64] + (32 * _2731) + 192 len (32 * _7274) + (32 * _6554) + (32 * mem[96]) + 64]), 
                           (32 * _2731) + 160,
                           (32 * mem[96]) + (32 * _2731) + 192,
                           (32 * _6554) + (32 * mem[96]) + (32 * _2731) + 224
                mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 770 len 32 * arg2 + -arg1 + 1] = code.data[11526 len 32 * arg2 + -arg1 + 1]
                idx = 0
                while idx < arg2 + -arg1 + 1:
                    require ext_code.size(operatorAddress)
                    staticcall operatorAddress.0x95a25efa with:
                            gas gas_remaining wei
                           args (arg1 + idx)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64]] = 0x8f35a75e00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(ext_call.return_data[0])
                    require ext_code.size(operatorAddress)
                    staticcall operatorAddress.getInvestor(address arg1) with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3432 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _3514 = mem[_3432]
                    require mem[_3432] <= 4294967296
                    require mem[_3432] + 32 <= return_data.size
                    require mem[_3432 + mem[_3432]] <= 4294967296 and mem[_3432] + (32 * mem[_3432 + mem[_3432]]) + 32 <= return_data.size
                    _4007 = mem[_3432 + 32]
                    _4008 = mem[_3432 + 64]
                    require mem[_3432 + 64] <= 4294967296
                    require mem[_3432 + 64] + 32 <= return_data.size
                    require mem[_3432 + mem[_3432 + 64]] <= 4294967296 and mem[_3432 + 64] + (32 * mem[_3432 + mem[_3432 + 64]]) + 32 <= return_data.size
                    _4858 = mem[_3432 + mem[_3432]]
                    s = 0
                    while s < _4858:
                        require s < mem[_3432 + _3514]
                        require (5 * idx) + s < mem[96]
                        mem[(32 * (5 * idx) + s) + 128] = mem[(32 * s) + _3432 + _3514 + 44 len 20]
                        s = s + 1
                        continue 
                    require (5 * idx) + 4 < mem[96]
                    mem[(32 * (5 * idx) + 4) + 128] = address(ext_call.return_data[0])
                    _6266 = mem[_3432 + _4008]
                    s = 0
                    while s < _6266:
                        require s < mem[_3432 + _4008]
                        require (16 * idx) + s < mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160]
                        mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + (32 * (16 * idx) + s) + 192] = mem[(32 * s) + _3432 + _4008 + 32]
                        _6266 = mem[_3432 + _4008]
                        s = s + 1
                        continue 
                    require idx < mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128]
                    mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * idx) + 160] = bool(_4007)
                    require idx < mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738]
                    mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + (32 * idx) + 770] = address(ext_call.return_data[0])
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 128
                mem[mem[64] + 128] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738]
                _2734 = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738]
                mem[mem[64] + 160 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738])] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 770 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738])]
                mem[mem[64] + 32] = (32 * _2734) + 160
                mem[(32 * _2734) + mem[64] + 160] = mem[96]
                _5151 = mem[96]
                mem[(32 * _2734) + mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2734) + 192
                mem[(32 * mem[96]) + (32 * _2734) + mem[64] + 192] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128]
                _6559 = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128]
                mem[(32 * mem[96]) + (32 * _2734) + mem[64] + 224 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128])] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 160 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128])]
                mem[mem[64] + 96] = (32 * _6559) + (32 * mem[96]) + (32 * _2734) + 224
                mem[(32 * _6559) + (32 * mem[96]) + (32 * _2734) + mem[64] + 224] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160]
                _7277 = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160]
                mem[(32 * _6559) + (32 * _5151) + (32 * _2734) + mem[64] + 256 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160])] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 192 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160])]
                return 128, (32 * _2734) + 160, mem[mem[64] + 64 len (32 * _7277) + (32 * _6559) + (32 * _5151) + (32 * _2734) + 192]
            mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 192 len 512 * arg2 + -arg1 + 1] = code.data[11526 len 512 * arg2 + -arg1 + 1]
            mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738] = arg2 + -arg1 + 1
            mem[64] = (32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + (32 * arg2 + -arg1 + 1) + 770
            if not arg2 + -arg1 + 1:
                idx = 0
                while idx < arg2 + -arg1 + 1:
                    require ext_code.size(operatorAddress)
                    staticcall operatorAddress.0x95a25efa with:
                            gas gas_remaining wei
                           args (arg1 + idx)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64]] = 0x8f35a75e00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(ext_call.return_data[0])
                    require ext_code.size(operatorAddress)
                    staticcall operatorAddress.getInvestor(address arg1) with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3436 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _3515 = mem[_3436]
                    require mem[_3436] <= 4294967296
                    require mem[_3436] + 32 <= return_data.size
                    require mem[_3436 + mem[_3436]] <= 4294967296 and mem[_3436] + (32 * mem[_3436 + mem[_3436]]) + 32 <= return_data.size
                    _4011 = mem[_3436 + 32]
                    _4012 = mem[_3436 + 64]
                    require mem[_3436 + 64] <= 4294967296
                    require mem[_3436 + 64] + 32 <= return_data.size
                    require mem[_3436 + mem[_3436 + 64]] <= 4294967296 and mem[_3436 + 64] + (32 * mem[_3436 + mem[_3436 + 64]]) + 32 <= return_data.size
                    _4859 = mem[_3436 + mem[_3436]]
                    s = 0
                    while s < _4859:
                        require s < mem[_3436 + _3515]
                        require (5 * idx) + s < mem[96]
                        mem[(32 * (5 * idx) + s) + 128] = mem[(32 * s) + _3436 + _3515 + 44 len 20]
                        s = s + 1
                        continue 
                    require (5 * idx) + 4 < mem[96]
                    mem[(32 * (5 * idx) + 4) + 128] = address(ext_call.return_data[0])
                    _6267 = mem[_3436 + _4012]
                    s = 0
                    while s < _6267:
                        require s < mem[_3436 + _4012]
                        require (16 * idx) + s < mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160]
                        mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + (32 * (16 * idx) + s) + 192] = mem[(32 * s) + _3436 + _4012 + 32]
                        _6267 = mem[_3436 + _4012]
                        s = s + 1
                        continue 
                    require idx < mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128]
                    mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * idx) + 160] = bool(_4011)
                    require idx < mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738]
                    mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + (32 * idx) + 770] = address(ext_call.return_data[0])
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 128
                mem[mem[64] + 128] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738]
                _2737 = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738]
                mem[mem[64] + 160 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738])] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 770 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738])]
                mem[mem[64] + 32] = (32 * _2737) + 160
                mem[(32 * _2737) + mem[64] + 160] = mem[96]
                mem[(32 * _2737) + mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2737) + 192
                mem[(32 * mem[96]) + (32 * _2737) + mem[64] + 192] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128]
                _6564 = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128]
                mem[(32 * mem[96]) + (32 * _2737) + mem[64] + 224 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128])] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 160 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128])]
                mem[mem[64] + 96] = (32 * _6564) + (32 * mem[96]) + (32 * _2737) + 224
                mem[(32 * _6564) + (32 * mem[96]) + (32 * _2737) + mem[64] + 224] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160]
                _7280 = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160]
                mem[(32 * _6564) + (32 * mem[96]) + (32 * _2737) + mem[64] + 256 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160])] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 192 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160])]
                return 128, (32 * _2737) + 160, mem[mem[64] + 64 len (32 * _7280) + (32 * _6564) + (32 * mem[96]) + (32 * _2737) + 192]
            mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 770 len 32 * arg2 + -arg1 + 1] = code.data[11526 len 32 * arg2 + -arg1 + 1]
            idx = 0
            while idx < arg2 + -arg1 + 1:
                require ext_code.size(operatorAddress)
                staticcall operatorAddress.0x95a25efa with:
                        gas gas_remaining wei
                       args (arg1 + idx)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64]] = 0x8f35a75e00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(ext_call.return_data[0])
                require ext_code.size(operatorAddress)
                staticcall operatorAddress.getInvestor(address arg1) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3440 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _3516 = mem[_3440]
                require mem[_3440] <= 4294967296
                require mem[_3440] + 32 <= return_data.size
                require mem[_3440 + mem[_3440]] <= 4294967296 and mem[_3440] + (32 * mem[_3440 + mem[_3440]]) + 32 <= return_data.size
                _4015 = mem[_3440 + 32]
                _4016 = mem[_3440 + 64]
                require mem[_3440 + 64] <= 4294967296
                require mem[_3440 + 64] + 32 <= return_data.size
                require mem[_3440 + mem[_3440 + 64]] <= 4294967296 and mem[_3440 + 64] + (32 * mem[_3440 + mem[_3440 + 64]]) + 32 <= return_data.size
                _4860 = mem[_3440 + mem[_3440]]
                s = 0
                while s < _4860:
                    require s < mem[_3440 + _3516]
                    require (5 * idx) + s < mem[96]
                    mem[(32 * (5 * idx) + s) + 128] = mem[(32 * s) + _3440 + _3516 + 44 len 20]
                    s = s + 1
                    continue 
                require (5 * idx) + 4 < mem[96]
                mem[(32 * (5 * idx) + 4) + 128] = address(ext_call.return_data[0])
                _6268 = mem[_3440 + _4016]
                s = 0
                while s < _6268:
                    require s < mem[_3440 + _4016]
                    require (16 * idx) + s < mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160]
                    mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + (32 * (16 * idx) + s) + 192] = mem[(32 * s) + _3440 + _4016 + 32]
                    _6268 = mem[_3440 + _4016]
                    s = s + 1
                    continue 
                require idx < mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128]
                mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * idx) + 160] = bool(_4015)
                require idx < mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738]
                mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + (32 * idx) + 770] = address(ext_call.return_data[0])
                idx = idx + 1
                continue 
            _2738 = mem[64]
            mem[mem[64]] = 128
            mem[mem[64] + 128] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738]
            _2740 = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738]
            mem[mem[64] + 160 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738])] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 770 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738])]
            mem[mem[64] + 32] = (32 * _2740) + 160
            mem[(32 * _2740) + mem[64] + 160] = mem[96]
            _5161 = mem[96]
            mem[(32 * _2740) + mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2740) + 192
            mem[(32 * _5161) + (32 * _2740) + _2738 + 192] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128]
            _6569 = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128]
            mem[(32 * _5161) + (32 * _2740) + _2738 + 224 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128])] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 160 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128])]
            mem[_2738 + 96] = (32 * _6569) + (32 * _5161) + (32 * _2740) + 224
            mem[(32 * _6569) + (32 * _5161) + (32 * _2740) + _2738 + 224] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160]
            _7283 = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160]
            mem[(32 * _6569) + (32 * _5161) + (32 * _2740) + _2738 + 256 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160])] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 192 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160])]
            return memory
              from mem[64]
               len (32 * _7283) + (32 * _6569) + (32 * _5161) + (32 * _2740) + _2738 + -mem[64] + 256
        mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 160 len 32 * arg2 + -arg1 + 1] = code.data[11526 len 32 * arg2 + -arg1 + 1]
        mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160] = 16 * arg2 + -arg1 + 1
        if not Mask(252, 0, arg2 + -arg1 + 1):
            mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738] = arg2 + -arg1 + 1
            mem[64] = (32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + (32 * arg2 + -arg1 + 1) + 770
            if arg2 + -arg1 + 1:
                mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 770 len 32 * arg2 + -arg1 + 1] = code.data[11526 len 32 * arg2 + -arg1 + 1]
                idx = 0
                while idx < arg2 + -arg1 + 1:
                    require ext_code.size(operatorAddress)
                    staticcall operatorAddress.0x95a25efa with:
                            gas gas_remaining wei
                           args (arg1 + idx)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64]] = 0x8f35a75e00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(ext_call.return_data[0])
                    require ext_code.size(operatorAddress)
                    staticcall operatorAddress.getInvestor(address arg1) with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3448 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _3518 = mem[_3448]
                    require mem[_3448] <= 4294967296
                    require mem[_3448] + 32 <= return_data.size
                    require mem[_3448 + mem[_3448]] <= 4294967296 and mem[_3448] + (32 * mem[_3448 + mem[_3448]]) + 32 <= return_data.size
                    _4023 = mem[_3448 + 32]
                    _4024 = mem[_3448 + 64]
                    require mem[_3448 + 64] <= 4294967296
                    require mem[_3448 + 64] + 32 <= return_data.size
                    require mem[_3448 + mem[_3448 + 64]] <= 4294967296 and mem[_3448 + 64] + (32 * mem[_3448 + mem[_3448 + 64]]) + 32 <= return_data.size
                    _4862 = mem[_3448 + mem[_3448]]
                    s = 0
                    while s < _4862:
                        require s < mem[_3448 + _3518]
                        require (5 * idx) + s < mem[96]
                        mem[(32 * (5 * idx) + s) + 128] = mem[(32 * s) + _3448 + _3518 + 44 len 20]
                        s = s + 1
                        continue 
                    require (5 * idx) + 4 < mem[96]
                    mem[(32 * (5 * idx) + 4) + 128] = address(ext_call.return_data[0])
                    _6270 = mem[_3448 + _4024]
                    s = 0
                    while s < _6270:
                        require s < mem[_3448 + _4024]
                        require (16 * idx) + s < mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160]
                        mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + (32 * (16 * idx) + s) + 192] = mem[(32 * s) + _3448 + _4024 + 32]
                        _6270 = mem[_3448 + _4024]
                        s = s + 1
                        continue 
                    require idx < mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128]
                    mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * idx) + 160] = bool(_4023)
                    require idx < mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738]
                    mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + (32 * idx) + 770] = address(ext_call.return_data[0])
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 128
                mem[mem[64] + 128] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738]
                _2746 = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738]
                mem[mem[64] + 160 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738])] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 770 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738])]
                mem[mem[64] + 32] = (32 * _2746) + 160
                mem[(32 * _2746) + mem[64] + 160] = mem[96]
                mem[(32 * _2746) + mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2746) + 192
                mem[(32 * mem[96]) + (32 * _2746) + mem[64] + 192] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128]
                _6579 = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128]
                mem[(32 * mem[96]) + (32 * _2746) + mem[64] + 224 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128])] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 160 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128])]
                mem[mem[64] + 96] = (32 * _6579) + (32 * mem[96]) + (32 * _2746) + 224
                mem[(32 * _6579) + (32 * mem[96]) + (32 * _2746) + mem[64] + 224] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160]
                _7289 = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160]
                mem[(32 * _6579) + (32 * mem[96]) + (32 * _2746) + mem[64] + 256 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160])] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 192 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160])]
                return Array(len=mem[mem[64] + 128 len (32 * _2746) + 32], data=mem[96], mem[mem[64] + (32 * _2746) + 192 len (32 * _7289) + (32 * _6579) + (32 * mem[96]) + 64]), 
                       (32 * _2746) + 160,
                       (32 * mem[96]) + (32 * _2746) + 192,
                       (32 * _6579) + (32 * mem[96]) + (32 * _2746) + 224
            idx = 0
            while idx < arg2 + -arg1 + 1:
                require ext_code.size(operatorAddress)
                staticcall operatorAddress.0x95a25efa with:
                        gas gas_remaining wei
                       args (arg1 + idx)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64]] = 0x8f35a75e00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(ext_call.return_data[0])
                require ext_code.size(operatorAddress)
                staticcall operatorAddress.getInvestor(address arg1) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3444 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _3517 = mem[_3444]
                require mem[_3444] <= 4294967296
                require mem[_3444] + 32 <= return_data.size
                require mem[_3444 + mem[_3444]] <= 4294967296 and mem[_3444] + (32 * mem[_3444 + mem[_3444]]) + 32 <= return_data.size
                _4019 = mem[_3444 + 32]
                _4020 = mem[_3444 + 64]
                require mem[_3444 + 64] <= 4294967296
                require mem[_3444 + 64] + 32 <= return_data.size
                require mem[_3444 + mem[_3444 + 64]] <= 4294967296 and mem[_3444 + 64] + (32 * mem[_3444 + mem[_3444 + 64]]) + 32 <= return_data.size
                _4861 = mem[_3444 + mem[_3444]]
                s = 0
                while s < _4861:
                    require s < mem[_3444 + _3517]
                    require (5 * idx) + s < mem[96]
                    mem[(32 * (5 * idx) + s) + 128] = mem[(32 * s) + _3444 + _3517 + 44 len 20]
                    s = s + 1
                    continue 
                require (5 * idx) + 4 < mem[96]
                mem[(32 * (5 * idx) + 4) + 128] = address(ext_call.return_data[0])
                _6269 = mem[_3444 + _4020]
                s = 0
                while s < _6269:
                    require s < mem[_3444 + _4020]
                    require (16 * idx) + s < mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160]
                    mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + (32 * (16 * idx) + s) + 192] = mem[(32 * s) + _3444 + _4020 + 32]
                    _6269 = mem[_3444 + _4020]
                    s = s + 1
                    continue 
                require idx < mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128]
                mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * idx) + 160] = bool(_4019)
                require idx < mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738]
                mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + (32 * idx) + 770] = address(ext_call.return_data[0])
                idx = idx + 1
                continue 
            _2741 = mem[64]
            mem[mem[64]] = 128
            mem[mem[64] + 128] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738]
            _2743 = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738]
            mem[mem[64] + 160 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738])] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 770 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738])]
            mem[mem[64] + 32] = (32 * _2743) + 160
            mem[(32 * _2743) + mem[64] + 160] = mem[96]
            _5166 = mem[96]
            mem[(32 * _2743) + mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2743) + 192
            mem[(32 * _5166) + (32 * _2743) + _2741 + 192] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128]
            _6574 = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128]
            mem[(32 * _5166) + (32 * _2743) + _2741 + 224 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128])] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 160 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128])]
            mem[_2741 + 96] = (32 * _6574) + (32 * _5166) + (32 * _2743) + 224
            mem[(32 * _6574) + (32 * _5166) + (32 * _2743) + _2741 + 224] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160]
            _7286 = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160]
            mem[(32 * _6574) + (32 * _5166) + (32 * _2743) + _2741 + 256 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160])] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 192 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160])]
            return memory
              from mem[64]
               len (32 * _7286) + (32 * _6574) + (32 * _5166) + (32 * _2743) + _2741 + -mem[64] + 256
        mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 192 len 512 * arg2 + -arg1 + 1] = code.data[11526 len 512 * arg2 + -arg1 + 1]
        mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738] = arg2 + -arg1 + 1
        mem[64] = (32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + (32 * arg2 + -arg1 + 1) + 770
        if not arg2 + -arg1 + 1:
            idx = 0
            while idx < arg2 + -arg1 + 1:
                require ext_code.size(operatorAddress)
                staticcall operatorAddress.0x95a25efa with:
                        gas gas_remaining wei
                       args (arg1 + idx)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64]] = 0x8f35a75e00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(ext_call.return_data[0])
                require ext_code.size(operatorAddress)
                staticcall operatorAddress.getInvestor(address arg1) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3452 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _3519 = mem[_3452]
                require mem[_3452] <= 4294967296
                require mem[_3452] + 32 <= return_data.size
                require mem[_3452 + mem[_3452]] <= 4294967296 and mem[_3452] + (32 * mem[_3452 + mem[_3452]]) + 32 <= return_data.size
                _4027 = mem[_3452 + 32]
                _4028 = mem[_3452 + 64]
                require mem[_3452 + 64] <= 4294967296
                require mem[_3452 + 64] + 32 <= return_data.size
                require mem[_3452 + mem[_3452 + 64]] <= 4294967296 and mem[_3452 + 64] + (32 * mem[_3452 + mem[_3452 + 64]]) + 32 <= return_data.size
                _4863 = mem[_3452 + mem[_3452]]
                s = 0
                while s < _4863:
                    require s < mem[_3452 + _3519]
                    require (5 * idx) + s < mem[96]
                    mem[(32 * (5 * idx) + s) + 128] = mem[(32 * s) + _3452 + _3519 + 44 len 20]
                    s = s + 1
                    continue 
                require (5 * idx) + 4 < mem[96]
                mem[(32 * (5 * idx) + 4) + 128] = address(ext_call.return_data[0])
                _6271 = mem[_3452 + _4028]
                s = 0
                while s < _6271:
                    require s < mem[_3452 + _4028]
                    require (16 * idx) + s < mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160]
                    mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + (32 * (16 * idx) + s) + 192] = mem[(32 * s) + _3452 + _4028 + 32]
                    _6271 = mem[_3452 + _4028]
                    s = s + 1
                    continue 
                require idx < mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128]
                mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * idx) + 160] = bool(_4027)
                require idx < mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738]
                mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + (32 * idx) + 770] = address(ext_call.return_data[0])
                idx = idx + 1
                continue 
            mem[mem[64]] = 128
            mem[mem[64] + 128] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738]
            _2749 = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738]
            mem[mem[64] + 160 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738])] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 770 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738])]
            mem[mem[64] + 32] = (32 * _2749) + 160
            mem[(32 * _2749) + mem[64] + 160] = mem[96]
            mem[(32 * _2749) + mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2749) + 192
            mem[(32 * mem[96]) + (32 * _2749) + mem[64] + 192] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128]
            _6584 = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128]
            mem[(32 * mem[96]) + (32 * _2749) + mem[64] + 224 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128])] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 160 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128])]
            mem[mem[64] + 96] = (32 * _6584) + (32 * mem[96]) + (32 * _2749) + 224
            mem[(32 * _6584) + (32 * mem[96]) + (32 * _2749) + mem[64] + 224] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160]
            _7292 = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160]
            mem[(32 * _6584) + (32 * mem[96]) + (32 * _2749) + mem[64] + 256 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160])] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 192 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160])]
            return Array(len=mem[mem[64] + 128 len (32 * _2749) + 32], data=mem[96], mem[mem[64] + (32 * _2749) + 192 len (32 * _7292) + (32 * _6584) + (32 * mem[96]) + 64]), 
                   (32 * _2749) + 160,
                   (32 * mem[96]) + (32 * _2749) + 192,
                   (32 * _6584) + (32 * mem[96]) + (32 * _2749) + 224
        mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 770 len 32 * arg2 + -arg1 + 1] = code.data[11526 len 32 * arg2 + -arg1 + 1]
        idx = 0
        while idx < arg2 + -arg1 + 1:
            require ext_code.size(operatorAddress)
            staticcall operatorAddress.0x95a25efa with:
                    gas gas_remaining wei
                   args (arg1 + idx)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64]] = 0x8f35a75e00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(ext_call.return_data[0])
            require ext_code.size(operatorAddress)
            staticcall operatorAddress.getInvestor(address arg1) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3456 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _3520 = mem[_3456]
            require mem[_3456] <= 4294967296
            require mem[_3456] + 32 <= return_data.size
            require mem[_3456 + mem[_3456]] <= 4294967296 and mem[_3456] + (32 * mem[_3456 + mem[_3456]]) + 32 <= return_data.size
            _4031 = mem[_3456 + 32]
            _4032 = mem[_3456 + 64]
            require mem[_3456 + 64] <= 4294967296
            require mem[_3456 + 64] + 32 <= return_data.size
            require mem[_3456 + mem[_3456 + 64]] <= 4294967296 and mem[_3456 + 64] + (32 * mem[_3456 + mem[_3456 + 64]]) + 32 <= return_data.size
            _4864 = mem[_3456 + mem[_3456]]
            s = 0
            while s < _4864:
                require s < mem[_3456 + _3520]
                require (5 * idx) + s < mem[96]
                mem[(32 * (5 * idx) + s) + 128] = mem[(32 * s) + _3456 + _3520 + 44 len 20]
                s = s + 1
                continue 
            require (5 * idx) + 4 < mem[96]
            mem[(32 * (5 * idx) + 4) + 128] = address(ext_call.return_data[0])
            _6272 = mem[_3456 + _4032]
            s = 0
            while s < _6272:
                require s < mem[_3456 + _4032]
                require (16 * idx) + s < mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160]
                mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + (32 * (16 * idx) + s) + 192] = mem[(32 * s) + _3456 + _4032 + 32]
                _6272 = mem[_3456 + _4032]
                s = s + 1
                continue 
            require idx < mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128]
            mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * idx) + 160] = bool(_4031)
            require idx < mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738]
            mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + (32 * idx) + 770] = address(ext_call.return_data[0])
            idx = idx + 1
            continue 
        mem[mem[64]] = 128
        mem[mem[64] + 128] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738]
        _2752 = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738]
        mem[mem[64] + 160 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738])] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 770 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (546 * arg2) + (-546 * arg1) + 738])]
        mem[mem[64] + 32] = (32 * _2752) + 160
        mem[(32 * _2752) + mem[64] + 160] = mem[96]
        _5181 = mem[96]
        mem[(32 * _2752) + mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2752) + 192
        mem[(32 * mem[96]) + (32 * _2752) + mem[64] + 192] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128]
        _6589 = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128]
        mem[(32 * mem[96]) + (32 * _2752) + mem[64] + 224 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128])] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 160 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + 128])]
        mem[mem[64] + 96] = (32 * _6589) + (32 * mem[96]) + (32 * _2752) + 224
        mem[(32 * _6589) + (32 * mem[96]) + (32 * _2752) + mem[64] + 224] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160]
        _7295 = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160]
        mem[(32 * _6589) + (32 * _5181) + (32 * _2752) + mem[64] + 256 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160])] = mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 192 len floor32(mem[(32 * (5 * arg2) + (-5 * arg1) + 5) + (32 * arg2 + -arg1 + 1) + 160])]
        return 128, (32 * _2752) + 160, mem[mem[64] + 64 len (32 * _7295) + (32 * _6589) + (32 * _5181) + (32 * _2752) + 192]
    if arg2 > ext_call.return_data[0] - 1:
        mem[96] = 5 * ext_call.return_data[0]
        if not 5 * ext_call.return_data[0]:
            mem[(32 * 5 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
            if not ext_call.return_data[0]:
                mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160] = 16 * ext_call.return_data[0]
                if not Mask(252, 0, ext_call.return_data[0]):
                    mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192] = ext_call.return_data[0]
                    mem[64] = (32 * 5 * ext_call.return_data[0]) + (579 * ext_call.return_data[0]) + 224
                    if not ext_call.return_data[0]:
                        idx = 0
                        while idx < ext_call.return_data[0]:
                            require ext_code.size(operatorAddress)
                            staticcall operatorAddress.0x95a25efa with:
                                    gas gas_remaining wei
                                   args idx
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64]] = 0x8f35a75e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            require ext_code.size(operatorAddress)
                            staticcall operatorAddress.getInvestor(address arg1) with:
                                    gas gas_remaining wei
                                   args address(ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3204 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _3457 = mem[_3204]
                            require mem[_3204] <= 4294967296
                            require mem[_3204] + 32 <= return_data.size
                            require mem[_3204 + mem[_3204]] <= 4294967296 and mem[_3204] + (32 * mem[_3204 + mem[_3204]]) + 32 <= return_data.size
                            _3779 = mem[_3204 + 32]
                            _3780 = mem[_3204 + 64]
                            require mem[_3204 + 64] <= 4294967296
                            require mem[_3204 + 64] + 32 <= return_data.size
                            require mem[_3204 + mem[_3204 + 64]] <= 4294967296 and mem[_3204 + 64] + (32 * mem[_3204 + mem[_3204 + 64]]) + 32 <= return_data.size
                            _4801 = mem[_3204 + mem[_3204]]
                            s = 0
                            while s < _4801:
                                require s < mem[_3204 + _3457]
                                require (5 * idx) + s < mem[96]
                                mem[(32 * (5 * idx) + s) + 128] = mem[(32 * s) + _3204 + _3457 + 44 len 20]
                                s = s + 1
                                continue 
                            require (5 * idx) + 4 < mem[96]
                            mem[(32 * (5 * idx) + 4) + 128] = address(ext_call.return_data[0])
                            _6209 = mem[_3204 + _3780]
                            s = 0
                            while s < _6209:
                                require s < mem[_3204 + _3780]
                                require (16 * idx) + s < mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160]
                                mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + (32 * (16 * idx) + s) + 192] = mem[(32 * s) + _3204 + _3780 + 32]
                                _6209 = mem[_3204 + _3780]
                                s = s + 1
                                continue 
                            require idx < mem[(32 * 5 * ext_call.return_data[0]) + 128]
                            mem[(32 * 5 * ext_call.return_data[0]) + (32 * idx) + 160] = bool(_3779)
                            require idx < mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192]
                            mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + (32 * idx) + 224] = address(ext_call.return_data[0])
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 128
                        mem[mem[64] + 128] = mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192]
                        _2563 = mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192]
                        mem[mem[64] + 160 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192])] = mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 224 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192])]
                        mem[mem[64] + 32] = (32 * _2563) + 160
                        mem[(32 * _2563) + mem[64] + 160] = mem[96]
                        mem[(32 * _2563) + mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                        mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2563) + 192
                        mem[(32 * mem[96]) + (32 * _2563) + mem[64] + 192] = mem[(32 * 5 * ext_call.return_data[0]) + 128]
                        _6274 = mem[(32 * 5 * ext_call.return_data[0]) + 128]
                        mem[(32 * mem[96]) + (32 * _2563) + mem[64] + 224 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + 128])] = mem[(32 * 5 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + 128])]
                        mem[mem[64] + 96] = (32 * _6274) + (32 * mem[96]) + (32 * _2563) + 224
                        mem[(32 * _6274) + (32 * mem[96]) + (32 * _2563) + mem[64] + 224] = mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160]
                        _7106 = mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160]
                        mem[(32 * _6274) + (32 * mem[96]) + (32 * _2563) + mem[64] + 256 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160])] = mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 192 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160])]
                        return Array(len=mem[mem[64] + 128 len (32 * _2563) + 32], data=mem[96], mem[mem[64] + (32 * _2563) + 192 len (32 * _7106) + (32 * _6274) + (32 * mem[96]) + 64]), 
                               (32 * _2563) + 160,
                               (32 * mem[96]) + (32 * _2563) + 192,
                               (32 * _6274) + (32 * mem[96]) + (32 * _2563) + 224
                    mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 224 len 32 * ext_call.return_data[0]] = code.data[11526 len 32 * ext_call.return_data[0]]
                    idx = 0
                    while idx < ext_call.return_data[0]:
                        require ext_code.size(operatorAddress)
                        staticcall operatorAddress.0x95a25efa with:
                                gas gas_remaining wei
                               args idx
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64]] = 0x8f35a75e00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
                        require ext_code.size(operatorAddress)
                        staticcall operatorAddress.getInvestor(address arg1) with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3208 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _3458 = mem[_3208]
                        require mem[_3208] <= 4294967296
                        require mem[_3208] + 32 <= return_data.size
                        require mem[_3208 + mem[_3208]] <= 4294967296 and mem[_3208] + (32 * mem[_3208 + mem[_3208]]) + 32 <= return_data.size
                        _3783 = mem[_3208 + 32]
                        _3784 = mem[_3208 + 64]
                        require mem[_3208 + 64] <= 4294967296
                        require mem[_3208 + 64] + 32 <= return_data.size
                        require mem[_3208 + mem[_3208 + 64]] <= 4294967296 and mem[_3208 + 64] + (32 * mem[_3208 + mem[_3208 + 64]]) + 32 <= return_data.size
                        _4802 = mem[_3208 + mem[_3208]]
                        s = 0
                        while s < _4802:
                            require s < mem[_3208 + _3458]
                            require (5 * idx) + s < mem[96]
                            mem[(32 * (5 * idx) + s) + 128] = mem[(32 * s) + _3208 + _3458 + 44 len 20]
                            s = s + 1
                            continue 
                        require (5 * idx) + 4 < mem[96]
                        mem[(32 * (5 * idx) + 4) + 128] = address(ext_call.return_data[0])
                        _6210 = mem[_3208 + _3784]
                        s = 0
                        while s < _6210:
                            require s < mem[_3208 + _3784]
                            require (16 * idx) + s < mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160]
                            mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + (32 * (16 * idx) + s) + 192] = mem[(32 * s) + _3208 + _3784 + 32]
                            _6210 = mem[_3208 + _3784]
                            s = s + 1
                            continue 
                        require idx < mem[(32 * 5 * ext_call.return_data[0]) + 128]
                        mem[(32 * 5 * ext_call.return_data[0]) + (32 * idx) + 160] = bool(_3783)
                        require idx < mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192]
                        mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + (32 * idx) + 224] = address(ext_call.return_data[0])
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 128
                    mem[mem[64] + 128] = mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192]
                    _2566 = mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192]
                    mem[mem[64] + 160 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192])] = mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 224 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192])]
                    mem[mem[64] + 32] = (32 * _2566) + 160
                    mem[(32 * _2566) + mem[64] + 160] = mem[96]
                    mem[(32 * _2566) + mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                    mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2566) + 192
                    mem[(32 * mem[96]) + (32 * _2566) + mem[64] + 192] = mem[(32 * 5 * ext_call.return_data[0]) + 128]
                    _6279 = mem[(32 * 5 * ext_call.return_data[0]) + 128]
                    mem[(32 * mem[96]) + (32 * _2566) + mem[64] + 224 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + 128])] = mem[(32 * 5 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + 128])]
                    mem[mem[64] + 96] = (32 * _6279) + (32 * mem[96]) + (32 * _2566) + 224
                    mem[(32 * _6279) + (32 * mem[96]) + (32 * _2566) + mem[64] + 224] = mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160]
                    _7109 = mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160]
                    mem[(32 * _6279) + (32 * mem[96]) + (32 * _2566) + mem[64] + 256 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160])] = mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 192 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160])]
                    return Array(len=mem[mem[64] + 128 len (32 * _2566) + 32], data=mem[96], mem[mem[64] + (32 * _2566) + 192 len (32 * _7109) + (32 * _6279) + (32 * mem[96]) + 64]), 
                           (32 * _2566) + 160,
                           (32 * mem[96]) + (32 * _2566) + 192,
                           (32 * _6279) + (32 * mem[96]) + (32 * _2566) + 224
                mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 192 len 512 * ext_call.return_data[0]] = code.data[11526 len 512 * ext_call.return_data[0]]
                mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192] = ext_call.return_data[0]
                mem[64] = (32 * 5 * ext_call.return_data[0]) + (579 * ext_call.return_data[0]) + 224
                if not ext_call.return_data[0]:
                    idx = 0
                    while idx < ext_call.return_data[0]:
                        require ext_code.size(operatorAddress)
                        staticcall operatorAddress.0x95a25efa with:
                                gas gas_remaining wei
                               args idx
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64]] = 0x8f35a75e00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
                        require ext_code.size(operatorAddress)
                        staticcall operatorAddress.getInvestor(address arg1) with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3212 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _3459 = mem[_3212]
                        require mem[_3212] <= 4294967296
                        require mem[_3212] + 32 <= return_data.size
                        require mem[_3212 + mem[_3212]] <= 4294967296 and mem[_3212] + (32 * mem[_3212 + mem[_3212]]) + 32 <= return_data.size
                        _3787 = mem[_3212 + 32]
                        _3788 = mem[_3212 + 64]
                        require mem[_3212 + 64] <= 4294967296
                        require mem[_3212 + 64] + 32 <= return_data.size
                        require mem[_3212 + mem[_3212 + 64]] <= 4294967296 and mem[_3212 + 64] + (32 * mem[_3212 + mem[_3212 + 64]]) + 32 <= return_data.size
                        _4803 = mem[_3212 + mem[_3212]]
                        s = 0
                        while s < _4803:
                            require s < mem[_3212 + _3459]
                            require (5 * idx) + s < mem[96]
                            mem[(32 * (5 * idx) + s) + 128] = mem[(32 * s) + _3212 + _3459 + 44 len 20]
                            s = s + 1
                            continue 
                        require (5 * idx) + 4 < mem[96]
                        mem[(32 * (5 * idx) + 4) + 128] = address(ext_call.return_data[0])
                        _6211 = mem[_3212 + _3788]
                        s = 0
                        while s < _6211:
                            require s < mem[_3212 + _3788]
                            require (16 * idx) + s < mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160]
                            mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + (32 * (16 * idx) + s) + 192] = mem[(32 * s) + _3212 + _3788 + 32]
                            _6211 = mem[_3212 + _3788]
                            s = s + 1
                            continue 
                        require idx < mem[(32 * 5 * ext_call.return_data[0]) + 128]
                        mem[(32 * 5 * ext_call.return_data[0]) + (32 * idx) + 160] = bool(_3787)
                        require idx < mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192]
                        mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + (32 * idx) + 224] = address(ext_call.return_data[0])
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 128
                    mem[mem[64] + 128] = mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192]
                    _2569 = mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192]
                    mem[mem[64] + 160 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192])] = mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 224 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192])]
                    mem[mem[64] + 32] = (32 * _2569) + 160
                    mem[(32 * _2569) + mem[64] + 160] = mem[96]
                    _4876 = mem[96]
                    mem[(32 * _2569) + mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                    mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2569) + 192
                    mem[(32 * mem[96]) + (32 * _2569) + mem[64] + 192] = mem[(32 * 5 * ext_call.return_data[0]) + 128]
                    _6284 = mem[(32 * 5 * ext_call.return_data[0]) + 128]
                    mem[(32 * mem[96]) + (32 * _2569) + mem[64] + 224 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + 128])] = mem[(32 * 5 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + 128])]
                    mem[mem[64] + 96] = (32 * _6284) + (32 * mem[96]) + (32 * _2569) + 224
                    mem[(32 * _6284) + (32 * mem[96]) + (32 * _2569) + mem[64] + 224] = mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160]
                    _7112 = mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160]
                    mem[(32 * _6284) + (32 * _4876) + (32 * _2569) + mem[64] + 256 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160])] = mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 192 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160])]
                    return 128, (32 * _2569) + 160, mem[mem[64] + 64 len (32 * _7112) + (32 * _6284) + (32 * _4876) + (32 * _2569) + 192]
                mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 224 len 32 * ext_call.return_data[0]] = code.data[11526 len 32 * ext_call.return_data[0]]
                idx = 0
                while idx < ext_call.return_data[0]:
                    require ext_code.size(operatorAddress)
                    staticcall operatorAddress.0x95a25efa with:
                            gas gas_remaining wei
                           args idx
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64]] = 0x8f35a75e00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(ext_call.return_data[0])
                    require ext_code.size(operatorAddress)
                    staticcall operatorAddress.getInvestor(address arg1) with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3216 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _3460 = mem[_3216]
                    require mem[_3216] <= 4294967296
                    require mem[_3216] + 32 <= return_data.size
                    require mem[_3216 + mem[_3216]] <= 4294967296 and mem[_3216] + (32 * mem[_3216 + mem[_3216]]) + 32 <= return_data.size
                    _3791 = mem[_3216 + 32]
                    _3792 = mem[_3216 + 64]
                    require mem[_3216 + 64] <= 4294967296
                    require mem[_3216 + 64] + 32 <= return_data.size
                    require mem[_3216 + mem[_3216 + 64]] <= 4294967296 and mem[_3216 + 64] + (32 * mem[_3216 + mem[_3216 + 64]]) + 32 <= return_data.size
                    _4804 = mem[_3216 + mem[_3216]]
                    s = 0
                    while s < _4804:
                        require s < mem[_3216 + _3460]
                        require (5 * idx) + s < mem[96]
                        mem[(32 * (5 * idx) + s) + 128] = mem[(32 * s) + _3216 + _3460 + 44 len 20]
                        s = s + 1
                        continue 
                    require (5 * idx) + 4 < mem[96]
                    mem[(32 * (5 * idx) + 4) + 128] = address(ext_call.return_data[0])
                    _6212 = mem[_3216 + _3792]
                    s = 0
                    while s < _6212:
                        require s < mem[_3216 + _3792]
                        require (16 * idx) + s < mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160]
                        mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + (32 * (16 * idx) + s) + 192] = mem[(32 * s) + _3216 + _3792 + 32]
                        _6212 = mem[_3216 + _3792]
                        s = s + 1
                        continue 
                    require idx < mem[(32 * 5 * ext_call.return_data[0]) + 128]
                    mem[(32 * 5 * ext_call.return_data[0]) + (32 * idx) + 160] = bool(_3791)
                    require idx < mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192]
                    mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + (32 * idx) + 224] = address(ext_call.return_data[0])
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 128
                mem[mem[64] + 128] = mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192]
                _2572 = mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192]
                mem[mem[64] + 160 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192])] = mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 224 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192])]
                mem[mem[64] + 32] = (32 * _2572) + 160
                mem[(32 * _2572) + mem[64] + 160] = mem[96]
                _4881 = mem[96]
                mem[(32 * _2572) + mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2572) + 192
                mem[(32 * mem[96]) + (32 * _2572) + mem[64] + 192] = mem[(32 * 5 * ext_call.return_data[0]) + 128]
                _6289 = mem[(32 * 5 * ext_call.return_data[0]) + 128]
                mem[(32 * mem[96]) + (32 * _2572) + mem[64] + 224 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + 128])] = mem[(32 * 5 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + 128])]
                mem[mem[64] + 96] = (32 * _6289) + (32 * mem[96]) + (32 * _2572) + 224
                mem[(32 * _6289) + (32 * mem[96]) + (32 * _2572) + mem[64] + 224] = mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160]
                _7115 = mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160]
                mem[(32 * _6289) + (32 * _4881) + (32 * _2572) + mem[64] + 256 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160])] = mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 192 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160])]
                return 128, (32 * _2572) + 160, mem[mem[64] + 64 len (32 * _7115) + (32 * _6289) + (32 * _4881) + (32 * _2572) + 192]
            mem[(32 * 5 * ext_call.return_data[0]) + 160 len 32 * ext_call.return_data[0]] = code.data[11526 len 32 * ext_call.return_data[0]]
            mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160] = 16 * ext_call.return_data[0]
            if not Mask(252, 0, ext_call.return_data[0]):
                mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192] = ext_call.return_data[0]
                mem[64] = (32 * 5 * ext_call.return_data[0]) + (579 * ext_call.return_data[0]) + 224
                if not ext_call.return_data[0]:
                    idx = 0
                    while idx < ext_call.return_data[0]:
                        require ext_code.size(operatorAddress)
                        staticcall operatorAddress.0x95a25efa with:
                                gas gas_remaining wei
                               args idx
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64]] = 0x8f35a75e00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
                        require ext_code.size(operatorAddress)
                        staticcall operatorAddress.getInvestor(address arg1) with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3220 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _3461 = mem[_3220]
                        require mem[_3220] <= 4294967296
                        require mem[_3220] + 32 <= return_data.size
                        require mem[_3220 + mem[_3220]] <= 4294967296 and mem[_3220] + (32 * mem[_3220 + mem[_3220]]) + 32 <= return_data.size
                        _3795 = mem[_3220 + 32]
                        _3796 = mem[_3220 + 64]
                        require mem[_3220 + 64] <= 4294967296
                        require mem[_3220 + 64] + 32 <= return_data.size
                        require mem[_3220 + mem[_3220 + 64]] <= 4294967296 and mem[_3220 + 64] + (32 * mem[_3220 + mem[_3220 + 64]]) + 32 <= return_data.size
                        _4805 = mem[_3220 + mem[_3220]]
                        s = 0
                        while s < _4805:
                            require s < mem[_3220 + _3461]
                            require (5 * idx) + s < mem[96]
                            mem[(32 * (5 * idx) + s) + 128] = mem[(32 * s) + _3220 + _3461 + 44 len 20]
                            s = s + 1
                            continue 
                        require (5 * idx) + 4 < mem[96]
                        mem[(32 * (5 * idx) + 4) + 128] = address(ext_call.return_data[0])
                        _6213 = mem[_3220 + _3796]
                        s = 0
                        while s < _6213:
                            require s < mem[_3220 + _3796]
                            require (16 * idx) + s < mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160]
                            mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + (32 * (16 * idx) + s) + 192] = mem[(32 * s) + _3220 + _3796 + 32]
                            _6213 = mem[_3220 + _3796]
                            s = s + 1
                            continue 
                        require idx < mem[(32 * 5 * ext_call.return_data[0]) + 128]
                        mem[(32 * 5 * ext_call.return_data[0]) + (32 * idx) + 160] = bool(_3795)
                        require idx < mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192]
                        mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + (32 * idx) + 224] = address(ext_call.return_data[0])
                        idx = idx + 1
                        continue 
                    _2573 = mem[64]
                    mem[mem[64]] = 128
                    mem[mem[64] + 128] = mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192]
                    _2575 = mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192]
                    mem[mem[64] + 160 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192])] = mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 224 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192])]
                    mem[mem[64] + 32] = (32 * _2575) + 160
                    mem[(32 * _2575) + mem[64] + 160] = mem[96]
                    _4886 = mem[96]
                    mem[(32 * _2575) + mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                    mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2575) + 192
                    mem[(32 * _4886) + (32 * _2575) + _2573 + 192] = mem[(32 * 5 * ext_call.return_data[0]) + 128]
                    _6294 = mem[(32 * 5 * ext_call.return_data[0]) + 128]
                    mem[(32 * _4886) + (32 * _2575) + _2573 + 224 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + 128])] = mem[(32 * 5 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + 128])]
                    mem[_2573 + 96] = (32 * _6294) + (32 * _4886) + (32 * _2575) + 224
                    mem[(32 * _6294) + (32 * _4886) + (32 * _2575) + _2573 + 224] = mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160]
                    _7118 = mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160]
                    mem[(32 * _6294) + (32 * _4886) + (32 * _2575) + _2573 + 256 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160])] = mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 192 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160])]
                    return memory
                      from mem[64]
                       len (32 * _7118) + (32 * _6294) + (32 * _4886) + (32 * _2575) + _2573 + -mem[64] + 256
                mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 224 len 32 * ext_call.return_data[0]] = code.data[11526 len 32 * ext_call.return_data[0]]
                idx = 0
                while idx < ext_call.return_data[0]:
                    require ext_code.size(operatorAddress)
                    staticcall operatorAddress.0x95a25efa with:
                            gas gas_remaining wei
                           args idx
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64]] = 0x8f35a75e00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(ext_call.return_data[0])
                    require ext_code.size(operatorAddress)
                    staticcall operatorAddress.getInvestor(address arg1) with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3224 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _3462 = mem[_3224]
                    require mem[_3224] <= 4294967296
                    require mem[_3224] + 32 <= return_data.size
                    require mem[_3224 + mem[_3224]] <= 4294967296 and mem[_3224] + (32 * mem[_3224 + mem[_3224]]) + 32 <= return_data.size
                    _3799 = mem[_3224 + 32]
                    _3800 = mem[_3224 + 64]
                    require mem[_3224 + 64] <= 4294967296
                    require mem[_3224 + 64] + 32 <= return_data.size
                    require mem[_3224 + mem[_3224 + 64]] <= 4294967296 and mem[_3224 + 64] + (32 * mem[_3224 + mem[_3224 + 64]]) + 32 <= return_data.size
                    _4806 = mem[_3224 + mem[_3224]]
                    s = 0
                    while s < _4806:
                        require s < mem[_3224 + _3462]
                        require (5 * idx) + s < mem[96]
                        mem[(32 * (5 * idx) + s) + 128] = mem[(32 * s) + _3224 + _3462 + 44 len 20]
                        s = s + 1
                        continue 
                    require (5 * idx) + 4 < mem[96]
                    mem[(32 * (5 * idx) + 4) + 128] = address(ext_call.return_data[0])
                    _6214 = mem[_3224 + _3800]
                    s = 0
                    while s < _6214:
                        require s < mem[_3224 + _3800]
                        require (16 * idx) + s < mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160]
                        mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + (32 * (16 * idx) + s) + 192] = mem[(32 * s) + _3224 + _3800 + 32]
                        _6214 = mem[_3224 + _3800]
                        s = s + 1
                        continue 
                    require idx < mem[(32 * 5 * ext_call.return_data[0]) + 128]
                    mem[(32 * 5 * ext_call.return_data[0]) + (32 * idx) + 160] = bool(_3799)
                    require idx < mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192]
                    mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + (32 * idx) + 224] = address(ext_call.return_data[0])
                    idx = idx + 1
                    continue 
                _2576 = mem[64]
                mem[mem[64]] = 128
                mem[mem[64] + 128] = mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192]
                _2578 = mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192]
                mem[mem[64] + 160 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192])] = mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 224 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192])]
                mem[mem[64] + 32] = (32 * _2578) + 160
                mem[(32 * _2578) + mem[64] + 160] = mem[96]
                _4891 = mem[96]
                mem[(32 * _2578) + mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2578) + 192
                mem[(32 * _4891) + (32 * _2578) + _2576 + 192] = mem[(32 * 5 * ext_call.return_data[0]) + 128]
                _6299 = mem[(32 * 5 * ext_call.return_data[0]) + 128]
                mem[(32 * _4891) + (32 * _2578) + _2576 + 224 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + 128])] = mem[(32 * 5 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + 128])]
                mem[_2576 + 96] = (32 * _6299) + (32 * _4891) + (32 * _2578) + 224
                mem[(32 * _6299) + (32 * _4891) + (32 * _2578) + _2576 + 224] = mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160]
                _7121 = mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160]
                mem[(32 * _6299) + (32 * _4891) + (32 * _2578) + _2576 + 256 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160])] = mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 192 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160])]
                return memory
                  from mem[64]
                   len (32 * _7121) + (32 * _6299) + (32 * _4891) + (32 * _2578) + _2576 + -mem[64] + 256
            mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 192 len 512 * ext_call.return_data[0]] = code.data[11526 len 512 * ext_call.return_data[0]]
            mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192] = ext_call.return_data[0]
            mem[64] = (32 * 5 * ext_call.return_data[0]) + (579 * ext_call.return_data[0]) + 224
            if ext_call.return_data[0]:
                mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 224 len 32 * ext_call.return_data[0]] = code.data[11526 len 32 * ext_call.return_data[0]]
                idx = 0
                while idx < ext_call.return_data[0]:
                    require ext_code.size(operatorAddress)
                    staticcall operatorAddress.0x95a25efa with:
                            gas gas_remaining wei
                           args idx
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64]] = 0x8f35a75e00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(ext_call.return_data[0])
                    require ext_code.size(operatorAddress)
                    staticcall operatorAddress.getInvestor(address arg1) with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3232 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _3464 = mem[_3232]
                    require mem[_3232] <= 4294967296
                    require mem[_3232] + 32 <= return_data.size
                    require mem[_3232 + mem[_3232]] <= 4294967296 and mem[_3232] + (32 * mem[_3232 + mem[_3232]]) + 32 <= return_data.size
                    _3807 = mem[_3232 + 32]
                    _3808 = mem[_3232 + 64]
                    require mem[_3232 + 64] <= 4294967296
                    require mem[_3232 + 64] + 32 <= return_data.size
                    require mem[_3232 + mem[_3232 + 64]] <= 4294967296 and mem[_3232 + 64] + (32 * mem[_3232 + mem[_3232 + 64]]) + 32 <= return_data.size
                    _4808 = mem[_3232 + mem[_3232]]
                    s = 0
                    while s < _4808:
                        require s < mem[_3232 + _3464]
                        require (5 * idx) + s < mem[96]
                        mem[(32 * (5 * idx) + s) + 128] = mem[(32 * s) + _3232 + _3464 + 44 len 20]
                        s = s + 1
                        continue 
                    require (5 * idx) + 4 < mem[96]
                    mem[(32 * (5 * idx) + 4) + 128] = address(ext_call.return_data[0])
                    _6216 = mem[_3232 + _3808]
                    s = 0
                    while s < _6216:
                        require s < mem[_3232 + _3808]
                        require (16 * idx) + s < mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160]
                        mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + (32 * (16 * idx) + s) + 192] = mem[(32 * s) + _3232 + _3808 + 32]
                        _6216 = mem[_3232 + _3808]
                        s = s + 1
                        continue 
                    require idx < mem[(32 * 5 * ext_call.return_data[0]) + 128]
                    mem[(32 * 5 * ext_call.return_data[0]) + (32 * idx) + 160] = bool(_3807)
                    require idx < mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192]
                    mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + (32 * idx) + 224] = address(ext_call.return_data[0])
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 128
                mem[mem[64] + 128] = mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192]
                _2584 = mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192]
                mem[mem[64] + 160 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192])] = mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 224 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192])]
                mem[mem[64] + 32] = (32 * _2584) + 160
                mem[(32 * _2584) + mem[64] + 160] = mem[96]
                mem[(32 * _2584) + mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2584) + 192
                mem[(32 * mem[96]) + (32 * _2584) + mem[64] + 192] = mem[(32 * 5 * ext_call.return_data[0]) + 128]
                _6309 = mem[(32 * 5 * ext_call.return_data[0]) + 128]
                mem[(32 * mem[96]) + (32 * _2584) + mem[64] + 224 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + 128])] = mem[(32 * 5 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + 128])]
                mem[mem[64] + 96] = (32 * _6309) + (32 * mem[96]) + (32 * _2584) + 224
                mem[(32 * _6309) + (32 * mem[96]) + (32 * _2584) + mem[64] + 224] = mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160]
                _7127 = mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160]
                mem[(32 * _6309) + (32 * mem[96]) + (32 * _2584) + mem[64] + 256 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160])] = mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 192 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160])]
                return Array(len=mem[mem[64] + 128 len (32 * _2584) + 32], data=mem[96], mem[mem[64] + (32 * _2584) + 192 len (32 * _7127) + (32 * _6309) + (32 * mem[96]) + 64]), 
                       (32 * _2584) + 160,
                       (32 * mem[96]) + (32 * _2584) + 192,
                       (32 * _6309) + (32 * mem[96]) + (32 * _2584) + 224
            idx = 0
            while idx < ext_call.return_data[0]:
                require ext_code.size(operatorAddress)
                staticcall operatorAddress.0x95a25efa with:
                        gas gas_remaining wei
                       args idx
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64]] = 0x8f35a75e00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(ext_call.return_data[0])
                require ext_code.size(operatorAddress)
                staticcall operatorAddress.getInvestor(address arg1) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3228 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _3463 = mem[_3228]
                require mem[_3228] <= 4294967296
                require mem[_3228] + 32 <= return_data.size
                require mem[_3228 + mem[_3228]] <= 4294967296 and mem[_3228] + (32 * mem[_3228 + mem[_3228]]) + 32 <= return_data.size
                _3803 = mem[_3228 + 32]
                _3804 = mem[_3228 + 64]
                require mem[_3228 + 64] <= 4294967296
                require mem[_3228 + 64] + 32 <= return_data.size
                require mem[_3228 + mem[_3228 + 64]] <= 4294967296 and mem[_3228 + 64] + (32 * mem[_3228 + mem[_3228 + 64]]) + 32 <= return_data.size
                _4807 = mem[_3228 + mem[_3228]]
                s = 0
                while s < _4807:
                    require s < mem[_3228 + _3463]
                    require (5 * idx) + s < mem[96]
                    mem[(32 * (5 * idx) + s) + 128] = mem[(32 * s) + _3228 + _3463 + 44 len 20]
                    s = s + 1
                    continue 
                require (5 * idx) + 4 < mem[96]
                mem[(32 * (5 * idx) + 4) + 128] = address(ext_call.return_data[0])
                _6215 = mem[_3228 + _3804]
                s = 0
                while s < _6215:
                    require s < mem[_3228 + _3804]
                    require (16 * idx) + s < mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160]
                    mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + (32 * (16 * idx) + s) + 192] = mem[(32 * s) + _3228 + _3804 + 32]
                    _6215 = mem[_3228 + _3804]
                    s = s + 1
                    continue 
                require idx < mem[(32 * 5 * ext_call.return_data[0]) + 128]
                mem[(32 * 5 * ext_call.return_data[0]) + (32 * idx) + 160] = bool(_3803)
                require idx < mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192]
                mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + (32 * idx) + 224] = address(ext_call.return_data[0])
                idx = idx + 1
                continue 
            _2579 = mem[64]
            mem[mem[64]] = 128
            mem[mem[64] + 128] = mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192]
            _2581 = mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192]
            mem[mem[64] + 160 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192])] = mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 224 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192])]
            mem[mem[64] + 32] = (32 * _2581) + 160
            mem[(32 * _2581) + mem[64] + 160] = mem[96]
            _4896 = mem[96]
            mem[(32 * _2581) + mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2581) + 192
            mem[(32 * _4896) + (32 * _2581) + _2579 + 192] = mem[(32 * 5 * ext_call.return_data[0]) + 128]
            _6304 = mem[(32 * 5 * ext_call.return_data[0]) + 128]
            mem[(32 * _4896) + (32 * _2581) + _2579 + 224 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + 128])] = mem[(32 * 5 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + 128])]
            mem[_2579 + 96] = (32 * _6304) + (32 * _4896) + (32 * _2581) + 224
            mem[(32 * _6304) + (32 * _4896) + (32 * _2581) + _2579 + 224] = mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160]
            _7124 = mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160]
            mem[(32 * _6304) + (32 * _4896) + (32 * _2581) + _2579 + 256 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160])] = mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 192 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160])]
            return memory
              from mem[64]
               len (32 * _7124) + (32 * _6304) + (32 * _4896) + (32 * _2581) + _2579 + -mem[64] + 256
        mem[128 len 32 * 5 * ext_call.return_data[0]] = code.data[11526 len 32 * 5 * ext_call.return_data[0]]
        mem[(32 * 5 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
        if not ext_call.return_data[0]:
            mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160] = 16 * ext_call.return_data[0]
            if not Mask(252, 0, ext_call.return_data[0]):
                mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192] = ext_call.return_data[0]
                mem[64] = (32 * 5 * ext_call.return_data[0]) + (579 * ext_call.return_data[0]) + 224
                if ext_call.return_data[0]:
                    mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 224 len 32 * ext_call.return_data[0]] = code.data[11526 len 32 * ext_call.return_data[0]]
                    idx = 0
                    while idx < ext_call.return_data[0]:
                        require ext_code.size(operatorAddress)
                        staticcall operatorAddress.0x95a25efa with:
                                gas gas_remaining wei
                               args idx
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64]] = 0x8f35a75e00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
                        require ext_code.size(operatorAddress)
                        staticcall operatorAddress.getInvestor(address arg1) with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3240 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _3466 = mem[_3240]
                        require mem[_3240] <= 4294967296
                        require mem[_3240] + 32 <= return_data.size
                        require mem[_3240 + mem[_3240]] <= 4294967296 and mem[_3240] + (32 * mem[_3240 + mem[_3240]]) + 32 <= return_data.size
                        _3815 = mem[_3240 + 32]
                        _3816 = mem[_3240 + 64]
                        require mem[_3240 + 64] <= 4294967296
                        require mem[_3240 + 64] + 32 <= return_data.size
                        require mem[_3240 + mem[_3240 + 64]] <= 4294967296 and mem[_3240 + 64] + (32 * mem[_3240 + mem[_3240 + 64]]) + 32 <= return_data.size
                        _4810 = mem[_3240 + mem[_3240]]
                        s = 0
                        while s < _4810:
                            require s < mem[_3240 + _3466]
                            require (5 * idx) + s < mem[96]
                            mem[(32 * (5 * idx) + s) + 128] = mem[(32 * s) + _3240 + _3466 + 44 len 20]
                            s = s + 1
                            continue 
                        require (5 * idx) + 4 < mem[96]
                        mem[(32 * (5 * idx) + 4) + 128] = address(ext_call.return_data[0])
                        _6218 = mem[_3240 + _3816]
                        s = 0
                        while s < _6218:
                            require s < mem[_3240 + _3816]
                            require (16 * idx) + s < mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160]
                            mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + (32 * (16 * idx) + s) + 192] = mem[(32 * s) + _3240 + _3816 + 32]
                            _6218 = mem[_3240 + _3816]
                            s = s + 1
                            continue 
                        require idx < mem[(32 * 5 * ext_call.return_data[0]) + 128]
                        mem[(32 * 5 * ext_call.return_data[0]) + (32 * idx) + 160] = bool(_3815)
                        require idx < mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192]
                        mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + (32 * idx) + 224] = address(ext_call.return_data[0])
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 128
                    mem[mem[64] + 128] = mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192]
                    _2590 = mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192]
                    mem[mem[64] + 160 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192])] = mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 224 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192])]
                    mem[mem[64] + 32] = (32 * _2590) + 160
                    mem[(32 * _2590) + mem[64] + 160] = mem[96]
                    mem[(32 * _2590) + mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                    mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2590) + 192
                    mem[(32 * mem[96]) + (32 * _2590) + mem[64] + 192] = mem[(32 * 5 * ext_call.return_data[0]) + 128]
                    _6319 = mem[(32 * 5 * ext_call.return_data[0]) + 128]
                    mem[(32 * mem[96]) + (32 * _2590) + mem[64] + 224 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + 128])] = mem[(32 * 5 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + 128])]
                    mem[mem[64] + 96] = (32 * _6319) + (32 * mem[96]) + (32 * _2590) + 224
                    mem[(32 * _6319) + (32 * mem[96]) + (32 * _2590) + mem[64] + 224] = mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160]
                    _7133 = mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160]
                    mem[(32 * _6319) + (32 * mem[96]) + (32 * _2590) + mem[64] + 256 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160])] = mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 192 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160])]
                    return Array(len=mem[mem[64] + 128 len (32 * _2590) + 32], data=mem[96], mem[mem[64] + (32 * _2590) + 192 len (32 * _7133) + (32 * _6319) + (32 * mem[96]) + 64]), 
                           (32 * _2590) + 160,
                           (32 * mem[96]) + (32 * _2590) + 192,
                           (32 * _6319) + (32 * mem[96]) + (32 * _2590) + 224
                idx = 0
                while idx < ext_call.return_data[0]:
                    require ext_code.size(operatorAddress)
                    staticcall operatorAddress.0x95a25efa with:
                            gas gas_remaining wei
                           args idx
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64]] = 0x8f35a75e00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(ext_call.return_data[0])
                    require ext_code.size(operatorAddress)
                    staticcall operatorAddress.getInvestor(address arg1) with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3236 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _3465 = mem[_3236]
                    require mem[_3236] <= 4294967296
                    require mem[_3236] + 32 <= return_data.size
                    require mem[_3236 + mem[_3236]] <= 4294967296 and mem[_3236] + (32 * mem[_3236 + mem[_3236]]) + 32 <= return_data.size
                    _3811 = mem[_3236 + 32]
                    _3812 = mem[_3236 + 64]
                    require mem[_3236 + 64] <= 4294967296
                    require mem[_3236 + 64] + 32 <= return_data.size
                    require mem[_3236 + mem[_3236 + 64]] <= 4294967296 and mem[_3236 + 64] + (32 * mem[_3236 + mem[_3236 + 64]]) + 32 <= return_data.size
                    _4809 = mem[_3236 + mem[_3236]]
                    s = 0
                    while s < _4809:
                        require s < mem[_3236 + _3465]
                        require (5 * idx) + s < mem[96]
                        mem[(32 * (5 * idx) + s) + 128] = mem[(32 * s) + _3236 + _3465 + 44 len 20]
                        s = s + 1
                        continue 
                    require (5 * idx) + 4 < mem[96]
                    mem[(32 * (5 * idx) + 4) + 128] = address(ext_call.return_data[0])
                    _6217 = mem[_3236 + _3812]
                    s = 0
                    while s < _6217:
                        require s < mem[_3236 + _3812]
                        require (16 * idx) + s < mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160]
                        mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + (32 * (16 * idx) + s) + 192] = mem[(32 * s) + _3236 + _3812 + 32]
                        _6217 = mem[_3236 + _3812]
                        s = s + 1
                        continue 
                    require idx < mem[(32 * 5 * ext_call.return_data[0]) + 128]
                    mem[(32 * 5 * ext_call.return_data[0]) + (32 * idx) + 160] = bool(_3811)
                    require idx < mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192]
                    mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + (32 * idx) + 224] = address(ext_call.return_data[0])
                    idx = idx + 1
                    continue 
                _2585 = mem[64]
                mem[mem[64]] = 128
                mem[mem[64] + 128] = mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192]
                _2587 = mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192]
                mem[mem[64] + 160 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192])] = mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 224 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192])]
                mem[mem[64] + 32] = (32 * _2587) + 160
                mem[(32 * _2587) + mem[64] + 160] = mem[96]
                _4906 = mem[96]
                mem[(32 * _2587) + mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2587) + 192
                mem[(32 * _4906) + (32 * _2587) + _2585 + 192] = mem[(32 * 5 * ext_call.return_data[0]) + 128]
                _6314 = mem[(32 * 5 * ext_call.return_data[0]) + 128]
                mem[(32 * _4906) + (32 * _2587) + _2585 + 224 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + 128])] = mem[(32 * 5 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + 128])]
                mem[_2585 + 96] = (32 * _6314) + (32 * _4906) + (32 * _2587) + 224
                mem[(32 * _6314) + (32 * _4906) + (32 * _2587) + _2585 + 224] = mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160]
                _7130 = mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160]
                mem[(32 * _6314) + (32 * _4906) + (32 * _2587) + _2585 + 256 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160])] = mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 192 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160])]
                return memory
                  from mem[64]
                   len (32 * _7130) + (32 * _6314) + (32 * _4906) + (32 * _2587) + _2585 + -mem[64] + 256
            mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 192 len 512 * ext_call.return_data[0]] = code.data[11526 len 512 * ext_call.return_data[0]]
            mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192] = ext_call.return_data[0]
            mem[64] = (32 * 5 * ext_call.return_data[0]) + (579 * ext_call.return_data[0]) + 224
            if ext_call.return_data[0]:
                mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 224 len 32 * ext_call.return_data[0]] = code.data[11526 len 32 * ext_call.return_data[0]]
                idx = 0
                while idx < ext_call.return_data[0]:
                    require ext_code.size(operatorAddress)
                    staticcall operatorAddress.0x95a25efa with:
                            gas gas_remaining wei
                           args idx
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64]] = 0x8f35a75e00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(ext_call.return_data[0])
                    require ext_code.size(operatorAddress)
                    staticcall operatorAddress.getInvestor(address arg1) with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3248 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _3468 = mem[_3248]
                    require mem[_3248] <= 4294967296
                    require mem[_3248] + 32 <= return_data.size
                    require mem[_3248 + mem[_3248]] <= 4294967296 and mem[_3248] + (32 * mem[_3248 + mem[_3248]]) + 32 <= return_data.size
                    _3823 = mem[_3248 + 32]
                    _3824 = mem[_3248 + 64]
                    require mem[_3248 + 64] <= 4294967296
                    require mem[_3248 + 64] + 32 <= return_data.size
                    require mem[_3248 + mem[_3248 + 64]] <= 4294967296 and mem[_3248 + 64] + (32 * mem[_3248 + mem[_3248 + 64]]) + 32 <= return_data.size
                    _4812 = mem[_3248 + mem[_3248]]
                    s = 0
                    while s < _4812:
                        require s < mem[_3248 + _3468]
                        require (5 * idx) + s < mem[96]
                        mem[(32 * (5 * idx) + s) + 128] = mem[(32 * s) + _3248 + _3468 + 44 len 20]
                        s = s + 1
                        continue 
                    require (5 * idx) + 4 < mem[96]
                    mem[(32 * (5 * idx) + 4) + 128] = address(ext_call.return_data[0])
                    _6220 = mem[_3248 + _3824]
                    s = 0
                    while s < _6220:
                        require s < mem[_3248 + _3824]
                        require (16 * idx) + s < mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160]
                        mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + (32 * (16 * idx) + s) + 192] = mem[(32 * s) + _3248 + _3824 + 32]
                        _6220 = mem[_3248 + _3824]
                        s = s + 1
                        continue 
                    require idx < mem[(32 * 5 * ext_call.return_data[0]) + 128]
                    mem[(32 * 5 * ext_call.return_data[0]) + (32 * idx) + 160] = bool(_3823)
                    require idx < mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192]
                    mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + (32 * idx) + 224] = address(ext_call.return_data[0])
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 128
                mem[mem[64] + 128] = mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192]
                _2596 = mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192]
                mem[mem[64] + 160 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192])] = mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 224 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192])]
                mem[mem[64] + 32] = (32 * _2596) + 160
                mem[(32 * _2596) + mem[64] + 160] = mem[96]
                mem[(32 * _2596) + mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2596) + 192
                mem[(32 * mem[96]) + (32 * _2596) + mem[64] + 192] = mem[(32 * 5 * ext_call.return_data[0]) + 128]
                _6329 = mem[(32 * 5 * ext_call.return_data[0]) + 128]
                mem[(32 * mem[96]) + (32 * _2596) + mem[64] + 224 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + 128])] = mem[(32 * 5 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + 128])]
                mem[mem[64] + 96] = (32 * _6329) + (32 * mem[96]) + (32 * _2596) + 224
                mem[(32 * _6329) + (32 * mem[96]) + (32 * _2596) + mem[64] + 224] = mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160]
                _7139 = mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160]
                mem[(32 * _6329) + (32 * mem[96]) + (32 * _2596) + mem[64] + 256 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160])] = mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 192 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160])]
                return Array(len=mem[mem[64] + 128 len (32 * _2596) + 32], data=mem[96], mem[mem[64] + (32 * _2596) + 192 len (32 * _7139) + (32 * _6329) + (32 * mem[96]) + 64]), 
                       (32 * _2596) + 160,
                       (32 * mem[96]) + (32 * _2596) + 192,
                       (32 * _6329) + (32 * mem[96]) + (32 * _2596) + 224
            idx = 0
            while idx < ext_call.return_data[0]:
                require ext_code.size(operatorAddress)
                staticcall operatorAddress.0x95a25efa with:
                        gas gas_remaining wei
                       args idx
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64]] = 0x8f35a75e00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(ext_call.return_data[0])
                require ext_code.size(operatorAddress)
                staticcall operatorAddress.getInvestor(address arg1) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3244 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _3467 = mem[_3244]
                require mem[_3244] <= 4294967296
                require mem[_3244] + 32 <= return_data.size
                require mem[_3244 + mem[_3244]] <= 4294967296 and mem[_3244] + (32 * mem[_3244 + mem[_3244]]) + 32 <= return_data.size
                _3819 = mem[_3244 + 32]
                _3820 = mem[_3244 + 64]
                require mem[_3244 + 64] <= 4294967296
                require mem[_3244 + 64] + 32 <= return_data.size
                require mem[_3244 + mem[_3244 + 64]] <= 4294967296 and mem[_3244 + 64] + (32 * mem[_3244 + mem[_3244 + 64]]) + 32 <= return_data.size
                _4811 = mem[_3244 + mem[_3244]]
                s = 0
                while s < _4811:
                    require s < mem[_3244 + _3467]
                    require (5 * idx) + s < mem[96]
                    mem[(32 * (5 * idx) + s) + 128] = mem[(32 * s) + _3244 + _3467 + 44 len 20]
                    s = s + 1
                    continue 
                require (5 * idx) + 4 < mem[96]
                mem[(32 * (5 * idx) + 4) + 128] = address(ext_call.return_data[0])
                _6219 = mem[_3244 + _3820]
                s = 0
                while s < _6219:
                    require s < mem[_3244 + _3820]
                    require (16 * idx) + s < mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160]
                    mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + (32 * (16 * idx) + s) + 192] = mem[(32 * s) + _3244 + _3820 + 32]
                    _6219 = mem[_3244 + _3820]
                    s = s + 1
                    continue 
                require idx < mem[(32 * 5 * ext_call.return_data[0]) + 128]
                mem[(32 * 5 * ext_call.return_data[0]) + (32 * idx) + 160] = bool(_3819)
                require idx < mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192]
                mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + (32 * idx) + 224] = address(ext_call.return_data[0])
                idx = idx + 1
                continue 
            _2591 = mem[64]
            mem[mem[64]] = 128
            mem[mem[64] + 128] = mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192]
            _2593 = mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192]
            mem[mem[64] + 160 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192])] = mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 224 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192])]
            mem[mem[64] + 32] = (32 * _2593) + 160
            mem[(32 * _2593) + mem[64] + 160] = mem[96]
            _4916 = mem[96]
            mem[(32 * _2593) + mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2593) + 192
            mem[(32 * _4916) + (32 * _2593) + _2591 + 192] = mem[(32 * 5 * ext_call.return_data[0]) + 128]
            _6324 = mem[(32 * 5 * ext_call.return_data[0]) + 128]
            mem[(32 * _4916) + (32 * _2593) + _2591 + 224 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + 128])] = mem[(32 * 5 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + 128])]
            mem[_2591 + 96] = (32 * _6324) + (32 * _4916) + (32 * _2593) + 224
            mem[(32 * _6324) + (32 * _4916) + (32 * _2593) + _2591 + 224] = mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160]
            _7136 = mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160]
            mem[(32 * _6324) + (32 * _4916) + (32 * _2593) + _2591 + 256 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160])] = mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 192 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160])]
            return memory
              from mem[64]
               len (32 * _7136) + (32 * _6324) + (32 * _4916) + (32 * _2593) + _2591 + -mem[64] + 256
        mem[(32 * 5 * ext_call.return_data[0]) + 160 len 32 * ext_call.return_data[0]] = code.data[11526 len 32 * ext_call.return_data[0]]
        mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160] = 16 * ext_call.return_data[0]
        if Mask(252, 0, ext_call.return_data[0]):
            mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 192 len 512 * ext_call.return_data[0]] = code.data[11526 len 512 * ext_call.return_data[0]]
            mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192] = ext_call.return_data[0]
            mem[64] = (32 * 5 * ext_call.return_data[0]) + (579 * ext_call.return_data[0]) + 224
            if not ext_call.return_data[0]:
                idx = 0
                while idx < ext_call.return_data[0]:
                    require ext_code.size(operatorAddress)
                    staticcall operatorAddress.0x95a25efa with:
                            gas gas_remaining wei
                           args idx
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64]] = 0x8f35a75e00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(ext_call.return_data[0])
                    require ext_code.size(operatorAddress)
                    staticcall operatorAddress.getInvestor(address arg1) with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3260 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _3471 = mem[_3260]
                    require mem[_3260] <= 4294967296
                    require mem[_3260] + 32 <= return_data.size
                    require mem[_3260 + mem[_3260]] <= 4294967296 and mem[_3260] + (32 * mem[_3260 + mem[_3260]]) + 32 <= return_data.size
                    _3835 = mem[_3260 + 32]
                    _3836 = mem[_3260 + 64]
                    require mem[_3260 + 64] <= 4294967296
                    require mem[_3260 + 64] + 32 <= return_data.size
                    require mem[_3260 + mem[_3260 + 64]] <= 4294967296 and mem[_3260 + 64] + (32 * mem[_3260 + mem[_3260 + 64]]) + 32 <= return_data.size
                    _4815 = mem[_3260 + mem[_3260]]
                    s = 0
                    while s < _4815:
                        require s < mem[_3260 + _3471]
                        require (5 * idx) + s < mem[96]
                        mem[(32 * (5 * idx) + s) + 128] = mem[(32 * s) + _3260 + _3471 + 44 len 20]
                        s = s + 1
                        continue 
                    require (5 * idx) + 4 < mem[96]
                    mem[(32 * (5 * idx) + 4) + 128] = address(ext_call.return_data[0])
                    _6223 = mem[_3260 + _3836]
                    s = 0
                    while s < _6223:
                        require s < mem[_3260 + _3836]
                        require (16 * idx) + s < mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160]
                        mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + (32 * (16 * idx) + s) + 192] = mem[(32 * s) + _3260 + _3836 + 32]
                        _6223 = mem[_3260 + _3836]
                        s = s + 1
                        continue 
                    require idx < mem[(32 * 5 * ext_call.return_data[0]) + 128]
                    mem[(32 * 5 * ext_call.return_data[0]) + (32 * idx) + 160] = bool(_3835)
                    require idx < mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192]
                    mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + (32 * idx) + 224] = address(ext_call.return_data[0])
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 128
                mem[mem[64] + 128] = mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192]
                _2605 = mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192]
                mem[mem[64] + 160 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192])] = mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 224 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192])]
                mem[mem[64] + 32] = (32 * _2605) + 160
                mem[(32 * _2605) + mem[64] + 160] = mem[96]
                _4936 = mem[96]
                mem[(32 * _2605) + mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2605) + 192
                mem[(32 * mem[96]) + (32 * _2605) + mem[64] + 192] = mem[(32 * 5 * ext_call.return_data[0]) + 128]
                _6344 = mem[(32 * 5 * ext_call.return_data[0]) + 128]
                mem[(32 * mem[96]) + (32 * _2605) + mem[64] + 224 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + 128])] = mem[(32 * 5 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + 128])]
                mem[mem[64] + 96] = (32 * _6344) + (32 * mem[96]) + (32 * _2605) + 224
                mem[(32 * _6344) + (32 * mem[96]) + (32 * _2605) + mem[64] + 224] = mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160]
                _7148 = mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160]
                mem[(32 * _6344) + (32 * _4936) + (32 * _2605) + mem[64] + 256 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160])] = mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 192 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160])]
                return 128, (32 * _2605) + 160, mem[mem[64] + 64 len (32 * _7148) + (32 * _6344) + (32 * _4936) + (32 * _2605) + 192]
            mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 224 len 32 * ext_call.return_data[0]] = code.data[11526 len 32 * ext_call.return_data[0]]
            idx = 0
            while idx < ext_call.return_data[0]:
                require ext_code.size(operatorAddress)
                staticcall operatorAddress.0x95a25efa with:
                        gas gas_remaining wei
                       args idx
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64]] = 0x8f35a75e00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(ext_call.return_data[0])
                require ext_code.size(operatorAddress)
                staticcall operatorAddress.getInvestor(address arg1) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3264 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _3472 = mem[_3264]
                require mem[_3264] <= 4294967296
                require mem[_3264] + 32 <= return_data.size
                require mem[_3264 + mem[_3264]] <= 4294967296 and mem[_3264] + (32 * mem[_3264 + mem[_3264]]) + 32 <= return_data.size
                _3839 = mem[_3264 + 32]
                _3840 = mem[_3264 + 64]
                require mem[_3264 + 64] <= 4294967296
                require mem[_3264 + 64] + 32 <= return_data.size
                require mem[_3264 + mem[_3264 + 64]] <= 4294967296 and mem[_3264 + 64] + (32 * mem[_3264 + mem[_3264 + 64]]) + 32 <= return_data.size
                _4816 = mem[_3264 + mem[_3264]]
                s = 0
                while s < _4816:
                    require s < mem[_3264 + _3472]
                    require (5 * idx) + s < mem[96]
                    mem[(32 * (5 * idx) + s) + 128] = mem[(32 * s) + _3264 + _3472 + 44 len 20]
                    s = s + 1
                    continue 
                require (5 * idx) + 4 < mem[96]
                mem[(32 * (5 * idx) + 4) + 128] = address(ext_call.return_data[0])
                _6224 = mem[_3264 + _3840]
                s = 0
                while s < _6224:
                    require s < mem[_3264 + _3840]
                    require (16 * idx) + s < mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160]
                    mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + (32 * (16 * idx) + s) + 192] = mem[(32 * s) + _3264 + _3840 + 32]
                    _6224 = mem[_3264 + _3840]
                    s = s + 1
                    continue 
                require idx < mem[(32 * 5 * ext_call.return_data[0]) + 128]
                mem[(32 * 5 * ext_call.return_data[0]) + (32 * idx) + 160] = bool(_3839)
                require idx < mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192]
                mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + (32 * idx) + 224] = address(ext_call.return_data[0])
                idx = idx + 1
                continue 
            mem[mem[64]] = 128
            mem[mem[64] + 128] = mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192]
            _2608 = mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192]
            mem[mem[64] + 160 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192])] = mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 224 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192])]
            mem[mem[64] + 32] = (32 * _2608) + 160
            mem[(32 * _2608) + mem[64] + 160] = mem[96]
            mem[(32 * _2608) + mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2608) + 192
            mem[(32 * mem[96]) + (32 * _2608) + mem[64] + 192] = mem[(32 * 5 * ext_call.return_data[0]) + 128]
            _6349 = mem[(32 * 5 * ext_call.return_data[0]) + 128]
            mem[(32 * mem[96]) + (32 * _2608) + mem[64] + 224 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + 128])] = mem[(32 * 5 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + 128])]
            mem[mem[64] + 96] = (32 * _6349) + (32 * mem[96]) + (32 * _2608) + 224
            mem[(32 * _6349) + (32 * mem[96]) + (32 * _2608) + mem[64] + 224] = mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160]
            _7151 = mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160]
            mem[(32 * _6349) + (32 * mem[96]) + (32 * _2608) + mem[64] + 256 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160])] = mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 192 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160])]
            return Array(len=mem[mem[64] + 128 len (32 * _2608) + 32], data=mem[96], mem[mem[64] + (32 * _2608) + 192 len (32 * _7151) + (32 * _6349) + (32 * mem[96]) + 64]), 
                   (32 * _2608) + 160,
                   (32 * mem[96]) + (32 * _2608) + 192,
                   (32 * _6349) + (32 * mem[96]) + (32 * _2608) + 224
        mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192] = ext_call.return_data[0]
        mem[64] = (32 * 5 * ext_call.return_data[0]) + (579 * ext_call.return_data[0]) + 224
        if not ext_call.return_data[0]:
            idx = 0
            while idx < ext_call.return_data[0]:
                require ext_code.size(operatorAddress)
                staticcall operatorAddress.0x95a25efa with:
                        gas gas_remaining wei
                       args idx
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64]] = 0x8f35a75e00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(ext_call.return_data[0])
                require ext_code.size(operatorAddress)
                staticcall operatorAddress.getInvestor(address arg1) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3252 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _3469 = mem[_3252]
                require mem[_3252] <= 4294967296
                require mem[_3252] + 32 <= return_data.size
                require mem[_3252 + mem[_3252]] <= 4294967296 and mem[_3252] + (32 * mem[_3252 + mem[_3252]]) + 32 <= return_data.size
                _3827 = mem[_3252 + 32]
                _3828 = mem[_3252 + 64]
                require mem[_3252 + 64] <= 4294967296
                require mem[_3252 + 64] + 32 <= return_data.size
                require mem[_3252 + mem[_3252 + 64]] <= 4294967296 and mem[_3252 + 64] + (32 * mem[_3252 + mem[_3252 + 64]]) + 32 <= return_data.size
                _4813 = mem[_3252 + mem[_3252]]
                s = 0
                while s < _4813:
                    require s < mem[_3252 + _3469]
                    require (5 * idx) + s < mem[96]
                    mem[(32 * (5 * idx) + s) + 128] = mem[(32 * s) + _3252 + _3469 + 44 len 20]
                    s = s + 1
                    continue 
                require (5 * idx) + 4 < mem[96]
                mem[(32 * (5 * idx) + 4) + 128] = address(ext_call.return_data[0])
                _6221 = mem[_3252 + _3828]
                s = 0
                while s < _6221:
                    require s < mem[_3252 + _3828]
                    require (16 * idx) + s < mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160]
                    mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + (32 * (16 * idx) + s) + 192] = mem[(32 * s) + _3252 + _3828 + 32]
                    _6221 = mem[_3252 + _3828]
                    s = s + 1
                    continue 
                require idx < mem[(32 * 5 * ext_call.return_data[0]) + 128]
                mem[(32 * 5 * ext_call.return_data[0]) + (32 * idx) + 160] = bool(_3827)
                require idx < mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192]
                mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + (32 * idx) + 224] = address(ext_call.return_data[0])
                idx = idx + 1
                continue 
            _2597 = mem[64]
            mem[mem[64]] = 128
            mem[mem[64] + 128] = mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192]
            _2599 = mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192]
            mem[mem[64] + 160 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192])] = mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 224 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192])]
            mem[mem[64] + 32] = (32 * _2599) + 160
            mem[(32 * _2599) + mem[64] + 160] = mem[96]
            _4926 = mem[96]
            mem[(32 * _2599) + mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2599) + 192
            mem[(32 * _4926) + (32 * _2599) + _2597 + 192] = mem[(32 * 5 * ext_call.return_data[0]) + 128]
            _6334 = mem[(32 * 5 * ext_call.return_data[0]) + 128]
            mem[(32 * _4926) + (32 * _2599) + _2597 + 224 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + 128])] = mem[(32 * 5 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + 128])]
            mem[_2597 + 96] = (32 * _6334) + (32 * _4926) + (32 * _2599) + 224
            mem[(32 * _6334) + (32 * _4926) + (32 * _2599) + _2597 + 224] = mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160]
            _7142 = mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160]
            mem[(32 * _6334) + (32 * _4926) + (32 * _2599) + _2597 + 256 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160])] = mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 192 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160])]
            return memory
              from mem[64]
               len (32 * _7142) + (32 * _6334) + (32 * _4926) + (32 * _2599) + _2597 + -mem[64] + 256
        mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 224 len 32 * ext_call.return_data[0]] = code.data[11526 len 32 * ext_call.return_data[0]]
        idx = 0
        while idx < ext_call.return_data[0]:
            require ext_code.size(operatorAddress)
            staticcall operatorAddress.0x95a25efa with:
                    gas gas_remaining wei
                   args idx
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64]] = 0x8f35a75e00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(ext_call.return_data[0])
            require ext_code.size(operatorAddress)
            staticcall operatorAddress.getInvestor(address arg1) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3256 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _3470 = mem[_3256]
            require mem[_3256] <= 4294967296
            require mem[_3256] + 32 <= return_data.size
            require mem[_3256 + mem[_3256]] <= 4294967296 and mem[_3256] + (32 * mem[_3256 + mem[_3256]]) + 32 <= return_data.size
            _3831 = mem[_3256 + 32]
            _3832 = mem[_3256 + 64]
            require mem[_3256 + 64] <= 4294967296
            require mem[_3256 + 64] + 32 <= return_data.size
            require mem[_3256 + mem[_3256 + 64]] <= 4294967296 and mem[_3256 + 64] + (32 * mem[_3256 + mem[_3256 + 64]]) + 32 <= return_data.size
            _4814 = mem[_3256 + mem[_3256]]
            s = 0
            while s < _4814:
                require s < mem[_3256 + _3470]
                require (5 * idx) + s < mem[96]
                mem[(32 * (5 * idx) + s) + 128] = mem[(32 * s) + _3256 + _3470 + 44 len 20]
                s = s + 1
                continue 
            require (5 * idx) + 4 < mem[96]
            mem[(32 * (5 * idx) + 4) + 128] = address(ext_call.return_data[0])
            _6222 = mem[_3256 + _3832]
            s = 0
            while s < _6222:
                require s < mem[_3256 + _3832]
                require (16 * idx) + s < mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160]
                mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + (32 * (16 * idx) + s) + 192] = mem[(32 * s) + _3256 + _3832 + 32]
                _6222 = mem[_3256 + _3832]
                s = s + 1
                continue 
            require idx < mem[(32 * 5 * ext_call.return_data[0]) + 128]
            mem[(32 * 5 * ext_call.return_data[0]) + (32 * idx) + 160] = bool(_3831)
            require idx < mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192]
            mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + (32 * idx) + 224] = address(ext_call.return_data[0])
            idx = idx + 1
            continue 
        _2600 = mem[64]
        mem[mem[64]] = 128
        mem[mem[64] + 128] = mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192]
        _2602 = mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192]
        mem[mem[64] + 160 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192])] = mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 224 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + (546 * ext_call.return_data[0]) + 192])]
        mem[mem[64] + 32] = (32 * _2602) + 160
        mem[(32 * _2602) + mem[64] + 160] = mem[96]
        _4931 = mem[96]
        mem[(32 * _2602) + mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2602) + 192
        mem[(32 * _4931) + (32 * _2602) + _2600 + 192] = mem[(32 * 5 * ext_call.return_data[0]) + 128]
        _6339 = mem[(32 * 5 * ext_call.return_data[0]) + 128]
        mem[(32 * _4931) + (32 * _2602) + _2600 + 224 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + 128])] = mem[(32 * 5 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + 128])]
        mem[_2600 + 96] = (32 * _6339) + (32 * _4931) + (32 * _2602) + 224
        mem[(32 * _6339) + (32 * _4931) + (32 * _2602) + _2600 + 224] = mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160]
        _7145 = mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160]
        mem[(32 * _6339) + (32 * _4931) + (32 * _2602) + _2600 + 256 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160])] = mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 192 len floor32(mem[(32 * 5 * ext_call.return_data[0]) + (32 * ext_call.return_data[0]) + 160])]
        return memory
          from mem[64]
           len (32 * _7145) + (32 * _6339) + (32 * _4931) + (32 * _2602) + _2600 + -mem[64] + 256
    mem[96] = (5 * arg2) + 5
    if not (5 * arg2) + 5:
        mem[(32 * (5 * arg2) + 5) + 128] = arg2 + 1
        if not arg2 + 1:
            mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160] = 16 * arg2 + 1
            if Mask(252, 0, arg2 + 1):
                mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 192 len 512 * arg2 + 1] = code.data[11526 len 512 * arg2 + 1]
                mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738] = arg2 + 1
                mem[64] = (32 * (5 * arg2) + 5) + (546 * arg2) + (32 * arg2 + 1) + 770
                if not arg2 + 1:
                    idx = 0
                    while idx < arg2 + 1:
                        require ext_code.size(operatorAddress)
                        staticcall operatorAddress.0x95a25efa with:
                                gas gas_remaining wei
                               args idx
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64]] = 0x8f35a75e00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
                        require ext_code.size(operatorAddress)
                        staticcall operatorAddress.getInvestor(address arg1) with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3276 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _3475 = mem[_3276]
                        require mem[_3276] <= 4294967296
                        require mem[_3276] + 32 <= return_data.size
                        require mem[_3276 + mem[_3276]] <= 4294967296 and mem[_3276] + (32 * mem[_3276 + mem[_3276]]) + 32 <= return_data.size
                        _3851 = mem[_3276 + 32]
                        _3852 = mem[_3276 + 64]
                        require mem[_3276 + 64] <= 4294967296
                        require mem[_3276 + 64] + 32 <= return_data.size
                        require mem[_3276 + mem[_3276 + 64]] <= 4294967296 and mem[_3276 + 64] + (32 * mem[_3276 + mem[_3276 + 64]]) + 32 <= return_data.size
                        _4819 = mem[_3276 + mem[_3276]]
                        s = 0
                        while s < _4819:
                            require s < mem[_3276 + _3475]
                            require (5 * idx) + s < mem[96]
                            mem[(32 * (5 * idx) + s) + 128] = mem[(32 * s) + _3276 + _3475 + 44 len 20]
                            s = s + 1
                            continue 
                        require (5 * idx) + 4 < mem[96]
                        mem[(32 * (5 * idx) + 4) + 128] = address(ext_call.return_data[0])
                        _6227 = mem[_3276 + _3852]
                        s = 0
                        while s < _6227:
                            require s < mem[_3276 + _3852]
                            require (16 * idx) + s < mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160]
                            mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + (32 * (16 * idx) + s) + 192] = mem[(32 * s) + _3276 + _3852 + 32]
                            _6227 = mem[_3276 + _3852]
                            s = s + 1
                            continue 
                        require idx < mem[(32 * (5 * arg2) + 5) + 128]
                        mem[(32 * (5 * arg2) + 5) + (32 * idx) + 160] = bool(_3851)
                        require idx < mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738]
                        mem[(32 * (5 * arg2) + 5) + (546 * arg2) + (32 * idx) + 770] = address(ext_call.return_data[0])
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 128
                    mem[mem[64] + 128] = mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738]
                    _2617 = mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738]
                    mem[mem[64] + 160 len floor32(mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738])] = mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 770 len floor32(mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738])]
                    mem[mem[64] + 32] = (32 * _2617) + 160
                    mem[(32 * _2617) + mem[64] + 160] = mem[96]
                    mem[(32 * _2617) + mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                    mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2617) + 192
                    mem[(32 * mem[96]) + (32 * _2617) + mem[64] + 192] = mem[(32 * (5 * arg2) + 5) + 128]
                    _6364 = mem[(32 * (5 * arg2) + 5) + 128]
                    mem[(32 * mem[96]) + (32 * _2617) + mem[64] + 224 len floor32(mem[(32 * (5 * arg2) + 5) + 128])] = mem[(32 * (5 * arg2) + 5) + 160 len floor32(mem[(32 * (5 * arg2) + 5) + 128])]
                    mem[mem[64] + 96] = (32 * _6364) + (32 * mem[96]) + (32 * _2617) + 224
                    mem[(32 * _6364) + (32 * mem[96]) + (32 * _2617) + mem[64] + 224] = mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160]
                    _7160 = mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160]
                    mem[(32 * _6364) + (32 * mem[96]) + (32 * _2617) + mem[64] + 256 len floor32(mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160])] = mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 192 len floor32(mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160])]
                    return Array(len=mem[mem[64] + 128 len (32 * _2617) + 32], data=mem[96], mem[mem[64] + (32 * _2617) + 192 len (32 * _7160) + (32 * _6364) + (32 * mem[96]) + 64]), 
                           (32 * _2617) + 160,
                           (32 * mem[96]) + (32 * _2617) + 192,
                           (32 * _6364) + (32 * mem[96]) + (32 * _2617) + 224
                mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 770 len 32 * arg2 + 1] = code.data[11526 len 32 * arg2 + 1]
                idx = 0
                while idx < arg2 + 1:
                    require ext_code.size(operatorAddress)
                    staticcall operatorAddress.0x95a25efa with:
                            gas gas_remaining wei
                           args idx
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64]] = 0x8f35a75e00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(ext_call.return_data[0])
                    require ext_code.size(operatorAddress)
                    staticcall operatorAddress.getInvestor(address arg1) with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3280 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _3476 = mem[_3280]
                    require mem[_3280] <= 4294967296
                    require mem[_3280] + 32 <= return_data.size
                    require mem[_3280 + mem[_3280]] <= 4294967296 and mem[_3280] + (32 * mem[_3280 + mem[_3280]]) + 32 <= return_data.size
                    _3855 = mem[_3280 + 32]
                    _3856 = mem[_3280 + 64]
                    require mem[_3280 + 64] <= 4294967296
                    require mem[_3280 + 64] + 32 <= return_data.size
                    require mem[_3280 + mem[_3280 + 64]] <= 4294967296 and mem[_3280 + 64] + (32 * mem[_3280 + mem[_3280 + 64]]) + 32 <= return_data.size
                    _4820 = mem[_3280 + mem[_3280]]
                    s = 0
                    while s < _4820:
                        require s < mem[_3280 + _3476]
                        require (5 * idx) + s < mem[96]
                        mem[(32 * (5 * idx) + s) + 128] = mem[(32 * s) + _3280 + _3476 + 44 len 20]
                        s = s + 1
                        continue 
                    require (5 * idx) + 4 < mem[96]
                    mem[(32 * (5 * idx) + 4) + 128] = address(ext_call.return_data[0])
                    _6228 = mem[_3280 + _3856]
                    s = 0
                    while s < _6228:
                        require s < mem[_3280 + _3856]
                        require (16 * idx) + s < mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160]
                        mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + (32 * (16 * idx) + s) + 192] = mem[(32 * s) + _3280 + _3856 + 32]
                        _6228 = mem[_3280 + _3856]
                        s = s + 1
                        continue 
                    require idx < mem[(32 * (5 * arg2) + 5) + 128]
                    mem[(32 * (5 * arg2) + 5) + (32 * idx) + 160] = bool(_3855)
                    require idx < mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738]
                    mem[(32 * (5 * arg2) + 5) + (546 * arg2) + (32 * idx) + 770] = address(ext_call.return_data[0])
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 128
                mem[mem[64] + 128] = mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738]
                _2620 = mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738]
                mem[mem[64] + 160 len floor32(mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738])] = mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 770 len floor32(mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738])]
                mem[mem[64] + 32] = (32 * _2620) + 160
                mem[(32 * _2620) + mem[64] + 160] = mem[96]
                mem[(32 * _2620) + mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2620) + 192
                mem[(32 * mem[96]) + (32 * _2620) + mem[64] + 192] = mem[(32 * (5 * arg2) + 5) + 128]
                _6369 = mem[(32 * (5 * arg2) + 5) + 128]
                mem[(32 * mem[96]) + (32 * _2620) + mem[64] + 224 len floor32(mem[(32 * (5 * arg2) + 5) + 128])] = mem[(32 * (5 * arg2) + 5) + 160 len floor32(mem[(32 * (5 * arg2) + 5) + 128])]
                mem[mem[64] + 96] = (32 * _6369) + (32 * mem[96]) + (32 * _2620) + 224
                mem[(32 * _6369) + (32 * mem[96]) + (32 * _2620) + mem[64] + 224] = mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160]
                _7163 = mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160]
                mem[(32 * _6369) + (32 * mem[96]) + (32 * _2620) + mem[64] + 256 len floor32(mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160])] = mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 192 len floor32(mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160])]
                return Array(len=mem[mem[64] + 128 len (32 * _2620) + 32], data=mem[96], mem[mem[64] + (32 * _2620) + 192 len (32 * _7163) + (32 * _6369) + (32 * mem[96]) + 64]), 
                       (32 * _2620) + 160,
                       (32 * mem[96]) + (32 * _2620) + 192,
                       (32 * _6369) + (32 * mem[96]) + (32 * _2620) + 224
            mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738] = arg2 + 1
            mem[64] = (32 * (5 * arg2) + 5) + (546 * arg2) + (32 * arg2 + 1) + 770
            if not arg2 + 1:
                idx = 0
                while idx < arg2 + 1:
                    require ext_code.size(operatorAddress)
                    staticcall operatorAddress.0x95a25efa with:
                            gas gas_remaining wei
                           args idx
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64]] = 0x8f35a75e00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(ext_call.return_data[0])
                    require ext_code.size(operatorAddress)
                    staticcall operatorAddress.getInvestor(address arg1) with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3268 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _3473 = mem[_3268]
                    require mem[_3268] <= 4294967296
                    require mem[_3268] + 32 <= return_data.size
                    require mem[_3268 + mem[_3268]] <= 4294967296 and mem[_3268] + (32 * mem[_3268 + mem[_3268]]) + 32 <= return_data.size
                    _3843 = mem[_3268 + 32]
                    _3844 = mem[_3268 + 64]
                    require mem[_3268 + 64] <= 4294967296
                    require mem[_3268 + 64] + 32 <= return_data.size
                    require mem[_3268 + mem[_3268 + 64]] <= 4294967296 and mem[_3268 + 64] + (32 * mem[_3268 + mem[_3268 + 64]]) + 32 <= return_data.size
                    _4817 = mem[_3268 + mem[_3268]]
                    s = 0
                    while s < _4817:
                        require s < mem[_3268 + _3473]
                        require (5 * idx) + s < mem[96]
                        mem[(32 * (5 * idx) + s) + 128] = mem[(32 * s) + _3268 + _3473 + 44 len 20]
                        s = s + 1
                        continue 
                    require (5 * idx) + 4 < mem[96]
                    mem[(32 * (5 * idx) + 4) + 128] = address(ext_call.return_data[0])
                    _6225 = mem[_3268 + _3844]
                    s = 0
                    while s < _6225:
                        require s < mem[_3268 + _3844]
                        require (16 * idx) + s < mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160]
                        mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + (32 * (16 * idx) + s) + 192] = mem[(32 * s) + _3268 + _3844 + 32]
                        _6225 = mem[_3268 + _3844]
                        s = s + 1
                        continue 
                    require idx < mem[(32 * (5 * arg2) + 5) + 128]
                    mem[(32 * (5 * arg2) + 5) + (32 * idx) + 160] = bool(_3843)
                    require idx < mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738]
                    mem[(32 * (5 * arg2) + 5) + (546 * arg2) + (32 * idx) + 770] = address(ext_call.return_data[0])
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 128
                mem[mem[64] + 128] = mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738]
                _2611 = mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738]
                mem[mem[64] + 160 len floor32(mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738])] = mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 770 len floor32(mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738])]
                mem[mem[64] + 32] = (32 * _2611) + 160
                mem[(32 * _2611) + mem[64] + 160] = mem[96]
                _4946 = mem[96]
                mem[(32 * _2611) + mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2611) + 192
                mem[(32 * mem[96]) + (32 * _2611) + mem[64] + 192] = mem[(32 * (5 * arg2) + 5) + 128]
                _6354 = mem[(32 * (5 * arg2) + 5) + 128]
                mem[(32 * mem[96]) + (32 * _2611) + mem[64] + 224 len floor32(mem[(32 * (5 * arg2) + 5) + 128])] = mem[(32 * (5 * arg2) + 5) + 160 len floor32(mem[(32 * (5 * arg2) + 5) + 128])]
                mem[mem[64] + 96] = (32 * _6354) + (32 * mem[96]) + (32 * _2611) + 224
                mem[(32 * _6354) + (32 * mem[96]) + (32 * _2611) + mem[64] + 224] = mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160]
                _7154 = mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160]
                mem[(32 * _6354) + (32 * _4946) + (32 * _2611) + mem[64] + 256 len floor32(mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160])] = mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 192 len floor32(mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160])]
                return 128, (32 * _2611) + 160, mem[mem[64] + 64 len (32 * _7154) + (32 * _6354) + (32 * _4946) + (32 * _2611) + 192]
            mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 770 len 32 * arg2 + 1] = code.data[11526 len 32 * arg2 + 1]
            idx = 0
            while idx < arg2 + 1:
                require ext_code.size(operatorAddress)
                staticcall operatorAddress.0x95a25efa with:
                        gas gas_remaining wei
                       args idx
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64]] = 0x8f35a75e00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(ext_call.return_data[0])
                require ext_code.size(operatorAddress)
                staticcall operatorAddress.getInvestor(address arg1) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3272 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _3474 = mem[_3272]
                require mem[_3272] <= 4294967296
                require mem[_3272] + 32 <= return_data.size
                require mem[_3272 + mem[_3272]] <= 4294967296 and mem[_3272] + (32 * mem[_3272 + mem[_3272]]) + 32 <= return_data.size
                _3847 = mem[_3272 + 32]
                _3848 = mem[_3272 + 64]
                require mem[_3272 + 64] <= 4294967296
                require mem[_3272 + 64] + 32 <= return_data.size
                require mem[_3272 + mem[_3272 + 64]] <= 4294967296 and mem[_3272 + 64] + (32 * mem[_3272 + mem[_3272 + 64]]) + 32 <= return_data.size
                _4818 = mem[_3272 + mem[_3272]]
                s = 0
                while s < _4818:
                    require s < mem[_3272 + _3474]
                    require (5 * idx) + s < mem[96]
                    mem[(32 * (5 * idx) + s) + 128] = mem[(32 * s) + _3272 + _3474 + 44 len 20]
                    s = s + 1
                    continue 
                require (5 * idx) + 4 < mem[96]
                mem[(32 * (5 * idx) + 4) + 128] = address(ext_call.return_data[0])
                _6226 = mem[_3272 + _3848]
                s = 0
                while s < _6226:
                    require s < mem[_3272 + _3848]
                    require (16 * idx) + s < mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160]
                    mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + (32 * (16 * idx) + s) + 192] = mem[(32 * s) + _3272 + _3848 + 32]
                    _6226 = mem[_3272 + _3848]
                    s = s + 1
                    continue 
                require idx < mem[(32 * (5 * arg2) + 5) + 128]
                mem[(32 * (5 * arg2) + 5) + (32 * idx) + 160] = bool(_3847)
                require idx < mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738]
                mem[(32 * (5 * arg2) + 5) + (546 * arg2) + (32 * idx) + 770] = address(ext_call.return_data[0])
                idx = idx + 1
                continue 
            _2612 = mem[64]
            mem[mem[64]] = 128
            mem[mem[64] + 128] = mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738]
            _2614 = mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738]
            mem[mem[64] + 160 len floor32(mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738])] = mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 770 len floor32(mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738])]
            mem[mem[64] + 32] = (32 * _2614) + 160
            mem[(32 * _2614) + mem[64] + 160] = mem[96]
            _4951 = mem[96]
            mem[(32 * _2614) + mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2614) + 192
            mem[(32 * _4951) + (32 * _2614) + _2612 + 192] = mem[(32 * (5 * arg2) + 5) + 128]
            _6359 = mem[(32 * (5 * arg2) + 5) + 128]
            mem[(32 * _4951) + (32 * _2614) + _2612 + 224 len floor32(mem[(32 * (5 * arg2) + 5) + 128])] = mem[(32 * (5 * arg2) + 5) + 160 len floor32(mem[(32 * (5 * arg2) + 5) + 128])]
            mem[_2612 + 96] = (32 * _6359) + (32 * _4951) + (32 * _2614) + 224
            mem[(32 * _6359) + (32 * _4951) + (32 * _2614) + _2612 + 224] = mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160]
            _7157 = mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160]
            mem[(32 * _6359) + (32 * _4951) + (32 * _2614) + _2612 + 256 len floor32(mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160])] = mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 192 len floor32(mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160])]
            return memory
              from mem[64]
               len (32 * _7157) + (32 * _6359) + (32 * _4951) + (32 * _2614) + _2612 + -mem[64] + 256
        mem[(32 * (5 * arg2) + 5) + 160 len 32 * arg2 + 1] = code.data[11526 len 32 * arg2 + 1]
        mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160] = 16 * arg2 + 1
        if not Mask(252, 0, arg2 + 1):
            mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738] = arg2 + 1
            mem[64] = (32 * (5 * arg2) + 5) + (546 * arg2) + (32 * arg2 + 1) + 770
            if not arg2 + 1:
                idx = 0
                while idx < arg2 + 1:
                    require ext_code.size(operatorAddress)
                    staticcall operatorAddress.0x95a25efa with:
                            gas gas_remaining wei
                           args idx
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64]] = 0x8f35a75e00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(ext_call.return_data[0])
                    require ext_code.size(operatorAddress)
                    staticcall operatorAddress.getInvestor(address arg1) with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3284 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _3477 = mem[_3284]
                    require mem[_3284] <= 4294967296
                    require mem[_3284] + 32 <= return_data.size
                    require mem[_3284 + mem[_3284]] <= 4294967296 and mem[_3284] + (32 * mem[_3284 + mem[_3284]]) + 32 <= return_data.size
                    _3859 = mem[_3284 + 32]
                    _3860 = mem[_3284 + 64]
                    require mem[_3284 + 64] <= 4294967296
                    require mem[_3284 + 64] + 32 <= return_data.size
                    require mem[_3284 + mem[_3284 + 64]] <= 4294967296 and mem[_3284 + 64] + (32 * mem[_3284 + mem[_3284 + 64]]) + 32 <= return_data.size
                    _4821 = mem[_3284 + mem[_3284]]
                    s = 0
                    while s < _4821:
                        require s < mem[_3284 + _3477]
                        require (5 * idx) + s < mem[96]
                        mem[(32 * (5 * idx) + s) + 128] = mem[(32 * s) + _3284 + _3477 + 44 len 20]
                        s = s + 1
                        continue 
                    require (5 * idx) + 4 < mem[96]
                    mem[(32 * (5 * idx) + 4) + 128] = address(ext_call.return_data[0])
                    _6229 = mem[_3284 + _3860]
                    s = 0
                    while s < _6229:
                        require s < mem[_3284 + _3860]
                        require (16 * idx) + s < mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160]
                        mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + (32 * (16 * idx) + s) + 192] = mem[(32 * s) + _3284 + _3860 + 32]
                        _6229 = mem[_3284 + _3860]
                        s = s + 1
                        continue 
                    require idx < mem[(32 * (5 * arg2) + 5) + 128]
                    mem[(32 * (5 * arg2) + 5) + (32 * idx) + 160] = bool(_3859)
                    require idx < mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738]
                    mem[(32 * (5 * arg2) + 5) + (546 * arg2) + (32 * idx) + 770] = address(ext_call.return_data[0])
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 128
                mem[mem[64] + 128] = mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738]
                _2623 = mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738]
                mem[mem[64] + 160 len floor32(mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738])] = mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 770 len floor32(mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738])]
                mem[mem[64] + 32] = (32 * _2623) + 160
                mem[(32 * _2623) + mem[64] + 160] = mem[96]
                mem[(32 * _2623) + mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2623) + 192
                mem[(32 * mem[96]) + (32 * _2623) + mem[64] + 192] = mem[(32 * (5 * arg2) + 5) + 128]
                _6374 = mem[(32 * (5 * arg2) + 5) + 128]
                mem[(32 * mem[96]) + (32 * _2623) + mem[64] + 224 len floor32(mem[(32 * (5 * arg2) + 5) + 128])] = mem[(32 * (5 * arg2) + 5) + 160 len floor32(mem[(32 * (5 * arg2) + 5) + 128])]
                mem[mem[64] + 96] = (32 * _6374) + (32 * mem[96]) + (32 * _2623) + 224
                mem[(32 * _6374) + (32 * mem[96]) + (32 * _2623) + mem[64] + 224] = mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160]
                _7166 = mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160]
                mem[(32 * _6374) + (32 * mem[96]) + (32 * _2623) + mem[64] + 256 len floor32(mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160])] = mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 192 len floor32(mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160])]
                return Array(len=mem[mem[64] + 128 len (32 * _2623) + 32], data=mem[96], mem[mem[64] + (32 * _2623) + 192 len (32 * _7166) + (32 * _6374) + (32 * mem[96]) + 64]), 
                       (32 * _2623) + 160,
                       (32 * mem[96]) + (32 * _2623) + 192,
                       (32 * _6374) + (32 * mem[96]) + (32 * _2623) + 224
            mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 770 len 32 * arg2 + 1] = code.data[11526 len 32 * arg2 + 1]
            idx = 0
            while idx < arg2 + 1:
                require ext_code.size(operatorAddress)
                staticcall operatorAddress.0x95a25efa with:
                        gas gas_remaining wei
                       args idx
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64]] = 0x8f35a75e00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(ext_call.return_data[0])
                require ext_code.size(operatorAddress)
                staticcall operatorAddress.getInvestor(address arg1) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3288 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _3478 = mem[_3288]
                require mem[_3288] <= 4294967296
                require mem[_3288] + 32 <= return_data.size
                require mem[_3288 + mem[_3288]] <= 4294967296 and mem[_3288] + (32 * mem[_3288 + mem[_3288]]) + 32 <= return_data.size
                _3863 = mem[_3288 + 32]
                _3864 = mem[_3288 + 64]
                require mem[_3288 + 64] <= 4294967296
                require mem[_3288 + 64] + 32 <= return_data.size
                require mem[_3288 + mem[_3288 + 64]] <= 4294967296 and mem[_3288 + 64] + (32 * mem[_3288 + mem[_3288 + 64]]) + 32 <= return_data.size
                _4822 = mem[_3288 + mem[_3288]]
                s = 0
                while s < _4822:
                    require s < mem[_3288 + _3478]
                    require (5 * idx) + s < mem[96]
                    mem[(32 * (5 * idx) + s) + 128] = mem[(32 * s) + _3288 + _3478 + 44 len 20]
                    s = s + 1
                    continue 
                require (5 * idx) + 4 < mem[96]
                mem[(32 * (5 * idx) + 4) + 128] = address(ext_call.return_data[0])
                _6230 = mem[_3288 + _3864]
                s = 0
                while s < _6230:
                    require s < mem[_3288 + _3864]
                    require (16 * idx) + s < mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160]
                    mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + (32 * (16 * idx) + s) + 192] = mem[(32 * s) + _3288 + _3864 + 32]
                    _6230 = mem[_3288 + _3864]
                    s = s + 1
                    continue 
                require idx < mem[(32 * (5 * arg2) + 5) + 128]
                mem[(32 * (5 * arg2) + 5) + (32 * idx) + 160] = bool(_3863)
                require idx < mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738]
                mem[(32 * (5 * arg2) + 5) + (546 * arg2) + (32 * idx) + 770] = address(ext_call.return_data[0])
                idx = idx + 1
                continue 
            mem[mem[64]] = 128
            mem[mem[64] + 128] = mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738]
            _2626 = mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738]
            mem[mem[64] + 160 len floor32(mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738])] = mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 770 len floor32(mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738])]
            mem[mem[64] + 32] = (32 * _2626) + 160
            mem[(32 * _2626) + mem[64] + 160] = mem[96]
            mem[(32 * _2626) + mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2626) + 192
            mem[(32 * mem[96]) + (32 * _2626) + mem[64] + 192] = mem[(32 * (5 * arg2) + 5) + 128]
            _6379 = mem[(32 * (5 * arg2) + 5) + 128]
            mem[(32 * mem[96]) + (32 * _2626) + mem[64] + 224 len floor32(mem[(32 * (5 * arg2) + 5) + 128])] = mem[(32 * (5 * arg2) + 5) + 160 len floor32(mem[(32 * (5 * arg2) + 5) + 128])]
            mem[mem[64] + 96] = (32 * _6379) + (32 * mem[96]) + (32 * _2626) + 224
            mem[(32 * _6379) + (32 * mem[96]) + (32 * _2626) + mem[64] + 224] = mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160]
            _7169 = mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160]
            mem[(32 * _6379) + (32 * mem[96]) + (32 * _2626) + mem[64] + 256 len floor32(mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160])] = mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 192 len floor32(mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160])]
            return Array(len=mem[mem[64] + 128 len (32 * _2626) + 32], data=mem[96], mem[mem[64] + (32 * _2626) + 192 len (32 * _7169) + (32 * _6379) + (32 * mem[96]) + 64]), 
                   (32 * _2626) + 160,
                   (32 * mem[96]) + (32 * _2626) + 192,
                   (32 * _6379) + (32 * mem[96]) + (32 * _2626) + 224
        mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 192 len 512 * arg2 + 1] = code.data[11526 len 512 * arg2 + 1]
        mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738] = arg2 + 1
        mem[64] = (32 * (5 * arg2) + 5) + (546 * arg2) + (32 * arg2 + 1) + 770
        if not arg2 + 1:
            idx = 0
            while idx < arg2 + 1:
                require ext_code.size(operatorAddress)
                staticcall operatorAddress.0x95a25efa with:
                        gas gas_remaining wei
                       args idx
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64]] = 0x8f35a75e00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(ext_call.return_data[0])
                require ext_code.size(operatorAddress)
                staticcall operatorAddress.getInvestor(address arg1) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3292 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _3479 = mem[_3292]
                require mem[_3292] <= 4294967296
                require mem[_3292] + 32 <= return_data.size
                require mem[_3292 + mem[_3292]] <= 4294967296 and mem[_3292] + (32 * mem[_3292 + mem[_3292]]) + 32 <= return_data.size
                _3867 = mem[_3292 + 32]
                _3868 = mem[_3292 + 64]
                require mem[_3292 + 64] <= 4294967296
                require mem[_3292 + 64] + 32 <= return_data.size
                require mem[_3292 + mem[_3292 + 64]] <= 4294967296 and mem[_3292 + 64] + (32 * mem[_3292 + mem[_3292 + 64]]) + 32 <= return_data.size
                _4823 = mem[_3292 + mem[_3292]]
                s = 0
                while s < _4823:
                    require s < mem[_3292 + _3479]
                    require (5 * idx) + s < mem[96]
                    mem[(32 * (5 * idx) + s) + 128] = mem[(32 * s) + _3292 + _3479 + 44 len 20]
                    s = s + 1
                    continue 
                require (5 * idx) + 4 < mem[96]
                mem[(32 * (5 * idx) + 4) + 128] = address(ext_call.return_data[0])
                _6231 = mem[_3292 + _3868]
                s = 0
                while s < _6231:
                    require s < mem[_3292 + _3868]
                    require (16 * idx) + s < mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160]
                    mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + (32 * (16 * idx) + s) + 192] = mem[(32 * s) + _3292 + _3868 + 32]
                    _6231 = mem[_3292 + _3868]
                    s = s + 1
                    continue 
                require idx < mem[(32 * (5 * arg2) + 5) + 128]
                mem[(32 * (5 * arg2) + 5) + (32 * idx) + 160] = bool(_3867)
                require idx < mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738]
                mem[(32 * (5 * arg2) + 5) + (546 * arg2) + (32 * idx) + 770] = address(ext_call.return_data[0])
                idx = idx + 1
                continue 
            mem[mem[64]] = 128
            mem[mem[64] + 128] = mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738]
            _2629 = mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738]
            mem[mem[64] + 160 len floor32(mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738])] = mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 770 len floor32(mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738])]
            mem[mem[64] + 32] = (32 * _2629) + 160
            mem[(32 * _2629) + mem[64] + 160] = mem[96]
            _4976 = mem[96]
            mem[(32 * _2629) + mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2629) + 192
            mem[(32 * mem[96]) + (32 * _2629) + mem[64] + 192] = mem[(32 * (5 * arg2) + 5) + 128]
            _6384 = mem[(32 * (5 * arg2) + 5) + 128]
            mem[(32 * mem[96]) + (32 * _2629) + mem[64] + 224 len floor32(mem[(32 * (5 * arg2) + 5) + 128])] = mem[(32 * (5 * arg2) + 5) + 160 len floor32(mem[(32 * (5 * arg2) + 5) + 128])]
            mem[mem[64] + 96] = (32 * _6384) + (32 * mem[96]) + (32 * _2629) + 224
            mem[(32 * _6384) + (32 * mem[96]) + (32 * _2629) + mem[64] + 224] = mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160]
            _7172 = mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160]
            mem[(32 * _6384) + (32 * _4976) + (32 * _2629) + mem[64] + 256 len floor32(mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160])] = mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 192 len floor32(mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160])]
            return 128, (32 * _2629) + 160, mem[mem[64] + 64 len (32 * _7172) + (32 * _6384) + (32 * _4976) + (32 * _2629) + 192]
        mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 770 len 32 * arg2 + 1] = code.data[11526 len 32 * arg2 + 1]
        idx = 0
        while idx < arg2 + 1:
            require ext_code.size(operatorAddress)
            staticcall operatorAddress.0x95a25efa with:
                    gas gas_remaining wei
                   args idx
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64]] = 0x8f35a75e00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(ext_call.return_data[0])
            require ext_code.size(operatorAddress)
            staticcall operatorAddress.getInvestor(address arg1) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3296 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _3480 = mem[_3296]
            require mem[_3296] <= 4294967296
            require mem[_3296] + 32 <= return_data.size
            require mem[_3296 + mem[_3296]] <= 4294967296 and mem[_3296] + (32 * mem[_3296 + mem[_3296]]) + 32 <= return_data.size
            _3871 = mem[_3296 + 32]
            _3872 = mem[_3296 + 64]
            require mem[_3296 + 64] <= 4294967296
            require mem[_3296 + 64] + 32 <= return_data.size
            require mem[_3296 + mem[_3296 + 64]] <= 4294967296 and mem[_3296 + 64] + (32 * mem[_3296 + mem[_3296 + 64]]) + 32 <= return_data.size
            _4824 = mem[_3296 + mem[_3296]]
            s = 0
            while s < _4824:
                require s < mem[_3296 + _3480]
                require (5 * idx) + s < mem[96]
                mem[(32 * (5 * idx) + s) + 128] = mem[(32 * s) + _3296 + _3480 + 44 len 20]
                s = s + 1
                continue 
            require (5 * idx) + 4 < mem[96]
            mem[(32 * (5 * idx) + 4) + 128] = address(ext_call.return_data[0])
            _6232 = mem[_3296 + _3872]
            s = 0
            while s < _6232:
                require s < mem[_3296 + _3872]
                require (16 * idx) + s < mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160]
                mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + (32 * (16 * idx) + s) + 192] = mem[(32 * s) + _3296 + _3872 + 32]
                _6232 = mem[_3296 + _3872]
                s = s + 1
                continue 
            require idx < mem[(32 * (5 * arg2) + 5) + 128]
            mem[(32 * (5 * arg2) + 5) + (32 * idx) + 160] = bool(_3871)
            require idx < mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738]
            mem[(32 * (5 * arg2) + 5) + (546 * arg2) + (32 * idx) + 770] = address(ext_call.return_data[0])
            idx = idx + 1
            continue 
        mem[mem[64]] = 128
        mem[mem[64] + 128] = mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738]
        _2632 = mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738]
        mem[mem[64] + 160 len floor32(mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738])] = mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 770 len floor32(mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738])]
        mem[mem[64] + 32] = (32 * _2632) + 160
        mem[(32 * _2632) + mem[64] + 160] = mem[96]
        mem[(32 * _2632) + mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2632) + 192
        mem[(32 * mem[96]) + (32 * _2632) + mem[64] + 192] = mem[(32 * (5 * arg2) + 5) + 128]
        _6389 = mem[(32 * (5 * arg2) + 5) + 128]
        mem[(32 * mem[96]) + (32 * _2632) + mem[64] + 224 len floor32(mem[(32 * (5 * arg2) + 5) + 128])] = mem[(32 * (5 * arg2) + 5) + 160 len floor32(mem[(32 * (5 * arg2) + 5) + 128])]
        mem[mem[64] + 96] = (32 * _6389) + (32 * mem[96]) + (32 * _2632) + 224
        mem[(32 * _6389) + (32 * mem[96]) + (32 * _2632) + mem[64] + 224] = mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160]
        _7175 = mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160]
        mem[(32 * _6389) + (32 * mem[96]) + (32 * _2632) + mem[64] + 256 len floor32(mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160])] = mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 192 len floor32(mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160])]
        return Array(len=mem[mem[64] + 128 len (32 * _2632) + 32], data=mem[96], mem[mem[64] + (32 * _2632) + 192 len (32 * _7175) + (32 * _6389) + (32 * mem[96]) + 64]), 
               (32 * _2632) + 160,
               (32 * mem[96]) + (32 * _2632) + 192,
               (32 * _6389) + (32 * mem[96]) + (32 * _2632) + 224
    mem[128 len 32 * (5 * arg2) + 5] = code.data[11526 len 32 * (5 * arg2) + 5]
    mem[(32 * (5 * arg2) + 5) + 128] = arg2 + 1
    if not arg2 + 1:
        mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160] = 16 * arg2 + 1
        if not Mask(252, 0, arg2 + 1):
            mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738] = arg2 + 1
            mem[64] = (32 * (5 * arg2) + 5) + (546 * arg2) + (32 * arg2 + 1) + 770
            if not arg2 + 1:
                idx = 0
                while idx < arg2 + 1:
                    require ext_code.size(operatorAddress)
                    staticcall operatorAddress.0x95a25efa with:
                            gas gas_remaining wei
                           args idx
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64]] = 0x8f35a75e00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(ext_call.return_data[0])
                    require ext_code.size(operatorAddress)
                    staticcall operatorAddress.getInvestor(address arg1) with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3300 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _3481 = mem[_3300]
                    require mem[_3300] <= 4294967296
                    require mem[_3300] + 32 <= return_data.size
                    require mem[_3300 + mem[_3300]] <= 4294967296 and mem[_3300] + (32 * mem[_3300 + mem[_3300]]) + 32 <= return_data.size
                    _3875 = mem[_3300 + 32]
                    _3876 = mem[_3300 + 64]
                    require mem[_3300 + 64] <= 4294967296
                    require mem[_3300 + 64] + 32 <= return_data.size
                    require mem[_3300 + mem[_3300 + 64]] <= 4294967296 and mem[_3300 + 64] + (32 * mem[_3300 + mem[_3300 + 64]]) + 32 <= return_data.size
                    _4825 = mem[_3300 + mem[_3300]]
                    s = 0
                    while s < _4825:
                        require s < mem[_3300 + _3481]
                        require (5 * idx) + s < mem[96]
                        mem[(32 * (5 * idx) + s) + 128] = mem[(32 * s) + _3300 + _3481 + 44 len 20]
                        s = s + 1
                        continue 
                    require (5 * idx) + 4 < mem[96]
                    mem[(32 * (5 * idx) + 4) + 128] = address(ext_call.return_data[0])
                    _6233 = mem[_3300 + _3876]
                    s = 0
                    while s < _6233:
                        require s < mem[_3300 + _3876]
                        require (16 * idx) + s < mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160]
                        mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + (32 * (16 * idx) + s) + 192] = mem[(32 * s) + _3300 + _3876 + 32]
                        _6233 = mem[_3300 + _3876]
                        s = s + 1
                        continue 
                    require idx < mem[(32 * (5 * arg2) + 5) + 128]
                    mem[(32 * (5 * arg2) + 5) + (32 * idx) + 160] = bool(_3875)
                    require idx < mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738]
                    mem[(32 * (5 * arg2) + 5) + (546 * arg2) + (32 * idx) + 770] = address(ext_call.return_data[0])
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 128
                mem[mem[64] + 128] = mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738]
                _2635 = mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738]
                mem[mem[64] + 160 len floor32(mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738])] = mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 770 len floor32(mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738])]
                mem[mem[64] + 32] = (32 * _2635) + 160
                mem[(32 * _2635) + mem[64] + 160] = mem[96]
                mem[(32 * _2635) + mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2635) + 192
                mem[(32 * mem[96]) + (32 * _2635) + mem[64] + 192] = mem[(32 * (5 * arg2) + 5) + 128]
                _6394 = mem[(32 * (5 * arg2) + 5) + 128]
                mem[(32 * mem[96]) + (32 * _2635) + mem[64] + 224 len floor32(mem[(32 * (5 * arg2) + 5) + 128])] = mem[(32 * (5 * arg2) + 5) + 160 len floor32(mem[(32 * (5 * arg2) + 5) + 128])]
                mem[mem[64] + 96] = (32 * _6394) + (32 * mem[96]) + (32 * _2635) + 224
                mem[(32 * _6394) + (32 * mem[96]) + (32 * _2635) + mem[64] + 224] = mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160]
                _7178 = mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160]
                mem[(32 * _6394) + (32 * mem[96]) + (32 * _2635) + mem[64] + 256 len floor32(mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160])] = mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 192 len floor32(mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160])]
                return Array(len=mem[mem[64] + 128 len (32 * _2635) + 32], data=mem[96], mem[mem[64] + (32 * _2635) + 192 len (32 * _7178) + (32 * _6394) + (32 * mem[96]) + 64]), 
                       (32 * _2635) + 160,
                       (32 * mem[96]) + (32 * _2635) + 192,
                       (32 * _6394) + (32 * mem[96]) + (32 * _2635) + 224
            mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 770 len 32 * arg2 + 1] = code.data[11526 len 32 * arg2 + 1]
            idx = 0
            while idx < arg2 + 1:
                require ext_code.size(operatorAddress)
                staticcall operatorAddress.0x95a25efa with:
                        gas gas_remaining wei
                       args idx
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64]] = 0x8f35a75e00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(ext_call.return_data[0])
                require ext_code.size(operatorAddress)
                staticcall operatorAddress.getInvestor(address arg1) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3304 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _3482 = mem[_3304]
                require mem[_3304] <= 4294967296
                require mem[_3304] + 32 <= return_data.size
                require mem[_3304 + mem[_3304]] <= 4294967296 and mem[_3304] + (32 * mem[_3304 + mem[_3304]]) + 32 <= return_data.size
                _3879 = mem[_3304 + 32]
                _3880 = mem[_3304 + 64]
                require mem[_3304 + 64] <= 4294967296
                require mem[_3304 + 64] + 32 <= return_data.size
                require mem[_3304 + mem[_3304 + 64]] <= 4294967296 and mem[_3304 + 64] + (32 * mem[_3304 + mem[_3304 + 64]]) + 32 <= return_data.size
                _4826 = mem[_3304 + mem[_3304]]
                s = 0
                while s < _4826:
                    require s < mem[_3304 + _3482]
                    require (5 * idx) + s < mem[96]
                    mem[(32 * (5 * idx) + s) + 128] = mem[(32 * s) + _3304 + _3482 + 44 len 20]
                    s = s + 1
                    continue 
                require (5 * idx) + 4 < mem[96]
                mem[(32 * (5 * idx) + 4) + 128] = address(ext_call.return_data[0])
                _6234 = mem[_3304 + _3880]
                s = 0
                while s < _6234:
                    require s < mem[_3304 + _3880]
                    require (16 * idx) + s < mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160]
                    mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + (32 * (16 * idx) + s) + 192] = mem[(32 * s) + _3304 + _3880 + 32]
                    _6234 = mem[_3304 + _3880]
                    s = s + 1
                    continue 
                require idx < mem[(32 * (5 * arg2) + 5) + 128]
                mem[(32 * (5 * arg2) + 5) + (32 * idx) + 160] = bool(_3879)
                require idx < mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738]
                mem[(32 * (5 * arg2) + 5) + (546 * arg2) + (32 * idx) + 770] = address(ext_call.return_data[0])
                idx = idx + 1
                continue 
            mem[mem[64]] = 128
            mem[mem[64] + 128] = mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738]
            _2638 = mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738]
            mem[mem[64] + 160 len floor32(mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738])] = mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 770 len floor32(mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738])]
            mem[mem[64] + 32] = (32 * _2638) + 160
            mem[(32 * _2638) + mem[64] + 160] = mem[96]
            mem[(32 * _2638) + mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2638) + 192
            mem[(32 * mem[96]) + (32 * _2638) + mem[64] + 192] = mem[(32 * (5 * arg2) + 5) + 128]
            _6399 = mem[(32 * (5 * arg2) + 5) + 128]
            mem[(32 * mem[96]) + (32 * _2638) + mem[64] + 224 len floor32(mem[(32 * (5 * arg2) + 5) + 128])] = mem[(32 * (5 * arg2) + 5) + 160 len floor32(mem[(32 * (5 * arg2) + 5) + 128])]
            mem[mem[64] + 96] = (32 * _6399) + (32 * mem[96]) + (32 * _2638) + 224
            mem[(32 * _6399) + (32 * mem[96]) + (32 * _2638) + mem[64] + 224] = mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160]
            _7181 = mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160]
            mem[(32 * _6399) + (32 * mem[96]) + (32 * _2638) + mem[64] + 256 len floor32(mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160])] = mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 192 len floor32(mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160])]
            return Array(len=mem[mem[64] + 128 len (32 * _2638) + 32], data=mem[96], mem[mem[64] + (32 * _2638) + 192 len (32 * _7181) + (32 * _6399) + (32 * mem[96]) + 64]), 
                   (32 * _2638) + 160,
                   (32 * mem[96]) + (32 * _2638) + 192,
                   (32 * _6399) + (32 * mem[96]) + (32 * _2638) + 224
        mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 192 len 512 * arg2 + 1] = code.data[11526 len 512 * arg2 + 1]
        mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738] = arg2 + 1
        mem[64] = (32 * (5 * arg2) + 5) + (546 * arg2) + (32 * arg2 + 1) + 770
        if not arg2 + 1:
            idx = 0
            while idx < arg2 + 1:
                require ext_code.size(operatorAddress)
                staticcall operatorAddress.0x95a25efa with:
                        gas gas_remaining wei
                       args idx
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64]] = 0x8f35a75e00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(ext_call.return_data[0])
                require ext_code.size(operatorAddress)
                staticcall operatorAddress.getInvestor(address arg1) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3308 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _3483 = mem[_3308]
                require mem[_3308] <= 4294967296
                require mem[_3308] + 32 <= return_data.size
                require mem[_3308 + mem[_3308]] <= 4294967296 and mem[_3308] + (32 * mem[_3308 + mem[_3308]]) + 32 <= return_data.size
                _3883 = mem[_3308 + 32]
                _3884 = mem[_3308 + 64]
                require mem[_3308 + 64] <= 4294967296
                require mem[_3308 + 64] + 32 <= return_data.size
                require mem[_3308 + mem[_3308 + 64]] <= 4294967296 and mem[_3308 + 64] + (32 * mem[_3308 + mem[_3308 + 64]]) + 32 <= return_data.size
                _4827 = mem[_3308 + mem[_3308]]
                s = 0
                while s < _4827:
                    require s < mem[_3308 + _3483]
                    require (5 * idx) + s < mem[96]
                    mem[(32 * (5 * idx) + s) + 128] = mem[(32 * s) + _3308 + _3483 + 44 len 20]
                    s = s + 1
                    continue 
                require (5 * idx) + 4 < mem[96]
                mem[(32 * (5 * idx) + 4) + 128] = address(ext_call.return_data[0])
                _6235 = mem[_3308 + _3884]
                s = 0
                while s < _6235:
                    require s < mem[_3308 + _3884]
                    require (16 * idx) + s < mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160]
                    mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + (32 * (16 * idx) + s) + 192] = mem[(32 * s) + _3308 + _3884 + 32]
                    _6235 = mem[_3308 + _3884]
                    s = s + 1
                    continue 
                require idx < mem[(32 * (5 * arg2) + 5) + 128]
                mem[(32 * (5 * arg2) + 5) + (32 * idx) + 160] = bool(_3883)
                require idx < mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738]
                mem[(32 * (5 * arg2) + 5) + (546 * arg2) + (32 * idx) + 770] = address(ext_call.return_data[0])
                idx = idx + 1
                continue 
            mem[mem[64]] = 128
            mem[mem[64] + 128] = mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738]
            _2641 = mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738]
            mem[mem[64] + 160 len floor32(mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738])] = mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 770 len floor32(mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738])]
            mem[mem[64] + 32] = (32 * _2641) + 160
            mem[(32 * _2641) + mem[64] + 160] = mem[96]
            mem[(32 * _2641) + mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2641) + 192
            mem[(32 * mem[96]) + (32 * _2641) + mem[64] + 192] = mem[(32 * (5 * arg2) + 5) + 128]
            _6404 = mem[(32 * (5 * arg2) + 5) + 128]
            mem[(32 * mem[96]) + (32 * _2641) + mem[64] + 224 len floor32(mem[(32 * (5 * arg2) + 5) + 128])] = mem[(32 * (5 * arg2) + 5) + 160 len floor32(mem[(32 * (5 * arg2) + 5) + 128])]
            mem[mem[64] + 96] = (32 * _6404) + (32 * mem[96]) + (32 * _2641) + 224
            mem[(32 * _6404) + (32 * mem[96]) + (32 * _2641) + mem[64] + 224] = mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160]
            _7184 = mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160]
            mem[(32 * _6404) + (32 * mem[96]) + (32 * _2641) + mem[64] + 256 len floor32(mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160])] = mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 192 len floor32(mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160])]
            return Array(len=mem[mem[64] + 128 len (32 * _2641) + 32], data=mem[96], mem[mem[64] + (32 * _2641) + 192 len (32 * _7184) + (32 * _6404) + (32 * mem[96]) + 64]), 
                   (32 * _2641) + 160,
                   (32 * mem[96]) + (32 * _2641) + 192,
                   (32 * _6404) + (32 * mem[96]) + (32 * _2641) + 224
        mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 770 len 32 * arg2 + 1] = code.data[11526 len 32 * arg2 + 1]
        idx = 0
        while idx < arg2 + 1:
            require ext_code.size(operatorAddress)
            staticcall operatorAddress.0x95a25efa with:
                    gas gas_remaining wei
                   args idx
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64]] = 0x8f35a75e00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(ext_call.return_data[0])
            require ext_code.size(operatorAddress)
            staticcall operatorAddress.getInvestor(address arg1) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3312 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _3484 = mem[_3312]
            require mem[_3312] <= 4294967296
            require mem[_3312] + 32 <= return_data.size
            require mem[_3312 + mem[_3312]] <= 4294967296 and mem[_3312] + (32 * mem[_3312 + mem[_3312]]) + 32 <= return_data.size
            _3887 = mem[_3312 + 32]
            _3888 = mem[_3312 + 64]
            require mem[_3312 + 64] <= 4294967296
            require mem[_3312 + 64] + 32 <= return_data.size
            require mem[_3312 + mem[_3312 + 64]] <= 4294967296 and mem[_3312 + 64] + (32 * mem[_3312 + mem[_3312 + 64]]) + 32 <= return_data.size
            _4828 = mem[_3312 + mem[_3312]]
            s = 0
            while s < _4828:
                require s < mem[_3312 + _3484]
                require (5 * idx) + s < mem[96]
                mem[(32 * (5 * idx) + s) + 128] = mem[(32 * s) + _3312 + _3484 + 44 len 20]
                s = s + 1
                continue 
            require (5 * idx) + 4 < mem[96]
            mem[(32 * (5 * idx) + 4) + 128] = address(ext_call.return_data[0])
            _6236 = mem[_3312 + _3888]
            s = 0
            while s < _6236:
                require s < mem[_3312 + _3888]
                require (16 * idx) + s < mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160]
                mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + (32 * (16 * idx) + s) + 192] = mem[(32 * s) + _3312 + _3888 + 32]
                _6236 = mem[_3312 + _3888]
                s = s + 1
                continue 
            require idx < mem[(32 * (5 * arg2) + 5) + 128]
            mem[(32 * (5 * arg2) + 5) + (32 * idx) + 160] = bool(_3887)
            require idx < mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738]
            mem[(32 * (5 * arg2) + 5) + (546 * arg2) + (32 * idx) + 770] = address(ext_call.return_data[0])
            idx = idx + 1
            continue 
        _2642 = mem[64]
        mem[mem[64]] = 128
        mem[mem[64] + 128] = mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738]
        _2644 = mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738]
        mem[mem[64] + 160 len floor32(mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738])] = mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 770 len floor32(mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738])]
        mem[mem[64] + 32] = (32 * _2644) + 160
        mem[(32 * _2644) + mem[64] + 160] = mem[96]
        _5001 = mem[96]
        mem[(32 * _2644) + mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2644) + 192
        mem[(32 * _5001) + (32 * _2644) + _2642 + 192] = mem[(32 * (5 * arg2) + 5) + 128]
        _6409 = mem[(32 * (5 * arg2) + 5) + 128]
        mem[(32 * _5001) + (32 * _2644) + _2642 + 224 len floor32(mem[(32 * (5 * arg2) + 5) + 128])] = mem[(32 * (5 * arg2) + 5) + 160 len floor32(mem[(32 * (5 * arg2) + 5) + 128])]
        mem[_2642 + 96] = (32 * _6409) + (32 * _5001) + (32 * _2644) + 224
        mem[(32 * _6409) + (32 * _5001) + (32 * _2644) + _2642 + 224] = mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160]
        _7187 = mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160]
        mem[(32 * _6409) + (32 * _5001) + (32 * _2644) + _2642 + 256 len floor32(mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160])] = mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 192 len floor32(mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160])]
        return memory
          from mem[64]
           len (32 * _7187) + (32 * _6409) + (32 * _5001) + (32 * _2644) + _2642 + -mem[64] + 256
    mem[(32 * (5 * arg2) + 5) + 160 len 32 * arg2 + 1] = code.data[11526 len 32 * arg2 + 1]
    mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160] = 16 * arg2 + 1
    if not Mask(252, 0, arg2 + 1):
        mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738] = arg2 + 1
        mem[64] = (32 * (5 * arg2) + 5) + (546 * arg2) + (32 * arg2 + 1) + 770
        if not arg2 + 1:
            idx = 0
            while idx < arg2 + 1:
                require ext_code.size(operatorAddress)
                staticcall operatorAddress.0x95a25efa with:
                        gas gas_remaining wei
                       args idx
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64]] = 0x8f35a75e00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(ext_call.return_data[0])
                require ext_code.size(operatorAddress)
                staticcall operatorAddress.getInvestor(address arg1) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3316 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _3485 = mem[_3316]
                require mem[_3316] <= 4294967296
                require mem[_3316] + 32 <= return_data.size
                require mem[_3316 + mem[_3316]] <= 4294967296 and mem[_3316] + (32 * mem[_3316 + mem[_3316]]) + 32 <= return_data.size
                _3891 = mem[_3316 + 32]
                _3892 = mem[_3316 + 64]
                require mem[_3316 + 64] <= 4294967296
                require mem[_3316 + 64] + 32 <= return_data.size
                require mem[_3316 + mem[_3316 + 64]] <= 4294967296 and mem[_3316 + 64] + (32 * mem[_3316 + mem[_3316 + 64]]) + 32 <= return_data.size
                _4829 = mem[_3316 + mem[_3316]]
                s = 0
                while s < _4829:
                    require s < mem[_3316 + _3485]
                    require (5 * idx) + s < mem[96]
                    mem[(32 * (5 * idx) + s) + 128] = mem[(32 * s) + _3316 + _3485 + 44 len 20]
                    s = s + 1
                    continue 
                require (5 * idx) + 4 < mem[96]
                mem[(32 * (5 * idx) + 4) + 128] = address(ext_call.return_data[0])
                _6237 = mem[_3316 + _3892]
                s = 0
                while s < _6237:
                    require s < mem[_3316 + _3892]
                    require (16 * idx) + s < mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160]
                    mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + (32 * (16 * idx) + s) + 192] = mem[(32 * s) + _3316 + _3892 + 32]
                    _6237 = mem[_3316 + _3892]
                    s = s + 1
                    continue 
                require idx < mem[(32 * (5 * arg2) + 5) + 128]
                mem[(32 * (5 * arg2) + 5) + (32 * idx) + 160] = bool(_3891)
                require idx < mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738]
                mem[(32 * (5 * arg2) + 5) + (546 * arg2) + (32 * idx) + 770] = address(ext_call.return_data[0])
                idx = idx + 1
                continue 
            mem[mem[64]] = 128
            mem[mem[64] + 128] = mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738]
            _2647 = mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738]
            mem[mem[64] + 160 len floor32(mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738])] = mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 770 len floor32(mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738])]
            mem[mem[64] + 32] = (32 * _2647) + 160
            mem[(32 * _2647) + mem[64] + 160] = mem[96]
            mem[(32 * _2647) + mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2647) + 192
            mem[(32 * mem[96]) + (32 * _2647) + mem[64] + 192] = mem[(32 * (5 * arg2) + 5) + 128]
            _6414 = mem[(32 * (5 * arg2) + 5) + 128]
            mem[(32 * mem[96]) + (32 * _2647) + mem[64] + 224 len floor32(mem[(32 * (5 * arg2) + 5) + 128])] = mem[(32 * (5 * arg2) + 5) + 160 len floor32(mem[(32 * (5 * arg2) + 5) + 128])]
            mem[mem[64] + 96] = (32 * _6414) + (32 * mem[96]) + (32 * _2647) + 224
            mem[(32 * _6414) + (32 * mem[96]) + (32 * _2647) + mem[64] + 224] = mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160]
            _7190 = mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160]
            mem[(32 * _6414) + (32 * mem[96]) + (32 * _2647) + mem[64] + 256 len floor32(mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160])] = mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 192 len floor32(mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160])]
            return Array(len=mem[mem[64] + 128 len (32 * _2647) + 32], data=mem[96], mem[mem[64] + (32 * _2647) + 192 len (32 * _7190) + (32 * _6414) + (32 * mem[96]) + 64]), 
                   (32 * _2647) + 160,
                   (32 * mem[96]) + (32 * _2647) + 192,
                   (32 * _6414) + (32 * mem[96]) + (32 * _2647) + 224
        mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 770 len 32 * arg2 + 1] = code.data[11526 len 32 * arg2 + 1]
        idx = 0
        while idx < arg2 + 1:
            require ext_code.size(operatorAddress)
            staticcall operatorAddress.0x95a25efa with:
                    gas gas_remaining wei
                   args idx
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64]] = 0x8f35a75e00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(ext_call.return_data[0])
            require ext_code.size(operatorAddress)
            staticcall operatorAddress.getInvestor(address arg1) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3320 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _3486 = mem[_3320]
            require mem[_3320] <= 4294967296
            require mem[_3320] + 32 <= return_data.size
            require mem[_3320 + mem[_3320]] <= 4294967296 and mem[_3320] + (32 * mem[_3320 + mem[_3320]]) + 32 <= return_data.size
            _3895 = mem[_3320 + 32]
            _3896 = mem[_3320 + 64]
            require mem[_3320 + 64] <= 4294967296
            require mem[_3320 + 64] + 32 <= return_data.size
            require mem[_3320 + mem[_3320 + 64]] <= 4294967296 and mem[_3320 + 64] + (32 * mem[_3320 + mem[_3320 + 64]]) + 32 <= return_data.size
            _4830 = mem[_3320 + mem[_3320]]
            s = 0
            while s < _4830:
                require s < mem[_3320 + _3486]
                require (5 * idx) + s < mem[96]
                mem[(32 * (5 * idx) + s) + 128] = mem[(32 * s) + _3320 + _3486 + 44 len 20]
                s = s + 1
                continue 
            require (5 * idx) + 4 < mem[96]
            mem[(32 * (5 * idx) + 4) + 128] = address(ext_call.return_data[0])
            _6238 = mem[_3320 + _3896]
            s = 0
            while s < _6238:
                require s < mem[_3320 + _3896]
                require (16 * idx) + s < mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160]
                mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + (32 * (16 * idx) + s) + 192] = mem[(32 * s) + _3320 + _3896 + 32]
                _6238 = mem[_3320 + _3896]
                s = s + 1
                continue 
            require idx < mem[(32 * (5 * arg2) + 5) + 128]
            mem[(32 * (5 * arg2) + 5) + (32 * idx) + 160] = bool(_3895)
            require idx < mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738]
            mem[(32 * (5 * arg2) + 5) + (546 * arg2) + (32 * idx) + 770] = address(ext_call.return_data[0])
            idx = idx + 1
            continue 
        _2648 = mem[64]
        mem[mem[64]] = 128
        mem[mem[64] + 128] = mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738]
        _2650 = mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738]
        mem[mem[64] + 160 len floor32(mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738])] = mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 770 len floor32(mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738])]
        mem[mem[64] + 32] = (32 * _2650) + 160
        mem[(32 * _2650) + mem[64] + 160] = mem[96]
        _5011 = mem[96]
        mem[(32 * _2650) + mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2650) + 192
        mem[(32 * _5011) + (32 * _2650) + _2648 + 192] = mem[(32 * (5 * arg2) + 5) + 128]
        _6419 = mem[(32 * (5 * arg2) + 5) + 128]
        mem[(32 * _5011) + (32 * _2650) + _2648 + 224 len floor32(mem[(32 * (5 * arg2) + 5) + 128])] = mem[(32 * (5 * arg2) + 5) + 160 len floor32(mem[(32 * (5 * arg2) + 5) + 128])]
        mem[_2648 + 96] = (32 * _6419) + (32 * _5011) + (32 * _2650) + 224
        mem[(32 * _6419) + (32 * _5011) + (32 * _2650) + _2648 + 224] = mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160]
        _7193 = mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160]
        mem[(32 * _6419) + (32 * _5011) + (32 * _2650) + _2648 + 256 len floor32(mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160])] = mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 192 len floor32(mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160])]
        return memory
          from mem[64]
           len (32 * _7193) + (32 * _6419) + (32 * _5011) + (32 * _2650) + _2648 + -mem[64] + 256
    mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 192 len 512 * arg2 + 1] = code.data[11526 len 512 * arg2 + 1]
    mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738] = arg2 + 1
    mem[64] = (32 * (5 * arg2) + 5) + (546 * arg2) + (32 * arg2 + 1) + 770
    if not arg2 + 1:
        idx = 0
        while idx < arg2 + 1:
            require ext_code.size(operatorAddress)
            staticcall operatorAddress.0x95a25efa with:
                    gas gas_remaining wei
                   args idx
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64]] = 0x8f35a75e00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(ext_call.return_data[0])
            require ext_code.size(operatorAddress)
            staticcall operatorAddress.getInvestor(address arg1) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3324 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _3487 = mem[_3324]
            require mem[_3324] <= 4294967296
            require mem[_3324] + 32 <= return_data.size
            require mem[_3324 + mem[_3324]] <= 4294967296 and mem[_3324] + (32 * mem[_3324 + mem[_3324]]) + 32 <= return_data.size
            _3899 = mem[_3324 + 32]
            _3900 = mem[_3324 + 64]
            require mem[_3324 + 64] <= 4294967296
            require mem[_3324 + 64] + 32 <= return_data.size
            require mem[_3324 + mem[_3324 + 64]] <= 4294967296 and mem[_3324 + 64] + (32 * mem[_3324 + mem[_3324 + 64]]) + 32 <= return_data.size
            _4831 = mem[_3324 + mem[_3324]]
            s = 0
            while s < _4831:
                require s < mem[_3324 + _3487]
                require (5 * idx) + s < mem[96]
                mem[(32 * (5 * idx) + s) + 128] = mem[(32 * s) + _3324 + _3487 + 44 len 20]
                s = s + 1
                continue 
            require (5 * idx) + 4 < mem[96]
            mem[(32 * (5 * idx) + 4) + 128] = address(ext_call.return_data[0])
            _6239 = mem[_3324 + _3900]
            s = 0
            while s < _6239:
                require s < mem[_3324 + _3900]
                require (16 * idx) + s < mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160]
                mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + (32 * (16 * idx) + s) + 192] = mem[(32 * s) + _3324 + _3900 + 32]
                _6239 = mem[_3324 + _3900]
                s = s + 1
                continue 
            require idx < mem[(32 * (5 * arg2) + 5) + 128]
            mem[(32 * (5 * arg2) + 5) + (32 * idx) + 160] = bool(_3899)
            require idx < mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738]
            mem[(32 * (5 * arg2) + 5) + (546 * arg2) + (32 * idx) + 770] = address(ext_call.return_data[0])
            idx = idx + 1
            continue 
        mem[mem[64]] = 128
        mem[mem[64] + 128] = mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738]
        _2653 = mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738]
        mem[mem[64] + 160 len floor32(mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738])] = mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 770 len floor32(mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738])]
        mem[mem[64] + 32] = (32 * _2653) + 160
        mem[(32 * _2653) + mem[64] + 160] = mem[96]
        mem[(32 * _2653) + mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2653) + 192
        mem[(32 * mem[96]) + (32 * _2653) + mem[64] + 192] = mem[(32 * (5 * arg2) + 5) + 128]
        _6424 = mem[(32 * (5 * arg2) + 5) + 128]
        mem[(32 * mem[96]) + (32 * _2653) + mem[64] + 224 len floor32(mem[(32 * (5 * arg2) + 5) + 128])] = mem[(32 * (5 * arg2) + 5) + 160 len floor32(mem[(32 * (5 * arg2) + 5) + 128])]
        mem[mem[64] + 96] = (32 * _6424) + (32 * mem[96]) + (32 * _2653) + 224
        mem[(32 * _6424) + (32 * mem[96]) + (32 * _2653) + mem[64] + 224] = mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160]
        _7196 = mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160]
        mem[(32 * _6424) + (32 * mem[96]) + (32 * _2653) + mem[64] + 256 len floor32(mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160])] = mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 192 len floor32(mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160])]
        return Array(len=mem[mem[64] + 128 len (32 * _2653) + 32], data=mem[96], mem[mem[64] + (32 * _2653) + 192 len (32 * _7196) + (32 * _6424) + (32 * mem[96]) + 64]), 
               (32 * _2653) + 160,
               (32 * mem[96]) + (32 * _2653) + 192,
               (32 * _6424) + (32 * mem[96]) + (32 * _2653) + 224
    mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 770 len 32 * arg2 + 1] = code.data[11526 len 32 * arg2 + 1]
    idx = 0
    while idx < arg2 + 1:
        require ext_code.size(operatorAddress)
        staticcall operatorAddress.0x95a25efa with:
                gas gas_remaining wei
               args idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[mem[64]] = 0x8f35a75e00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = address(ext_call.return_data[0])
        require ext_code.size(operatorAddress)
        staticcall operatorAddress.getInvestor(address arg1) with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3328 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _3488 = mem[_3328]
        require mem[_3328] <= 4294967296
        require mem[_3328] + 32 <= return_data.size
        require mem[_3328 + mem[_3328]] <= 4294967296 and mem[_3328] + (32 * mem[_3328 + mem[_3328]]) + 32 <= return_data.size
        _3903 = mem[_3328 + 32]
        _3904 = mem[_3328 + 64]
        require mem[_3328 + 64] <= 4294967296
        require mem[_3328 + 64] + 32 <= return_data.size
        require mem[_3328 + mem[_3328 + 64]] <= 4294967296 and mem[_3328 + 64] + (32 * mem[_3328 + mem[_3328 + 64]]) + 32 <= return_data.size
        _4832 = mem[_3328 + mem[_3328]]
        s = 0
        while s < _4832:
            require s < mem[_3328 + _3488]
            require (5 * idx) + s < mem[96]
            mem[(32 * (5 * idx) + s) + 128] = mem[(32 * s) + _3328 + _3488 + 44 len 20]
            s = s + 1
            continue 
        require (5 * idx) + 4 < mem[96]
        mem[(32 * (5 * idx) + 4) + 128] = address(ext_call.return_data[0])
        _6240 = mem[_3328 + _3904]
        s = 0
        while s < _6240:
            require s < mem[_3328 + _3904]
            require (16 * idx) + s < mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160]
            mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + (32 * (16 * idx) + s) + 192] = mem[(32 * s) + _3328 + _3904 + 32]
            _6240 = mem[_3328 + _3904]
            s = s + 1
            continue 
        require idx < mem[(32 * (5 * arg2) + 5) + 128]
        mem[(32 * (5 * arg2) + 5) + (32 * idx) + 160] = bool(_3903)
        require idx < mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738]
        mem[(32 * (5 * arg2) + 5) + (546 * arg2) + (32 * idx) + 770] = address(ext_call.return_data[0])
        idx = idx + 1
        continue 
    _2654 = mem[64]
    mem[mem[64]] = 128
    mem[mem[64] + 128] = mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738]
    _2656 = mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738]
    mem[mem[64] + 160 len floor32(mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738])] = mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 770 len floor32(mem[(32 * (5 * arg2) + 5) + (546 * arg2) + 738])]
    mem[mem[64] + 32] = (32 * _2656) + 160
    mem[(32 * _2656) + mem[64] + 160] = mem[96]
    _5021 = mem[96]
    mem[(32 * _2656) + mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2656) + 192
    mem[(32 * _5021) + (32 * _2656) + _2654 + 192] = mem[(32 * (5 * arg2) + 5) + 128]
    _6429 = mem[(32 * (5 * arg2) + 5) + 128]
    mem[(32 * _5021) + (32 * _2656) + _2654 + 224 len floor32(mem[(32 * (5 * arg2) + 5) + 128])] = mem[(32 * (5 * arg2) + 5) + 160 len floor32(mem[(32 * (5 * arg2) + 5) + 128])]
    mem[_2654 + 96] = (32 * _6429) + (32 * _5021) + (32 * _2656) + 224
    mem[(32 * _6429) + (32 * _5021) + (32 * _2656) + _2654 + 224] = mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160]
    _7199 = mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160]
    mem[(32 * _6429) + (32 * _5021) + (32 * _2656) + _2654 + 256 len floor32(mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160])] = mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 192 len floor32(mem[(32 * (5 * arg2) + 5) + (32 * arg2 + 1) + 160])]
    return memory
      from mem[64]
       len (32 * _7199) + (32 * _6429) + (32 * _5021) + (32 * _2656) + _2654 + -mem[64] + 256
}



}

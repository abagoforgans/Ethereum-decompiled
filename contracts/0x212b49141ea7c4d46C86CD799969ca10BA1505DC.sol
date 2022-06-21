contract main {




// =====================  Runtime code  =====================


#
#  - sub_1961eabc(?)
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

function sub_fb73bc64(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(operatorAddress)
    staticcall operatorAddress.0xc9f58d4c with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    return ext_call.return_data[0]
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

function getInvestor(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(operatorAddress)
    staticcall operatorAddress.0xc9f58d4c with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_code.size(operatorAddress)
    staticcall operatorAddress.0x76a1f04f with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_code.size(operatorAddress)
    staticcall operatorAddress.0xfaa5a225 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_code.size(operatorAddress)
    staticcall operatorAddress.0x2f89ddf8 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_code.size(operatorAddress)
    staticcall operatorAddress.0x6a940841 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    mem[960 len 0] = None
    mem[1120 len 0] = None
    return ext_call.return_data[0], 128, bool(ext_call.return_data[96]), 288, 4, mem[960 len 128], 16, mem[1120 len 512]
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

function sub_0ec63fff(?) payable {
    require calldata.size - 4 >= 128
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
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = arg4.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = 0
    idx = 0
    while idx < arg1.length:
        _33 = mem[64]
        mem[mem[64]] = 5
        mem[64] = mem[64] + 192
        mem[_33 + 32 len 160] = code.data[20386 len 160]
        s = 5 * idx
        while s <= (5 * idx) + 4:
            require s < mem[(32 * arg1.length) + 128]
            require s - (5 * idx) < mem[_33]
            mem[_33 + (32 * s - (5 * idx)) + 32] = mem[(32 * s) + (32 * arg1.length) + 172 len 20]
            s = s + 1
            continue 
        _56 = mem[64]
        mem[mem[64]] = 13
        mem[64] = mem[64] + 448
        mem[_56 + 32 len 416] = code.data[20386 len 416]
        s = 13 * idx
        while s <= (13 * idx) + 12:
            require s < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
            require s - (13 * idx) < mem[_56]
            mem[_56 + (32 * s - (13 * idx)) + 32] = mem[(32 * s) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
            s = s + 1
            continue 
        require idx < mem[96]
        _76 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        _78 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
        mem[mem[64]] = 0x9e45103400000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _76
        mem[mem[64] + 68] = bool(_78)
        mem[mem[64] + 36] = 128
        mem[mem[64] + 132] = mem[_33]
        _81 = mem[_33]
        s = 0
        while s < 32 * _81:
            mem[s + mem[64] + 164] = mem[s + _33 + 32]
            s = s + 32
            continue 
        mem[mem[64] + 100] = (32 * _81) + 160
        mem[(32 * _81) + mem[64] + 164] = mem[_56]
        _88 = mem[_56]
        s = 0
        while s < 32 * _88:
            mem[s + (32 * _81) + mem[64] + 196] = mem[s + _56 + 32]
            s = s + 32
            continue 
        require ext_code.size(operatorAddress)
        call operatorAddress.0x9e451034 with:
             gas gas_remaining wei
            args _76, 128, bool(_78), (32 * _81) + 160, mem[mem[64] + 132 len (32 * _88) + (32 * _81) + 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        s = floor32(_88) + 1
        continue 
}

function sub_4869d5dd(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(operatorAddress)
    staticcall operatorAddress.0x395bf562 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = arg2 + -arg1 + 1
    if not arg2 + -arg1 + 1:
        mem[(32 * arg2 + -arg1 + 1) + 128] = arg2 + -arg1 + 1
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
            mem[(64 * arg2 + -arg1 + 1) + 160 len 192] = ext_call.return_data[0 len 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 192
            if address(ext_call.return_data[128]):
                require 0 < arg2 + -arg1 + 1
                mem[128] = ext_call.return_data[0]
                require 0 < mem[(32 * arg2 + -arg1 + 1) + 128]
                mem[(32 * arg2 + -arg1 + 1) + 160] = address(ext_call.return_data[128])
            idx = idx + 1
            continue 
        mem[(64 * arg2 + -arg1 + 1) + 160] = 64
        mem[(64 * arg2 + -arg1 + 1) + 224] = arg2 + -arg1 + 1
        mem[(64 * arg2 + -arg1 + 1) + 256 len floor32(arg2 + -arg1 + 1)] = mem[128 len floor32(arg2 + -arg1 + 1)]
        mem[(64 * arg2 + -arg1 + 1) + 192] = (32 * arg2 + -arg1 + 1) + 96
        mem[(98 * arg2) + (-98 * arg1) + 354] = mem[(32 * arg2 + -arg1 + 1) + 128]
        _101 = mem[(32 * arg2 + -arg1 + 1) + 128]
        mem[(98 * arg2) + (-98 * arg1) + 386 len floor32(mem[(32 * arg2 + -arg1 + 1) + 128])] = mem[(32 * arg2 + -arg1 + 1) + 160 len floor32(mem[(32 * arg2 + -arg1 + 1) + 128])]
        return memory
          from (64 * arg2 + -arg1 + 1) + 160
           len (32 * _101) + (32 * arg2 + -arg1 + 1) + 128
    mem[128 len 32 * arg2 + -arg1 + 1] = code.data[20386 len 32 * arg2 + -arg1 + 1]
    mem[(32 * arg2 + -arg1 + 1) + 128] = arg2 + -arg1 + 1
    mem[(32 * arg2 + -arg1 + 1) + 160 len 32 * arg2 + -arg1 + 1] = code.data[20386 len 32 * arg2 + -arg1 + 1]
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
        mem[(64 * arg2 + -arg1 + 1) + 160 len 192] = ext_call.return_data[0 len 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 192
        if address(ext_call.return_data[128]):
            require 0 < arg2 + -arg1 + 1
            mem[128] = ext_call.return_data[0]
            require 0 < mem[(32 * arg2 + -arg1 + 1) + 128]
            mem[(32 * arg2 + -arg1 + 1) + 160] = address(ext_call.return_data[128])
        idx = idx + 1
        continue 
    mem[(64 * arg2 + -arg1 + 1) + 160] = 64
    mem[(64 * arg2 + -arg1 + 1) + 224] = arg2 + -arg1 + 1
    mem[(64 * arg2 + -arg1 + 1) + 256 len floor32(arg2 + -arg1 + 1)] = mem[128 len floor32(arg2 + -arg1 + 1)]
    mem[(64 * arg2 + -arg1 + 1) + 192] = (32 * arg2 + -arg1 + 1) + 96
    mem[(98 * arg2) + (-98 * arg1) + 354] = mem[(32 * arg2 + -arg1 + 1) + 128]
    _104 = mem[(32 * arg2 + -arg1 + 1) + 128]
    mem[(98 * arg2) + (-98 * arg1) + 386 len floor32(mem[(32 * arg2 + -arg1 + 1) + 128])] = mem[(32 * arg2 + -arg1 + 1) + 160 len floor32(mem[(32 * arg2 + -arg1 + 1) + 128])]
    return memory
      from (64 * arg2 + -arg1 + 1) + 160
       len (32 * _104) + (32 * arg2 + -arg1 + 1) + 128
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
        _74 = mem[64]
        mem[mem[64]] = 128
        mem[mem[64] + 128] = mem[96]
        _76 = mem[96]
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
        mem[_74 + 96] = (32 * _151) + (32 * _129) + (32 * mem[96]) + 224
        mem[(32 * _151) + (32 * _129) + (32 * _76) + _74 + 224] = mem[(98 * ext_call.return_data[0]) + 192]
        _167 = mem[(98 * ext_call.return_data[0]) + 192]
        mem[(32 * _151) + (32 * _129) + (32 * _76) + _74 + 256 len floor32(mem[(98 * ext_call.return_data[0]) + 192])] = mem[(98 * ext_call.return_data[0]) + 224 len floor32(mem[(98 * ext_call.return_data[0]) + 192])]
        return memory
          from mem[64]
           len (32 * _167) + (32 * _151) + (32 * _129) + (32 * _76) + _74 + -mem[64] + 256
    mem[128 len 32 * ext_call.return_data[0]] = code.data[20386 len 32 * ext_call.return_data[0]]
    mem[(32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
    mem[(32 * ext_call.return_data[0]) + 160 len 32 * ext_call.return_data[0]] = code.data[20386 len 32 * ext_call.return_data[0]]
    mem[(64 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
    mem[(64 * ext_call.return_data[0]) + 192 len 32 * ext_call.return_data[0]] = code.data[20386 len 32 * ext_call.return_data[0]]
    mem[(98 * ext_call.return_data[0]) + 192] = ext_call.return_data[0]
    mem[64] = (131 * ext_call.return_data[0]) + 224
    mem[(98 * ext_call.return_data[0]) + 224 len 32 * ext_call.return_data[0]] = code.data[20386 len 32 * ext_call.return_data[0]]
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
    _77 = mem[64]
    mem[mem[64]] = 128
    mem[mem[64] + 128] = mem[96]
    _79 = mem[96]
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
    mem[_77 + 96] = (32 * _154) + (32 * _132) + (32 * mem[96]) + 224
    mem[(32 * _154) + (32 * _132) + (32 * _79) + _77 + 224] = mem[(98 * ext_call.return_data[0]) + 192]
    _170 = mem[(98 * ext_call.return_data[0]) + 192]
    mem[(32 * _154) + (32 * _132) + (32 * _79) + _77 + 256 len floor32(mem[(98 * ext_call.return_data[0]) + 192])] = mem[(98 * ext_call.return_data[0]) + 224 len floor32(mem[(98 * ext_call.return_data[0]) + 192])]
    return memory
      from mem[64]
       len (32 * _170) + (32 * _154) + (32 * _132) + (32 * _79) + _77 + -mem[64] + 256
}

function sub_ccbf19de(?) payable {
    require ext_code.size(operatorAddress)
    staticcall operatorAddress.getInvestorLength() with:
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
            staticcall operatorAddress.0x95a25efa with:
                    gas gas_remaining wei
                   args idx
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(operatorAddress)
            staticcall operatorAddress.0x6a940841 with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require idx < mem[96]
            mem[(32 * idx) + 128] = address(ext_call.return_data[0])
            require idx < mem[(32 * ext_call.return_data[0]) + 128]
            mem[(32 * ext_call.return_data[0]) + (32 * idx) + 160] = ext_call.return_data[0]
            require idx < mem[(64 * ext_call.return_data[0]) + 160]
            mem[(64 * ext_call.return_data[0]) + (32 * idx) + 192] = ext_call.return_data[32]
            require idx < mem[(98 * ext_call.return_data[0]) + 192]
            mem[(98 * ext_call.return_data[0]) + (32 * idx) + 224] = ext_call.return_data[64]
            idx = idx + 1
            continue 
        _72 = mem[64]
        mem[mem[64]] = 128
        mem[mem[64] + 128] = mem[96]
        _74 = mem[96]
        mem[mem[64] + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 32] = (32 * mem[96]) + 160
        mem[(32 * mem[96]) + mem[64] + 160] = mem[(32 * ext_call.return_data[0]) + 128]
        _125 = mem[(32 * ext_call.return_data[0]) + 128]
        mem[(32 * mem[96]) + mem[64] + 192 len floor32(mem[(32 * ext_call.return_data[0]) + 128])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])]
        mem[mem[64] + 64] = (32 * _125) + (32 * mem[96]) + 192
        mem[(32 * _125) + (32 * mem[96]) + mem[64] + 192] = mem[(64 * ext_call.return_data[0]) + 160]
        _147 = mem[(64 * ext_call.return_data[0]) + 160]
        s = 0
        while ext_call.return_data[0] < 32 * _147:
            mem[ext_call.return_data[0] + (32 * _125) + (32 * mem[96]) + mem[64] + 224] = mem[(66 * ext_call.return_data[0]) + 192]
            s = ext_call.return_data[0] + 32
            continue 
        mem[_72 + 96] = (32 * _147) + (32 * _125) + (32 * mem[96]) + 224
        mem[(32 * _147) + (32 * _125) + (32 * _74) + _72 + 224] = mem[(98 * ext_call.return_data[0]) + 192]
        _163 = mem[(98 * ext_call.return_data[0]) + 192]
        mem[(32 * _147) + (32 * _125) + (32 * _74) + _72 + 256 len floor32(mem[(98 * ext_call.return_data[0]) + 192])] = mem[(98 * ext_call.return_data[0]) + 224 len floor32(mem[(98 * ext_call.return_data[0]) + 192])]
        return memory
          from mem[64]
           len (32 * _163) + (32 * _147) + (32 * _125) + (32 * _74) + _72 + -mem[64] + 256
    mem[128 len 32 * ext_call.return_data[0]] = code.data[20386 len 32 * ext_call.return_data[0]]
    mem[(32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
    mem[(32 * ext_call.return_data[0]) + 160 len 32 * ext_call.return_data[0]] = code.data[20386 len 32 * ext_call.return_data[0]]
    mem[(64 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
    mem[(64 * ext_call.return_data[0]) + 192 len 32 * ext_call.return_data[0]] = code.data[20386 len 32 * ext_call.return_data[0]]
    mem[(98 * ext_call.return_data[0]) + 192] = ext_call.return_data[0]
    mem[64] = (131 * ext_call.return_data[0]) + 224
    mem[(98 * ext_call.return_data[0]) + 224 len 32 * ext_call.return_data[0]] = code.data[20386 len 32 * ext_call.return_data[0]]
    idx = 0
    while idx < ext_call.return_data[0]:
        require ext_code.size(operatorAddress)
        staticcall operatorAddress.0x95a25efa with:
                gas gas_remaining wei
               args idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(operatorAddress)
        staticcall operatorAddress.0x6a940841 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require idx < mem[96]
        mem[(32 * idx) + 128] = address(ext_call.return_data[0])
        require idx < mem[(32 * ext_call.return_data[0]) + 128]
        mem[(32 * ext_call.return_data[0]) + (32 * idx) + 160] = ext_call.return_data[0]
        require idx < mem[(64 * ext_call.return_data[0]) + 160]
        mem[(64 * ext_call.return_data[0]) + (32 * idx) + 192] = ext_call.return_data[32]
        require idx < mem[(98 * ext_call.return_data[0]) + 192]
        mem[(98 * ext_call.return_data[0]) + (32 * idx) + 224] = ext_call.return_data[64]
        idx = idx + 1
        continue 
    _75 = mem[64]
    mem[mem[64]] = 128
    mem[mem[64] + 128] = mem[96]
    _77 = mem[96]
    mem[mem[64] + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + 32] = (32 * mem[96]) + 160
    mem[(32 * mem[96]) + mem[64] + 160] = mem[(32 * ext_call.return_data[0]) + 128]
    _128 = mem[(32 * ext_call.return_data[0]) + 128]
    mem[(32 * mem[96]) + mem[64] + 192 len floor32(mem[(32 * ext_call.return_data[0]) + 128])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])]
    mem[mem[64] + 64] = (32 * _128) + (32 * mem[96]) + 192
    mem[(32 * _128) + (32 * mem[96]) + mem[64] + 192] = mem[(64 * ext_call.return_data[0]) + 160]
    _150 = mem[(64 * ext_call.return_data[0]) + 160]
    s = 0
    while ext_call.return_data[0] < 32 * _150:
        mem[ext_call.return_data[0] + (32 * _128) + (32 * mem[96]) + mem[64] + 224] = mem[(66 * ext_call.return_data[0]) + 192]
        s = ext_call.return_data[0] + 32
        continue 
    mem[_75 + 96] = (32 * _150) + (32 * _128) + (32 * mem[96]) + 224
    mem[(32 * _150) + (32 * _128) + (32 * _77) + _75 + 224] = mem[(98 * ext_call.return_data[0]) + 192]
    _166 = mem[(98 * ext_call.return_data[0]) + 192]
    mem[(32 * _150) + (32 * _128) + (32 * _77) + _75 + 256 len floor32(mem[(98 * ext_call.return_data[0]) + 192])] = mem[(98 * ext_call.return_data[0]) + 224 len floor32(mem[(98 * ext_call.return_data[0]) + 192])]
    return memory
      from mem[64]
       len (32 * _166) + (32 * _150) + (32 * _128) + (32 * _77) + _75 + -mem[64] + 256
}

function sub_8a055fe1(?) payable {
    require ext_code.size(operatorAddress)
    staticcall operatorAddress.getInvestorLength() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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
            staticcall operatorAddress.0x95a25efa with:
                    gas gas_remaining wei
                   args idx
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(operatorAddress)
            staticcall operatorAddress.0x76a1f04f with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 128
            require idx < mem[96]
            mem[(32 * idx) + 128] = address(ext_call.return_data[0])
            require idx < mem[(64 * ext_call.return_data[0]) + 160]
            mem[(64 * ext_call.return_data[0]) + (32 * idx) + 192] = ext_call.return_data[32]
            require idx < mem[(98 * ext_call.return_data[0]) + 192]
            mem[(98 * ext_call.return_data[0]) + (32 * idx) + 224] = ext_call.return_data[64]
            require idx < mem[(131 * ext_call.return_data[0]) + 224]
            mem[(131 * ext_call.return_data[0]) + (32 * idx) + 256] = bool(ext_call.return_data[96])
            require idx < mem[(32 * ext_call.return_data[0]) + 128]
            mem[(32 * ext_call.return_data[0]) + (32 * idx) + 160] = ext_call.return_data[0]
            idx = idx + 1
            continue 
        mem[mem[64]] = 160
        mem[mem[64] + 160] = mem[96]
        _86 = mem[96]
        mem[mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 32] = (32 * mem[96]) + 192
        mem[(32 * mem[96]) + mem[64] + 192] = mem[(32 * ext_call.return_data[0]) + 128]
        _147 = mem[(32 * ext_call.return_data[0]) + 128]
        mem[(32 * mem[96]) + mem[64] + 224 len floor32(mem[(32 * ext_call.return_data[0]) + 128])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])]
        mem[mem[64] + 64] = (32 * _147) + (32 * mem[96]) + 224
        mem[(32 * _147) + (32 * mem[96]) + mem[64] + 224] = mem[(64 * ext_call.return_data[0]) + 160]
        _175 = mem[(64 * ext_call.return_data[0]) + 160]
        mem[(32 * _147) + (32 * mem[96]) + mem[64] + 256 len floor32(mem[(64 * ext_call.return_data[0]) + 160])] = mem[(64 * ext_call.return_data[0]) + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])]
        mem[mem[64] + 96] = (32 * _175) + (32 * _147) + (32 * mem[96]) + 256
        mem[(32 * _175) + (32 * _147) + (32 * mem[96]) + mem[64] + 256] = mem[(98 * ext_call.return_data[0]) + 192]
        _197 = mem[(98 * ext_call.return_data[0]) + 192]
        mem[(32 * _175) + (32 * _147) + (32 * mem[96]) + mem[64] + 288 len floor32(mem[(98 * ext_call.return_data[0]) + 192])] = mem[(98 * ext_call.return_data[0]) + 224 len floor32(mem[(98 * ext_call.return_data[0]) + 192])]
        mem[mem[64] + 128] = (32 * _197) + (32 * _175) + (32 * _147) + (32 * mem[96]) + 288
        mem[(32 * _197) + (32 * _175) + (32 * _147) + (32 * _86) + mem[64] + 288] = mem[(131 * ext_call.return_data[0]) + 224]
        _213 = mem[(131 * ext_call.return_data[0]) + 224]
        mem[(32 * _197) + (32 * _175) + (32 * _147) + (32 * _86) + mem[64] + 320 len floor32(mem[(131 * ext_call.return_data[0]) + 224])] = mem[(131 * ext_call.return_data[0]) + 256 len floor32(mem[(131 * ext_call.return_data[0]) + 224])]
        return 160, mem[mem[64] + 32 len (32 * _213) + (32 * _197) + (32 * _175) + (32 * _147) + (32 * _86) + 288]
    mem[128 len 32 * ext_call.return_data[0]] = code.data[20386 len 32 * ext_call.return_data[0]]
    mem[(32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
    mem[(32 * ext_call.return_data[0]) + 160 len 32 * ext_call.return_data[0]] = code.data[20386 len 32 * ext_call.return_data[0]]
    mem[(64 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
    mem[(64 * ext_call.return_data[0]) + 192 len 32 * ext_call.return_data[0]] = code.data[20386 len 32 * ext_call.return_data[0]]
    mem[(98 * ext_call.return_data[0]) + 192] = ext_call.return_data[0]
    mem[(98 * ext_call.return_data[0]) + 224 len 32 * ext_call.return_data[0]] = code.data[20386 len 32 * ext_call.return_data[0]]
    mem[(131 * ext_call.return_data[0]) + 224] = ext_call.return_data[0]
    mem[64] = (164 * ext_call.return_data[0]) + 256
    mem[(131 * ext_call.return_data[0]) + 256 len 32 * ext_call.return_data[0]] = code.data[20386 len 32 * ext_call.return_data[0]]
    idx = 0
    while idx < ext_call.return_data[0]:
        require ext_code.size(operatorAddress)
        staticcall operatorAddress.0x95a25efa with:
                gas gas_remaining wei
               args idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(operatorAddress)
        staticcall operatorAddress.0x76a1f04f with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        require idx < mem[96]
        mem[(32 * idx) + 128] = address(ext_call.return_data[0])
        require idx < mem[(64 * ext_call.return_data[0]) + 160]
        mem[(64 * ext_call.return_data[0]) + (32 * idx) + 192] = ext_call.return_data[32]
        require idx < mem[(98 * ext_call.return_data[0]) + 192]
        mem[(98 * ext_call.return_data[0]) + (32 * idx) + 224] = ext_call.return_data[64]
        require idx < mem[(131 * ext_call.return_data[0]) + 224]
        mem[(131 * ext_call.return_data[0]) + (32 * idx) + 256] = bool(ext_call.return_data[96])
        require idx < mem[(32 * ext_call.return_data[0]) + 128]
        mem[(32 * ext_call.return_data[0]) + (32 * idx) + 160] = ext_call.return_data[0]
        idx = idx + 1
        continue 
    mem[mem[64]] = 160
    mem[mem[64] + 160] = mem[96]
    _89 = mem[96]
    mem[mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + 32] = (32 * mem[96]) + 192
    mem[(32 * mem[96]) + mem[64] + 192] = mem[(32 * ext_call.return_data[0]) + 128]
    _150 = mem[(32 * ext_call.return_data[0]) + 128]
    mem[(32 * mem[96]) + mem[64] + 224 len floor32(mem[(32 * ext_call.return_data[0]) + 128])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])]
    mem[mem[64] + 64] = (32 * _150) + (32 * mem[96]) + 224
    mem[(32 * _150) + (32 * mem[96]) + mem[64] + 224] = mem[(64 * ext_call.return_data[0]) + 160]
    _178 = mem[(64 * ext_call.return_data[0]) + 160]
    mem[(32 * _150) + (32 * mem[96]) + mem[64] + 256 len floor32(mem[(64 * ext_call.return_data[0]) + 160])] = mem[(64 * ext_call.return_data[0]) + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])]
    mem[mem[64] + 96] = (32 * _178) + (32 * _150) + (32 * mem[96]) + 256
    mem[(32 * _178) + (32 * _150) + (32 * mem[96]) + mem[64] + 256] = mem[(98 * ext_call.return_data[0]) + 192]
    _200 = mem[(98 * ext_call.return_data[0]) + 192]
    mem[(32 * _178) + (32 * _150) + (32 * mem[96]) + mem[64] + 288 len floor32(mem[(98 * ext_call.return_data[0]) + 192])] = mem[(98 * ext_call.return_data[0]) + 224 len floor32(mem[(98 * ext_call.return_data[0]) + 192])]
    mem[mem[64] + 128] = (32 * _200) + (32 * _178) + (32 * _150) + (32 * mem[96]) + 288
    mem[(32 * _200) + (32 * _178) + (32 * _150) + (32 * _89) + mem[64] + 288] = mem[(131 * ext_call.return_data[0]) + 224]
    _216 = mem[(131 * ext_call.return_data[0]) + 224]
    mem[(32 * _200) + (32 * _178) + (32 * _150) + (32 * _89) + mem[64] + 320 len floor32(mem[(131 * ext_call.return_data[0]) + 224])] = mem[(131 * ext_call.return_data[0]) + 256 len floor32(mem[(131 * ext_call.return_data[0]) + 224])]
    return 160, mem[mem[64] + 32 len (32 * _216) + (32 * _200) + (32 * _178) + (32 * _150) + (32 * _89) + 288]
}

function sub_712bf703(?) payable {
    require ext_code.size(operatorAddress)
    staticcall operatorAddress.getInvestorLength() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = ext_call.return_data[0]
    if not ext_call.return_data[0]:
        mem[(32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
        mem[(64 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
        mem[(98 * ext_call.return_data[0]) + 192] = ext_call.return_data[0]
        mem[(131 * ext_call.return_data[0]) + 224] = ext_call.return_data[0]
        mem[(164 * ext_call.return_data[0]) + 256] = ext_call.return_data[0]
        mem[64] = (197 * ext_call.return_data[0]) + 288
        idx = 0
        while idx < ext_call.return_data[0]:
            require ext_code.size(operatorAddress)
            staticcall operatorAddress.0x95a25efa with:
                    gas gas_remaining wei
                   args idx
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(operatorAddress)
            staticcall operatorAddress.0xfaa5a225 with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require idx < mem[96]
            mem[(32 * idx) + 128] = address(ext_call.return_data[0])
            require idx < mem[(32 * ext_call.return_data[0]) + 128]
            mem[(32 * ext_call.return_data[0]) + (32 * idx) + 160] = ext_call.return_data[0]
            require idx < mem[(64 * ext_call.return_data[0]) + 160]
            mem[(64 * ext_call.return_data[0]) + (32 * idx) + 192] = ext_call.return_data[32]
            require idx < mem[(98 * ext_call.return_data[0]) + 192]
            mem[(98 * ext_call.return_data[0]) + (32 * idx) + 224] = ext_call.return_data[64]
            require idx < mem[(131 * ext_call.return_data[0]) + 224]
            mem[(131 * ext_call.return_data[0]) + (32 * idx) + 256] = ext_call.return_data[96]
            require idx < mem[(164 * ext_call.return_data[0]) + 256]
            mem[(164 * ext_call.return_data[0]) + (32 * idx) + 288] = ext_call.return_data[128]
            idx = idx + 1
            continue 
        mem[mem[64]] = 192
        mem[mem[64] + 192] = mem[96]
        _98 = mem[96]
        mem[mem[64] + 224 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 32] = (32 * mem[96]) + 224
        mem[(32 * mem[96]) + mem[64] + 224] = mem[(32 * ext_call.return_data[0]) + 128]
        _169 = mem[(32 * ext_call.return_data[0]) + 128]
        mem[(32 * mem[96]) + mem[64] + 256 len floor32(mem[(32 * ext_call.return_data[0]) + 128])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])]
        mem[mem[64] + 64] = (32 * _169) + (32 * mem[96]) + 256
        mem[(32 * _169) + (32 * mem[96]) + mem[64] + 256] = mem[(64 * ext_call.return_data[0]) + 160]
        _203 = mem[(64 * ext_call.return_data[0]) + 160]
        mem[(32 * _169) + (32 * mem[96]) + mem[64] + 288 len floor32(mem[(64 * ext_call.return_data[0]) + 160])] = mem[(64 * ext_call.return_data[0]) + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])]
        mem[mem[64] + 96] = (32 * _203) + (32 * _169) + (32 * mem[96]) + 288
        mem[(32 * _203) + (32 * _169) + (32 * mem[96]) + mem[64] + 288] = mem[(98 * ext_call.return_data[0]) + 192]
        _231 = mem[(98 * ext_call.return_data[0]) + 192]
        mem[(32 * _203) + (32 * _169) + (32 * _98) + mem[64] + 320 len floor32(mem[(98 * ext_call.return_data[0]) + 192])] = mem[(98 * ext_call.return_data[0]) + 224 len floor32(mem[(98 * ext_call.return_data[0]) + 192])]
        mem[mem[64] + 128] = (32 * _231) + (32 * _203) + (32 * _169) + (32 * _98) + 320
        mem[(32 * _231) + (32 * _203) + (32 * _169) + (32 * _98) + mem[64] + 320] = mem[(131 * ext_call.return_data[0]) + 224]
        _253 = mem[(131 * ext_call.return_data[0]) + 224]
        mem[(32 * _231) + (32 * _203) + (32 * _169) + (32 * _98) + mem[64] + 352 len floor32(mem[(131 * ext_call.return_data[0]) + 224])] = mem[(131 * ext_call.return_data[0]) + 256 len floor32(mem[(131 * ext_call.return_data[0]) + 224])]
        mem[mem[64] + 160] = (32 * _253) + (32 * _231) + (32 * _203) + (32 * _169) + (32 * _98) + 352
        mem[(32 * _253) + (32 * _231) + (32 * _203) + (32 * _169) + (32 * _98) + mem[64] + 352] = mem[(164 * ext_call.return_data[0]) + 256]
        _269 = mem[(164 * ext_call.return_data[0]) + 256]
        mem[(32 * _253) + (32 * _231) + (32 * _203) + (32 * _169) + (32 * _98) + mem[64] + 384 len floor32(mem[(164 * ext_call.return_data[0]) + 256])] = mem[(164 * ext_call.return_data[0]) + 288 len floor32(mem[(164 * ext_call.return_data[0]) + 256])]
        return 192, 
               mem[mem[64] + 32 len 96],
               (32 * _231) + (32 * _203) + (32 * _169) + (32 * _98) + 320,
               (32 * _253) + (32 * _231) + (32 * _203) + (32 * _169) + (32 * _98) + 352,
               mem[mem[64] + 192 len (32 * _269) + (32 * _253) + (32 * _231) + (32 * _203) + (32 * _169) + (32 * _98) + 192]
    mem[128 len 32 * ext_call.return_data[0]] = code.data[20386 len 32 * ext_call.return_data[0]]
    mem[(32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
    mem[(32 * ext_call.return_data[0]) + 160 len 32 * ext_call.return_data[0]] = code.data[20386 len 32 * ext_call.return_data[0]]
    mem[(64 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
    mem[(64 * ext_call.return_data[0]) + 192 len 32 * ext_call.return_data[0]] = code.data[20386 len 32 * ext_call.return_data[0]]
    mem[(98 * ext_call.return_data[0]) + 192] = ext_call.return_data[0]
    mem[(98 * ext_call.return_data[0]) + 224 len 32 * ext_call.return_data[0]] = code.data[20386 len 32 * ext_call.return_data[0]]
    mem[(131 * ext_call.return_data[0]) + 224] = ext_call.return_data[0]
    mem[(131 * ext_call.return_data[0]) + 256 len 32 * ext_call.return_data[0]] = code.data[20386 len 32 * ext_call.return_data[0]]
    mem[(164 * ext_call.return_data[0]) + 256] = ext_call.return_data[0]
    mem[64] = (197 * ext_call.return_data[0]) + 288
    mem[(164 * ext_call.return_data[0]) + 288 len 32 * ext_call.return_data[0]] = code.data[20386 len 32 * ext_call.return_data[0]]
    idx = 0
    while idx < ext_call.return_data[0]:
        require ext_code.size(operatorAddress)
        staticcall operatorAddress.0x95a25efa with:
                gas gas_remaining wei
               args idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(operatorAddress)
        staticcall operatorAddress.0xfaa5a225 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        mem[mem[64] len 160] = ext_call.return_data[0 len 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require idx < mem[96]
        mem[(32 * idx) + 128] = address(ext_call.return_data[0])
        require idx < mem[(32 * ext_call.return_data[0]) + 128]
        mem[(32 * ext_call.return_data[0]) + (32 * idx) + 160] = ext_call.return_data[0]
        require idx < mem[(64 * ext_call.return_data[0]) + 160]
        mem[(64 * ext_call.return_data[0]) + (32 * idx) + 192] = ext_call.return_data[32]
        require idx < mem[(98 * ext_call.return_data[0]) + 192]
        mem[(98 * ext_call.return_data[0]) + (32 * idx) + 224] = ext_call.return_data[64]
        require idx < mem[(131 * ext_call.return_data[0]) + 224]
        mem[(131 * ext_call.return_data[0]) + (32 * idx) + 256] = ext_call.return_data[96]
        require idx < mem[(164 * ext_call.return_data[0]) + 256]
        mem[(164 * ext_call.return_data[0]) + (32 * idx) + 288] = ext_call.return_data[128]
        idx = idx + 1
        continue 
    mem[mem[64]] = 192
    mem[mem[64] + 192] = mem[96]
    _101 = mem[96]
    mem[mem[64] + 224 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + 32] = (32 * mem[96]) + 224
    mem[(32 * mem[96]) + mem[64] + 224] = mem[(32 * ext_call.return_data[0]) + 128]
    _172 = mem[(32 * ext_call.return_data[0]) + 128]
    mem[(32 * mem[96]) + mem[64] + 256 len floor32(mem[(32 * ext_call.return_data[0]) + 128])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])]
    mem[mem[64] + 64] = (32 * _172) + (32 * mem[96]) + 256
    mem[(32 * _172) + (32 * mem[96]) + mem[64] + 256] = mem[(64 * ext_call.return_data[0]) + 160]
    _206 = mem[(64 * ext_call.return_data[0]) + 160]
    mem[(32 * _172) + (32 * mem[96]) + mem[64] + 288 len floor32(mem[(64 * ext_call.return_data[0]) + 160])] = mem[(64 * ext_call.return_data[0]) + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])]
    mem[mem[64] + 96] = (32 * _206) + (32 * _172) + (32 * mem[96]) + 288
    mem[(32 * _206) + (32 * _172) + (32 * mem[96]) + mem[64] + 288] = mem[(98 * ext_call.return_data[0]) + 192]
    _234 = mem[(98 * ext_call.return_data[0]) + 192]
    mem[(32 * _206) + (32 * _172) + (32 * mem[96]) + mem[64] + 320 len floor32(mem[(98 * ext_call.return_data[0]) + 192])] = mem[(98 * ext_call.return_data[0]) + 224 len floor32(mem[(98 * ext_call.return_data[0]) + 192])]
    mem[mem[64] + 128] = (32 * _234) + (32 * _206) + (32 * _172) + (32 * mem[96]) + 320
    mem[(32 * _234) + (32 * _206) + (32 * _172) + (32 * _101) + mem[64] + 320] = mem[(131 * ext_call.return_data[0]) + 224]
    _256 = mem[(131 * ext_call.return_data[0]) + 224]
    mem[(32 * _234) + (32 * _206) + (32 * _172) + (32 * _101) + mem[64] + 352 len floor32(mem[(131 * ext_call.return_data[0]) + 224])] = mem[(131 * ext_call.return_data[0]) + 256 len floor32(mem[(131 * ext_call.return_data[0]) + 224])]
    mem[mem[64] + 160] = (32 * _256) + (32 * _234) + (32 * _206) + (32 * _172) + (32 * _101) + 352
    mem[(32 * _256) + (32 * _234) + (32 * _206) + (32 * _172) + (32 * _101) + mem[64] + 352] = mem[(164 * ext_call.return_data[0]) + 256]
    _272 = mem[(164 * ext_call.return_data[0]) + 256]
    mem[(32 * _256) + (32 * _234) + (32 * _206) + (32 * _172) + (32 * _101) + mem[64] + 384 len floor32(mem[(164 * ext_call.return_data[0]) + 256])] = mem[(164 * ext_call.return_data[0]) + 288 len floor32(mem[(164 * ext_call.return_data[0]) + 256])]
    return 192, 
           mem[mem[64] + 32 len 96],
           (32 * _234) + (32 * _206) + (32 * _172) + (32 * _101) + 320,
           (32 * _256) + (32 * _234) + (32 * _206) + (32 * _172) + (32 * _101) + 352,
           mem[mem[64] + 192 len (32 * _272) + (32 * _256) + (32 * _234) + (32 * _206) + (32 * _172) + (32 * _101) + 192]
}

function sub_a73ab658(?) payable {
    require ext_code.size(operatorAddress)
    staticcall operatorAddress.getInvestorLength() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = ext_call.return_data[0]
    if not ext_call.return_data[0]:
        mem[(32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
        mem[(64 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
        mem[(98 * ext_call.return_data[0]) + 192] = ext_call.return_data[0]
        mem[(131 * ext_call.return_data[0]) + 224] = ext_call.return_data[0]
        mem[(164 * ext_call.return_data[0]) + 256] = ext_call.return_data[0]
        mem[64] = (197 * ext_call.return_data[0]) + 288
        idx = 0
        while idx < ext_call.return_data[0]:
            require ext_code.size(operatorAddress)
            staticcall operatorAddress.0x95a25efa with:
                    gas gas_remaining wei
                   args idx
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(operatorAddress)
            staticcall operatorAddress.0x2f89ddf8 with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require idx < mem[96]
            mem[(32 * idx) + 128] = address(ext_call.return_data[0])
            require idx < mem[(32 * ext_call.return_data[0]) + 128]
            mem[(32 * ext_call.return_data[0]) + (32 * idx) + 160] = ext_call.return_data[0]
            require idx < mem[(64 * ext_call.return_data[0]) + 160]
            mem[(64 * ext_call.return_data[0]) + (32 * idx) + 192] = ext_call.return_data[32]
            require idx < mem[(98 * ext_call.return_data[0]) + 192]
            mem[(98 * ext_call.return_data[0]) + (32 * idx) + 224] = ext_call.return_data[64]
            require idx < mem[(131 * ext_call.return_data[0]) + 224]
            mem[(131 * ext_call.return_data[0]) + (32 * idx) + 256] = ext_call.return_data[96]
            require idx < mem[(164 * ext_call.return_data[0]) + 256]
            mem[(164 * ext_call.return_data[0]) + (32 * idx) + 288] = ext_call.return_data[128]
            idx = idx + 1
            continue 
        mem[mem[64]] = 192
        mem[mem[64] + 192] = mem[96]
        _98 = mem[96]
        mem[mem[64] + 224 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 32] = (32 * mem[96]) + 224
        mem[(32 * mem[96]) + mem[64] + 224] = mem[(32 * ext_call.return_data[0]) + 128]
        _169 = mem[(32 * ext_call.return_data[0]) + 128]
        mem[(32 * mem[96]) + mem[64] + 256 len floor32(mem[(32 * ext_call.return_data[0]) + 128])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])]
        mem[mem[64] + 64] = (32 * _169) + (32 * mem[96]) + 256
        mem[(32 * _169) + (32 * mem[96]) + mem[64] + 256] = mem[(64 * ext_call.return_data[0]) + 160]
        _203 = mem[(64 * ext_call.return_data[0]) + 160]
        mem[(32 * _169) + (32 * mem[96]) + mem[64] + 288 len floor32(mem[(64 * ext_call.return_data[0]) + 160])] = mem[(64 * ext_call.return_data[0]) + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])]
        mem[mem[64] + 96] = (32 * _203) + (32 * _169) + (32 * mem[96]) + 288
        mem[(32 * _203) + (32 * _169) + (32 * mem[96]) + mem[64] + 288] = mem[(98 * ext_call.return_data[0]) + 192]
        _231 = mem[(98 * ext_call.return_data[0]) + 192]
        mem[(32 * _203) + (32 * _169) + (32 * _98) + mem[64] + 320 len floor32(mem[(98 * ext_call.return_data[0]) + 192])] = mem[(98 * ext_call.return_data[0]) + 224 len floor32(mem[(98 * ext_call.return_data[0]) + 192])]
        mem[mem[64] + 128] = (32 * _231) + (32 * _203) + (32 * _169) + (32 * _98) + 320
        mem[(32 * _231) + (32 * _203) + (32 * _169) + (32 * _98) + mem[64] + 320] = mem[(131 * ext_call.return_data[0]) + 224]
        _253 = mem[(131 * ext_call.return_data[0]) + 224]
        mem[(32 * _231) + (32 * _203) + (32 * _169) + (32 * _98) + mem[64] + 352 len floor32(mem[(131 * ext_call.return_data[0]) + 224])] = mem[(131 * ext_call.return_data[0]) + 256 len floor32(mem[(131 * ext_call.return_data[0]) + 224])]
        mem[mem[64] + 160] = (32 * _253) + (32 * _231) + (32 * _203) + (32 * _169) + (32 * _98) + 352
        mem[(32 * _253) + (32 * _231) + (32 * _203) + (32 * _169) + (32 * _98) + mem[64] + 352] = mem[(164 * ext_call.return_data[0]) + 256]
        _269 = mem[(164 * ext_call.return_data[0]) + 256]
        mem[(32 * _253) + (32 * _231) + (32 * _203) + (32 * _169) + (32 * _98) + mem[64] + 384 len floor32(mem[(164 * ext_call.return_data[0]) + 256])] = mem[(164 * ext_call.return_data[0]) + 288 len floor32(mem[(164 * ext_call.return_data[0]) + 256])]
        return 192, 
               mem[mem[64] + 32 len 96],
               (32 * _231) + (32 * _203) + (32 * _169) + (32 * _98) + 320,
               (32 * _253) + (32 * _231) + (32 * _203) + (32 * _169) + (32 * _98) + 352,
               mem[mem[64] + 192 len (32 * _269) + (32 * _253) + (32 * _231) + (32 * _203) + (32 * _169) + (32 * _98) + 192]
    mem[128 len 32 * ext_call.return_data[0]] = code.data[20386 len 32 * ext_call.return_data[0]]
    mem[(32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
    mem[(32 * ext_call.return_data[0]) + 160 len 32 * ext_call.return_data[0]] = code.data[20386 len 32 * ext_call.return_data[0]]
    mem[(64 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
    mem[(64 * ext_call.return_data[0]) + 192 len 32 * ext_call.return_data[0]] = code.data[20386 len 32 * ext_call.return_data[0]]
    mem[(98 * ext_call.return_data[0]) + 192] = ext_call.return_data[0]
    mem[(98 * ext_call.return_data[0]) + 224 len 32 * ext_call.return_data[0]] = code.data[20386 len 32 * ext_call.return_data[0]]
    mem[(131 * ext_call.return_data[0]) + 224] = ext_call.return_data[0]
    mem[(131 * ext_call.return_data[0]) + 256 len 32 * ext_call.return_data[0]] = code.data[20386 len 32 * ext_call.return_data[0]]
    mem[(164 * ext_call.return_data[0]) + 256] = ext_call.return_data[0]
    mem[64] = (197 * ext_call.return_data[0]) + 288
    mem[(164 * ext_call.return_data[0]) + 288 len 32 * ext_call.return_data[0]] = code.data[20386 len 32 * ext_call.return_data[0]]
    idx = 0
    while idx < ext_call.return_data[0]:
        require ext_code.size(operatorAddress)
        staticcall operatorAddress.0x95a25efa with:
                gas gas_remaining wei
               args idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(operatorAddress)
        staticcall operatorAddress.0x2f89ddf8 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        mem[mem[64] len 160] = ext_call.return_data[0 len 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require idx < mem[96]
        mem[(32 * idx) + 128] = address(ext_call.return_data[0])
        require idx < mem[(32 * ext_call.return_data[0]) + 128]
        mem[(32 * ext_call.return_data[0]) + (32 * idx) + 160] = ext_call.return_data[0]
        require idx < mem[(64 * ext_call.return_data[0]) + 160]
        mem[(64 * ext_call.return_data[0]) + (32 * idx) + 192] = ext_call.return_data[32]
        require idx < mem[(98 * ext_call.return_data[0]) + 192]
        mem[(98 * ext_call.return_data[0]) + (32 * idx) + 224] = ext_call.return_data[64]
        require idx < mem[(131 * ext_call.return_data[0]) + 224]
        mem[(131 * ext_call.return_data[0]) + (32 * idx) + 256] = ext_call.return_data[96]
        require idx < mem[(164 * ext_call.return_data[0]) + 256]
        mem[(164 * ext_call.return_data[0]) + (32 * idx) + 288] = ext_call.return_data[128]
        idx = idx + 1
        continue 
    mem[mem[64]] = 192
    mem[mem[64] + 192] = mem[96]
    _101 = mem[96]
    mem[mem[64] + 224 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + 32] = (32 * mem[96]) + 224
    mem[(32 * mem[96]) + mem[64] + 224] = mem[(32 * ext_call.return_data[0]) + 128]
    _172 = mem[(32 * ext_call.return_data[0]) + 128]
    mem[(32 * mem[96]) + mem[64] + 256 len floor32(mem[(32 * ext_call.return_data[0]) + 128])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])]
    mem[mem[64] + 64] = (32 * _172) + (32 * mem[96]) + 256
    mem[(32 * _172) + (32 * mem[96]) + mem[64] + 256] = mem[(64 * ext_call.return_data[0]) + 160]
    _206 = mem[(64 * ext_call.return_data[0]) + 160]
    mem[(32 * _172) + (32 * mem[96]) + mem[64] + 288 len floor32(mem[(64 * ext_call.return_data[0]) + 160])] = mem[(64 * ext_call.return_data[0]) + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])]
    mem[mem[64] + 96] = (32 * _206) + (32 * _172) + (32 * mem[96]) + 288
    mem[(32 * _206) + (32 * _172) + (32 * mem[96]) + mem[64] + 288] = mem[(98 * ext_call.return_data[0]) + 192]
    _234 = mem[(98 * ext_call.return_data[0]) + 192]
    mem[(32 * _206) + (32 * _172) + (32 * mem[96]) + mem[64] + 320 len floor32(mem[(98 * ext_call.return_data[0]) + 192])] = mem[(98 * ext_call.return_data[0]) + 224 len floor32(mem[(98 * ext_call.return_data[0]) + 192])]
    mem[mem[64] + 128] = (32 * _234) + (32 * _206) + (32 * _172) + (32 * mem[96]) + 320
    mem[(32 * _234) + (32 * _206) + (32 * _172) + (32 * _101) + mem[64] + 320] = mem[(131 * ext_call.return_data[0]) + 224]
    _256 = mem[(131 * ext_call.return_data[0]) + 224]
    mem[(32 * _234) + (32 * _206) + (32 * _172) + (32 * _101) + mem[64] + 352 len floor32(mem[(131 * ext_call.return_data[0]) + 224])] = mem[(131 * ext_call.return_data[0]) + 256 len floor32(mem[(131 * ext_call.return_data[0]) + 224])]
    mem[mem[64] + 160] = (32 * _256) + (32 * _234) + (32 * _206) + (32 * _172) + (32 * _101) + 352
    mem[(32 * _256) + (32 * _234) + (32 * _206) + (32 * _172) + (32 * _101) + mem[64] + 352] = mem[(164 * ext_call.return_data[0]) + 256]
    _272 = mem[(164 * ext_call.return_data[0]) + 256]
    mem[(32 * _256) + (32 * _234) + (32 * _206) + (32 * _172) + (32 * _101) + mem[64] + 384 len floor32(mem[(164 * ext_call.return_data[0]) + 256])] = mem[(164 * ext_call.return_data[0]) + 288 len floor32(mem[(164 * ext_call.return_data[0]) + 256])]
    return 192, 
           mem[mem[64] + 32 len 96],
           (32 * _234) + (32 * _206) + (32 * _172) + (32 * _101) + 320,
           (32 * _256) + (32 * _234) + (32 * _206) + (32 * _172) + (32 * _101) + 352,
           mem[mem[64] + 192 len (32 * _272) + (32 * _256) + (32 * _234) + (32 * _206) + (32 * _172) + (32 * _101) + 192]
}

function sub_f72cf324(?) payable {
    require ext_code.size(operatorAddress)
    staticcall operatorAddress.getInvestorLength() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = ext_call.return_data[0]
    if not ext_call.return_data[0]:
        mem[(32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
        mem[(64 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
        mem[(98 * ext_call.return_data[0]) + 192] = ext_call.return_data[0]
        mem[(131 * ext_call.return_data[0]) + 224] = ext_call.return_data[0]
        mem[(164 * ext_call.return_data[0]) + 256] = ext_call.return_data[0]
        mem[(197 * ext_call.return_data[0]) + 288] = ext_call.return_data[0]
        mem[64] = (230 * ext_call.return_data[0]) + 320
        idx = 0
        while idx < ext_call.return_data[0]:
            require ext_code.size(operatorAddress)
            staticcall operatorAddress.0x95a25efa with:
                    gas gas_remaining wei
                   args idx
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(operatorAddress)
            staticcall operatorAddress.0xc9f58d4c with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require idx < mem[96]
            mem[(32 * idx) + 128] = address(ext_call.return_data[0])
            require idx < mem[(64 * ext_call.return_data[0]) + 160]
            mem[(64 * ext_call.return_data[0]) + (32 * idx) + 192] = ext_call.return_data[0]
            require idx < mem[(98 * ext_call.return_data[0]) + 192]
            mem[(98 * ext_call.return_data[0]) + (32 * idx) + 224] = address(ext_call.return_data[32])
            require idx < mem[(131 * ext_call.return_data[0]) + 224]
            mem[(131 * ext_call.return_data[0]) + (32 * idx) + 256] = address(ext_call.return_data[64])
            require idx < mem[(164 * ext_call.return_data[0]) + 256]
            mem[(164 * ext_call.return_data[0]) + (32 * idx) + 288] = address(ext_call.return_data[96])
            require idx < mem[(197 * ext_call.return_data[0]) + 288]
            mem[(197 * ext_call.return_data[0]) + (32 * idx) + 320] = address(ext_call.return_data[128])
            idx = idx + 1
            continue 
        mem[mem[64]] = 192
        mem[mem[64] + 192] = mem[96]
        _100 = mem[96]
        mem[mem[64] + 224 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 32] = (32 * mem[96]) + 224
        mem[(32 * mem[96]) + mem[64] + 224] = mem[(64 * ext_call.return_data[0]) + 160]
        _171 = mem[(64 * ext_call.return_data[0]) + 160]
        mem[(32 * mem[96]) + mem[64] + 256 len floor32(mem[(64 * ext_call.return_data[0]) + 160])] = mem[(64 * ext_call.return_data[0]) + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])]
        mem[mem[64] + 64] = (32 * _171) + (32 * mem[96]) + 256
        mem[(32 * _171) + (32 * mem[96]) + mem[64] + 256] = mem[(98 * ext_call.return_data[0]) + 192]
        _205 = mem[(98 * ext_call.return_data[0]) + 192]
        mem[(32 * _171) + (32 * mem[96]) + mem[64] + 288 len floor32(mem[(98 * ext_call.return_data[0]) + 192])] = mem[(98 * ext_call.return_data[0]) + 224 len floor32(mem[(98 * ext_call.return_data[0]) + 192])]
        mem[mem[64] + 96] = (32 * _205) + (32 * _171) + (32 * mem[96]) + 288
        mem[(32 * _205) + (32 * _171) + (32 * mem[96]) + mem[64] + 288] = mem[(131 * ext_call.return_data[0]) + 224]
        _233 = mem[(131 * ext_call.return_data[0]) + 224]
        mem[(32 * _205) + (32 * _171) + (32 * mem[96]) + mem[64] + 320 len floor32(mem[(131 * ext_call.return_data[0]) + 224])] = mem[(131 * ext_call.return_data[0]) + 256 len floor32(mem[(131 * ext_call.return_data[0]) + 224])]
        mem[mem[64] + 128] = (32 * _233) + (32 * _205) + (32 * _171) + (32 * mem[96]) + 320
        mem[(32 * _233) + (32 * _205) + (32 * _171) + (32 * _100) + mem[64] + 320] = mem[(164 * ext_call.return_data[0]) + 256]
        _255 = mem[(164 * ext_call.return_data[0]) + 256]
        mem[(32 * _233) + (32 * _205) + (32 * _171) + (32 * _100) + mem[64] + 352 len floor32(mem[(164 * ext_call.return_data[0]) + 256])] = mem[(164 * ext_call.return_data[0]) + 288 len floor32(mem[(164 * ext_call.return_data[0]) + 256])]
        mem[mem[64] + 160] = (32 * _255) + (32 * _233) + (32 * _205) + (32 * _171) + (32 * _100) + 352
        mem[(32 * _255) + (32 * _233) + (32 * _205) + (32 * _171) + (32 * _100) + mem[64] + 352] = mem[(197 * ext_call.return_data[0]) + 288]
        _271 = mem[(197 * ext_call.return_data[0]) + 288]
        mem[(32 * _255) + (32 * _233) + (32 * _205) + (32 * _171) + (32 * _100) + mem[64] + 384 len floor32(mem[(197 * ext_call.return_data[0]) + 288])] = mem[(197 * ext_call.return_data[0]) + 320 len floor32(mem[(197 * ext_call.return_data[0]) + 288])]
        return 192, 
               mem[mem[64] + 32 len 128],
               (32 * _255) + (32 * _233) + (32 * _205) + (32 * _171) + (32 * _100) + 352,
               mem[mem[64] + 192 len (32 * _271) + (32 * _255) + (32 * _233) + (32 * _205) + (32 * _171) + (32 * _100) + 192]
    mem[128 len 32 * ext_call.return_data[0]] = code.data[20386 len 32 * ext_call.return_data[0]]
    mem[(32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
    mem[(32 * ext_call.return_data[0]) + 160 len 32 * ext_call.return_data[0]] = code.data[20386 len 32 * ext_call.return_data[0]]
    mem[(64 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
    mem[(64 * ext_call.return_data[0]) + 192 len 32 * ext_call.return_data[0]] = code.data[20386 len 32 * ext_call.return_data[0]]
    mem[(98 * ext_call.return_data[0]) + 192] = ext_call.return_data[0]
    mem[(98 * ext_call.return_data[0]) + 224 len 32 * ext_call.return_data[0]] = code.data[20386 len 32 * ext_call.return_data[0]]
    mem[(131 * ext_call.return_data[0]) + 224] = ext_call.return_data[0]
    mem[(131 * ext_call.return_data[0]) + 256 len 32 * ext_call.return_data[0]] = code.data[20386 len 32 * ext_call.return_data[0]]
    mem[(164 * ext_call.return_data[0]) + 256] = ext_call.return_data[0]
    mem[(164 * ext_call.return_data[0]) + 288 len 32 * ext_call.return_data[0]] = code.data[20386 len 32 * ext_call.return_data[0]]
    mem[(197 * ext_call.return_data[0]) + 288] = ext_call.return_data[0]
    mem[64] = (230 * ext_call.return_data[0]) + 320
    mem[(197 * ext_call.return_data[0]) + 320 len 32 * ext_call.return_data[0]] = code.data[20386 len 32 * ext_call.return_data[0]]
    idx = 0
    while idx < ext_call.return_data[0]:
        require ext_code.size(operatorAddress)
        staticcall operatorAddress.0x95a25efa with:
                gas gas_remaining wei
               args idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(operatorAddress)
        staticcall operatorAddress.0xc9f58d4c with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        mem[mem[64] len 160] = ext_call.return_data[0 len 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require idx < mem[96]
        mem[(32 * idx) + 128] = address(ext_call.return_data[0])
        require idx < mem[(64 * ext_call.return_data[0]) + 160]
        mem[(64 * ext_call.return_data[0]) + (32 * idx) + 192] = ext_call.return_data[0]
        require idx < mem[(98 * ext_call.return_data[0]) + 192]
        mem[(98 * ext_call.return_data[0]) + (32 * idx) + 224] = address(ext_call.return_data[32])
        require idx < mem[(131 * ext_call.return_data[0]) + 224]
        mem[(131 * ext_call.return_data[0]) + (32 * idx) + 256] = address(ext_call.return_data[64])
        require idx < mem[(164 * ext_call.return_data[0]) + 256]
        mem[(164 * ext_call.return_data[0]) + (32 * idx) + 288] = address(ext_call.return_data[96])
        require idx < mem[(197 * ext_call.return_data[0]) + 288]
        mem[(197 * ext_call.return_data[0]) + (32 * idx) + 320] = address(ext_call.return_data[128])
        idx = idx + 1
        continue 
    mem[mem[64]] = 192
    mem[mem[64] + 192] = mem[96]
    _103 = mem[96]
    mem[mem[64] + 224 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + 32] = (32 * mem[96]) + 224
    mem[(32 * mem[96]) + mem[64] + 224] = mem[(64 * ext_call.return_data[0]) + 160]
    _174 = mem[(64 * ext_call.return_data[0]) + 160]
    mem[(32 * mem[96]) + mem[64] + 256 len floor32(mem[(64 * ext_call.return_data[0]) + 160])] = mem[(64 * ext_call.return_data[0]) + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])]
    mem[mem[64] + 64] = (32 * _174) + (32 * mem[96]) + 256
    mem[(32 * _174) + (32 * mem[96]) + mem[64] + 256] = mem[(98 * ext_call.return_data[0]) + 192]
    _208 = mem[(98 * ext_call.return_data[0]) + 192]
    mem[(32 * _174) + (32 * mem[96]) + mem[64] + 288 len floor32(mem[(98 * ext_call.return_data[0]) + 192])] = mem[(98 * ext_call.return_data[0]) + 224 len floor32(mem[(98 * ext_call.return_data[0]) + 192])]
    mem[mem[64] + 96] = (32 * _208) + (32 * _174) + (32 * mem[96]) + 288
    mem[(32 * _208) + (32 * _174) + (32 * mem[96]) + mem[64] + 288] = mem[(131 * ext_call.return_data[0]) + 224]
    _236 = mem[(131 * ext_call.return_data[0]) + 224]
    mem[(32 * _208) + (32 * _174) + (32 * _103) + mem[64] + 320 len floor32(mem[(131 * ext_call.return_data[0]) + 224])] = mem[(131 * ext_call.return_data[0]) + 256 len floor32(mem[(131 * ext_call.return_data[0]) + 224])]
    mem[mem[64] + 128] = (32 * _236) + (32 * _208) + (32 * _174) + (32 * _103) + 320
    mem[(32 * _236) + (32 * _208) + (32 * _174) + (32 * _103) + mem[64] + 320] = mem[(164 * ext_call.return_data[0]) + 256]
    _258 = mem[(164 * ext_call.return_data[0]) + 256]
    mem[(32 * _236) + (32 * _208) + (32 * _174) + (32 * _103) + mem[64] + 352 len floor32(mem[(164 * ext_call.return_data[0]) + 256])] = mem[(164 * ext_call.return_data[0]) + 288 len floor32(mem[(164 * ext_call.return_data[0]) + 256])]
    mem[mem[64] + 160] = (32 * _258) + (32 * _236) + (32 * _208) + (32 * _174) + (32 * _103) + 352
    mem[(32 * _258) + (32 * _236) + (32 * _208) + (32 * _174) + (32 * _103) + mem[64] + 352] = mem[(197 * ext_call.return_data[0]) + 288]
    _274 = mem[(197 * ext_call.return_data[0]) + 288]
    mem[(32 * _258) + (32 * _236) + (32 * _208) + (32 * _174) + (32 * _103) + mem[64] + 384 len floor32(mem[(197 * ext_call.return_data[0]) + 288])] = mem[(197 * ext_call.return_data[0]) + 320 len floor32(mem[(197 * ext_call.return_data[0]) + 288])]
    return 192, 
           mem[mem[64] + 32 len 96],
           (32 * _236) + (32 * _208) + (32 * _174) + (32 * _103) + 320,
           (32 * _258) + (32 * _236) + (32 * _208) + (32 * _174) + (32 * _103) + 352,
           mem[mem[64] + 192 len (32 * _274) + (32 * _258) + (32 * _236) + (32 * _208) + (32 * _174) + (32 * _103) + 192]
}

function sub_1a45bf6a(?) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(operatorAddress)
    staticcall operatorAddress.0x395bf562 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        mem[(32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
        mem[(64 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
        mem[(98 * ext_call.return_data[0]) + 192] = ext_call.return_data[0]
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
            mem[(131 * ext_call.return_data[0]) + 224 len 192] = ext_call.return_data[0 len 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 192
            if not arg1:
                if ext_call.return_data[32] >= arg2:
                    if ext_call.return_data[32] <= arg3:
                        require 0 < ext_call.return_data[0]
                        mem[128] = ext_call.return_data[0]
                        require 0 < mem[(32 * ext_call.return_data[0]) + 128]
                        mem[(32 * ext_call.return_data[0]) + 160] = ext_call.return_data[32]
                        require 0 < mem[(64 * ext_call.return_data[0]) + 160]
                        mem[(64 * ext_call.return_data[0]) + 192] = ext_call.return_data[64]
                        require ext_code.size(operatorAddress)
                        staticcall operatorAddress.0xc9f58d4c with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[96])
                        mem[(131 * ext_call.return_data[0]) + 224 len 160] = ext_call.return_data[0 len 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 160
                        require 0 < mem[(98 * ext_call.return_data[0]) + 192]
                        mem[(98 * ext_call.return_data[0]) + 224] = ext_call.return_data[0]
            else:
                if address(ext_call.return_data[96]) == arg1:
                    if ext_call.return_data[32] >= arg2:
                        if ext_call.return_data[32] <= arg3:
                            require 0 < ext_call.return_data[0]
                            mem[128] = ext_call.return_data[0]
                            require 0 < mem[(32 * ext_call.return_data[0]) + 128]
                            mem[(32 * ext_call.return_data[0]) + 160] = ext_call.return_data[32]
                            require 0 < mem[(64 * ext_call.return_data[0]) + 160]
                            mem[(64 * ext_call.return_data[0]) + 192] = ext_call.return_data[64]
                            require ext_code.size(operatorAddress)
                            staticcall operatorAddress.0xc9f58d4c with:
                                    gas gas_remaining wei
                                   args address(ext_call.return_data[96])
                            mem[(131 * ext_call.return_data[0]) + 224 len 160] = ext_call.return_data[0 len 160]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 160
                            require 0 < mem[(98 * ext_call.return_data[0]) + 192]
                            mem[(98 * ext_call.return_data[0]) + 224] = ext_call.return_data[0]
            idx = idx + 1
            continue 
        mem[(131 * ext_call.return_data[0]) + 224] = 128
        mem[(131 * ext_call.return_data[0]) + 352] = ext_call.return_data[0]
        mem[(131 * ext_call.return_data[0]) + 384 len floor32(ext_call.return_data[0])] = mem[128 len floor32(ext_call.return_data[0])]
        mem[(131 * ext_call.return_data[0]) + 256] = (32 * ext_call.return_data[0]) + 160
        mem[(164 * ext_call.return_data[0]) + 384] = mem[(32 * ext_call.return_data[0]) + 128]
        mem[(164 * ext_call.return_data[0]) + 416 len floor32(mem[(32 * ext_call.return_data[0]) + 128])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])]
        mem[(131 * ext_call.return_data[0]) + 288] = (32 * mem[(32 * ext_call.return_data[0]) + 128]) + (32 * ext_call.return_data[0]) + 192
        mem[(32 * mem[(32 * ext_call.return_data[0]) + 128]) + (164 * ext_call.return_data[0]) + 416] = mem[(64 * ext_call.return_data[0]) + 160]
        _207 = mem[(64 * ext_call.return_data[0]) + 160]
        mem[(32 * mem[(32 * ext_call.return_data[0]) + 128]) + (164 * ext_call.return_data[0]) + 448 len floor32(mem[(64 * ext_call.return_data[0]) + 160])] = mem[(64 * ext_call.return_data[0]) + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])]
        mem[(131 * ext_call.return_data[0]) + 320] = (32 * _207) + (32 * mem[(32 * ext_call.return_data[0]) + 128]) + (32 * ext_call.return_data[0]) + 224
        mem[(32 * _207) + (32 * mem[(32 * ext_call.return_data[0]) + 128]) + (164 * ext_call.return_data[0]) + 448] = mem[(98 * ext_call.return_data[0]) + 192]
        _223 = mem[(98 * ext_call.return_data[0]) + 192]
        mem[(32 * _207) + (32 * mem[(32 * ext_call.return_data[0]) + 128]) + (164 * ext_call.return_data[0]) + 480 len floor32(mem[(98 * ext_call.return_data[0]) + 192])] = mem[(98 * ext_call.return_data[0]) + 224 len floor32(mem[(98 * ext_call.return_data[0]) + 192])]
        return memory
          from (131 * ext_call.return_data[0]) + 224
           len (32 * _223) + (32 * _207) + (32 * mem[(32 * ext_call.return_data[0]) + 128]) + (32 * ext_call.return_data[0]) + 256
    mem[128 len 32 * ext_call.return_data[0]] = code.data[20386 len 32 * ext_call.return_data[0]]
    mem[(32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
    mem[(32 * ext_call.return_data[0]) + 160 len 32 * ext_call.return_data[0]] = code.data[20386 len 32 * ext_call.return_data[0]]
    mem[(64 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
    mem[(64 * ext_call.return_data[0]) + 192 len 32 * ext_call.return_data[0]] = code.data[20386 len 32 * ext_call.return_data[0]]
    mem[(98 * ext_call.return_data[0]) + 192] = ext_call.return_data[0]
    mem[(98 * ext_call.return_data[0]) + 224 len 32 * ext_call.return_data[0]] = code.data[20386 len 32 * ext_call.return_data[0]]
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
        mem[(131 * ext_call.return_data[0]) + 224 len 192] = ext_call.return_data[0 len 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 192
        if not arg1:
            if ext_call.return_data[32] >= arg2:
                if ext_call.return_data[32] <= arg3:
                    require 0 < ext_call.return_data[0]
                    mem[128] = ext_call.return_data[0]
                    require 0 < mem[(32 * ext_call.return_data[0]) + 128]
                    mem[(32 * ext_call.return_data[0]) + 160] = ext_call.return_data[32]
                    require 0 < mem[(64 * ext_call.return_data[0]) + 160]
                    mem[(64 * ext_call.return_data[0]) + 192] = ext_call.return_data[64]
                    require ext_code.size(operatorAddress)
                    staticcall operatorAddress.0xc9f58d4c with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[96])
                    mem[(131 * ext_call.return_data[0]) + 224 len 160] = ext_call.return_data[0 len 160]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 160
                    require 0 < mem[(98 * ext_call.return_data[0]) + 192]
                    mem[(98 * ext_call.return_data[0]) + 224] = ext_call.return_data[0]
        else:
            if address(ext_call.return_data[96]) == arg1:
                if ext_call.return_data[32] >= arg2:
                    if ext_call.return_data[32] <= arg3:
                        require 0 < ext_call.return_data[0]
                        mem[128] = ext_call.return_data[0]
                        require 0 < mem[(32 * ext_call.return_data[0]) + 128]
                        mem[(32 * ext_call.return_data[0]) + 160] = ext_call.return_data[32]
                        require 0 < mem[(64 * ext_call.return_data[0]) + 160]
                        mem[(64 * ext_call.return_data[0]) + 192] = ext_call.return_data[64]
                        require ext_code.size(operatorAddress)
                        staticcall operatorAddress.0xc9f58d4c with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[96])
                        mem[(131 * ext_call.return_data[0]) + 224 len 160] = ext_call.return_data[0 len 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 160
                        require 0 < mem[(98 * ext_call.return_data[0]) + 192]
                        mem[(98 * ext_call.return_data[0]) + 224] = ext_call.return_data[0]
        idx = idx + 1
        continue 
    mem[(131 * ext_call.return_data[0]) + 224] = 128
    mem[(131 * ext_call.return_data[0]) + 352] = ext_call.return_data[0]
    mem[(131 * ext_call.return_data[0]) + 384 len floor32(ext_call.return_data[0])] = mem[128 len floor32(ext_call.return_data[0])]
    mem[(131 * ext_call.return_data[0]) + 256] = (32 * ext_call.return_data[0]) + 160
    mem[(164 * ext_call.return_data[0]) + 384] = mem[(32 * ext_call.return_data[0]) + 128]
    mem[(164 * ext_call.return_data[0]) + 416 len floor32(mem[(32 * ext_call.return_data[0]) + 128])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])]
    mem[(131 * ext_call.return_data[0]) + 288] = (32 * mem[(32 * ext_call.return_data[0]) + 128]) + (32 * ext_call.return_data[0]) + 192
    mem[(32 * mem[(32 * ext_call.return_data[0]) + 128]) + (164 * ext_call.return_data[0]) + 416] = mem[(64 * ext_call.return_data[0]) + 160]
    _210 = mem[(64 * ext_call.return_data[0]) + 160]
    mem[(32 * mem[(32 * ext_call.return_data[0]) + 128]) + (164 * ext_call.return_data[0]) + 448 len floor32(mem[(64 * ext_call.return_data[0]) + 160])] = mem[(64 * ext_call.return_data[0]) + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])]
    mem[(131 * ext_call.return_data[0]) + 320] = (32 * _210) + (32 * mem[(32 * ext_call.return_data[0]) + 128]) + (32 * ext_call.return_data[0]) + 224
    mem[(32 * _210) + (32 * mem[(32 * ext_call.return_data[0]) + 128]) + (164 * ext_call.return_data[0]) + 448] = mem[(98 * ext_call.return_data[0]) + 192]
    _226 = mem[(98 * ext_call.return_data[0]) + 192]
    mem[(32 * _210) + (32 * mem[(32 * ext_call.return_data[0]) + 128]) + (164 * ext_call.return_data[0]) + 480 len floor32(mem[(98 * ext_call.return_data[0]) + 192])] = mem[(98 * ext_call.return_data[0]) + 224 len floor32(mem[(98 * ext_call.return_data[0]) + 192])]
    return memory
      from (131 * ext_call.return_data[0]) + 224
       len (32 * _226) + (32 * _210) + (32 * mem[(32 * ext_call.return_data[0]) + 128]) + (32 * ext_call.return_data[0]) + 256
}

function sub_aa9aab19(?) payable {
    require calldata.size - 4 >= 32
    mem[96] = 0x479537b600000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(operatorAddress)
    staticcall operatorAddress.0x479537b6 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], address(arg1) << 64
    require mem[96 len 4], address(arg1) << 64 <= 4294967296
    require mem[96 len 4], address(arg1) << 64 + 32 <= return_data.size
    require mem[mem[96 len 4], address(arg1) << 64 + 96] <= 4294967296 and mem[96 len 4], address(arg1) << 64 + (32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 32 <= return_data.size
    _6 = mem[mem[96 len 4], address(arg1) << 64 + 96]
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], address(arg1) << 64 + 96]
    if not _6:
        mem[ceil32(return_data.size) + (32 * _6) + 128] = _6
        mem[ceil32(return_data.size) + (64 * _6) + 160] = _6
        mem[ceil32(return_data.size) + (98 * _6) + 192] = _6
        mem[ceil32(return_data.size) + (131 * _6) + 224] = _6
        mem[ceil32(return_data.size) + (164 * _6) + 256] = _6
        mem[64] = ceil32(return_data.size) + (197 * _6) + 288
        idx = 0
        while idx < _6:
            require idx < mem[_4 + 96]
            require ext_code.size(operatorAddress)
            staticcall operatorAddress.0xc9f58d4c with:
                    gas gas_remaining wei
                   args address(mem[(32 * idx) + _4 + 128])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_code.size(operatorAddress)
            staticcall operatorAddress.0x76a1f04f with:
                    gas gas_remaining wei
                   args address(mem[(32 * idx) + _4 + 128])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 128
            require ext_code.size(operatorAddress)
            staticcall operatorAddress.0x2f89ddf8 with:
                    gas gas_remaining wei
                   args address(mem[(32 * idx) + _4 + 128])
            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require idx < mem[ceil32(return_data.size) + (64 * _6) + 160]
            require idx < mem[ceil32(return_data.size) + (98 * _6) + 192]
            require idx < mem[ceil32(return_data.size) + 96]
            require idx < mem[ceil32(return_data.size) + (32 * _6) + 128]
            require idx < mem[ceil32(return_data.size) + (131 * _6) + 224]
            require idx < mem[ceil32(return_data.size) + (164 * _6) + 256]
            mem[ceil32(return_data.size) + (164 * _6) + (32 * idx) + 288] = ext_call.return_data[32]
            mem[(32 * idx) + ceil32(return_data.size) + (131 * _6) + 256] = ext_call.return_data[0]
            mem[(32 * idx) + ceil32(return_data.size) + (32 * _6) + 160] = ext_call.return_data[0]
            mem[(32 * idx) + ceil32(return_data.size) + 128] = ext_call.return_data[32]
            mem[(32 * idx) + ceil32(return_data.size) + (98 * _6) + 224] = address(ext_call.return_data[32])
            mem[(32 * idx) + ceil32(return_data.size) + (64 * _6) + 192] = ext_call.return_data[0]
            idx = idx + 1
            continue 
        _112 = mem[64]
        mem[mem[64]] = 224
        mem[mem[64] + 224] = mem[_4 + 96]
        _114 = mem[_4 + 96]
        mem[mem[64] + 256 len floor32(mem[_4 + 96])] = mem[_4 + 128 len floor32(mem[_4 + 96])]
        mem[mem[64] + 32] = (32 * _114) + 256
        mem[(32 * _114) + mem[64] + 256] = mem[ceil32(return_data.size) + (64 * _6) + 160]
        _203 = mem[ceil32(return_data.size) + (64 * _6) + 160]
        mem[(32 * _114) + mem[64] + 288 len floor32(mem[ceil32(return_data.size) + (64 * _6) + 160])] = mem[ceil32(return_data.size) + (64 * _6) + 192 len floor32(mem[ceil32(return_data.size) + (64 * _6) + 160])]
        mem[mem[64] + 64] = (32 * _203) + (32 * _114) + 288
        mem[(32 * _203) + (32 * _114) + _112 + 288] = mem[ceil32(return_data.size) + 96]
        _243 = mem[ceil32(return_data.size) + 96]
        mem[(32 * _203) + (32 * _114) + _112 + 320 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
        mem[_112 + 96] = (32 * _243) + (32 * _203) + (32 * _114) + 320
        mem[(32 * _243) + (32 * _203) + (32 * _114) + _112 + 320] = mem[ceil32(return_data.size) + (32 * _6) + 128]
        _277 = mem[ceil32(return_data.size) + (32 * _6) + 128]
        mem[(32 * _243) + (32 * _203) + (32 * _114) + _112 + 352 len floor32(mem[ceil32(return_data.size) + (32 * _6) + 128])] = mem[ceil32(return_data.size) + (32 * _6) + 160 len floor32(mem[ceil32(return_data.size) + (32 * _6) + 128])]
        mem[_112 + 128] = (32 * _277) + (32 * _243) + (32 * _203) + (32 * _114) + 352
        mem[(32 * _277) + (32 * _243) + (32 * _203) + (32 * _114) + _112 + 352] = mem[ceil32(return_data.size) + (98 * _6) + 192]
        _305 = mem[ceil32(return_data.size) + (98 * _6) + 192]
        mem[(32 * _277) + (32 * _243) + (32 * _203) + (32 * _114) + _112 + 384 len floor32(mem[ceil32(return_data.size) + (98 * _6) + 192])] = mem[ceil32(return_data.size) + (98 * _6) + 224 len floor32(mem[ceil32(return_data.size) + (98 * _6) + 192])]
        mem[_112 + 160] = (32 * _305) + (32 * _277) + (32 * _243) + (32 * _203) + (32 * _114) + 384
        mem[(32 * _305) + (32 * _277) + (32 * _243) + (32 * _203) + (32 * _114) + _112 + 384] = mem[ceil32(return_data.size) + (131 * _6) + 224]
        _327 = mem[ceil32(return_data.size) + (131 * _6) + 224]
        mem[(32 * _305) + (32 * _277) + (32 * _243) + (32 * _203) + (32 * _114) + _112 + 416 len floor32(mem[ceil32(return_data.size) + (131 * _6) + 224])] = mem[ceil32(return_data.size) + (131 * _6) + 256 len floor32(mem[ceil32(return_data.size) + (131 * _6) + 224])]
        mem[_112 + 192] = (32 * _327) + (32 * _305) + (32 * _277) + (32 * _243) + (32 * _203) + (32 * _114) + 416
        mem[(32 * _327) + (32 * _305) + (32 * _277) + (32 * _243) + (32 * _203) + (32 * _114) + _112 + 416] = mem[ceil32(return_data.size) + (164 * _6) + 256]
        _343 = mem[ceil32(return_data.size) + (164 * _6) + 256]
        mem[(32 * _327) + (32 * _305) + (32 * _277) + (32 * _243) + (32 * _203) + (32 * _114) + _112 + 448 len floor32(mem[ceil32(return_data.size) + (164 * _6) + 256])] = mem[ceil32(return_data.size) + (164 * _6) + 288 len floor32(mem[ceil32(return_data.size) + (164 * _6) + 256])]
        return memory
          from mem[64]
           len (32 * _343) + (32 * _327) + (32 * _305) + (32 * _277) + (32 * _243) + (32 * _203) + (32 * _114) + _112 + -mem[64] + 448
    mem[ceil32(return_data.size) + 128 len 32 * _6] = code.data[20386 len 32 * _6]
    mem[ceil32(return_data.size) + (32 * _6) + 128] = _6
    mem[ceil32(return_data.size) + (32 * _6) + 160 len 32 * _6] = code.data[20386 len 32 * _6]
    mem[ceil32(return_data.size) + (64 * _6) + 160] = _6
    mem[ceil32(return_data.size) + (64 * _6) + 192 len 32 * _6] = code.data[20386 len 32 * _6]
    mem[ceil32(return_data.size) + (98 * _6) + 192] = _6
    mem[ceil32(return_data.size) + (98 * _6) + 224 len 32 * _6] = code.data[20386 len 32 * _6]
    mem[ceil32(return_data.size) + (131 * _6) + 224] = _6
    mem[ceil32(return_data.size) + (131 * _6) + 256 len 32 * _6] = code.data[20386 len 32 * _6]
    mem[ceil32(return_data.size) + (164 * _6) + 256] = _6
    mem[64] = ceil32(return_data.size) + (197 * _6) + 288
    mem[ceil32(return_data.size) + (164 * _6) + 288 len 32 * _6] = code.data[20386 len 32 * _6]
    idx = 0
    while idx < _6:
        require idx < mem[_4 + 96]
        require ext_code.size(operatorAddress)
        staticcall operatorAddress.0xc9f58d4c with:
                gas gas_remaining wei
               args address(mem[(32 * idx) + _4 + 128])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require ext_code.size(operatorAddress)
        staticcall operatorAddress.0x76a1f04f with:
                gas gas_remaining wei
               args address(mem[(32 * idx) + _4 + 128])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        require ext_code.size(operatorAddress)
        staticcall operatorAddress.0x2f89ddf8 with:
                gas gas_remaining wei
               args address(mem[(32 * idx) + _4 + 128])
        mem[mem[64] len 160] = ext_call.return_data[0 len 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require idx < mem[ceil32(return_data.size) + (64 * _6) + 160]
        require idx < mem[ceil32(return_data.size) + (98 * _6) + 192]
        require idx < mem[ceil32(return_data.size) + 96]
        require idx < mem[ceil32(return_data.size) + (32 * _6) + 128]
        require idx < mem[ceil32(return_data.size) + (131 * _6) + 224]
        require idx < mem[ceil32(return_data.size) + (164 * _6) + 256]
        mem[ceil32(return_data.size) + (164 * _6) + (32 * idx) + 288] = ext_call.return_data[32]
        mem[(32 * idx) + ceil32(return_data.size) + (131 * _6) + 256] = ext_call.return_data[0]
        mem[(32 * idx) + ceil32(return_data.size) + (32 * _6) + 160] = ext_call.return_data[0]
        mem[(32 * idx) + ceil32(return_data.size) + 128] = ext_call.return_data[32]
        mem[(32 * idx) + ceil32(return_data.size) + (98 * _6) + 224] = address(ext_call.return_data[32])
        mem[(32 * idx) + ceil32(return_data.size) + (64 * _6) + 192] = ext_call.return_data[0]
        idx = idx + 1
        continue 
    mem[mem[64]] = 224
    mem[mem[64] + 224] = mem[_4 + 96]
    _118 = mem[_4 + 96]
    mem[mem[64] + 256 len floor32(mem[_4 + 96])] = mem[_4 + 128 len floor32(mem[_4 + 96])]
    mem[mem[64] + 32] = (32 * _118) + 256
    mem[(32 * _118) + mem[64] + 256] = mem[ceil32(return_data.size) + (64 * _6) + 160]
    _206 = mem[ceil32(return_data.size) + (64 * _6) + 160]
    mem[(32 * _118) + mem[64] + 288 len floor32(mem[ceil32(return_data.size) + (64 * _6) + 160])] = mem[ceil32(return_data.size) + (64 * _6) + 192 len floor32(mem[ceil32(return_data.size) + (64 * _6) + 160])]
    mem[mem[64] + 64] = (32 * _206) + (32 * _118) + 288
    mem[(32 * _206) + (32 * _118) + mem[64] + 288] = mem[ceil32(return_data.size) + 96]
    _246 = mem[ceil32(return_data.size) + 96]
    mem[(32 * _206) + (32 * _118) + mem[64] + 320 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
    mem[mem[64] + 96] = (32 * _246) + (32 * _206) + (32 * _118) + 320
    mem[(32 * _246) + (32 * _206) + (32 * _118) + mem[64] + 320] = mem[ceil32(return_data.size) + (32 * _6) + 128]
    _280 = mem[ceil32(return_data.size) + (32 * _6) + 128]
    mem[(32 * _246) + (32 * _206) + (32 * _118) + mem[64] + 352 len floor32(mem[ceil32(return_data.size) + (32 * _6) + 128])] = mem[ceil32(return_data.size) + (32 * _6) + 160 len floor32(mem[ceil32(return_data.size) + (32 * _6) + 128])]
    mem[mem[64] + 128] = (32 * _280) + (32 * _246) + (32 * _206) + (32 * _118) + 352
    mem[(32 * _280) + (32 * _246) + (32 * _206) + (32 * _118) + mem[64] + 352] = mem[ceil32(return_data.size) + (98 * _6) + 192]
    _308 = mem[ceil32(return_data.size) + (98 * _6) + 192]
    mem[(32 * _280) + (32 * _246) + (32 * _206) + (32 * _118) + mem[64] + 384 len floor32(mem[ceil32(return_data.size) + (98 * _6) + 192])] = mem[ceil32(return_data.size) + (98 * _6) + 224 len floor32(mem[ceil32(return_data.size) + (98 * _6) + 192])]
    mem[mem[64] + 160] = (32 * _308) + (32 * _280) + (32 * _246) + (32 * _206) + (32 * _118) + 384
    mem[(32 * _308) + (32 * _280) + (32 * _246) + (32 * _206) + (32 * _118) + mem[64] + 384] = mem[ceil32(return_data.size) + (131 * _6) + 224]
    _330 = mem[ceil32(return_data.size) + (131 * _6) + 224]
    mem[(32 * _308) + (32 * _280) + (32 * _246) + (32 * _206) + (32 * _118) + mem[64] + 416 len floor32(mem[ceil32(return_data.size) + (131 * _6) + 224])] = mem[ceil32(return_data.size) + (131 * _6) + 256 len floor32(mem[ceil32(return_data.size) + (131 * _6) + 224])]
    mem[mem[64] + 192] = (32 * _330) + (32 * _308) + (32 * _280) + (32 * _246) + (32 * _206) + (32 * _118) + 416
    mem[(32 * _330) + (32 * _308) + (32 * _280) + (32 * _246) + (32 * _206) + (32 * _118) + mem[64] + 416] = mem[ceil32(return_data.size) + (164 * _6) + 256]
    _346 = mem[ceil32(return_data.size) + (164 * _6) + 256]
    mem[(32 * _330) + (32 * _308) + (32 * _280) + (32 * _246) + (32 * _206) + (32 * _118) + mem[64] + 448 len floor32(mem[ceil32(return_data.size) + (164 * _6) + 256])] = mem[ceil32(return_data.size) + (164 * _6) + 288 len floor32(mem[ceil32(return_data.size) + (164 * _6) + 256])]
    return 224, 
           (32 * _118) + 256,
           (32 * _206) + (32 * _118) + 288,
           (32 * _246) + (32 * _206) + (32 * _118) + 320,
           (32 * _280) + (32 * _246) + (32 * _206) + (32 * _118) + 352,
           (32 * _308) + (32 * _280) + (32 * _246) + (32 * _206) + (32 * _118) + 384,
           (32 * _330) + (32 * _308) + (32 * _280) + (32 * _246) + (32 * _206) + (32 * _118) + 416,
           mem[mem[64] + 224 len (32 * _346) + (32 * _330) + (32 * _308) + (32 * _280) + (32 * _246) + (32 * _206) + (32 * _118) + 224]
}

function sub_c6689696(?) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(operatorAddress)
    staticcall operatorAddress.0x2d9b7f4d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        mem[(32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
        mem[(64 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
        mem[(98 * ext_call.return_data[0]) + 192] = ext_call.return_data[0]
        mem[(131 * ext_call.return_data[0]) + 224] = ext_call.return_data[0]
        mem[(164 * ext_call.return_data[0]) + 256] = ext_call.return_data[0]
        mem[(197 * ext_call.return_data[0]) + 288] = ext_call.return_data[0]
        idx = 0
        while idx < ext_call.return_data[0]:
            require ext_code.size(operatorAddress)
            staticcall operatorAddress.0x2fb011fa with:
                    gas gas_remaining wei
                   args idx
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(operatorAddress)
            staticcall operatorAddress.0xefbf64a7 with:
                    gas gas_remaining wei
                   args ext_call.return_data[0]
            mem[(230 * ext_call.return_data[0]) + 320 len 224] = ext_call.return_data[0 len 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 224
            if not arg1:
                if ext_call.return_data[32] >= arg2:
                    if ext_call.return_data[32] <= arg3:
                        require 0 < ext_call.return_data[0]
                        mem[128] = ext_call.return_data[0]
                        require 0 < mem[(32 * ext_call.return_data[0]) + 128]
                        mem[(32 * ext_call.return_data[0]) + 160] = ext_call.return_data[32]
                        require 0 < mem[(64 * ext_call.return_data[0]) + 160]
                        mem[(64 * ext_call.return_data[0]) + 192] = ext_call.return_data[64]
                        require ext_code.size(operatorAddress)
                        staticcall operatorAddress.0xc9f58d4c with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[96])
                        mem[(230 * ext_call.return_data[0]) + 320 len 160] = ext_call.return_data[0 len 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 160
                        require 0 < mem[(98 * ext_call.return_data[0]) + 192]
                        mem[(98 * ext_call.return_data[0]) + 224] = ext_call.return_data[0]
            else:
                if address(ext_call.return_data[96]) == arg1:
                    if ext_call.return_data[32] >= arg2:
                        if ext_call.return_data[32] <= arg3:
                            require 0 < ext_call.return_data[0]
                            mem[128] = ext_call.return_data[0]
                            require 0 < mem[(32 * ext_call.return_data[0]) + 128]
                            mem[(32 * ext_call.return_data[0]) + 160] = ext_call.return_data[32]
                            require 0 < mem[(64 * ext_call.return_data[0]) + 160]
                            mem[(64 * ext_call.return_data[0]) + 192] = ext_call.return_data[64]
                            require ext_code.size(operatorAddress)
                            staticcall operatorAddress.0xc9f58d4c with:
                                    gas gas_remaining wei
                                   args address(ext_call.return_data[96])
                            mem[(230 * ext_call.return_data[0]) + 320 len 160] = ext_call.return_data[0 len 160]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 160
                            require 0 < mem[(98 * ext_call.return_data[0]) + 192]
                            mem[(98 * ext_call.return_data[0]) + 224] = ext_call.return_data[0]
            idx = idx + 1
            continue 
        idx = 0
        while idx < ext_call.return_data[0]:
            require ext_code.size(operatorAddress)
            staticcall operatorAddress.0x2fb011fa with:
                    gas gas_remaining wei
                   args idx
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(operatorAddress)
            staticcall operatorAddress.0xefbf64a7 with:
                    gas gas_remaining wei
                   args ext_call.return_data[0]
            mem[(230 * ext_call.return_data[0]) + 320 len 224] = ext_call.return_data[0 len 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 224
            if not arg1:
                if ext_call.return_data[32] >= arg2:
                    if ext_call.return_data[32] <= arg3:
                        require 0 < mem[(164 * ext_call.return_data[0]) + 256]
                        mem[(164 * ext_call.return_data[0]) + 288] = ext_call.return_data[160]
                        require 0 < mem[(197 * ext_call.return_data[0]) + 288]
                        mem[(197 * ext_call.return_data[0]) + 320] = ext_call.return_data[192]
                        require 0 < mem[(131 * ext_call.return_data[0]) + 224]
                        mem[(131 * ext_call.return_data[0]) + 256] = address(ext_call.return_data[128])
            else:
                if 0 == arg1:
                    if ext_call.return_data[32] >= arg2:
                        if ext_call.return_data[32] <= arg3:
                            require 0 < mem[(164 * ext_call.return_data[0]) + 256]
                            mem[(164 * ext_call.return_data[0]) + 288] = ext_call.return_data[160]
                            require 0 < mem[(197 * ext_call.return_data[0]) + 288]
                            mem[(197 * ext_call.return_data[0]) + 320] = ext_call.return_data[192]
                            require 0 < mem[(131 * ext_call.return_data[0]) + 224]
                            mem[(131 * ext_call.return_data[0]) + 256] = address(ext_call.return_data[128])
            idx = idx + 1
            continue 
        mem[(230 * ext_call.return_data[0]) + 320] = 224
        mem[(230 * ext_call.return_data[0]) + 544] = ext_call.return_data[0]
        mem[(230 * ext_call.return_data[0]) + 576 len floor32(ext_call.return_data[0])] = mem[128 len floor32(ext_call.return_data[0])]
        mem[(230 * ext_call.return_data[0]) + 352] = (32 * ext_call.return_data[0]) + 256
        mem[(263 * ext_call.return_data[0]) + 576] = mem[(32 * ext_call.return_data[0]) + 128]
        mem[(263 * ext_call.return_data[0]) + 608 len floor32(mem[(32 * ext_call.return_data[0]) + 128])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])]
        mem[(230 * ext_call.return_data[0]) + 384] = (32 * mem[(32 * ext_call.return_data[0]) + 128]) + (32 * ext_call.return_data[0]) + 288
        mem[(32 * mem[(32 * ext_call.return_data[0]) + 128]) + (263 * ext_call.return_data[0]) + 608] = mem[(64 * ext_call.return_data[0]) + 160]
        _397 = mem[(64 * ext_call.return_data[0]) + 160]
        mem[(32 * mem[(32 * ext_call.return_data[0]) + 128]) + (263 * ext_call.return_data[0]) + 640 len floor32(mem[(64 * ext_call.return_data[0]) + 160])] = mem[(64 * ext_call.return_data[0]) + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])]
        mem[(230 * ext_call.return_data[0]) + 416] = (32 * _397) + (32 * mem[(32 * ext_call.return_data[0]) + 128]) + (32 * ext_call.return_data[0]) + 320
        mem[(32 * _397) + (32 * mem[(32 * ext_call.return_data[0]) + 128]) + (263 * ext_call.return_data[0]) + 640] = mem[(98 * ext_call.return_data[0]) + 192]
        _431 = mem[(98 * ext_call.return_data[0]) + 192]
        mem[(32 * _397) + (32 * mem[(32 * ext_call.return_data[0]) + 128]) + (263 * ext_call.return_data[0]) + 672 len floor32(mem[(98 * ext_call.return_data[0]) + 192])] = mem[(98 * ext_call.return_data[0]) + 224 len floor32(mem[(98 * ext_call.return_data[0]) + 192])]
        mem[(230 * ext_call.return_data[0]) + 448] = (32 * _431) + (32 * _397) + (32 * mem[(32 * ext_call.return_data[0]) + 128]) + (32 * ext_call.return_data[0]) + 352
        mem[(32 * _431) + (32 * _397) + (32 * mem[(32 * ext_call.return_data[0]) + 128]) + (263 * ext_call.return_data[0]) + 672] = mem[(131 * ext_call.return_data[0]) + 224]
        mem[(32 * _431) + (32 * _397) + (32 * mem[(32 * ext_call.return_data[0]) + 128]) + (263 * ext_call.return_data[0]) + 704 len floor32(mem[(131 * ext_call.return_data[0]) + 224])] = mem[(131 * ext_call.return_data[0]) + 256 len floor32(mem[(131 * ext_call.return_data[0]) + 224])]
        mem[(230 * ext_call.return_data[0]) + 480] = (32 * mem[(131 * ext_call.return_data[0]) + 224]) + (32 * _431) + (32 * _397) + (32 * mem[(32 * ext_call.return_data[0]) + 128]) + (32 * ext_call.return_data[0]) + 384
        mem[(32 * mem[(131 * ext_call.return_data[0]) + 224]) + (32 * _431) + (32 * _397) + (32 * mem[(32 * ext_call.return_data[0]) + 128]) + (263 * ext_call.return_data[0]) + 704] = mem[(164 * ext_call.return_data[0]) + 256]
        mem[(32 * mem[(131 * ext_call.return_data[0]) + 224]) + (32 * _431) + (32 * _397) + (32 * mem[(32 * ext_call.return_data[0]) + 128]) + (263 * ext_call.return_data[0]) + 736 len floor32(mem[(164 * ext_call.return_data[0]) + 256])] = mem[(164 * ext_call.return_data[0]) + 288 len floor32(mem[(164 * ext_call.return_data[0]) + 256])]
        mem[(230 * ext_call.return_data[0]) + 512] = (32 * mem[(164 * ext_call.return_data[0]) + 256]) + (32 * mem[(131 * ext_call.return_data[0]) + 224]) + (32 * _431) + (32 * _397) + (32 * mem[(32 * ext_call.return_data[0]) + 128]) + (32 * ext_call.return_data[0]) + 416
        mem[(32 * mem[(164 * ext_call.return_data[0]) + 256]) + (32 * mem[(131 * ext_call.return_data[0]) + 224]) + (32 * _431) + (32 * _397) + (32 * mem[(32 * ext_call.return_data[0]) + 128]) + (263 * ext_call.return_data[0]) + 736] = mem[(197 * ext_call.return_data[0]) + 288]
        mem[(32 * mem[(164 * ext_call.return_data[0]) + 256]) + (32 * mem[(131 * ext_call.return_data[0]) + 224]) + (32 * _431) + (32 * _397) + (32 * mem[(32 * ext_call.return_data[0]) + 128]) + (263 * ext_call.return_data[0]) + 768 len floor32(mem[(197 * ext_call.return_data[0]) + 288])] = mem[(197 * ext_call.return_data[0]) + 320 len floor32(mem[(197 * ext_call.return_data[0]) + 288])]
        return memory
          from (230 * ext_call.return_data[0]) + 320
           len (32 * mem[(197 * ext_call.return_data[0]) + 288]) + (32 * mem[(164 * ext_call.return_data[0]) + 256]) + (32 * mem[(131 * ext_call.return_data[0]) + 224]) + (32 * _431) + (32 * _397) + (32 * mem[(32 * ext_call.return_data[0]) + 128]) + (32 * ext_call.return_data[0]) + 448
    mem[128 len 32 * ext_call.return_data[0]] = code.data[20386 len 32 * ext_call.return_data[0]]
    mem[(32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
    mem[(32 * ext_call.return_data[0]) + 160 len 32 * ext_call.return_data[0]] = code.data[20386 len 32 * ext_call.return_data[0]]
    mem[(64 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
    mem[(64 * ext_call.return_data[0]) + 192 len 32 * ext_call.return_data[0]] = code.data[20386 len 32 * ext_call.return_data[0]]
    mem[(98 * ext_call.return_data[0]) + 192] = ext_call.return_data[0]
    mem[(98 * ext_call.return_data[0]) + 224 len 32 * ext_call.return_data[0]] = code.data[20386 len 32 * ext_call.return_data[0]]
    mem[(131 * ext_call.return_data[0]) + 224] = ext_call.return_data[0]
    mem[(131 * ext_call.return_data[0]) + 256 len 32 * ext_call.return_data[0]] = code.data[20386 len 32 * ext_call.return_data[0]]
    mem[(164 * ext_call.return_data[0]) + 256] = ext_call.return_data[0]
    mem[(164 * ext_call.return_data[0]) + 288 len 32 * ext_call.return_data[0]] = code.data[20386 len 32 * ext_call.return_data[0]]
    mem[(197 * ext_call.return_data[0]) + 288] = ext_call.return_data[0]
    mem[(197 * ext_call.return_data[0]) + 320 len 32 * ext_call.return_data[0]] = code.data[20386 len 32 * ext_call.return_data[0]]
    idx = 0
    while idx < ext_call.return_data[0]:
        require ext_code.size(operatorAddress)
        staticcall operatorAddress.0x2fb011fa with:
                gas gas_remaining wei
               args idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(operatorAddress)
        staticcall operatorAddress.0xefbf64a7 with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        mem[(230 * ext_call.return_data[0]) + 320 len 224] = ext_call.return_data[0 len 224]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 224
        if not arg1:
            if ext_call.return_data[32] >= arg2:
                if ext_call.return_data[32] <= arg3:
                    require 0 < ext_call.return_data[0]
                    mem[128] = ext_call.return_data[0]
                    require 0 < mem[(32 * ext_call.return_data[0]) + 128]
                    mem[(32 * ext_call.return_data[0]) + 160] = ext_call.return_data[32]
                    require 0 < mem[(64 * ext_call.return_data[0]) + 160]
                    mem[(64 * ext_call.return_data[0]) + 192] = ext_call.return_data[64]
                    require ext_code.size(operatorAddress)
                    staticcall operatorAddress.0xc9f58d4c with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[96])
                    mem[(230 * ext_call.return_data[0]) + 320 len 160] = ext_call.return_data[0 len 160]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 160
                    require 0 < mem[(98 * ext_call.return_data[0]) + 192]
                    mem[(98 * ext_call.return_data[0]) + 224] = ext_call.return_data[0]
        else:
            if address(ext_call.return_data[96]) == arg1:
                if ext_call.return_data[32] >= arg2:
                    if ext_call.return_data[32] <= arg3:
                        require 0 < ext_call.return_data[0]
                        mem[128] = ext_call.return_data[0]
                        require 0 < mem[(32 * ext_call.return_data[0]) + 128]
                        mem[(32 * ext_call.return_data[0]) + 160] = ext_call.return_data[32]
                        require 0 < mem[(64 * ext_call.return_data[0]) + 160]
                        mem[(64 * ext_call.return_data[0]) + 192] = ext_call.return_data[64]
                        require ext_code.size(operatorAddress)
                        staticcall operatorAddress.0xc9f58d4c with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[96])
                        mem[(230 * ext_call.return_data[0]) + 320 len 160] = ext_call.return_data[0 len 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 160
                        require 0 < mem[(98 * ext_call.return_data[0]) + 192]
                        mem[(98 * ext_call.return_data[0]) + 224] = ext_call.return_data[0]
        idx = idx + 1
        continue 
    idx = 0
    while idx < ext_call.return_data[0]:
        require ext_code.size(operatorAddress)
        staticcall operatorAddress.0x2fb011fa with:
                gas gas_remaining wei
               args idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(operatorAddress)
        staticcall operatorAddress.0xefbf64a7 with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        mem[(230 * ext_call.return_data[0]) + 320 len 224] = ext_call.return_data[0 len 224]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 224
        if not arg1:
            if ext_call.return_data[32] >= arg2:
                if ext_call.return_data[32] <= arg3:
                    require 0 < mem[(164 * ext_call.return_data[0]) + 256]
                    mem[(164 * ext_call.return_data[0]) + 288] = ext_call.return_data[160]
                    require 0 < mem[(197 * ext_call.return_data[0]) + 288]
                    mem[(197 * ext_call.return_data[0]) + 320] = ext_call.return_data[192]
                    require 0 < mem[(131 * ext_call.return_data[0]) + 224]
                    mem[(131 * ext_call.return_data[0]) + 256] = address(ext_call.return_data[128])
        else:
            if 0 == arg1:
                if ext_call.return_data[32] >= arg2:
                    if ext_call.return_data[32] <= arg3:
                        require 0 < mem[(164 * ext_call.return_data[0]) + 256]
                        mem[(164 * ext_call.return_data[0]) + 288] = ext_call.return_data[160]
                        require 0 < mem[(197 * ext_call.return_data[0]) + 288]
                        mem[(197 * ext_call.return_data[0]) + 320] = ext_call.return_data[192]
                        require 0 < mem[(131 * ext_call.return_data[0]) + 224]
                        mem[(131 * ext_call.return_data[0]) + 256] = address(ext_call.return_data[128])
        idx = idx + 1
        continue 
    mem[(230 * ext_call.return_data[0]) + 320] = 224
    mem[(230 * ext_call.return_data[0]) + 544] = ext_call.return_data[0]
    mem[(230 * ext_call.return_data[0]) + 576 len floor32(ext_call.return_data[0])] = mem[128 len floor32(ext_call.return_data[0])]
    mem[(230 * ext_call.return_data[0]) + 352] = (32 * ext_call.return_data[0]) + 256
    mem[(263 * ext_call.return_data[0]) + 576] = mem[(32 * ext_call.return_data[0]) + 128]
    mem[(263 * ext_call.return_data[0]) + 608 len floor32(mem[(32 * ext_call.return_data[0]) + 128])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])]
    mem[(230 * ext_call.return_data[0]) + 384] = (32 * mem[(32 * ext_call.return_data[0]) + 128]) + (32 * ext_call.return_data[0]) + 288
    mem[(32 * mem[(32 * ext_call.return_data[0]) + 128]) + (263 * ext_call.return_data[0]) + 608] = mem[(64 * ext_call.return_data[0]) + 160]
    _400 = mem[(64 * ext_call.return_data[0]) + 160]
    mem[(32 * mem[(32 * ext_call.return_data[0]) + 128]) + (263 * ext_call.return_data[0]) + 640 len floor32(mem[(64 * ext_call.return_data[0]) + 160])] = mem[(64 * ext_call.return_data[0]) + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])]
    mem[(230 * ext_call.return_data[0]) + 416] = (32 * _400) + (32 * mem[(32 * ext_call.return_data[0]) + 128]) + (32 * ext_call.return_data[0]) + 320
    mem[(32 * _400) + (32 * mem[(32 * ext_call.return_data[0]) + 128]) + (263 * ext_call.return_data[0]) + 640] = mem[(98 * ext_call.return_data[0]) + 192]
    _434 = mem[(98 * ext_call.return_data[0]) + 192]
    mem[(32 * _400) + (32 * mem[(32 * ext_call.return_data[0]) + 128]) + (263 * ext_call.return_data[0]) + 672 len floor32(mem[(98 * ext_call.return_data[0]) + 192])] = mem[(98 * ext_call.return_data[0]) + 224 len floor32(mem[(98 * ext_call.return_data[0]) + 192])]
    mem[(230 * ext_call.return_data[0]) + 448] = (32 * _434) + (32 * _400) + (32 * mem[(32 * ext_call.return_data[0]) + 128]) + (32 * ext_call.return_data[0]) + 352
    mem[(32 * _434) + (32 * _400) + (32 * mem[(32 * ext_call.return_data[0]) + 128]) + (263 * ext_call.return_data[0]) + 672] = mem[(131 * ext_call.return_data[0]) + 224]
    _462 = mem[(131 * ext_call.return_data[0]) + 224]
    mem[(32 * _434) + (32 * _400) + (32 * mem[(32 * ext_call.return_data[0]) + 128]) + (263 * ext_call.return_data[0]) + 704 len floor32(mem[(131 * ext_call.return_data[0]) + 224])] = mem[(131 * ext_call.return_data[0]) + 256 len floor32(mem[(131 * ext_call.return_data[0]) + 224])]
    mem[(230 * ext_call.return_data[0]) + 480] = (32 * _462) + (32 * _434) + (32 * _400) + (32 * mem[(32 * ext_call.return_data[0]) + 128]) + (32 * ext_call.return_data[0]) + 384
    mem[(32 * _462) + (32 * _434) + (32 * _400) + (32 * mem[(32 * ext_call.return_data[0]) + 128]) + (263 * ext_call.return_data[0]) + 704] = mem[(164 * ext_call.return_data[0]) + 256]
    _484 = mem[(164 * ext_call.return_data[0]) + 256]
    mem[(32 * _462) + (32 * _434) + (32 * _400) + (32 * mem[(32 * ext_call.return_data[0]) + 128]) + (263 * ext_call.return_data[0]) + 736 len floor32(mem[(164 * ext_call.return_data[0]) + 256])] = mem[(164 * ext_call.return_data[0]) + 288 len floor32(mem[(164 * ext_call.return_data[0]) + 256])]
    mem[(230 * ext_call.return_data[0]) + 512] = (32 * _484) + (32 * _462) + (32 * _434) + (32 * _400) + (32 * mem[(32 * ext_call.return_data[0]) + 128]) + (32 * ext_call.return_data[0]) + 416
    mem[(32 * _484) + (32 * _462) + (32 * _434) + (32 * _400) + (32 * mem[(32 * ext_call.return_data[0]) + 128]) + (263 * ext_call.return_data[0]) + 736] = mem[(197 * ext_call.return_data[0]) + 288]
    _500 = mem[(197 * ext_call.return_data[0]) + 288]
    mem[(32 * _484) + (32 * _462) + (32 * _434) + (32 * _400) + (32 * mem[(32 * ext_call.return_data[0]) + 128]) + (263 * ext_call.return_data[0]) + 768 len floor32(mem[(197 * ext_call.return_data[0]) + 288])] = mem[(197 * ext_call.return_data[0]) + 320 len floor32(mem[(197 * ext_call.return_data[0]) + 288])]
    return memory
      from (230 * ext_call.return_data[0]) + 320
       len (32 * _500) + (32 * _484) + (32 * _462) + (32 * _434) + (32 * _400) + (32 * mem[(32 * ext_call.return_data[0]) + 128]) + (32 * ext_call.return_data[0]) + 448
}



}

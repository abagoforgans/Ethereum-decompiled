contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[61 len 11163]
}



// =====================  Runtime code  =====================


#
#  - sub_54c8cc78(?)
#
address stor0;
mapping of struct holding;
array of struct stor2;
array of uint256 sub_d759e241;
array of struct stor4;
array of struct stor5;

function sub_0fb0a3b2(?) {
    return holding[stor3[arg1][address(arg2)]].field_0, 
           holding[stor3[arg1][address(arg2)]].field_256,
           address(holding[stor3[arg1][address(arg2)]].field_512),
           holding[stor3[arg1][address(arg2)]].field_768,
           holding[stor3[arg1][address(arg2)]].field_1024,
           holding[stor3[arg1][address(arg2)]].field_1280
}

function sub_8b69450d(?) {
    return stor5.length
}

function holding(uint256 arg1) {
    return holding[arg1].field_0, 
           holding[arg1].field_256,
           address(holding[arg1].field_512),
           holding[arg1].field_768,
           holding[arg1].field_1024,
           holding[arg1].field_1280
}

function sub_d295c57a(?) {
    return holding[arg1].field_256
}

function sub_d759e241(?) {
    return sub_d759e241[arg1][address(arg2)]
}

function sub_e849d4ef(?) {
    return holding[stor3[arg1][address(arg2)]].field_768
}

function getHolder(uint256 arg1) {
    return address(holding[arg1].field_512)
}

function sub_ec375953(?) {
    return holding[arg1].field_768
}

function kill() {
    if stor0 == msg.sender:
        selfdestruct(stor0)
}

function _fallback() payable {
    revert 
}

function setAdmin(address arg1) {
    if stor0 == msg.sender:
        stor0 = arg1
}

function register() {
    if stor0 == msg.sender:
        require ext_code.size(code.data[11131 len 32])
        call code.data[11131 len 32].register(bytes32 rg1) with:
             gas gas_remaining - 50 wei
            args 'custodian'
        require ext_call.success
}

function sub_56457b00(?) {
    if stor5.length:
        mem[160] = uint256(stor5.field_0)
        idx = 160
        s = 0
        while (32 * stor5.length) + 128 > idx:
            mem[idx + 32] = stor5[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=stor5.length, data=mem[160 len 32 * stor5.length])
}

function sub_30ac2e7f(?) {
    if stor2[address(arg1)].field_0:
        mem[160] = stor2[address(arg1)].field_0
        idx = 160
        s = 0
        while (32 * stor2[address(arg1)].field_0) + 128 > idx:
            mem[idx + 32] = stor2[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=stor2[address(arg1)].field_0, data=mem[160 len 32 * stor2[address(arg1)].field_0])
}

function sub_6ef22110(?) {
    if stor4[arg1].field_0:
        mem[160] = stor4[arg1].field_0
        if (32 * stor4[arg1].field_0) + 32 > 64:
            mem[192] = stor4[arg1].field_256
            idx = 192
            s = 1
            while (32 * stor4[arg1].field_0) + 128 > idx:
                mem[idx + 32] = stor4[arg1][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    return Array(len=stor4[arg1].field_0, data=mem[160 len 32 * stor4[arg1].field_0])
}

function sub_b1eb7998(?) {
    require ext_code.size(address(code.data[11131 len 32]))
    call address(code.data[11131 len 32]).addressOf(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args ('offerbook' << 184)
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xbd98583a with:
         gas gas_remaining - 50 wei
        args arg1, arg2
    require ext_call.success
    return (holding[stor3[arg1][address(arg2)]].field_768 - ext_call.return_data[0])
}

function sub_f49c505f(?) {
    mem[64] = 288
    s = 96
    idx = 0
    s = 0
    while idx < stor4[arg1].field_0:
        require idx < stor4[arg1].field_0
        mem[0] = stor4[arg1][idx].field_0
        mem[32] = 1
        _14 = sha3(stor4[arg1][idx].field_0, 1)
        _15 = mem[64]
        mem[64] = mem[64] + 192
        mem[_15] = holding[stor4[arg1][idx].field_0].field_0
        mem[_15 + 32] = holding[stor4[arg1][idx].field_0].field_256
        mem[_15 + 64] = address(holding[stor4[arg1][idx].field_0].field_512)
        mem[_15 + 96] = holding[stor4[arg1][idx].field_0].field_768
        mem[_15 + 128] = holding[stor4[arg1][idx].field_0].field_1024
        mem[_15 + 160] = holding[stor4[arg1][idx].field_0].field_1280
        mem[0] = arg1
        mem[32] = 4
        s = _15
        idx = idx + 1
        s = holding[stor4[arg1][idx].field_0].field_768 + s
        continue 
    return (sub_d759e241[_14] * stor4[arg1].field_0)
}

function sub_308f16da(?) {
    require ext_code.size(address(code.data[11131 len 32]))
    call address(code.data[11131 len 32]).addressOf(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args ('offerbook' << 184)
    require ext_call.success
    require ext_code.size(code.data[11131 len 32])
    call code.data[11131 len 32].addressOf(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args 0x626f6e6400000000000000000000000000000000000000000000000000000000
    require ext_call.success
    if address(ext_call.return_data[0]) != msg.sender:
        if stor0 != msg.sender:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x391465cb with:
                 gas gas_remaining - 50 wei
                args arg1, msg.sender
            require ext_call.success
            if not ext_call.return_data[0]:
                return 0
    if arg5 <= 0:
        return 1
    if arg6:
        return 1
    require ext_code.size(address(code.data[11131 len 32]))
    call address(code.data[11131 len 32]).addressOf(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args 'stabletoken'
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).adminTransfer(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 50 wei
        args address(arg2), address(arg3), arg4 * arg5
    require ext_call.success
    if not ext_call.return_data[0]:
        emit 0x5a29bc1d: arg1, 5, 3, arg2
    return bool(ext_call.return_data[0])
}

function sub_0c5e11e2(?) {
    require ext_code.size(address(code.data[11131 len 32]))
    call address(code.data[11131 len 32]).addressOf(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args 0x626f6e6400000000000000000000000000000000000000000000000000000000
    require ext_call.success
    if ext_call.return_data[12 len 20] != msg.sender:
        if stor0 != msg.sender:
            return 0
    if sub_d759e241[arg1][address(arg2)]:
        return holding[0].field_0
    holding[stor5.length + 1].field_0 = stor5.length + 1
    holding[stor5.length + 1].field_256 = arg1
    address(holding[stor5.length + 1].field_512) = arg2
    holding[stor5.length + 1].field_768 = arg3
    holding[stor5.length + 1].field_1024 = arg4
    holding[stor5.length + 1].field_1280 = arg5
    sub_d759e241[arg1][address(arg2)] = stor5.length + 1
    stor4[arg1].field_0++
    if not stor4[arg1].field_0 <= stor4[arg1].field_0 + 1:
        idx = stor4[arg1].field_0 + 1
        while stor4[arg1].field_0 > idx:
            stor4[arg1][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor4[arg1][stor4[arg1].field_0].field_0 = holding[stor5.length + 1].field_0
    stor2[address(arg2)].field_0++
    stor2[address(arg2)][stor2[address(arg2)].field_0].field_0 = holding[stor5.length + 1].field_0
    stor5.length++
    stor5[stor5.length].field_0 = holding[stor5.length + 1].field_0
    emit 0x563ecb3e: holding[stor5.length + 1].field_256, address(holding[stor5.length + 1].field_512), holding[stor5.length + 1].field_768, holding[stor5.length + 1].field_1024, holding[stor5.length + 1].field_1280, 5, holding[stor5.length + 1].field_0
    return holding[stor5.length + 1].field_0
}

function sub_e57d6f52(?) {
    if address(holding[arg1].field_512):
        require ext_code.size(address(code.data[11131 len 32]))
        call address(code.data[11131 len 32]).addressOf(bytes32 rg1) with:
             gas gas_remaining - 50 wei
            args 0x626f6e6400000000000000000000000000000000000000000000000000000000
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x391465cb with:
             gas gas_remaining - 50 wei
            args holding[arg1].field_256, msg.sender
        require ext_call.success
        if ext_call.return_data[0]:
            if arg2 >= 1:
                holding[arg1].field_768 += arg2
                emit 0x563ecb3e: holding[arg1].field_256, 0, arg2 + holding[arg1].field_768, holding[arg1].field_1024, holding[arg1].field_1280, 7, holding[arg1].field_0
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x940589d6 with:
                     gas gas_remaining - 50 wei
                    args holding[arg1].field_256, arg2
                require ext_call.success
        else:
            if stor0 == msg.sender:
                if arg2 >= 1:
                    holding[arg1].field_768 += arg2
                    emit 0x563ecb3e: holding[arg1].field_256, 0, arg2 + holding[arg1].field_768, holding[arg1].field_1024, holding[arg1].field_1280, 7, holding[arg1].field_0
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x940589d6 with:
                         gas gas_remaining - 50 wei
                        args holding[arg1].field_256, arg2
                    require ext_call.success
}

function sub_1cb78281(?) {
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[64] = 416
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    mem[352] = 0
    mem[384] = 0
    if arg2:
        s = 224
        idx = arg1
        while idx < arg2:
            require idx < stor5.length
            mem[0] = stor5[idx].field_0
            mem[32] = 1
            _59 = mem[64]
            mem[64] = mem[64] + 192
            mem[_59] = holding[stor5[idx].field_0].field_0
            mem[_59 + 32] = holding[stor5[idx].field_0].field_256
            mem[_59 + 64] = address(holding[stor5[idx].field_0].field_512)
            mem[_59 + 96] = holding[stor5[idx].field_0].field_768
            mem[_59 + 128] = holding[stor5[idx].field_0].field_1024
            mem[_59 + 160] = holding[stor5[idx].field_0].field_1280
            require idx < mem[96]
            mem[(32 * idx) + 128] = holding[stor5[idx].field_0].field_0
            require idx < mem[128]
            mem[(32 * idx) + 160] = address(holding[stor5[idx].field_0].field_512)
            require idx < mem[160]
            mem[(32 * idx) + 192] = holding[stor5[idx].field_0].field_256
            require idx < mem[192]
            mem[(32 * idx) + 224] = holding[stor5[idx].field_0].field_768
            s = _59
            idx = idx + 1
            continue 
        _48 = mem[64]
        mem[mem[64]] = 128
        mem[mem[64] + 128] = mem[96]
        _50 = mem[96]
        mem[mem[64] + 160 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[mem[64] + 32] = (32 * mem[96]) + 160
        mem[(32 * mem[96]) + mem[64] + 160] = mem[128]
        _52 = mem[128]
        mem[(32 * mem[96]) + mem[64] + 192 len 32 * mem[128]] = mem[160 len 32 * mem[128]]
        mem[mem[64] + 64] = (32 * mem[128]) + (32 * mem[96]) + 192
        mem[(32 * _52) + (32 * _50) + _48 + 192] = mem[160]
        _54 = mem[160]
        mem[(32 * _52) + (32 * _50) + _48 + 224 len 32 * mem[160]] = mem[192 len 32 * mem[160]]
        mem[_48 + 96] = (32 * mem[160]) + (32 * _52) + (32 * _50) + 224
        mem[(32 * _54) + (32 * _52) + (32 * _50) + _48 + 224] = mem[192]
        mem[(32 * _54) + (32 * _52) + (32 * _50) + _48 + 256 len 32 * mem[192]] = mem[224 len 32 * mem[192]]
        return memory
          from mem[64]
           len (32 * mem[192]) + (32 * _54) + (32 * _52) + (32 * _50) + _48 + -mem[64] + 256
    s = 224
    idx = arg1
    while idx < stor5.length:
        mem[0] = stor5[idx].field_0
        mem[32] = 1
        _72 = mem[64]
        mem[64] = mem[64] + 192
        mem[_72] = holding[stor5[idx].field_0].field_0
        mem[_72 + 32] = holding[stor5[idx].field_0].field_256
        mem[_72 + 64] = address(holding[stor5[idx].field_0].field_512)
        mem[_72 + 96] = holding[stor5[idx].field_0].field_768
        mem[_72 + 128] = holding[stor5[idx].field_0].field_1024
        mem[_72 + 160] = holding[stor5[idx].field_0].field_1280
        require idx < mem[96]
        mem[(32 * idx) + 128] = holding[stor5[idx].field_0].field_0
        require idx < mem[128]
        mem[(32 * idx) + 160] = address(holding[stor5[idx].field_0].field_512)
        require idx < mem[160]
        mem[(32 * idx) + 192] = holding[stor5[idx].field_0].field_256
        require idx < mem[192]
        mem[(32 * idx) + 224] = holding[stor5[idx].field_0].field_768
        s = _72
        idx = idx + 1
        continue 
    _61 = mem[64]
    mem[mem[64]] = 128
    mem[mem[64] + 128] = mem[96]
    _63 = mem[96]
    mem[mem[64] + 160 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    mem[mem[64] + 32] = (32 * mem[96]) + 160
    mem[(32 * mem[96]) + mem[64] + 160] = mem[128]
    _65 = mem[128]
    mem[(32 * mem[96]) + mem[64] + 192 len 32 * mem[128]] = mem[160 len 32 * mem[128]]
    mem[mem[64] + 64] = (32 * mem[128]) + (32 * mem[96]) + 192
    mem[(32 * _65) + (32 * _63) + _61 + 192] = mem[160]
    _67 = mem[160]
    mem[(32 * _65) + (32 * _63) + _61 + 224 len 32 * mem[160]] = mem[192 len 32 * mem[160]]
    mem[_61 + 96] = (32 * mem[160]) + (32 * _65) + (32 * _63) + 224
    mem[(32 * _67) + (32 * _65) + (32 * _63) + _61 + 224] = mem[192]
    mem[(32 * _67) + (32 * _65) + (32 * _63) + _61 + 256 len 32 * mem[192]] = mem[224 len 32 * mem[192]]
    return memory
      from mem[64]
       len (32 * mem[192]) + (32 * _67) + (32 * _65) + (32 * _63) + _61 + -mem[64] + 256
}

function sub_2d0b104c(?) {
    require ext_code.size(address(code.data[11131 len 32]))
    call address(code.data[11131 len 32]).addressOf(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args 0x626f6e6400000000000000000000000000000000000000000000000000000000
    require ext_call.success
    if stor0 != msg.sender:
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x391465cb with:
             gas gas_remaining - 50 wei
            args arg1, msg.sender
        require ext_call.success
        if not ext_call.return_data[0]:
            return 0
    if address(holding[stor3[arg1][address(arg3)]].field_512):
        holding[stor3[arg1][address(arg3)]].field_768 += arg4
        if holding[stor3[arg1][address(arg2)]].field_1024 > 0:
            if holding[stor3[arg1][address(arg3)]].field_1024 > 0:
                return 0
            holding[stor3[arg1][address(arg3)]].field_1024 = holding[stor3[arg1][address(arg2)]].field_1024
            holding[stor3[arg1][address(arg3)]].field_1280 = holding[stor3[arg1][address(arg2)]].field_1280
            holding[stor3[arg1][address(arg3)]].field_1024 = 0
            if 1 == holding[stor3[arg1][address(arg2)]].field_1280:
                require ext_code.size(address(code.data[11131 len 32]))
                call address(code.data[11131 len 32]).addressOf(bytes32 rg1) with:
                     gas gas_remaining - 50 wei
                    args 'cashsettled'
                require ext_call.success
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x43fb2310 with:
                     gas gas_remaining - 50 wei
                    args holding[stor3[arg1][address(arg3)]].field_1024, sub_d759e241[arg1][address(arg3)]
                require ext_call.success
            else:
                if 2 == holding[stor3[arg1][address(arg3)]].field_1280:
                    require ext_code.size(address(code.data[11131 len 32]))
                    call address(code.data[11131 len 32]).addressOf(bytes32 rg1) with:
                         gas gas_remaining - 50 wei
                        args 'cashsettled'
                    require ext_call.success
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x173396bb with:
                         gas gas_remaining - 50 wei
                        args holding[stor3[arg1][address(arg3)]].field_1024, sub_d759e241[arg1][address(arg3)]
                    require ext_call.success
        holding[stor3[arg1][address(arg2)]].field_768 -= arg4
        emit 0x563ecb3e: holding[stor3[arg1][address(arg2)]].field_256, 0, holding[stor3[arg1][address(arg2)]].field_768 - arg4, holding[stor3[arg1][address(arg2)]].field_1024, holding[stor3[arg1][address(arg2)]].field_1280, 6, holding[stor3[arg1][address(arg2)]].field_0
        emit 0x563ecb3e: holding[stor3[arg1][address(arg3)]].field_256, 0, holding[stor3[arg1][address(arg3)]].field_768, holding[stor3[arg1][address(arg3)]].field_1024, holding[stor3[arg1][address(arg3)]].field_1280, 6, sub_d759e241[arg1][address(arg3)]
    else:
        holding[stor5.length + 1].field_0 = stor5.length + 1
        holding[stor5.length + 1].field_256 = arg1
        address(holding[stor5.length + 1].field_512) = arg3
        holding[stor5.length + 1].field_768 = arg4
        holding[stor5.length + 1].field_1280 = 1
        sub_d759e241[arg1][address(arg3)] = stor5.length + 1
        stor4[arg1].field_0++
        stor4[arg1][stor4[arg1].field_0].field_0 = stor5.length + 1
        stor2[address(arg3)].field_0++
        stor2[address(arg3)][stor2[address(arg3)].field_0].field_0 = stor5.length + 1
        stor5.length++
        stor5[stor5.length].field_0 = stor5.length + 1
        if holding[stor3[arg1][address(arg2)]].field_1024 > 0:
            if holding[stor5.length + 1].field_1024 > 0:
                return 0
            holding[stor5.length + 1].field_1024 = holding[stor3[arg1][address(arg2)]].field_1024
            holding[stor5.length + 1].field_1280 = holding[stor3[arg1][address(arg2)]].field_1280
            holding[stor5.length + 1].field_1024 = 0
            if 1 == holding[stor3[arg1][address(arg2)]].field_1280:
                require ext_code.size(address(code.data[11131 len 32]))
                call address(code.data[11131 len 32]).addressOf(bytes32 rg1) with:
                     gas gas_remaining - 50 wei
                    args 'cashsettled'
                require ext_call.success
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x43fb2310 with:
                     gas gas_remaining - 50 wei
                    args holding[stor5.length + 1].field_1024, stor5.length + 1
                require ext_call.success
            else:
                if 2 == holding[stor5.length + 1].field_1280:
                    require ext_code.size(address(code.data[11131 len 32]))
                    call address(code.data[11131 len 32]).addressOf(bytes32 rg1) with:
                         gas gas_remaining - 50 wei
                        args 'cashsettled'
                    require ext_call.success
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x173396bb with:
                         gas gas_remaining - 50 wei
                        args holding[stor5.length + 1].field_1024, stor5.length + 1
                    require ext_call.success
        holding[stor3[arg1][address(arg2)]].field_768 -= arg4
        emit 0x563ecb3e: holding[stor3[arg1][address(arg2)]].field_256, 0, holding[stor3[arg1][address(arg2)]].field_768 - arg4, holding[stor3[arg1][address(arg2)]].field_1024, holding[stor3[arg1][address(arg2)]].field_1280, 6, holding[stor3[arg1][address(arg2)]].field_0
        emit 0x563ecb3e: holding[stor5.length + 1].field_256, 0, holding[stor5.length + 1].field_768, holding[stor5.length + 1].field_1024, holding[stor5.length + 1].field_1280, 6, stor5.length + 1
    return 1
}

function sub_cd22bee5(?) {
    require ext_code.size(address(code.data[11131 len 32]))
    call address(code.data[11131 len 32]).addressOf(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args 0x626f6e6400000000000000000000000000000000000000000000000000000000
    require ext_call.success
    if ext_call.return_data[12 len 20] == msg.sender:
        s = 0
        idx = 0
        while idx < stor5.length:
            mem[0] = stor5[idx].field_0
            mem[32] = 1
            if holding[stor5[idx].field_0].field_256 == arg1:
                if not arg5:
                    mem[0] = stor5[idx].field_0
                    require ext_code.size(address(code.data[11131 len 32]))
                    call address(code.data[11131 len 32]).addressOf(bytes32 rg1) with:
                         gas gas_remaining - 50 wei
                        args 'stabletoken'
                    require ext_call.success
                    mem[100] = address(holding[stor5[idx].field_0].field_512)
                    mem[132] = arg2
                    mem[164] = arg3 * holding[stor5[idx].field_0].field_768
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).adminTransfer(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining - 50 wei
                        args address(holding[stor5[idx].field_0].field_512), address(arg2), arg3 * holding[stor5[idx].field_0].field_768
                    mem[96] = ext_call.return_data[0]
                    require ext_call.success
                    if not ext_call.return_data[0]:
                        mem[96] = arg1
                        mem[128] = 5
                        emit 0x5a29bc1d: arg1, 5, 3, address(holding[stor5[idx].field_0].field_512)
                if 2 == arg4:
                    mem[96] = arg1
                    mem[128] = arg3 * holding[stor5[idx].field_0].field_768
                    emit 0x8b36b54e: arg1, arg3 * holding[stor5[idx].field_0].field_768, 4, arg2, address(holding[stor5[idx].field_0].field_512)
            s = sha3(stor5[idx].field_0, 1)
            idx = idx + 1
            continue 
    else:
        if stor0 == msg.sender:
            s = 0
            idx = 0
            while idx < stor5.length:
                mem[0] = stor5[idx].field_0
                mem[32] = 1
                if holding[stor5[idx].field_0].field_256 == arg1:
                    if not arg5:
                        mem[0] = stor5[idx].field_0
                        require ext_code.size(address(code.data[11131 len 32]))
                        call address(code.data[11131 len 32]).addressOf(bytes32 rg1) with:
                             gas gas_remaining - 50 wei
                            args 'stabletoken'
                        require ext_call.success
                        mem[100] = address(holding[stor5[idx].field_0].field_512)
                        mem[132] = arg2
                        mem[164] = arg3 * holding[stor5[idx].field_0].field_768
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).adminTransfer(address rg1, address rg2, uint256 rg3) with:
                             gas gas_remaining - 50 wei
                            args address(holding[stor5[idx].field_0].field_512), address(arg2), arg3 * holding[stor5[idx].field_0].field_768
                        mem[96] = ext_call.return_data[0]
                        require ext_call.success
                        if not ext_call.return_data[0]:
                            mem[96] = arg1
                            mem[128] = 5
                            emit 0x5a29bc1d: arg1, 5, 3, address(holding[stor5[idx].field_0].field_512)
                    if 2 == arg4:
                        mem[96] = arg1
                        mem[128] = arg3 * holding[stor5[idx].field_0].field_768
                        emit 0x8b36b54e: arg1, arg3 * holding[stor5[idx].field_0].field_768, 4, arg2, address(holding[stor5[idx].field_0].field_512)
                s = sha3(stor5[idx].field_0, 1)
                idx = idx + 1
                continue 
        else:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x391465cb with:
                 gas gas_remaining - 50 wei
                args arg1, msg.sender
            require ext_call.success
            if ext_call.return_data[0]:
                s = 0
                idx = 0
                while idx < stor5.length:
                    mem[0] = stor5[idx].field_0
                    mem[32] = 1
                    if holding[stor5[idx].field_0].field_256 == arg1:
                        if not arg5:
                            mem[0] = stor5[idx].field_0
                            require ext_code.size(address(code.data[11131 len 32]))
                            call address(code.data[11131 len 32]).addressOf(bytes32 rg1) with:
                                 gas gas_remaining - 50 wei
                                args 'stabletoken'
                            require ext_call.success
                            mem[100] = address(holding[stor5[idx].field_0].field_512)
                            mem[132] = arg2
                            mem[164] = arg3 * holding[stor5[idx].field_0].field_768
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).adminTransfer(address rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining - 50 wei
                                args address(holding[stor5[idx].field_0].field_512), address(arg2), arg3 * holding[stor5[idx].field_0].field_768
                            mem[96] = ext_call.return_data[0]
                            require ext_call.success
                            if not ext_call.return_data[0]:
                                mem[96] = arg1
                                mem[128] = 5
                                emit 0x5a29bc1d: arg1, 5, 3, address(holding[stor5[idx].field_0].field_512)
                        if 2 == arg4:
                            mem[96] = arg1
                            mem[128] = arg3 * holding[stor5[idx].field_0].field_768
                            emit 0x8b36b54e: arg1, arg3 * holding[stor5[idx].field_0].field_768, 4, arg2, address(holding[stor5[idx].field_0].field_512)
                    s = sha3(stor5[idx].field_0, 1)
                    idx = idx + 1
                    continue 
    return 0
}

function sub_edc43db5(?) {
    require ext_code.size(address(code.data[11131 len 32]))
    call address(code.data[11131 len 32]).addressOf(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args ('offerbook' << 184)
    require ext_call.success
    require ext_code.size(code.data[11131 len 32])
    call code.data[11131 len 32].addressOf(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args 0x626f6e6400000000000000000000000000000000000000000000000000000000
    require ext_call.success
    if address(ext_call.return_data[0]) != msg.sender:
        if stor0 != msg.sender:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x391465cb with:
                 gas gas_remaining - 50 wei
                args arg1, msg.sender
            require ext_call.success
            if not ext_call.return_data[0]:
                return 0
    if not arg6:
        require ext_code.size(address(code.data[11131 len 32]))
        call address(code.data[11131 len 32]).addressOf(bytes32 rg1) with:
             gas gas_remaining - 50 wei
            args 'stabletoken'
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).adminTransfer(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining - 50 wei
            args address(arg2), address(arg3), arg4 * arg5
        require ext_call.success
        if not ext_call.return_data[0]:
            emit 0x5a29bc1d: arg1, 5, 3, arg3
            revert 
    if address(holding[stor3[arg1][address(arg3)]].field_512):
        holding[stor3[arg1][address(arg3)]].field_768 += arg4
        if holding[stor3[arg1][address(arg2)]].field_1024 > 0:
            require holding[stor3[arg1][address(arg3)]].field_1024 <= 0
            holding[stor3[arg1][address(arg3)]].field_1024 = holding[stor3[arg1][address(arg2)]].field_1024
            holding[stor3[arg1][address(arg3)]].field_1280 = holding[stor3[arg1][address(arg2)]].field_1280
            holding[stor3[arg1][address(arg3)]].field_1024 = 0
            if 1 == holding[stor3[arg1][address(arg2)]].field_1280:
                require ext_code.size(address(code.data[11131 len 32]))
                call address(code.data[11131 len 32]).addressOf(bytes32 rg1) with:
                     gas gas_remaining - 50 wei
                    args 'cashsettled'
                require ext_call.success
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x43fb2310 with:
                     gas gas_remaining - 50 wei
                    args holding[stor3[arg1][address(arg3)]].field_1024, sub_d759e241[arg1][address(arg3)]
                require ext_call.success
            else:
                if 2 == holding[stor3[arg1][address(arg3)]].field_1280:
                    require ext_code.size(address(code.data[11131 len 32]))
                    call address(code.data[11131 len 32]).addressOf(bytes32 rg1) with:
                         gas gas_remaining - 50 wei
                        args 'cashsettled'
                    require ext_call.success
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x173396bb with:
                         gas gas_remaining - 50 wei
                        args holding[stor3[arg1][address(arg3)]].field_1024, sub_d759e241[arg1][address(arg3)]
                    require ext_call.success
        holding[stor3[arg1][address(arg2)]].field_768 -= arg4
        emit 0x563ecb3e: holding[stor3[arg1][address(arg2)]].field_256, 0, holding[stor3[arg1][address(arg2)]].field_768 - arg4, holding[stor3[arg1][address(arg2)]].field_1024, holding[stor3[arg1][address(arg2)]].field_1280, 6, holding[stor3[arg1][address(arg2)]].field_0
        emit 0x563ecb3e: holding[stor3[arg1][address(arg3)]].field_256, 0, holding[stor3[arg1][address(arg3)]].field_768, holding[stor3[arg1][address(arg3)]].field_1024, holding[stor3[arg1][address(arg3)]].field_1280, 6, sub_d759e241[arg1][address(arg3)]
    else:
        holding[stor5.length + 1].field_0 = stor5.length + 1
        holding[stor5.length + 1].field_256 = arg1
        address(holding[stor5.length + 1].field_512) = arg3
        holding[stor5.length + 1].field_768 = arg4
        holding[stor5.length + 1].field_1280 = 1
        sub_d759e241[arg1][address(arg3)] = stor5.length + 1
        stor4[arg1].field_0++
        stor4[arg1][stor4[arg1].field_0].field_0 = stor5.length + 1
        stor2[address(arg3)].field_0++
        stor2[address(arg3)][stor2[address(arg3)].field_0].field_0 = stor5.length + 1
        stor5.length++
        stor5[stor5.length].field_0 = stor5.length + 1
        if holding[stor3[arg1][address(arg2)]].field_1024 > 0:
            require holding[stor5.length + 1].field_1024 <= 0
            holding[stor5.length + 1].field_1024 = holding[stor3[arg1][address(arg2)]].field_1024
            holding[stor5.length + 1].field_1280 = holding[stor3[arg1][address(arg2)]].field_1280
            holding[stor5.length + 1].field_1024 = 0
            if 1 == holding[stor3[arg1][address(arg2)]].field_1280:
                require ext_code.size(address(code.data[11131 len 32]))
                call address(code.data[11131 len 32]).addressOf(bytes32 rg1) with:
                     gas gas_remaining - 50 wei
                    args 'cashsettled'
                require ext_call.success
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x43fb2310 with:
                     gas gas_remaining - 50 wei
                    args holding[stor5.length + 1].field_1024, stor5.length + 1
                require ext_call.success
            else:
                if 2 == holding[stor5.length + 1].field_1280:
                    require ext_code.size(address(code.data[11131 len 32]))
                    call address(code.data[11131 len 32]).addressOf(bytes32 rg1) with:
                         gas gas_remaining - 50 wei
                        args 'cashsettled'
                    require ext_call.success
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x173396bb with:
                         gas gas_remaining - 50 wei
                        args holding[stor5.length + 1].field_1024, stor5.length + 1
                    require ext_call.success
        holding[stor3[arg1][address(arg2)]].field_768 -= arg4
        emit 0x563ecb3e: holding[stor3[arg1][address(arg2)]].field_256, 0, holding[stor3[arg1][address(arg2)]].field_768 - arg4, holding[stor3[arg1][address(arg2)]].field_1024, holding[stor3[arg1][address(arg2)]].field_1280, 6, holding[stor3[arg1][address(arg2)]].field_0
        emit 0x563ecb3e: holding[stor5.length + 1].field_256, 0, holding[stor5.length + 1].field_768, holding[stor5.length + 1].field_1024, holding[stor5.length + 1].field_1280, 6, stor5.length + 1
    emit 0xba705ad0: arg1, arg4, arg4 * arg5, 2, arg2, arg3
    return 1
}

function sub_7954e911(?) {
    require ext_code.size(address(code.data[11131 len 32]))
    call address(code.data[11131 len 32]).addressOf(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args 0x626f6e6400000000000000000000000000000000000000000000000000000000
    require ext_call.success
    require ext_code.size(code.data[11131 len 32])
    call code.data[11131 len 32].addressOf(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args ('offerbook' << 184)
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).exists(uint256 rg1) with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    if ext_call.return_data[0]:
        require ext_code.size(address(ext_call.return_data[0]))
        if msg.sender == address(ext_call.return_data[0]):
            call address(ext_call.return_data[0]).getIssuer(uint256 rg1) with:
                 gas gas_remaining - 50 wei
                args arg1
            require ext_call.success
            if address(ext_call.return_data[0]) != msg.sender:
                if address(holding[stor3[arg1][address(arg2)]].field_512):
                    holding[stor3[arg1][address(arg2)]].field_768 += arg3
                    emit 0x563ecb3e: holding[stor3[arg1][address(arg2)]].field_256, address(holding[stor3[arg1][address(arg2)]].field_512), arg3 + holding[stor3[arg1][address(arg2)]].field_768, holding[stor3[arg1][address(arg2)]].field_1024, holding[stor3[arg1][address(arg2)]].field_1280, 7, holding[stor3[arg1][address(arg2)]].field_0
                else:
                    if not sub_d759e241[arg1][address(arg2)]:
                        holding[stor5.length + 1].field_0 = stor5.length + 1
                        holding[stor5.length + 1].field_256 = arg1
                        address(holding[stor5.length + 1].field_512) = arg2
                        holding[stor5.length + 1].field_768 = arg3
                        holding[stor5.length + 1].field_1024 = 0
                        holding[stor5.length + 1].field_1280 = 1
                        sub_d759e241[arg1][address(arg2)] = stor5.length + 1
                        stor4[arg1].field_0++
                        if not stor4[arg1].field_0 <= stor4[arg1].field_0 + 1:
                            idx = stor4[arg1].field_0 + 1
                            while stor4[arg1].field_0 > idx:
                                stor4[arg1][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        stor4[arg1][stor4[arg1].field_0].field_0 = holding[stor5.length + 1].field_0
                        stor2[address(arg2)].field_0++
                        stor2[address(arg2)][stor2[address(arg2)].field_0].field_0 = holding[stor5.length + 1].field_0
                        stor5.length++
                        stor5[stor5.length].field_0 = holding[stor5.length + 1].field_0
                        emit 0x563ecb3e: holding[stor5.length + 1].field_256, address(holding[stor5.length + 1].field_512), holding[stor5.length + 1].field_768, holding[stor5.length + 1].field_1024, holding[stor5.length + 1].field_1280, 5, holding[stor5.length + 1].field_0
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x940589d6 with:
                     gas gas_remaining - 50 wei
                    args arg1, arg3
                require ext_call.success
            else:
                if ext_call.return_data[12 len 20] == arg2:
                    if address(holding[stor3[arg1][address(arg2)]].field_512):
                        holding[stor3[arg1][address(arg2)]].field_768 += arg3
                        emit 0x563ecb3e: holding[stor3[arg1][address(arg2)]].field_256, address(holding[stor3[arg1][address(arg2)]].field_512), arg3 + holding[stor3[arg1][address(arg2)]].field_768, holding[stor3[arg1][address(arg2)]].field_1024, holding[stor3[arg1][address(arg2)]].field_1280, 7, holding[stor3[arg1][address(arg2)]].field_0
                    else:
                        if not sub_d759e241[arg1][address(arg2)]:
                            holding[stor5.length + 1].field_0 = stor5.length + 1
                            holding[stor5.length + 1].field_256 = arg1
                            address(holding[stor5.length + 1].field_512) = arg2
                            holding[stor5.length + 1].field_768 = arg3
                            holding[stor5.length + 1].field_1024 = 0
                            holding[stor5.length + 1].field_1280 = 1
                            sub_d759e241[arg1][address(arg2)] = stor5.length + 1
                            stor4[arg1].field_0++
                            if not stor4[arg1].field_0 <= stor4[arg1].field_0 + 1:
                                idx = stor4[arg1].field_0 + 1
                                while stor4[arg1].field_0 > idx:
                                    stor4[arg1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            stor4[arg1][stor4[arg1].field_0].field_0 = holding[stor5.length + 1].field_0
                            stor2[address(arg2)].field_0++
                            stor2[address(arg2)][stor2[address(arg2)].field_0].field_0 = holding[stor5.length + 1].field_0
                            stor5.length++
                            stor5[stor5.length].field_0 = holding[stor5.length + 1].field_0
                            emit 0x563ecb3e: holding[stor5.length + 1].field_256, address(holding[stor5.length + 1].field_512), holding[stor5.length + 1].field_768, holding[stor5.length + 1].field_1024, holding[stor5.length + 1].field_1280, 5, holding[stor5.length + 1].field_0
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x940589d6 with:
                         gas gas_remaining - 50 wei
                        args arg1, arg3
                    require ext_call.success
        else:
            if stor0 == msg.sender:
                call address(ext_call.return_data[0]).getIssuer(uint256 rg1) with:
                     gas gas_remaining - 50 wei
                    args arg1
                require ext_call.success
                if address(ext_call.return_data[0]) != msg.sender:
                    if address(holding[stor3[arg1][address(arg2)]].field_512):
                        holding[stor3[arg1][address(arg2)]].field_768 += arg3
                        emit 0x563ecb3e: holding[stor3[arg1][address(arg2)]].field_256, address(holding[stor3[arg1][address(arg2)]].field_512), arg3 + holding[stor3[arg1][address(arg2)]].field_768, holding[stor3[arg1][address(arg2)]].field_1024, holding[stor3[arg1][address(arg2)]].field_1280, 7, holding[stor3[arg1][address(arg2)]].field_0
                    else:
                        if not sub_d759e241[arg1][address(arg2)]:
                            holding[stor5.length + 1].field_0 = stor5.length + 1
                            holding[stor5.length + 1].field_256 = arg1
                            address(holding[stor5.length + 1].field_512) = arg2
                            holding[stor5.length + 1].field_768 = arg3
                            holding[stor5.length + 1].field_1024 = 0
                            holding[stor5.length + 1].field_1280 = 1
                            sub_d759e241[arg1][address(arg2)] = stor5.length + 1
                            stor4[arg1].field_0++
                            if not stor4[arg1].field_0 <= stor4[arg1].field_0 + 1:
                                idx = stor4[arg1].field_0 + 1
                                while stor4[arg1].field_0 > idx:
                                    stor4[arg1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            stor4[arg1][stor4[arg1].field_0].field_0 = holding[stor5.length + 1].field_0
                            stor2[address(arg2)].field_0++
                            stor2[address(arg2)][stor2[address(arg2)].field_0].field_0 = holding[stor5.length + 1].field_0
                            stor5.length++
                            stor5[stor5.length].field_0 = holding[stor5.length + 1].field_0
                            emit 0x563ecb3e: holding[stor5.length + 1].field_256, address(holding[stor5.length + 1].field_512), holding[stor5.length + 1].field_768, holding[stor5.length + 1].field_1024, holding[stor5.length + 1].field_1280, 5, holding[stor5.length + 1].field_0
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x940589d6 with:
                         gas gas_remaining - 50 wei
                        args arg1, arg3
                    require ext_call.success
                else:
                    if ext_call.return_data[12 len 20] == arg2:
                        if address(holding[stor3[arg1][address(arg2)]].field_512):
                            holding[stor3[arg1][address(arg2)]].field_768 += arg3
                            emit 0x563ecb3e: holding[stor3[arg1][address(arg2)]].field_256, address(holding[stor3[arg1][address(arg2)]].field_512), arg3 + holding[stor3[arg1][address(arg2)]].field_768, holding[stor3[arg1][address(arg2)]].field_1024, holding[stor3[arg1][address(arg2)]].field_1280, 7, holding[stor3[arg1][address(arg2)]].field_0
                        else:
                            if not sub_d759e241[arg1][address(arg2)]:
                                holding[stor5.length + 1].field_0 = stor5.length + 1
                                holding[stor5.length + 1].field_256 = arg1
                                address(holding[stor5.length + 1].field_512) = arg2
                                holding[stor5.length + 1].field_768 = arg3
                                holding[stor5.length + 1].field_1024 = 0
                                holding[stor5.length + 1].field_1280 = 1
                                sub_d759e241[arg1][address(arg2)] = stor5.length + 1
                                stor4[arg1].field_0++
                                if not stor4[arg1].field_0 <= stor4[arg1].field_0 + 1:
                                    idx = stor4[arg1].field_0 + 1
                                    while stor4[arg1].field_0 > idx:
                                        stor4[arg1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                stor4[arg1][stor4[arg1].field_0].field_0 = holding[stor5.length + 1].field_0
                                stor2[address(arg2)].field_0++
                                stor2[address(arg2)][stor2[address(arg2)].field_0].field_0 = holding[stor5.length + 1].field_0
                                stor5.length++
                                stor5[stor5.length].field_0 = holding[stor5.length + 1].field_0
                                emit 0x563ecb3e: holding[stor5.length + 1].field_256, address(holding[stor5.length + 1].field_512), holding[stor5.length + 1].field_768, holding[stor5.length + 1].field_1024, holding[stor5.length + 1].field_1280, 5, holding[stor5.length + 1].field_0
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x940589d6 with:
                             gas gas_remaining - 50 wei
                            args arg1, arg3
                        require ext_call.success
            else:
                call address(ext_call.return_data[0]).0x391465cb with:
                     gas gas_remaining - 50 wei
                    args arg1, msg.sender
                require ext_call.success
                if ext_call.return_data[0]:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).getIssuer(uint256 rg1) with:
                         gas gas_remaining - 50 wei
                        args arg1
                    require ext_call.success
                    if address(ext_call.return_data[0]) != msg.sender:
                        if address(holding[stor3[arg1][address(arg2)]].field_512):
                            holding[stor3[arg1][address(arg2)]].field_768 += arg3
                            emit 0x563ecb3e: holding[stor3[arg1][address(arg2)]].field_256, address(holding[stor3[arg1][address(arg2)]].field_512), arg3 + holding[stor3[arg1][address(arg2)]].field_768, holding[stor3[arg1][address(arg2)]].field_1024, holding[stor3[arg1][address(arg2)]].field_1280, 7, holding[stor3[arg1][address(arg2)]].field_0
                        else:
                            if not sub_d759e241[arg1][address(arg2)]:
                                holding[stor5.length + 1].field_0 = stor5.length + 1
                                holding[stor5.length + 1].field_256 = arg1
                                address(holding[stor5.length + 1].field_512) = arg2
                                holding[stor5.length + 1].field_768 = arg3
                                holding[stor5.length + 1].field_1024 = 0
                                holding[stor5.length + 1].field_1280 = 1
                                sub_d759e241[arg1][address(arg2)] = stor5.length + 1
                                stor4[arg1].field_0++
                                if not stor4[arg1].field_0 <= stor4[arg1].field_0 + 1:
                                    idx = stor4[arg1].field_0 + 1
                                    while stor4[arg1].field_0 > idx:
                                        stor4[arg1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                stor4[arg1][stor4[arg1].field_0].field_0 = holding[stor5.length + 1].field_0
                                stor2[address(arg2)].field_0++
                                stor2[address(arg2)][stor2[address(arg2)].field_0].field_0 = holding[stor5.length + 1].field_0
                                stor5.length++
                                stor5[stor5.length].field_0 = holding[stor5.length + 1].field_0
                                emit 0x563ecb3e: holding[stor5.length + 1].field_256, address(holding[stor5.length + 1].field_512), holding[stor5.length + 1].field_768, holding[stor5.length + 1].field_1024, holding[stor5.length + 1].field_1280, 5, holding[stor5.length + 1].field_0
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x940589d6 with:
                             gas gas_remaining - 50 wei
                            args arg1, arg3
                        require ext_call.success
                    else:
                        if ext_call.return_data[12 len 20] == arg2:
                            if address(holding[stor3[arg1][address(arg2)]].field_512):
                                holding[stor3[arg1][address(arg2)]].field_768 += arg3
                                emit 0x563ecb3e: holding[stor3[arg1][address(arg2)]].field_256, address(holding[stor3[arg1][address(arg2)]].field_512), arg3 + holding[stor3[arg1][address(arg2)]].field_768, holding[stor3[arg1][address(arg2)]].field_1024, holding[stor3[arg1][address(arg2)]].field_1280, 7, holding[stor3[arg1][address(arg2)]].field_0
                            else:
                                if not sub_d759e241[arg1][address(arg2)]:
                                    holding[stor5.length + 1].field_0 = stor5.length + 1
                                    holding[stor5.length + 1].field_256 = arg1
                                    address(holding[stor5.length + 1].field_512) = arg2
                                    holding[stor5.length + 1].field_768 = arg3
                                    holding[stor5.length + 1].field_1024 = 0
                                    holding[stor5.length + 1].field_1280 = 1
                                    sub_d759e241[arg1][address(arg2)] = stor5.length + 1
                                    stor4[arg1].field_0++
                                    if not stor4[arg1].field_0 <= stor4[arg1].field_0 + 1:
                                        idx = stor4[arg1].field_0 + 1
                                        while stor4[arg1].field_0 > idx:
                                            stor4[arg1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    stor4[arg1][stor4[arg1].field_0].field_0 = holding[stor5.length + 1].field_0
                                    stor2[address(arg2)].field_0++
                                    stor2[address(arg2)][stor2[address(arg2)].field_0].field_0 = holding[stor5.length + 1].field_0
                                    stor5.length++
                                    stor5[stor5.length].field_0 = holding[stor5.length + 1].field_0
                                    emit 0x563ecb3e: holding[stor5.length + 1].field_256, address(holding[stor5.length + 1].field_512), holding[stor5.length + 1].field_768, holding[stor5.length + 1].field_1024, holding[stor5.length + 1].field_1280, 5, holding[stor5.length + 1].field_0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x940589d6 with:
                                 gas gas_remaining - 50 wei
                                args arg1, arg3
                            require ext_call.success
}

function sub_7acd04e9(?) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg3.length
    mem[(32 * arg1.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[64] = (32 * arg4.length) + (32 * arg3.length) + (32 * arg1.length) + 192
    mem[(32 * arg3.length) + (32 * arg1.length) + 160] = arg4.length
    mem[(32 * arg3.length) + (32 * arg1.length) + 192 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    if arg1.length == arg3.length:
        if arg1.length == arg4.length:
            mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg1.length) + 224] = 0
            mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg1.length) + 196] = 0x626f6e6400000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(code.data[11131 len 32]))
            call address(code.data[11131 len 32]).addressOf(bytes32 rg1) with:
                 gas gas_remaining - 50 wei
                args 0x626f6e6400000000000000000000000000000000000000000000000000000000
            mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg1.length) + 192] = ext_call.return_data[0]
            require ext_call.success
            idx = 0
            while idx < arg1.length:
                require idx < mem[96]
                if stor0 == msg.sender:
                    require idx < mem[(32 * arg1.length) + 128]
                    require idx < mem[(32 * arg3.length) + (32 * arg1.length) + 160]
                    _3370 = mem[(32 * idx) + (32 * arg3.length) + (32 * arg1.length) + 192]
                    mem[0] = mem[(32 * idx) + 128]
                    _3373 = sha3(sub_d759e241[mem[(32 * idx) + 128]][address(arg2)], 1)
                    _3374 = sha3(address(mem[(32 * idx) + (32 * arg1.length) + 160]), sha3(mem[(32 * idx) + 128], 3))
                    if address(holding[stor3[mem[(32 * idx) + 128]][address(mem[(32 * idx) + (32 * arg1.length) + 160])]].field_512):
                        mem[32] = 1
                        holding[stor3[mem[(32 * idx) + 128]][address(mem[(32 * idx) + (32 * arg1.length) + 160])]].field_768 += mem[(32 * idx) + (32 * arg3.length) + (32 * arg1.length) + 192]
                        if holding[stor3[mem[(32 * idx) + 128]][address(arg2)]].field_1024 <= 0:
                            holding[stor3[mem[(32 * idx) + 128]][address(arg2)]].field_768 -= mem[(32 * idx) + (32 * arg3.length) + (32 * arg1.length) + 192]
                            mem[mem[64]] = holding[stor3[mem[(32 * idx) + 128]][address(arg2)]].field_256
                            mem[mem[64] + 32] = address(holding[stor3[mem[0]][address(arg2)]].field_512)
                            mem[mem[64] + 64] = holding[stor3[mem[0]][address(arg2)]].field_768 - _3370
                            mem[mem[64] + 96] = holding[stor3[mem[0]][address(arg2)]].field_1024
                            emit 0x563ecb3e: mem[mem[64] len 64], holding[stor3[mem[0]][address(arg2)]].field_768 - _3370, holding[stor3[mem[0]][address(arg2)]].field_1024, holding[stor3[mem[0]][address(arg2)]].field_1280, 6, holding[stor3[mem[0]][address(arg2)]].field_0
                            mem[32] = 1
                            mem[mem[64]] = holding[stor[_3374]].field_256
                            mem[mem[64] + 32] = address(holding[stor[_3374]].field_512)
                            mem[mem[64] + 64] = holding[stor[_3374]].field_768
                            mem[mem[64] + 96] = holding[stor[_3374]].field_1024
                            mem[mem[64] + 128] = holding[stor[_3374]].field_1280
                            mem[0] = stor[_3374]
                            emit 0x563ecb3e: holding[stor[_3374]].field_256, address(holding[stor[_3374]].field_512), holding[stor[_3374]].field_768, holding[stor[_3374]].field_1024, holding[stor[_3374]].field_1280, 6, stor[_3374]
                        else:
                            mem[0] = sub_d759e241[mem[(32 * idx) + 128]][address(mem[(32 * idx) + (32 * arg1.length) + 160])]
                            mem[32] = 1
                            if holding[stor3[mem[(32 * idx) + 128]][address(mem[(32 * idx) + (32 * arg1.length) + 160])]].field_1024 <= 0:
                                holding[stor3[mem[(32 * idx) + 128]][address(mem[(32 * idx) + (32 * arg1.length) + 160])]].field_1024 = holding[stor3[mem[(32 * idx) + 128]][address(arg2)]].field_1024
                                holding[stor3[mem[(32 * idx) + 128]][address(mem[(32 * idx) + (32 * arg1.length) + 160])]].field_1280 = holding[stor3[mem[(32 * idx) + 128]][address(arg2)]].field_1280
                                holding[stor3[mem[(32 * idx) + 128]][address(mem[(32 * idx) + (32 * arg1.length) + 160])]].field_1024 = 0
                                if 1 == holding[stor3[mem[(32 * idx) + 128]][address(arg2)]].field_1280:
                                    require ext_code.size(address(code.data[11131 len 32]))
                                    call address(code.data[11131 len 32]).addressOf(bytes32 rg1) with:
                                         gas gas_remaining - 50 wei
                                        args 'cashsettled'
                                    require ext_call.success
                                    mem[0] = sub_d759e241[mem[(32 * idx) + 128]][address(mem[(32 * idx) + (32 * arg1.length) + 160])]
                                    mem[32] = 1
                                    mem[mem[64] + 4] = holding[stor3[mem[(32 * idx) + 128]][address(mem[(32 * idx) + (32 * arg1.length) + 160])]].field_1024
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x43fb2310 with:
                                         gas gas_remaining - 50 wei
                                        args mem[mem[64] + 4], stor[_3374]
                                    require ext_call.success
                                    sub_d759e241[_3373] -= _3370
                                    mem[mem[64] + 64] = sub_d759e241[_3373] - _3370
                                    emit 0x563ecb3e: holding[_3373].field_0, address(stor2[_3373].field_0), sub_d759e241[_3373] - _3370, stor4[_3373].field_0, stor5[_3373].field_0, 6, stor[_3373]
                                else:
                                    mem[32] = 1
                                    if holding[stor3[mem[(32 * idx) + 128]][address(mem[(32 * idx) + (32 * arg1.length) + 160])]].field_1280 != 2:
                                        holding[stor3[mem[(32 * idx) + 128]][address(arg2)]].field_768 -= mem[(32 * idx) + (32 * arg3.length) + (32 * arg1.length) + 192]
                                        mem[mem[64]] = holding[stor3[mem[(32 * idx) + 128]][address(arg2)]].field_256
                                        mem[mem[64] + 64] = sub_d759e241[_3373] - _3370
                                        mem[mem[64] + 96] = stor4[_3373].field_0
                                        emit 0x563ecb3e: mem[mem[64]], address(stor2[_3373].field_0), sub_d759e241[_3373] - _3370, stor4[_3373].field_0, stor5[_3373].field_0, 6, stor[_3373]
                                    else:
                                        require ext_code.size(address(code.data[11131 len 32]))
                                        call address(code.data[11131 len 32]).addressOf(bytes32 rg1) with:
                                             gas gas_remaining - 50 wei
                                            args 'cashsettled'
                                        require ext_call.success
                                        mem[0] = sub_d759e241[mem[(32 * idx) + 128]][address(mem[(32 * idx) + (32 * arg1.length) + 160])]
                                        mem[32] = 1
                                        mem[mem[64] + 4] = holding[stor3[mem[(32 * idx) + 128]][address(mem[(32 * idx) + (32 * arg1.length) + 160])]].field_1024
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x173396bb with:
                                             gas gas_remaining - 50 wei
                                            args mem[mem[64] + 4], stor[_3374]
                                        require ext_call.success
                                        sub_d759e241[_3373] -= _3370
                                        mem[mem[64] + 64] = sub_d759e241[_3373] - _3370
                                        emit 0x563ecb3e: holding[_3373].field_0, address(stor2[_3373].field_0), sub_d759e241[_3373] - _3370, stor4[_3373].field_0, stor5[_3373].field_0, 6, stor[_3373]
                                mem[32] = 1
                                mem[mem[64]] = holding[stor[_3374]].field_256
                                mem[mem[64] + 32] = address(holding[stor[_3374]].field_512)
                                mem[mem[64] + 64] = holding[stor[_3374]].field_768
                                mem[mem[64] + 96] = holding[stor[_3374]].field_1024
                                mem[mem[64] + 128] = holding[stor[_3374]].field_1280
                                mem[0] = stor[_3374]
                                emit 0x563ecb3e: holding[stor[_3374]].field_256, address(holding[stor[_3374]].field_512), holding[stor[_3374]].field_768, holding[stor[_3374]].field_1024, holding[stor[_3374]].field_1280, 6, stor[_3374]
                    else:
                        holding[stor5.length + 1].field_0 = stor5.length + 1
                        holding[stor5.length + 1].field_256 = mem[(32 * idx) + 128]
                        address(holding[stor5.length + 1].field_512) = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
                        holding[stor5.length + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + (32 * arg1.length) + 192]
                        holding[stor5.length + 1].field_1280 = 1
                        sub_d759e241[mem[(32 * idx) + 128]][address(mem[(32 * idx) + (32 * arg1.length) + 160])] = stor5.length + 1
                        stor4[mem[(32 * idx) + 128]].field_0++
                        stor4[mem[(32 * idx) + 128]][stor4[mem[(32 * idx) + 128]].field_0].field_0 = stor5.length + 1
                        mem[32] = 2
                        stor2[address(mem[(32 * idx) + (32 * arg1.length) + 160])].field_0++
                        stor2[address(mem[(32 * idx) + (32 * arg1.length) + 160])][stor2[address(mem[(32 * idx) + (32 * arg1.length) + 160])].field_0].field_0 = stor5.length + 1
                        stor5.length++
                        stor5[stor5.length].field_0 = stor5.length + 1
                        if holding[stor3[mem[(32 * idx) + 128]][address(arg2)]].field_1024 <= 0:
                            holding[stor3[mem[(32 * idx) + 128]][address(arg2)]].field_768 -= mem[(32 * idx) + (32 * arg3.length) + (32 * arg1.length) + 192]
                            mem[mem[64]] = holding[stor3[mem[(32 * idx) + 128]][address(arg2)]].field_256
                            mem[mem[64] + 32] = address(holding[stor3[mem[0]][address(arg2)]].field_512)
                            mem[mem[64] + 64] = holding[stor3[mem[0]][address(arg2)]].field_768 - _3370
                            mem[mem[64] + 96] = holding[stor3[mem[0]][address(arg2)]].field_1024
                            emit 0x563ecb3e: mem[mem[64] len 64], holding[stor3[mem[0]][address(arg2)]].field_768 - _3370, holding[stor3[mem[0]][address(arg2)]].field_1024, holding[stor3[mem[0]][address(arg2)]].field_1280, 6, holding[stor3[mem[0]][address(arg2)]].field_0
                            mem[32] = 1
                            mem[mem[64]] = holding[stor5.length + 1].field_256
                            mem[mem[64] + 32] = address(holding[stor5.length + 1].field_512)
                            mem[mem[64] + 64] = holding[stor5.length + 1].field_768
                            mem[mem[64] + 96] = holding[stor5.length + 1].field_1024
                            mem[mem[64] + 128] = holding[stor5.length + 1].field_1280
                            mem[0] = stor5.length + 1
                            emit 0x563ecb3e: holding[stor5.length + 1].field_256, address(holding[stor5.length + 1].field_512), holding[stor5.length + 1].field_768, holding[stor5.length + 1].field_1024, holding[stor5.length + 1].field_1280, 6, stor5.length + 1
                        else:
                            mem[0] = stor5.length + 1
                            mem[32] = 1
                            if holding[stor5.length + 1].field_1024 <= 0:
                                holding[stor5.length + 1].field_1024 = holding[stor3[mem[(32 * idx) + 128]][address(arg2)]].field_1024
                                holding[stor5.length + 1].field_1280 = holding[stor3[mem[(32 * idx) + 128]][address(arg2)]].field_1280
                                holding[stor5.length + 1].field_1024 = 0
                                if 1 == holding[stor3[mem[(32 * idx) + 128]][address(arg2)]].field_1280:
                                    require ext_code.size(address(code.data[11131 len 32]))
                                    call address(code.data[11131 len 32]).addressOf(bytes32 rg1) with:
                                         gas gas_remaining - 50 wei
                                        args 'cashsettled'
                                    require ext_call.success
                                    mem[0] = stor5.length + 1
                                    mem[32] = 1
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x43fb2310 with:
                                         gas gas_remaining - 50 wei
                                        args holding[stor5.length + 1].field_1024, stor5.length + 1
                                    require ext_call.success
                                    holding[stor3[mem[(32 * idx) + 128]][address(arg2)]].field_768 -= mem[(32 * idx) + (32 * arg3.length) + (32 * arg1.length) + 192]
                                    mem[mem[64] + 64] = holding[stor3[mem[(32 * idx) + 128]][address(arg2)]].field_768 - mem[(32 * idx) + (32 * arg3.length) + (32 * arg1.length) + 192]
                                    emit 0x563ecb3e: holding[_3373].field_0, address(stor2[_3373].field_0), sub_d759e241[_3373] - _3370, stor4[_3373].field_0, stor5[_3373].field_0, 6, stor[_3373]
                                else:
                                    mem[32] = 1
                                    if holding[stor5.length + 1].field_1280 != 2:
                                        holding[stor3[mem[(32 * idx) + 128]][address(arg2)]].field_768 -= mem[(32 * idx) + (32 * arg3.length) + (32 * arg1.length) + 192]
                                        mem[mem[64]] = holding[stor3[mem[(32 * idx) + 128]][address(arg2)]].field_256
                                        mem[mem[64] + 64] = sub_d759e241[_3373] - _3370
                                        mem[mem[64] + 96] = stor4[_3373].field_0
                                        emit 0x563ecb3e: mem[mem[64]], address(stor2[_3373].field_0), sub_d759e241[_3373] - _3370, stor4[_3373].field_0, stor5[_3373].field_0, 6, stor[_3373]
                                    else:
                                        require ext_code.size(address(code.data[11131 len 32]))
                                        call address(code.data[11131 len 32]).addressOf(bytes32 rg1) with:
                                             gas gas_remaining - 50 wei
                                            args 'cashsettled'
                                        require ext_call.success
                                        mem[0] = stor5.length + 1
                                        mem[32] = 1
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x173396bb with:
                                             gas gas_remaining - 50 wei
                                            args holding[stor5.length + 1].field_1024, stor5.length + 1
                                        require ext_call.success
                                        holding[stor3[mem[(32 * idx) + 128]][address(arg2)]].field_768 -= mem[(32 * idx) + (32 * arg3.length) + (32 * arg1.length) + 192]
                                        mem[mem[64] + 64] = holding[stor3[mem[(32 * idx) + 128]][address(arg2)]].field_768 - mem[(32 * idx) + (32 * arg3.length) + (32 * arg1.length) + 192]
                                        emit 0x563ecb3e: holding[_3373].field_0, address(stor2[_3373].field_0), sub_d759e241[_3373] - _3370, stor4[_3373].field_0, stor5[_3373].field_0, 6, stor[_3373]
                                mem[32] = 1
                                mem[mem[64]] = holding[stor5.length + 1].field_256
                                mem[mem[64] + 32] = address(holding[stor5.length + 1].field_512)
                                mem[mem[64] + 64] = holding[stor5.length + 1].field_768
                                mem[mem[64] + 96] = holding[stor5.length + 1].field_1024
                                mem[mem[64] + 128] = holding[stor5.length + 1].field_1280
                                mem[0] = stor5.length + 1
                                emit 0x563ecb3e: holding[stor5.length + 1].field_256, address(holding[stor5.length + 1].field_512), holding[stor5.length + 1].field_768, holding[stor5.length + 1].field_1024, holding[stor5.length + 1].field_1280, 6, stor5.length + 1
                else:
                    mem[mem[64] + 4] = mem[(32 * idx) + 128]
                    mem[mem[64] + 36] = msg.sender
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x391465cb with:
                         gas gas_remaining - 50 wei
                        args mem[mem[64] + 4], msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    require ext_call.success
                    if ext_call.return_data[0]:
                        require idx < mem[96]
                        require idx < mem[(32 * arg1.length) + 128]
                        require idx < mem[(32 * arg3.length) + (32 * arg1.length) + 160]
                        _3389 = mem[(32 * idx) + (32 * arg3.length) + (32 * arg1.length) + 192]
                        mem[0] = mem[(32 * idx) + 128]
                        _3394 = sha3(sub_d759e241[mem[(32 * idx) + 128]][address(arg2)], 1)
                        _3395 = sha3(address(mem[(32 * idx) + (32 * arg1.length) + 160]), sha3(mem[(32 * idx) + 128], 3))
                        if address(holding[stor3[mem[(32 * idx) + 128]][address(mem[(32 * idx) + (32 * arg1.length) + 160])]].field_512):
                            mem[32] = 1
                            holding[stor3[mem[(32 * idx) + 128]][address(mem[(32 * idx) + (32 * arg1.length) + 160])]].field_768 += mem[(32 * idx) + (32 * arg3.length) + (32 * arg1.length) + 192]
                            if holding[stor3[mem[(32 * idx) + 128]][address(arg2)]].field_1024 <= 0:
                                holding[stor3[mem[(32 * idx) + 128]][address(arg2)]].field_768 -= mem[(32 * idx) + (32 * arg3.length) + (32 * arg1.length) + 192]
                                mem[mem[64]] = holding[stor3[mem[(32 * idx) + 128]][address(arg2)]].field_256
                                mem[mem[64] + 32] = address(holding[stor3[mem[0]][address(arg2)]].field_512)
                                mem[mem[64] + 64] = holding[stor3[mem[0]][address(arg2)]].field_768 - _3389
                                mem[mem[64] + 96] = holding[stor3[mem[0]][address(arg2)]].field_1024
                                emit 0x563ecb3e: mem[mem[64] len 64], holding[stor3[mem[0]][address(arg2)]].field_768 - _3389, holding[stor3[mem[0]][address(arg2)]].field_1024, holding[stor3[mem[0]][address(arg2)]].field_1280, 6, holding[stor3[mem[0]][address(arg2)]].field_0
                                mem[32] = 1
                                mem[mem[64]] = holding[stor[_3395]].field_256
                                mem[mem[64] + 32] = address(holding[stor[_3395]].field_512)
                                mem[mem[64] + 64] = holding[stor[_3395]].field_768
                                mem[mem[64] + 96] = holding[stor[_3395]].field_1024
                                mem[mem[64] + 128] = holding[stor[_3395]].field_1280
                                mem[0] = stor[_3395]
                                emit 0x563ecb3e: holding[stor[_3395]].field_256, address(holding[stor[_3395]].field_512), holding[stor[_3395]].field_768, holding[stor[_3395]].field_1024, holding[stor[_3395]].field_1280, 6, stor[_3395]
                            else:
                                mem[0] = sub_d759e241[mem[(32 * idx) + 128]][address(mem[(32 * idx) + (32 * arg1.length) + 160])]
                                mem[32] = 1
                                if holding[stor3[mem[(32 * idx) + 128]][address(mem[(32 * idx) + (32 * arg1.length) + 160])]].field_1024 <= 0:
                                    holding[stor3[mem[(32 * idx) + 128]][address(mem[(32 * idx) + (32 * arg1.length) + 160])]].field_1024 = holding[stor3[mem[(32 * idx) + 128]][address(arg2)]].field_1024
                                    holding[stor3[mem[(32 * idx) + 128]][address(mem[(32 * idx) + (32 * arg1.length) + 160])]].field_1280 = holding[stor3[mem[(32 * idx) + 128]][address(arg2)]].field_1280
                                    holding[stor3[mem[(32 * idx) + 128]][address(mem[(32 * idx) + (32 * arg1.length) + 160])]].field_1024 = 0
                                    if 1 == holding[stor3[mem[(32 * idx) + 128]][address(arg2)]].field_1280:
                                        require ext_code.size(address(code.data[11131 len 32]))
                                        call address(code.data[11131 len 32]).addressOf(bytes32 rg1) with:
                                             gas gas_remaining - 50 wei
                                            args 'cashsettled'
                                        require ext_call.success
                                        mem[0] = sub_d759e241[mem[(32 * idx) + 128]][address(mem[(32 * idx) + (32 * arg1.length) + 160])]
                                        mem[32] = 1
                                        mem[mem[64] + 4] = holding[stor3[mem[(32 * idx) + 128]][address(mem[(32 * idx) + (32 * arg1.length) + 160])]].field_1024
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x43fb2310 with:
                                             gas gas_remaining - 50 wei
                                            args mem[mem[64] + 4], stor[_3395]
                                        require ext_call.success
                                        sub_d759e241[_3394] -= _3389
                                        mem[mem[64] + 64] = sub_d759e241[_3394] - _3389
                                        emit 0x563ecb3e: holding[_3394].field_0, address(stor2[_3394].field_0), sub_d759e241[_3394] - _3389, stor4[_3394].field_0, stor5[_3394].field_0, 6, stor[_3394]
                                    else:
                                        mem[32] = 1
                                        if holding[stor3[mem[(32 * idx) + 128]][address(mem[(32 * idx) + (32 * arg1.length) + 160])]].field_1280 != 2:
                                            holding[stor3[mem[(32 * idx) + 128]][address(arg2)]].field_768 -= mem[(32 * idx) + (32 * arg3.length) + (32 * arg1.length) + 192]
                                            mem[mem[64]] = holding[stor3[mem[(32 * idx) + 128]][address(arg2)]].field_256
                                            mem[mem[64] + 64] = sub_d759e241[_3394] - _3389
                                            mem[mem[64] + 96] = stor4[_3394].field_0
                                            emit 0x563ecb3e: mem[mem[64]], address(stor2[_3394].field_0), sub_d759e241[_3394] - _3389, stor4[_3394].field_0, stor5[_3394].field_0, 6, stor[_3394]
                                        else:
                                            require ext_code.size(address(code.data[11131 len 32]))
                                            call address(code.data[11131 len 32]).addressOf(bytes32 rg1) with:
                                                 gas gas_remaining - 50 wei
                                                args 'cashsettled'
                                            require ext_call.success
                                            mem[0] = sub_d759e241[mem[(32 * idx) + 128]][address(mem[(32 * idx) + (32 * arg1.length) + 160])]
                                            mem[32] = 1
                                            mem[mem[64] + 4] = holding[stor3[mem[(32 * idx) + 128]][address(mem[(32 * idx) + (32 * arg1.length) + 160])]].field_1024
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0x173396bb with:
                                                 gas gas_remaining - 50 wei
                                                args mem[mem[64] + 4], stor[_3395]
                                            require ext_call.success
                                            sub_d759e241[_3394] -= _3389
                                            mem[mem[64] + 64] = sub_d759e241[_3394] - _3389
                                            emit 0x563ecb3e: holding[_3394].field_0, address(stor2[_3394].field_0), sub_d759e241[_3394] - _3389, stor4[_3394].field_0, stor5[_3394].field_0, 6, stor[_3394]
                                    mem[32] = 1
                                    mem[mem[64]] = holding[stor[_3395]].field_256
                                    mem[mem[64] + 32] = address(holding[stor[_3395]].field_512)
                                    mem[mem[64] + 64] = holding[stor[_3395]].field_768
                                    mem[mem[64] + 96] = holding[stor[_3395]].field_1024
                                    mem[mem[64] + 128] = holding[stor[_3395]].field_1280
                                    mem[0] = stor[_3395]
                                    emit 0x563ecb3e: holding[stor[_3395]].field_256, address(holding[stor[_3395]].field_512), holding[stor[_3395]].field_768, holding[stor[_3395]].field_1024, holding[stor[_3395]].field_1280, 6, stor[_3395]
                        else:
                            holding[stor5.length + 1].field_0 = stor5.length + 1
                            holding[stor5.length + 1].field_256 = mem[(32 * idx) + 128]
                            address(holding[stor5.length + 1].field_512) = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
                            holding[stor5.length + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + (32 * arg1.length) + 192]
                            holding[stor5.length + 1].field_1280 = 1
                            sub_d759e241[mem[(32 * idx) + 128]][address(mem[(32 * idx) + (32 * arg1.length) + 160])] = stor5.length + 1
                            stor4[mem[(32 * idx) + 128]].field_0++
                            stor4[mem[(32 * idx) + 128]][stor4[mem[(32 * idx) + 128]].field_0].field_0 = stor5.length + 1
                            mem[32] = 2
                            stor2[address(mem[(32 * idx) + (32 * arg1.length) + 160])].field_0++
                            stor2[address(mem[(32 * idx) + (32 * arg1.length) + 160])][stor2[address(mem[(32 * idx) + (32 * arg1.length) + 160])].field_0].field_0 = stor5.length + 1
                            stor5.length++
                            stor5[stor5.length].field_0 = stor5.length + 1
                            if holding[stor3[mem[(32 * idx) + 128]][address(arg2)]].field_1024 <= 0:
                                holding[stor3[mem[(32 * idx) + 128]][address(arg2)]].field_768 -= mem[(32 * idx) + (32 * arg3.length) + (32 * arg1.length) + 192]
                                mem[mem[64]] = holding[stor3[mem[(32 * idx) + 128]][address(arg2)]].field_256
                                mem[mem[64] + 32] = address(holding[stor3[mem[0]][address(arg2)]].field_512)
                                mem[mem[64] + 64] = holding[stor3[mem[0]][address(arg2)]].field_768 - _3389
                                mem[mem[64] + 96] = holding[stor3[mem[0]][address(arg2)]].field_1024
                                emit 0x563ecb3e: mem[mem[64] len 64], holding[stor3[mem[0]][address(arg2)]].field_768 - _3389, holding[stor3[mem[0]][address(arg2)]].field_1024, holding[stor3[mem[0]][address(arg2)]].field_1280, 6, holding[stor3[mem[0]][address(arg2)]].field_0
                                mem[32] = 1
                                mem[mem[64]] = holding[stor5.length + 1].field_256
                                mem[mem[64] + 32] = address(holding[stor5.length + 1].field_512)
                                mem[mem[64] + 64] = holding[stor5.length + 1].field_768
                                mem[mem[64] + 96] = holding[stor5.length + 1].field_1024
                                mem[mem[64] + 128] = holding[stor5.length + 1].field_1280
                                mem[0] = stor5.length + 1
                                emit 0x563ecb3e: holding[stor5.length + 1].field_256, address(holding[stor5.length + 1].field_512), holding[stor5.length + 1].field_768, holding[stor5.length + 1].field_1024, holding[stor5.length + 1].field_1280, 6, stor5.length + 1
                            else:
                                mem[0] = stor5.length + 1
                                mem[32] = 1
                                if holding[stor5.length + 1].field_1024 <= 0:
                                    holding[stor5.length + 1].field_1024 = holding[stor3[mem[(32 * idx) + 128]][address(arg2)]].field_1024
                                    holding[stor5.length + 1].field_1280 = holding[stor3[mem[(32 * idx) + 128]][address(arg2)]].field_1280
                                    holding[stor5.length + 1].field_1024 = 0
                                    if 1 == holding[stor3[mem[(32 * idx) + 128]][address(arg2)]].field_1280:
                                        require ext_code.size(address(code.data[11131 len 32]))
                                        call address(code.data[11131 len 32]).addressOf(bytes32 rg1) with:
                                             gas gas_remaining - 50 wei
                                            args 'cashsettled'
                                        require ext_call.success
                                        mem[0] = stor5.length + 1
                                        mem[32] = 1
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x43fb2310 with:
                                             gas gas_remaining - 50 wei
                                            args holding[stor5.length + 1].field_1024, stor5.length + 1
                                        require ext_call.success
                                        holding[stor3[mem[(32 * idx) + 128]][address(arg2)]].field_768 -= mem[(32 * idx) + (32 * arg3.length) + (32 * arg1.length) + 192]
                                        mem[mem[64] + 64] = holding[stor3[mem[(32 * idx) + 128]][address(arg2)]].field_768 - mem[(32 * idx) + (32 * arg3.length) + (32 * arg1.length) + 192]
                                        emit 0x563ecb3e: holding[_3394].field_0, address(stor2[_3394].field_0), sub_d759e241[_3394] - _3389, stor4[_3394].field_0, stor5[_3394].field_0, 6, stor[_3394]
                                    else:
                                        mem[32] = 1
                                        if holding[stor5.length + 1].field_1280 != 2:
                                            holding[stor3[mem[(32 * idx) + 128]][address(arg2)]].field_768 -= mem[(32 * idx) + (32 * arg3.length) + (32 * arg1.length) + 192]
                                            mem[mem[64]] = holding[stor3[mem[(32 * idx) + 128]][address(arg2)]].field_256
                                            mem[mem[64] + 64] = sub_d759e241[_3394] - _3389
                                            mem[mem[64] + 96] = stor4[_3394].field_0
                                            emit 0x563ecb3e: mem[mem[64]], address(stor2[_3394].field_0), sub_d759e241[_3394] - _3389, stor4[_3394].field_0, stor5[_3394].field_0, 6, stor[_3394]
                                        else:
                                            require ext_code.size(address(code.data[11131 len 32]))
                                            call address(code.data[11131 len 32]).addressOf(bytes32 rg1) with:
                                                 gas gas_remaining - 50 wei
                                                args 'cashsettled'
                                            require ext_call.success
                                            mem[0] = stor5.length + 1
                                            mem[32] = 1
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0x173396bb with:
                                                 gas gas_remaining - 50 wei
                                                args holding[stor5.length + 1].field_1024, stor5.length + 1
                                            require ext_call.success
                                            holding[stor3[mem[(32 * idx) + 128]][address(arg2)]].field_768 -= mem[(32 * idx) + (32 * arg3.length) + (32 * arg1.length) + 192]
                                            mem[mem[64] + 64] = holding[stor3[mem[(32 * idx) + 128]][address(arg2)]].field_768 - mem[(32 * idx) + (32 * arg3.length) + (32 * arg1.length) + 192]
                                            emit 0x563ecb3e: holding[_3394].field_0, address(stor2[_3394].field_0), sub_d759e241[_3394] - _3389, stor4[_3394].field_0, stor5[_3394].field_0, 6, stor[_3394]
                                    mem[32] = 1
                                    mem[mem[64]] = holding[stor5.length + 1].field_256
                                    mem[mem[64] + 32] = address(holding[stor5.length + 1].field_512)
                                    mem[mem[64] + 64] = holding[stor5.length + 1].field_768
                                    mem[mem[64] + 96] = holding[stor5.length + 1].field_1024
                                    mem[mem[64] + 128] = holding[stor5.length + 1].field_1280
                                    mem[0] = stor5.length + 1
                                    emit 0x563ecb3e: holding[stor5.length + 1].field_256, address(holding[stor5.length + 1].field_512), holding[stor5.length + 1].field_768, holding[stor5.length + 1].field_1024, holding[stor5.length + 1].field_1280, 6, stor5.length + 1
                idx = idx + 1
                continue 
}



}

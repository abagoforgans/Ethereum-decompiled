contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[61 len 12148]
}



// =====================  Runtime code  =====================


address stor0;
array of struct sub_0a6308d5;
mapping of struct bondInfo;
mapping of struct symbol;
mapping of uint256 stor5;
mapping of struct stor6;

function sub_0a6308d5(?) {
    require arg1 < sub_0a6308d5.length
    return sub_0a6308d5[arg1].field_0
}

function getBondInfo(uint256 arg1) {
    require arg1 < sub_0a6308d5.length
    return bondInfo[stor1[arg1].field_0].field_768, 
           bondInfo[stor1[arg1].field_0].field_1280,
           bondInfo[stor1[arg1].field_0].field_1792,
           bondInfo[stor1[arg1].field_0].field_1024,
           bondInfo[stor1[arg1].field_0].field_1536,
           bool(bondInfo[stor1[arg1].field_0].field_2816),
           bool(bondInfo[stor1[arg1].field_0].field_2824)
}

function exists(uint256 arg1) {
    return bool(bondInfo[arg1].field_0)
}

function getSymbol(uint256 arg1) {
    return Mask(64, 192, symbol[arg1].field_1280)
}

function sub_7aa90a60(?) {
    return symbol[arg1].field_256, 
           symbol[arg1].field_512,
           symbol[arg1].field_768,
           symbol[arg1].field_1024,
           Mask(64, 192, symbol[arg1].field_1280)
}

function sub_9c1e92e2(?) {
    return bool(bondInfo[stor5[Mask(64, 192, arg1)]].field_0)
}

function sub_c18dac4e(?) {
    return sub_0a6308d5.length
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

function getIssuer(uint256 arg1) {
    if bondInfo[arg1].field_0:
        return bondInfo[arg1].field_0
    emit code.data[12116 len 32]: arg1, 1, msg.sender
    return 0
}

function sub_391465cb(?) {
    if bondInfo[arg1].field_0:
        if bondInfo[arg1].field_0 != arg2:
            return 0
        return 1
    emit code.data[12116 len 32]: arg1, 1, msg.sender
    return 0
}

function sub_f57fbf55(?) {
    return arg1, 
           stor6[arg1].field_256,
           stor6[arg1].field_512,
           stor6[arg1].field_768,
           stor6[arg1].field_1024,
           stor6[arg1].field_1280,
           stor6[arg1].field_1536,
           stor6[arg1].field_1792
}

function register() {
    if stor0 == msg.sender:
        require ext_code.size(0x56000000000000000000000000270fc4524617c084890ae020eef60966cf934b)
        call ????????????????????????????????????????.register(bytes32 rg1) with:
             gas gas_remaining - 50 wei
            args 'bond'
        require ext_call.success
}

function sub_84d6755a(?) {
    if not bondInfo[arg1].field_0:
        emit code.data[12116 len 32]: arg1, 1, msg.sender
    return bondInfo[arg1].field_512, 
           bondInfo[arg1].field_1024,
           bondInfo[arg1].field_1536,
           0,
           bool(bondInfo[arg1].field_2816),
           bool(bondInfo[arg1].field_2824)
}

function sub_cde96283(?) {
    if sub_0a6308d5.length:
        mem[160] = uint256(sub_0a6308d5.field_0)
        idx = 160
        s = 0
        while (32 * sub_0a6308d5.length) + 128 > idx:
            mem[idx + 32] = sub_0a6308d5[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=sub_0a6308d5.length, data=mem[160 len 32 * sub_0a6308d5.length])
}

function getIssue(uint256 arg1) {
    return bondInfo[arg1].field_0, 
           bondInfo[arg1].field_256,
           bondInfo[arg1].field_2048,
           bondInfo[arg1].field_2304,
           bondInfo[arg1].field_2560,
           bondInfo[arg1].field_512,
           symbol[arg1].field_256,
           symbol[arg1].field_512,
           symbol[arg1].field_768,
           Mask(64, 192, symbol[arg1].field_1280)
}

function sub_6fc99d76(?) {
    if not bondInfo[arg1].field_0:
        emit code.data[12116 len 32]: arg1, 1, msg.sender
    return bondInfo[arg1].field_0, 
           bondInfo[arg1].field_256,
           bondInfo[arg1].field_768,
           bondInfo[arg1].field_1280,
           bondInfo[arg1].field_1792,
           bondInfo[arg1].field_2048,
           bondInfo[arg1].field_2304,
           bondInfo[arg1].field_2560
}

function sub_654494f6(?) {
    if bondInfo[arg1].field_0 == msg.sender:
        if not bondInfo[stor5[Mask(64, 192, arg2)]].field_0:
            symbol[arg1].field_1280 = arg2
            stor5[Mask(64, 192, arg2)] = arg1
    else:
        if stor0 != msg.sender:
            emit code.data[12116 len 32]: arg1, 11, msg.sender
        else:
            if not bondInfo[stor5[Mask(64, 192, arg2)]].field_0:
                symbol[arg1].field_1280 = arg2
                stor5[Mask(64, 192, arg2)] = arg1
}

function sub_b45f89eb(?) {
    if bondInfo[arg1].field_1536 <= 0:
        if block.timestamp - bondInfo[arg1].field_256 < bondInfo[arg1].field_1792:
            return 0
        require bondInfo[arg1].field_1792
        return (bondInfo[arg1].field_1280 * block.timestamp - bondInfo[arg1].field_256 / bondInfo[arg1].field_1792)
    if block.timestamp - bondInfo[arg1].field_1536 < bondInfo[arg1].field_1792:
        return 0
    require bondInfo[arg1].field_1792
    return (bondInfo[arg1].field_1280 * block.timestamp - bondInfo[arg1].field_1536 / bondInfo[arg1].field_1792)
}

function sub_8bb0dfb5(?) {
    if not stor6[arg1].field_0:
        return 0
    require ext_code.size(0x270fc4524617c084890ae020eef60966cf934b)
    call 0x00270fc4524617c084890ae020eef60966cf934b.addressOf(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args ('offerbook' << 184)
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xf19b8273 with:
         gas gas_remaining - 50 wei
        args stor6[arg1].field_256
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function sub_1c828418(?) {
    require ext_code.size(0x56000000000000000000000000270fc4524617c084890ae020eef60966cf934b)
    call ????????????????????????????????????????.addressOf(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args 0x637573746f6469616e0000000000000000000000000000000000000000000000
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xe849d4ef with:
         gas gas_remaining - 50 wei
        args arg1, bondInfo[arg1].field_0
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_9519057b(?) {
    return bondInfo[stor5[Mask(64, 192, arg1)]].field_0, 
           bondInfo[stor5[Mask(64, 192, arg1)]].field_256,
           bondInfo[stor5[Mask(64, 192, arg1)]].field_2048,
           bondInfo[stor5[Mask(64, 192, arg1)]].field_2304,
           bondInfo[stor5[Mask(64, 192, arg1)]].field_2560,
           bondInfo[stor5[Mask(64, 192, arg1)]].field_512,
           symbol[stor2[stor5[Mask(64, 192, arg1)]].field_2560].field_256,
           symbol[stor2[stor5[Mask(64, 192, arg1)]].field_2560].field_512,
           symbol[stor2[stor5[Mask(64, 192, arg1)]].field_2560].field_768
}

function sub_0cd02c06(?) {
    require arg1 < sub_0a6308d5.length
    return bondInfo[stor1[arg1].field_0].field_0, 
           bondInfo[stor1[arg1].field_0].field_256,
           bondInfo[stor1[arg1].field_0].field_2048,
           bondInfo[stor1[arg1].field_0].field_2304,
           bondInfo[stor1[arg1].field_0].field_2560,
           bondInfo[stor1[arg1].field_0].field_512,
           symbol[stor2[stor1[arg1].field_0].field_2560].field_256,
           symbol[stor2[stor1[arg1].field_0].field_2560].field_512,
           symbol[stor2[stor1[arg1].field_0].field_2560].field_768,
           Mask(64, 192, symbol[stor2[stor1[arg1].field_0].field_2560].field_1280)
}

function sub_884df16c(?) {
    require ext_code.size(0x270fc4524617c084890ae020eef60966cf934b)
    call 0x00270fc4524617c084890ae020eef60966cf934b.addressOf(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args 0x637573746f6469616e0000000000000000000000000000000000000000000000
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xf49c505f with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xe849d4ef with:
         gas gas_remaining - 50 wei
        args arg1, bondInfo[arg1].field_0
    require ext_call.success
    return 0
}

function setName(uint256 arg1, bytes32 arg2) {
    if not bondInfo[arg1].field_0:
        emit code.data[12116 len 32]: arg1, 1, msg.sender
    else:
        if bondInfo[arg1].field_0 == msg.sender:
            symbol[arg1].field_512 = arg2
            emit 0xf474b986: bondInfo[arg1].field_0, bondInfo[arg1].field_256, bondInfo[arg1].field_2048, bondInfo[arg1].field_2304, bondInfo[arg1].field_512, 0, bool(bondInfo[arg1].field_2816), symbol[stor2[arg1].field_2560].field_256, symbol[stor2[arg1].field_2560].field_512, symbol[stor2[arg1].field_2560].field_768, 9, bondInfo[arg1].field_2560
        else:
            if stor0 != msg.sender:
                emit code.data[12116 len 32]: arg1, 11, msg.sender
            else:
                symbol[arg1].field_512 = arg2
                emit 0xf474b986: bondInfo[arg1].field_0, bondInfo[arg1].field_256, bondInfo[arg1].field_2048, bondInfo[arg1].field_2304, bondInfo[arg1].field_512, 0, bool(bondInfo[arg1].field_2816), symbol[stor2[arg1].field_2560].field_256, symbol[stor2[arg1].field_2560].field_512, symbol[stor2[arg1].field_2560].field_768, 9, bondInfo[arg1].field_2560
}

function setTypeId(uint256 arg1, uint256 arg2) {
    if not bondInfo[arg1].field_0:
        emit code.data[12116 len 32]: arg1, 1, msg.sender
    else:
        if bondInfo[arg1].field_0 == msg.sender:
            symbol[arg1].field_256 = arg2
            emit 0xf474b986: bondInfo[arg1].field_0, bondInfo[arg1].field_256, bondInfo[arg1].field_2048, bondInfo[arg1].field_2304, bondInfo[arg1].field_512, 0, bool(bondInfo[arg1].field_2816), symbol[stor2[arg1].field_2560].field_256, symbol[stor2[arg1].field_2560].field_512, symbol[stor2[arg1].field_2560].field_768, 9, bondInfo[arg1].field_2560
        else:
            if stor0 != msg.sender:
                emit code.data[12116 len 32]: arg1, 11, msg.sender
            else:
                symbol[arg1].field_256 = arg2
                emit 0xf474b986: bondInfo[arg1].field_0, bondInfo[arg1].field_256, bondInfo[arg1].field_2048, bondInfo[arg1].field_2304, bondInfo[arg1].field_512, 0, bool(bondInfo[arg1].field_2816), symbol[stor2[arg1].field_2560].field_256, symbol[stor2[arg1].field_2560].field_512, symbol[stor2[arg1].field_2560].field_768, 9, bondInfo[arg1].field_2560
}

function sub_2c7f0541(?) {
    if not bondInfo[arg1].field_0:
        emit code.data[12116 len 32]: arg1, 1, msg.sender
    else:
        if bondInfo[arg1].field_0 == msg.sender:
            if arg2 >= 0:
                bondInfo[arg1].field_2048 = arg2
                emit 0xf474b986: bondInfo[arg1].field_0, bondInfo[arg1].field_256, bondInfo[arg1].field_2048, bondInfo[arg1].field_2304, bondInfo[arg1].field_512, 0, bool(bondInfo[arg1].field_2816), symbol[stor2[arg1].field_2560].field_256, symbol[stor2[arg1].field_2560].field_512, symbol[stor2[arg1].field_2560].field_768, 9, bondInfo[arg1].field_2560
        else:
            if stor0 != msg.sender:
                emit code.data[12116 len 32]: arg1, 11, msg.sender
            else:
                if arg2 >= 0:
                    bondInfo[arg1].field_2048 = arg2
                    emit 0xf474b986: bondInfo[arg1].field_0, bondInfo[arg1].field_256, bondInfo[arg1].field_2048, bondInfo[arg1].field_2304, bondInfo[arg1].field_512, 0, bool(bondInfo[arg1].field_2816), symbol[stor2[arg1].field_2560].field_256, symbol[stor2[arg1].field_2560].field_512, symbol[stor2[arg1].field_2560].field_768, 9, bondInfo[arg1].field_2560
}

function sub_06d12c03(?) {
    if not bondInfo[arg1].field_0:
        emit code.data[12116 len 32]: arg1, 1, msg.sender
    else:
        if bondInfo[arg1].field_0 == msg.sender:
            if arg2 < block.timestamp:
                emit code.data[12116 len 32]: arg1, 13, msg.sender
            else:
                bondInfo[arg1].field_768 = arg2
                emit 0xf474b986: bondInfo[arg1].field_0, bondInfo[arg1].field_256, bondInfo[arg1].field_2048, bondInfo[arg1].field_2304, bondInfo[arg1].field_512, 0, bool(bondInfo[arg1].field_2816), symbol[stor2[arg1].field_2560].field_256, symbol[stor2[arg1].field_2560].field_512, symbol[stor2[arg1].field_2560].field_768, 9, bondInfo[arg1].field_2560
        else:
            if stor0 != msg.sender:
                emit code.data[12116 len 32]: arg1, 11, msg.sender
            else:
                if arg2 < block.timestamp:
                    emit code.data[12116 len 32]: arg1, 13, msg.sender
                else:
                    bondInfo[arg1].field_768 = arg2
                    emit 0xf474b986: bondInfo[arg1].field_0, bondInfo[arg1].field_256, bondInfo[arg1].field_2048, bondInfo[arg1].field_2304, bondInfo[arg1].field_512, 0, bool(bondInfo[arg1].field_2816), symbol[stor2[arg1].field_2560].field_256, symbol[stor2[arg1].field_2560].field_512, symbol[stor2[arg1].field_2560].field_768, 9, bondInfo[arg1].field_2560
}

function sub_5168fe58(?) {
    require ext_code.size(0x56000000000000000000000000270fc4524617c084890ae020eef60966cf934b)
    call ????????????????????????????????????????.addressOf(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args ('offerbook' << 184)
    require ext_call.success
    if ext_call.return_data[12 len 20] == msg.sender:
        symbol[arg1].field_768 = arg2
        emit 0xf474b986: bondInfo[arg1].field_0, 0, bondInfo[arg1].field_2048, bondInfo[arg1].field_2304, bondInfo[arg1].field_512, 0, bool(bondInfo[arg1].field_2816), symbol[stor2[arg1].field_2560].field_256, symbol[stor2[arg1].field_2560].field_512, symbol[stor2[arg1].field_2560].field_768, 9, bondInfo[arg1].field_2560
    else:
        if bondInfo[arg1].field_0 == msg.sender:
            symbol[arg1].field_768 = arg2
            emit 0xf474b986: bondInfo[arg1].field_0, 0, bondInfo[arg1].field_2048, bondInfo[arg1].field_2304, bondInfo[arg1].field_512, 0, bool(bondInfo[arg1].field_2816), symbol[stor2[arg1].field_2560].field_256, symbol[stor2[arg1].field_2560].field_512, symbol[stor2[arg1].field_2560].field_768, 9, bondInfo[arg1].field_2560
        else:
            if stor0 != msg.sender:
                emit code.data[12116 len 32]: arg1, 11, msg.sender
            else:
                symbol[arg1].field_768 = arg2
                emit 0xf474b986: bondInfo[arg1].field_0, 0, bondInfo[arg1].field_2048, bondInfo[arg1].field_2304, bondInfo[arg1].field_512, 0, bool(bondInfo[arg1].field_2816), symbol[stor2[arg1].field_2560].field_256, symbol[stor2[arg1].field_2560].field_512, symbol[stor2[arg1].field_2560].field_768, 9, bondInfo[arg1].field_2560
}

function sub_87d250fc(?) {
    require ext_code.size(0x270fc4524617c084890ae020eef60966cf934b)
    call 0x00270fc4524617c084890ae020eef60966cf934b.addressOf(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args ('offerbook' << 184)
    require ext_call.success
    if not stor6[arg1].field_0:
        return 0
    require ext_code.size(0x56000000000000000000000000270fc4524617c084890ae020eef60966cf934b)
    call ????????????????????????????????????????.addressOf(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args 0x637573746f6469616e0000000000000000000000000000000000000000000000
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xe849d4ef with:
         gas gas_remaining - 50 wei
        args arg1, bondInfo[arg1].field_0
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).cost(uint256 rg1) with:
         gas gas_remaining - 50 wei
        args stor6[arg1].field_256
    require ext_call.success
    if (bondInfo[arg1].field_2304 * bondInfo[arg1].field_2048) - (ext_call.return_data[0] * bondInfo[arg1].field_2048) < ext_call.return_data[0]:
        emit 0x3d028f33: stor6[arg1].field_512, stor6[arg1].field_256, (bondInfo[arg1].field_2304 * bondInfo[arg1].field_2048) - (ext_call.return_data[0] * bondInfo[arg1].field_2048), 14, arg1, stor6[arg1].field_1024
        return 0
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xff534a34 with:
         gas gas_remaining - 50 wei
        args stor6[arg1].field_256, bondInfo[arg1].field_0
    require ext_call.success
    if not ext_call.return_data[0]:
        emit 0xefc84628: stor6[arg1].field_512, stor6[arg1].field_256, (bondInfo[arg1].field_2304 * bondInfo[arg1].field_2048) - (ext_call.return_data[0] * bondInfo[arg1].field_2048), 13, arg1, stor6[arg1].field_1024
    else:
        emit 0xde469e17: stor6[arg1].field_512, stor6[arg1].field_256, (bondInfo[arg1].field_2304 * bondInfo[arg1].field_2048) - (ext_call.return_data[0] * bondInfo[arg1].field_2048), 12, arg1, stor6[arg1].field_1024
    return bool(ext_call.return_data[0])
}

function sub_34da13bd(?) {
    require ext_code.size(0x270fc4524617c084890ae020eef60966cf934b)
    call 0x00270fc4524617c084890ae020eef60966cf934b.addressOf(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args 0x637573746f6469616e0000000000000000000000000000000000000000000000
    require ext_call.success
    require ext_code.size(0x56000000000000000000000000270fc4524617c084890ae020eef60966cf934b)
    call ????????????????????????????????????????.addressOf(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args ('offerbook' << 184)
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xe849d4ef with:
         gas gas_remaining - 50 wei
        args arg1, bondInfo[arg1].field_0
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xe849d4ef with:
         gas gas_remaining - 50 wei
        args arg1, msg.sender
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xbc689ef with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).price(uint256 rg1) with:
         gas gas_remaining - 50 wei
        args ext_call.return_data[0]
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x78eec5d9 with:
         gas gas_remaining - 50 wei
        args ext_call.return_data[0]
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).commission(uint256 rg1) with:
         gas gas_remaining - 50 wei
        args ext_call.return_data[0]
    require ext_call.success
    return bondInfo[arg1].field_0, 
           0,
           symbol[arg1].field_512,
           symbol[arg1].field_768,
           Mask(64, 192, symbol[arg1].field_1280),
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0]
}

function sub_940589d6(?) {
    if not bondInfo[arg1].field_0:
        emit code.data[12116 len 32]: arg1, 1, msg.sender
    else:
        require ext_code.size(0x270fc4524617c084890ae020eef60966cf934b)
        call 0x00270fc4524617c084890ae020eef60966cf934b.addressOf(bytes32 rg1) with:
             gas gas_remaining - 50 wei
            args 0x637573746f6469616e0000000000000000000000000000000000000000000000
        require ext_call.success
        if bondInfo[arg1].field_0 == msg.sender:
            if arg2 < 1:
                emit code.data[12116 len 32]: arg1, 12, msg.sender
            else:
                bondInfo[arg1].field_2304 += arg2
                emit 0xf474b986: bondInfo[arg1].field_0, 0, bondInfo[arg1].field_2048, bondInfo[arg1].field_2304, bondInfo[arg1].field_512, 0, bool(bondInfo[arg1].field_2816), symbol[stor2[arg1].field_2560].field_256, symbol[stor2[arg1].field_2560].field_512, symbol[stor2[arg1].field_2560].field_768, 9, bondInfo[arg1].field_2560
                emit 0x25d17451: arg1, arg2, 15, tx.origin
        else:
            if stor0 == msg.sender:
                if arg2 < 1:
                    emit code.data[12116 len 32]: arg1, 12, msg.sender
                else:
                    bondInfo[arg1].field_2304 += arg2
                    emit 0xf474b986: bondInfo[arg1].field_0, 0, bondInfo[arg1].field_2048, bondInfo[arg1].field_2304, bondInfo[arg1].field_512, 0, bool(bondInfo[arg1].field_2816), symbol[stor2[arg1].field_2560].field_256, symbol[stor2[arg1].field_2560].field_512, symbol[stor2[arg1].field_2560].field_768, 9, bondInfo[arg1].field_2560
                    emit 0x25d17451: arg1, arg2, 15, tx.origin
            else:
                if ext_call.return_data[12 len 20] != msg.sender:
                    emit code.data[12116 len 32]: arg1, 11, msg.sender
                else:
                    if arg2 < 1:
                        emit code.data[12116 len 32]: arg1, 12, msg.sender
                    else:
                        bondInfo[arg1].field_2304 += arg2
                        emit 0xf474b986: bondInfo[arg1].field_0, 0, bondInfo[arg1].field_2048, bondInfo[arg1].field_2304, bondInfo[arg1].field_512, 0, bool(bondInfo[arg1].field_2816), symbol[stor2[arg1].field_2560].field_256, symbol[stor2[arg1].field_2560].field_512, symbol[stor2[arg1].field_2560].field_768, 9, bondInfo[arg1].field_2560
                        emit 0x25d17451: arg1, arg2, 15, tx.origin
}

function sub_0c509506(?) {
    if arg1 < 1:
        emit code.data[12116 len 32]: arg1, 1, msg.sender
    else:
        if bondInfo[arg1].field_0:
            emit code.data[12116 len 32]: arg1, 1, msg.sender
        else:
            if bondInfo[stor5[Mask(64, 192, arg10)]].field_0:
                emit code.data[12116 len 32]: arg1, 1, msg.sender
            else:
                sub_0a6308d5.length++
                if not sub_0a6308d5.length <= sub_0a6308d5.length + 1:
                    idx = sub_0a6308d5.length + 1
                    while sub_0a6308d5.length > idx:
                        sub_0a6308d5[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                sub_0a6308d5[sub_0a6308d5.length].field_0 = arg1
                bondInfo[arg1].field_0 = msg.sender
                bondInfo[arg1].field_256 = block.timestamp
                bondInfo[arg1].field_512 = block.number
                bondInfo[arg1].field_1792 = arg4
                bondInfo[arg1].field_2048 = arg5
                bondInfo[arg1].field_2560 = arg1
                bondInfo[arg1].field_2824 = 0
                bondInfo[arg1].field_768 = arg2
                bondInfo[arg1].field_1280 = arg3
                bondInfo[arg1].field_2816 = arg7
                bondInfo[arg1].field_2304 = arg6
                symbol[stor2[arg1].field_2560].field_512 = arg9
                symbol[stor2[arg1].field_2560].field_256 = arg8
                symbol[stor2[arg1].field_2560].field_264 = 0
                symbol[stor2[arg1].field_2560].field_1280 = arg10
                stor5[Mask(64, 192, arg10)] = bondInfo[arg1].field_2560
                require ext_code.size(0x270fc4524617c084890ae020eef60966cf934b)
                call 0x00270fc4524617c084890ae020eef60966cf934b.addressOf(bytes32 rg1) with:
                     gas gas_remaining - 50 wei
                    args 0x637573746f6469616e0000000000000000000000000000000000000000000000
                require ext_call.success
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xc5e11e2 with:
                     gas gas_remaining - 50 wei
                    args 0, 0, bondInfo[arg1].field_0, arg6, 0, 1
                require ext_call.success
                emit 0x7945715b: bondInfo[arg1].field_2560, arg6, 1, msg.sender
                emit 0xf474b986: msg.sender, 0, arg5, arg6, block.number, 0, 0, arg8 << 248, arg9, 0, 8, bondInfo[arg1].field_2560
}

function sub_0ed8d7ce(?) {
    if not bondInfo[arg1].field_0:
        emit code.data[12116 len 32]: arg1, 1, msg.sender
    else:
        if bondInfo[arg1].field_0 == msg.sender:
            if bondInfo[arg1].field_2824:
                emit 0x5a29bc1d: arg1, 10, 3, msg.sender
            else:
                require ext_code.size(0x270fc4524617c084890ae020eef60966cf934b)
                call 0x00270fc4524617c084890ae020eef60966cf934b.addressOf(bytes32 rg1) with:
                     gas gas_remaining - 50 wei
                    args 0x637573746f6469616e0000000000000000000000000000000000000000000000
                require ext_call.success
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x54c8cc78 with:
                     gas gas_remaining - 50 wei
                    args 0, uint32(arg1), bondInfo[arg1].field_0, bondInfo[arg1].field_2048, 0
                require ext_call.success
                bondInfo[arg1].field_2824 = 1
                emit 0xf474b986: bondInfo[arg1].field_0, 0, bondInfo[arg1].field_2048, bondInfo[arg1].field_2304, bondInfo[arg1].field_512, 0, bool(bondInfo[arg1].field_2816), symbol[stor2[arg1].field_2560].field_256, symbol[stor2[arg1].field_2560].field_512, symbol[stor2[arg1].field_2560].field_768, 9, bondInfo[arg1].field_2560
        else:
            if stor0 != msg.sender:
                emit code.data[12116 len 32]: arg1, 11, msg.sender
            else:
                if bondInfo[arg1].field_2824:
                    emit 0x5a29bc1d: arg1, 10, 3, msg.sender
                else:
                    require ext_code.size(0x270fc4524617c084890ae020eef60966cf934b)
                    call 0x00270fc4524617c084890ae020eef60966cf934b.addressOf(bytes32 rg1) with:
                         gas gas_remaining - 50 wei
                        args 0x637573746f6469616e0000000000000000000000000000000000000000000000
                    require ext_call.success
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x54c8cc78 with:
                         gas gas_remaining - 50 wei
                        args 0, uint32(arg1), bondInfo[arg1].field_0, bondInfo[arg1].field_2048, 0
                    require ext_call.success
                    bondInfo[arg1].field_2824 = 1
                    emit 0xf474b986: bondInfo[arg1].field_0, 0, bondInfo[arg1].field_2048, bondInfo[arg1].field_2304, bondInfo[arg1].field_512, 0, bool(bondInfo[arg1].field_2816), symbol[stor2[arg1].field_2560].field_256, symbol[stor2[arg1].field_2560].field_512, symbol[stor2[arg1].field_2560].field_768, 9, bondInfo[arg1].field_2560
}

function sub_7d9baa95(?) {
    if not bondInfo[arg1].field_0:
        emit code.data[12116 len 32]: arg1, 1, msg.sender
    else:
        if bondInfo[arg1].field_0 == msg.sender:
            if bondInfo[arg1].field_2824:
                emit 0x5a29bc1d: arg1, 10, 3, msg.sender
            else:
                require ext_code.size(0x270fc4524617c084890ae020eef60966cf934b)
                call 0x00270fc4524617c084890ae020eef60966cf934b.addressOf(bytes32 rg1) with:
                     gas gas_remaining - 50 wei
                    args 0x637573746f6469616e0000000000000000000000000000000000000000000000
                require ext_call.success
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x54c8cc78 with:
                     gas gas_remaining - 50 wei
                    args 0, uint32(arg1), bondInfo[arg1].field_0, bondInfo[arg1].field_2048, 0
                require ext_call.success
                bondInfo[arg1].field_2824 = 1
                emit 0xf474b986: bondInfo[arg1].field_0, 0, bondInfo[arg1].field_2048, bondInfo[arg1].field_2304, bondInfo[arg1].field_512, 0, bool(bondInfo[arg1].field_2816), symbol[stor2[arg1].field_2560].field_256, symbol[stor2[arg1].field_2560].field_512, symbol[stor2[arg1].field_2560].field_768, 9, bondInfo[arg1].field_2560
        else:
            if stor0 != msg.sender:
                emit code.data[12116 len 32]: arg1, 11, msg.sender
            else:
                if bondInfo[arg1].field_2824:
                    emit 0x5a29bc1d: arg1, 10, 3, msg.sender
                else:
                    require ext_code.size(0x270fc4524617c084890ae020eef60966cf934b)
                    call 0x00270fc4524617c084890ae020eef60966cf934b.addressOf(bytes32 rg1) with:
                         gas gas_remaining - 50 wei
                        args 0x637573746f6469616e0000000000000000000000000000000000000000000000
                    require ext_call.success
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x54c8cc78 with:
                         gas gas_remaining - 50 wei
                        args 0, uint32(arg1), bondInfo[arg1].field_0, bondInfo[arg1].field_2048, 0
                    require ext_call.success
                    bondInfo[arg1].field_2824 = 1
                    emit 0xf474b986: bondInfo[arg1].field_0, 0, bondInfo[arg1].field_2048, bondInfo[arg1].field_2304, bondInfo[arg1].field_512, 0, bool(bondInfo[arg1].field_2816), symbol[stor2[arg1].field_2560].field_256, symbol[stor2[arg1].field_2560].field_512, symbol[stor2[arg1].field_2560].field_768, 9, bondInfo[arg1].field_2560
}

function sub_efa4bb68(?) {
    if bondInfo[arg1].field_0 == msg.sender:
        stor6[arg1].field_0 = arg1
        stor6[arg1].field_256 = arg2
        stor6[arg1].field_768 = msg.sender
        stor6[arg1].field_1280 = arg3
        stor6[arg1].field_1536 = arg4
        stor6[arg1].field_1792 = arg5
        require ext_code.size(0x56000000000000000000000000270fc4524617c084890ae020eef60966cf934b)
        call ????????????????????????????????????????.addressOf(bytes32 rg1) with:
             gas gas_remaining - 50 wei
            args ('offerbook' << 184)
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x83b9d911 with:
             gas gas_remaining - 50 wei
            args stor6[arg1].field_256
        require ext_call.success
        stor6[arg1].field_512 = bondInfo[ext_call.return_data[0]].field_2560
        stor6[arg1].field_1024 = bondInfo[ext_call.return_data[0]].field_0
        stor6[arg1].field_1088 = 0
        emit 0xf474b986: bondInfo[arg1].field_0, 0, bondInfo[arg1].field_2048, bondInfo[arg1].field_2304, bondInfo[arg1].field_512, 0, bool(bondInfo[arg1].field_2816), symbol[stor2[arg1].field_2560].field_256, symbol[stor2[arg1].field_2560].field_512, symbol[stor2[arg1].field_2560].field_768, 9, bondInfo[arg1].field_2560
        emit 0x40188e3a: stor6[arg1].field_256, 0, msg.sender, stor6[arg1].field_1024, stor6[arg1].field_1280, stor6[arg1].field_1536, stor6[arg1].field_1792, 10, stor6[arg1].field_0
    else:
        if stor0 == msg.sender:
            stor6[arg1].field_0 = arg1
            stor6[arg1].field_256 = arg2
            stor6[arg1].field_768 = msg.sender
            stor6[arg1].field_1280 = arg3
            stor6[arg1].field_1536 = arg4
            stor6[arg1].field_1792 = arg5
            require ext_code.size(0x56000000000000000000000000270fc4524617c084890ae020eef60966cf934b)
            call ????????????????????????????????????????.addressOf(bytes32 rg1) with:
                 gas gas_remaining - 50 wei
                args ('offerbook' << 184)
            require ext_call.success
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x83b9d911 with:
                 gas gas_remaining - 50 wei
                args stor6[arg1].field_256
            require ext_call.success
            stor6[arg1].field_512 = bondInfo[ext_call.return_data[0]].field_2560
            stor6[arg1].field_1024 = bondInfo[ext_call.return_data[0]].field_0
            stor6[arg1].field_1088 = 0
            emit 0xf474b986: bondInfo[arg1].field_0, 0, bondInfo[arg1].field_2048, bondInfo[arg1].field_2304, bondInfo[arg1].field_512, 0, bool(bondInfo[arg1].field_2816), symbol[stor2[arg1].field_2560].field_256, symbol[stor2[arg1].field_2560].field_512, symbol[stor2[arg1].field_2560].field_768, 9, bondInfo[arg1].field_2560
            emit 0x40188e3a: stor6[arg1].field_256, 0, msg.sender, stor6[arg1].field_1024, stor6[arg1].field_1280, stor6[arg1].field_1536, stor6[arg1].field_1792, 10, stor6[arg1].field_0
}

function sub_71669c81(?) payable {
    mem[64] = 96
    require not msg.value
    s = 0
    idx = 0
    while idx <= sub_0a6308d5.length:
        require idx < sub_0a6308d5.length
        mem[0] = sub_0a6308d5[idx].field_0
        mem[32] = 2
        if bondInfo[stor1[idx].field_0].field_0 != msg.sender:
            if stor0 != msg.sender:
        if bondInfo[stor1[idx].field_0].field_768 <= block.timestamp:
            mem[32] = 2
            if not bondInfo[idx].field_0:
                mem[mem[64]] = idx
                mem[mem[64] + 32] = 1
                mem[0] = idx
                emit code.data[12116 len 32]: idx, 1, msg.sender
            else:
                mem[32] = 2
                if bondInfo[idx].field_0 == msg.sender:
                    mem[0] = idx
                    mem[32] = 2
                    if bondInfo[idx].field_2824:
                        mem[mem[64]] = idx
                        mem[mem[64] + 32] = 10
                        emit 0x5a29bc1d: idx, 10, 3, msg.sender
                    else:
                        require ext_code.size(0x270fc4524617c084890ae020eef60966cf934b)
                        call 0x00270fc4524617c084890ae020eef60966cf934b.addressOf(bytes32 rg1) with:
                             gas gas_remaining - 50 wei
                            args 0x637573746f6469616e0000000000000000000000000000000000000000000000
                        require ext_call.success
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x54c8cc78 with:
                             gas gas_remaining - 50 wei
                            args idx, bondInfo[idx].field_0, bondInfo[idx].field_2048, 0
                        require ext_call.success
                        bondInfo[idx].field_2824 = 1
                        mem[0] = bondInfo[idx].field_2560
                        mem[32] = 3
                        mem[mem[64]] = bondInfo[idx].field_0
                        mem[mem[64] + 32] = bondInfo[idx].field_256
                        mem[mem[64] + 64] = bondInfo[idx].field_2048
                        mem[mem[64] + 96] = bondInfo[idx].field_2304
                        mem[mem[64] + 128] = bondInfo[idx].field_512
                        mem[mem[64] + 160] = 0
                        mem[mem[64] + 192] = bool(bondInfo[idx].field_2816)
                        mem[mem[64] + 224] = symbol[stor2[idx].field_2560].field_256
                        mem[mem[64] + 256] = symbol[stor2[idx].field_2560].field_512
                        mem[mem[64] + 288] = symbol[stor2[idx].field_2560].field_768
                        emit 0xf474b986: bondInfo[idx].field_0, bondInfo[idx].field_256, bondInfo[idx].field_2048, bondInfo[idx].field_2304, bondInfo[idx].field_512, 0, bool(bondInfo[idx].field_2816), symbol[stor2[idx].field_2560].field_256, symbol[stor2[idx].field_2560].field_512, symbol[stor2[idx].field_2560].field_768, 9, bondInfo[idx].field_2560
                else:
                    if stor0 != msg.sender:
                        mem[mem[64]] = idx
                        mem[mem[64] + 32] = 11
                        mem[0] = idx
                        emit code.data[12116 len 32]: idx, 11, msg.sender
                    else:
                        mem[0] = idx
                        mem[32] = 2
                        if bondInfo[idx].field_2824:
                            mem[mem[64]] = idx
                            mem[mem[64] + 32] = 10
                            emit 0x5a29bc1d: idx, 10, 3, msg.sender
                        else:
                            require ext_code.size(0x270fc4524617c084890ae020eef60966cf934b)
                            call 0x00270fc4524617c084890ae020eef60966cf934b.addressOf(bytes32 rg1) with:
                                 gas gas_remaining - 50 wei
                                args 0x637573746f6469616e0000000000000000000000000000000000000000000000
                            require ext_call.success
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x54c8cc78 with:
                                 gas gas_remaining - 50 wei
                                args idx, bondInfo[idx].field_0, bondInfo[idx].field_2048, 0
                            require ext_call.success
                            bondInfo[idx].field_2824 = 1
                            mem[0] = bondInfo[idx].field_2560
                            mem[32] = 3
                            mem[mem[64]] = bondInfo[idx].field_0
                            mem[mem[64] + 32] = bondInfo[idx].field_256
                            mem[mem[64] + 64] = bondInfo[idx].field_2048
                            mem[mem[64] + 96] = bondInfo[idx].field_2304
                            mem[mem[64] + 128] = bondInfo[idx].field_512
                            mem[mem[64] + 160] = 0
                            mem[mem[64] + 192] = bool(bondInfo[idx].field_2816)
                            mem[mem[64] + 224] = symbol[stor2[idx].field_2560].field_256
                            mem[mem[64] + 256] = symbol[stor2[idx].field_2560].field_512
                            mem[mem[64] + 288] = symbol[stor2[idx].field_2560].field_768
                            emit 0xf474b986: bondInfo[idx].field_0, bondInfo[idx].field_256, bondInfo[idx].field_2048, bondInfo[idx].field_2304, bondInfo[idx].field_512, 0, bool(bondInfo[idx].field_2816), symbol[stor2[idx].field_2560].field_256, symbol[stor2[idx].field_2560].field_512, symbol[stor2[idx].field_2560].field_768, 9, bondInfo[idx].field_2560
        s = sha3(sub_0a6308d5[idx].field_0, 2)
        idx = idx + 1
        continue 
}

function sub_b1cc3fdd(?) payable {
    mem[64] = 96
    require not msg.value
    require ext_code.size(0x270fc4524617c084890ae020eef60966cf934b)
    call 0x00270fc4524617c084890ae020eef60966cf934b.addressOf(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args 0x637573746f6469616e0000000000000000000000000000000000000000000000
    require ext_call.success
    s = 0
    s = 0
    s = 0
    idx = 0
    while idx <= sub_0a6308d5.length:
        require idx < sub_0a6308d5.length
        mem[0] = bondInfo[stor1[idx].field_0].field_2560
        mem[32] = 2
        if bondInfo[bondInfo[stor1[idx].field_0].field_2560].field_1536 <= 0:
            if block.timestamp - bondInfo[bondInfo[stor1[idx].field_0].field_2560].field_256 < bondInfo[bondInfo[stor1[idx].field_0].field_2560].field_1792:
            require bondInfo[bondInfo[stor1[idx].field_0].field_2560].field_1792
            if bondInfo[bondInfo[stor1[idx].field_0].field_2560].field_1280 * block.timestamp - bondInfo[bondInfo[stor1[idx].field_0].field_2560].field_256 / bondInfo[bondInfo[stor1[idx].field_0].field_2560].field_1792 < 1:
            mem[mem[64] + 4] = bondInfo[stor1[idx].field_0].field_2560
            mem[mem[64] + 36] = bondInfo[stor1[idx].field_0].field_0
            mem[mem[64] + 68] = bondInfo[bondInfo[stor1[idx].field_0].field_2560].field_1280 * block.timestamp - bondInfo[bondInfo[stor1[idx].field_0].field_2560].field_256 / bondInfo[bondInfo[stor1[idx].field_0].field_2560].field_1792
            mem[mem[64] + 100] = 2
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x433fdf55 with:
                 gas gas_remaining - 50 wei
                args bondInfo[stor1[idx].field_0].field_2560, bondInfo[stor1[idx].field_0].field_0, bondInfo[bondInfo[stor1[idx].field_0].field_2560].field_1280 * block.timestamp - bondInfo[bondInfo[stor1[idx].field_0].field_2560].field_256 / bondInfo[bondInfo[stor1[idx].field_0].field_2560].field_1792, 2
            mem[mem[64]] = ext_call.return_data[0]
            require ext_call.success
            if ext_call.return_data[0]:
                bondInfo[stor1[idx].field_0].field_1536 = block.timestamp
                mem[0] = bondInfo[idx].field_2560
                mem[32] = 3
                mem[mem[64]] = bondInfo[idx].field_0
                mem[mem[64] + 32] = bondInfo[idx].field_256
                mem[mem[64] + 64] = bondInfo[idx].field_2048
                mem[mem[64] + 96] = bondInfo[idx].field_2304
                mem[mem[64] + 128] = bondInfo[idx].field_512
                mem[mem[64] + 160] = 0
                mem[mem[64] + 192] = bool(bondInfo[idx].field_2816)
                mem[mem[64] + 224] = symbol[stor2[idx].field_2560].field_256
                mem[mem[64] + 256] = symbol[stor2[idx].field_2560].field_512
                mem[mem[64] + 288] = symbol[stor2[idx].field_2560].field_768
                emit 0xf474b986: bondInfo[idx].field_0, bondInfo[idx].field_256, bondInfo[idx].field_2048, bondInfo[idx].field_2304, bondInfo[idx].field_512, 0, bool(bondInfo[idx].field_2816), symbol[stor2[idx].field_2560].field_256, symbol[stor2[idx].field_2560].field_512, symbol[stor2[idx].field_2560].field_768, 9, bondInfo[idx].field_2560
            s = ext_call.return_data[0]
            s = bondInfo[bondInfo[stor1[idx].field_0].field_2560].field_1280 * block.timestamp - bondInfo[bondInfo[stor1[idx].field_0].field_2560].field_256 / bondInfo[bondInfo[stor1[idx].field_0].field_2560].field_1792
            s = sha3(sub_0a6308d5[idx].field_0, 2)
            idx = idx + 1
            continue 
        if block.timestamp - bondInfo[bondInfo[stor1[idx].field_0].field_2560].field_1536 < bondInfo[bondInfo[stor1[idx].field_0].field_2560].field_1792:
        require bondInfo[bondInfo[stor1[idx].field_0].field_2560].field_1792
        if bondInfo[bondInfo[stor1[idx].field_0].field_2560].field_1280 * block.timestamp - bondInfo[bondInfo[stor1[idx].field_0].field_2560].field_1536 / bondInfo[bondInfo[stor1[idx].field_0].field_2560].field_1792 < 1:
        mem[mem[64] + 4] = bondInfo[stor1[idx].field_0].field_2560
        mem[mem[64] + 36] = bondInfo[stor1[idx].field_0].field_0
        mem[mem[64] + 68] = bondInfo[bondInfo[stor1[idx].field_0].field_2560].field_1280 * block.timestamp - bondInfo[bondInfo[stor1[idx].field_0].field_2560].field_1536 / bondInfo[bondInfo[stor1[idx].field_0].field_2560].field_1792
        mem[mem[64] + 100] = 2
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x433fdf55 with:
             gas gas_remaining - 50 wei
            args bondInfo[stor1[idx].field_0].field_2560, bondInfo[stor1[idx].field_0].field_0, bondInfo[bondInfo[stor1[idx].field_0].field_2560].field_1280 * block.timestamp - bondInfo[bondInfo[stor1[idx].field_0].field_2560].field_1536 / bondInfo[bondInfo[stor1[idx].field_0].field_2560].field_1792, 2
        mem[mem[64]] = ext_call.return_data[0]
        require ext_call.success
        if ext_call.return_data[0]:
            bondInfo[stor1[idx].field_0].field_1536 = block.timestamp
            mem[0] = bondInfo[idx].field_2560
            mem[32] = 3
            mem[mem[64]] = bondInfo[idx].field_0
            mem[mem[64] + 32] = bondInfo[idx].field_256
            mem[mem[64] + 64] = bondInfo[idx].field_2048
            mem[mem[64] + 96] = bondInfo[idx].field_2304
            mem[mem[64] + 128] = bondInfo[idx].field_512
            mem[mem[64] + 160] = 0
            mem[mem[64] + 192] = bool(bondInfo[idx].field_2816)
            mem[mem[64] + 224] = symbol[stor2[idx].field_2560].field_256
            mem[mem[64] + 256] = symbol[stor2[idx].field_2560].field_512
            mem[mem[64] + 288] = symbol[stor2[idx].field_2560].field_768
            emit 0xf474b986: bondInfo[idx].field_0, bondInfo[idx].field_256, bondInfo[idx].field_2048, bondInfo[idx].field_2304, bondInfo[idx].field_512, 0, bool(bondInfo[idx].field_2816), symbol[stor2[idx].field_2560].field_256, symbol[stor2[idx].field_2560].field_512, symbol[stor2[idx].field_2560].field_768, 9, bondInfo[idx].field_2560
        s = ext_call.return_data[0]
        s = bondInfo[bondInfo[stor1[idx].field_0].field_2560].field_1280 * block.timestamp - bondInfo[bondInfo[stor1[idx].field_0].field_2560].field_1536 / bondInfo[bondInfo[stor1[idx].field_0].field_2560].field_1792
        s = sha3(sub_0a6308d5[idx].field_0, 2)
        idx = idx + 1
        continue 
}



}

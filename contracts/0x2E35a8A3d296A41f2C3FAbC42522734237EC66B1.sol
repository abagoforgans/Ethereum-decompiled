contract main {


// =======================  Init code  ======================


address stor1;

function _fallback() {
    stor1 = code.data[14721 len 20]
    return code.data[75 len 14634]
}



// =====================  Runtime code  =====================


address dbAddress;
address sub_64beff2fAddress;

function db() {
    return dbAddress
}

function sub_64beff2f(?) {
    return sub_64beff2fAddress
}

function updateContract(address arg1) {
    require sub_64beff2fAddress == msg.sender
    require ext_code.size(dbAddress)
    call dbAddress.changeOwner(address rg1) with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xf029bd23 with:
         gas gas_remaining - 50 wei
        args dbAddress
    require ext_call.success
    require ext_code.size(sub_64beff2fAddress)
    call sub_64beff2fAddress.admin() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    selfdestruct(ext_call.return_data[12 len 20])
}

function _fallback() {
    revert 
}

function sub_9959f7c5(?) {
    require sub_64beff2fAddress == msg.sender
    sub_64beff2fAddress = arg1
}

function sub_f029bd23(?) {
    require not dbAddress
    if arg1:
        dbAddress = arg1
    else:
        create contract with 0 wei
                        code: code.data[12439 len 2120]
        require create.new_address
        dbAddress = address(create.new_address)
}

function sub_0cbade0e(?) {
    require ext_code.size(sub_64beff2fAddress)
    call sub_64beff2fAddress.0xe6239da3 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x1953af25 with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    if ext_call.return_data[12 len 20] == arg2:
        return 0
    require ext_code.size(dbAddress)
    call dbAddress.prices(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    require ext_code.size(dbAddress)
    call dbAddress.0x433b547d with:
         gas gas_remaining - 50 wei
        args arg1, arg2
    require ext_call.success
    if ext_call.return_data[0]:
        return ext_call.return_data[96]
    return ext_call.return_data[0]
}

function sub_47fa91a3(?) {
    require ext_code.size(sub_64beff2fAddress)
    call sub_64beff2fAddress.0xe6239da3 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x1953af25 with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    if ext_call.return_data[12 len 20] == arg2:
        return 0
    require ext_code.size(dbAddress)
    call dbAddress.prices(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    require ext_code.size(dbAddress)
    call dbAddress.0x433b547d with:
         gas gas_remaining - 50 wei
        args arg1, arg2
    require ext_call.success
    if ext_call.return_data[0]:
        return ext_call.return_data[128]
    return ext_call.return_data[32]
}

function sub_55609ea5(?) {
    require ext_code.size(sub_64beff2fAddress)
    call sub_64beff2fAddress.0xe6239da3 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x1953af25 with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    if ext_call.return_data[12 len 20] == arg2:
        return 1
    require ext_code.size(dbAddress)
    call dbAddress.prices(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    require ext_code.size(dbAddress)
    call dbAddress.0x433b547d with:
         gas gas_remaining - 50 wei
        args arg1, arg2
    require ext_call.success
    if ext_call.return_data[0]:
        return uint8(ext_call.return_data[160])
    return uint8(ext_call.return_data[64])
}

function sub_32356cbd(?) {
    require ext_code.size(sub_64beff2fAddress)
    call sub_64beff2fAddress.0xe6239da3 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x1953af25 with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[12 len 20] == msg.sender
    require ext_code.size(sub_64beff2fAddress)
    call sub_64beff2fAddress.0xe6239da3 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x4d655aff with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xf7a3b398 with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    require not ext_call.return_data[0]
    require ext_code.size(dbAddress)
    call dbAddress.0x32356cbd with:
         gas gas_remaining - 50 wei
        args arg1, arg2
    require ext_call.success
    emit 0x70a5d745: arg2, arg1
}

function sub_633bb193(?) {
    require ext_code.size(sub_64beff2fAddress)
    call sub_64beff2fAddress.0xe6239da3 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x1953af25 with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[12 len 20] == msg.sender
    require ext_code.size(sub_64beff2fAddress)
    call sub_64beff2fAddress.0xe6239da3 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x4d655aff with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xf7a3b398 with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    require not ext_call.return_data[0]
    require ext_code.size(dbAddress)
    call dbAddress.0x633bb193 with:
         gas gas_remaining - 50 wei
        args arg1, arg2
    require ext_call.success
    emit 0x7bf5e777: arg2, arg1
}

function sub_bb92e23b(?) {
    require ext_code.size(sub_64beff2fAddress)
    call sub_64beff2fAddress.0xe6239da3 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x1953af25 with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[12 len 20] == msg.sender
    require ext_code.size(sub_64beff2fAddress)
    call sub_64beff2fAddress.0xe6239da3 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x4d655aff with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xf7a3b398 with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    require not ext_call.return_data[0]
    require ext_code.size(dbAddress)
    call dbAddress.0xbb92e23b with:
         gas gas_remaining - 50 wei
        args arg1, address(arg2), arg3
    require ext_call.success
    emit 0xa8160b42: address(arg2), arg3, arg1
}

function sub_154652c8(?) {
    require ext_code.size(sub_64beff2fAddress)
    call sub_64beff2fAddress.0xe6239da3 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x1953af25 with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[12 len 20] == msg.sender
    require ext_code.size(sub_64beff2fAddress)
    call sub_64beff2fAddress.0xe6239da3 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x4d655aff with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xf7a3b398 with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    require not ext_call.return_data[0]
    require ext_code.size(dbAddress)
    call dbAddress.0x154652c8 with:
         gas gas_remaining - 50 wei
        args arg1, arg2
    require ext_call.success
    emit code.data[14559 len 32]: 0x154652c800000000000000000000000000000000000000000000000000000000, arg2, 12, 'pricePerHour', arg1
}

function sub_75f48588(?) {
    require ext_code.size(sub_64beff2fAddress)
    call sub_64beff2fAddress.0xe6239da3 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x1953af25 with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[12 len 20] == msg.sender
    require ext_code.size(sub_64beff2fAddress)
    call sub_64beff2fAddress.0xe6239da3 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x4d655aff with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xf7a3b398 with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    require not ext_call.return_data[0]
    require ext_code.size(dbAddress)
    call dbAddress.0x75f48588 with:
         gas gas_remaining - 50 wei
        args arg1, arg2
    require ext_call.success
    emit code.data[14559 len 32]: 0x75f4858800000000000000000000000000000000000000000000000000000000, arg2, 10, 'pricePerKW' << 176, arg1
}

function sub_07946f50(?) {
    require ext_code.size(sub_64beff2fAddress)
    call sub_64beff2fAddress.0xe6239da3 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x1953af25 with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[12 len 20] == msg.sender
    require ext_code.size(sub_64beff2fAddress)
    call sub_64beff2fAddress.0xe6239da3 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x4d655aff with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xf7a3b398 with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    require not ext_call.return_data[0]
    require ext_code.size(dbAddress)
    call dbAddress.0x7946f50 with:
         gas gas_remaining - 50 wei
        args arg1, arg2
    require ext_call.success
    emit code.data[14559 len 32]: 0x7946f5000000000000000000000000000000000000000000000000000000000, arg2, 21, 'pricePerHourWhitelist', arg1
}

function sub_3ad181b7(?) {
    require ext_code.size(sub_64beff2fAddress)
    call sub_64beff2fAddress.0xe6239da3 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x1953af25 with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[12 len 20] == msg.sender
    require ext_code.size(sub_64beff2fAddress)
    call sub_64beff2fAddress.0xe6239da3 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x4d655aff with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xf7a3b398 with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    require not ext_call.return_data[0]
    require ext_code.size(dbAddress)
    call dbAddress.0x3ad181b7 with:
         gas gas_remaining - 50 wei
        args arg1, arg2
    require ext_call.success
    emit code.data[14559 len 32]: 0x3ad181b700000000000000000000000000000000000000000000000000000000, arg2, 19, 'pricePerKWWhitelist', arg1
}

function sub_8feefd06(?) {
    require ext_code.size(sub_64beff2fAddress)
    call sub_64beff2fAddress.0xe6239da3 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x1953af25 with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[12 len 20] == msg.sender
    require ext_code.size(sub_64beff2fAddress)
    call sub_64beff2fAddress.0xe6239da3 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x4d655aff with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xf7a3b398 with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    require not ext_call.return_data[0]
    require ext_code.size(dbAddress)
    call dbAddress.0x8feefd06 with:
         gas gas_remaining - 50 wei
        args 0, uint32(arg1), arg2 << 248, arg3, arg4
    require ext_call.success
    emit 0x7bf5e777: arg2, arg1
    emit code.data[14559 len 32]: arg2 << 248, arg3, 12, 'pricePerHour', arg1
    emit code.data[14559 len 32]: arg2 << 248, arg4, 10, 'pricePerKW' << 176, arg1
}

function sub_3a3b9076(?) {
    require ext_code.size(sub_64beff2fAddress)
    call sub_64beff2fAddress.0xe6239da3 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x1953af25 with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[12 len 20] == msg.sender
    require ext_code.size(sub_64beff2fAddress)
    call sub_64beff2fAddress.0xe6239da3 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x4d655aff with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xf7a3b398 with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    require not ext_call.return_data[0]
    require ext_code.size(dbAddress)
    call dbAddress.0x3a3b9076 with:
         gas gas_remaining - 50 wei
        args 0, uint32(arg1), arg2 << 248, arg3, arg4
    require ext_call.success
    emit 0x70a5d745: arg2, arg1
    emit code.data[14559 len 32]: arg2 << 248, arg3, 21, 'pricePerHourWhitelist', arg1
    emit code.data[14559 len 32]: arg2 << 248, arg4, 19, 'pricePerKWWhitelist', arg1
}

function sub_7abaf37e(?) {
    require ext_code.size(sub_64beff2fAddress)
    call sub_64beff2fAddress.0xe6239da3 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x4d655aff with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xd414d536 with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    if ext_call.return_data[12 len 20] == arg2:
        return 0
    require ext_code.size(dbAddress)
    call dbAddress.0x433b547d with:
         gas gas_remaining - 50 wei
        args arg1, arg2
    require ext_call.success
    require ext_code.size(dbAddress)
    if not ext_call.return_data[0]:
        call dbAddress.0xc6cc6e04 with:
             gas gas_remaining - 50 wei
            args arg1
    else:
        call dbAddress.0x7a2a45a5 with:
             gas gas_remaining - 50 wei
            args arg1
    require ext_call.success
    if 4 < ext_call.return_data[95 len 1]:
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x9366974 with:
             gas gas_remaining - 50 wei
            args arg1
        require ext_call.success
        return 0
    if ext_call.return_data[95 len 1] != 3:
        if not ext_call.return_data[95 len 1]:
            return 0
        if 1 == ext_call.return_data[95 len 1]:
            return ext_call.return_data[0]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x9366974 with:
             gas gas_remaining - 50 wei
            args arg1
        require ext_call.success
        if uint8(ext_call.return_data[64]) != 2:
            if uint8(ext_call.return_data[64]) != 3:
                return 0
            return ((arg4 * ext_call.return_data[0] / 3600) + (ext_call.return_data[32] * arg5 / 1000))
    else:
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa59acda4 with:
             gas gas_remaining - 50 wei
            args arg1
        require ext_call.success
        if ext_call.return_data[12 len 20] != tx.origin:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x9366974 with:
                 gas gas_remaining - 50 wei
                args arg1
            require ext_call.success
        else:
            if not uint8(ext_call.return_data[64]):
                return 0
            if 1 == uint8(ext_call.return_data[64]):
                return ext_call.return_data[0]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x9366974 with:
                 gas gas_remaining - 50 wei
                args arg1
            require ext_call.success
            if uint8(ext_call.return_data[64]) != 2:
                if uint8(ext_call.return_data[64]) != 3:
                    return 0
                return ((arg4 * ext_call.return_data[0] / 3600) + (ext_call.return_data[32] * arg5 / 1000))
    if arg3 > ext_call.return_data[0]:
        return ((ext_call.return_data[0] * arg4) + (ext_call.return_data[32] * ext_call.return_data[0] / 1000 * arg4) / 3600)
    return ((ext_call.return_data[0] * arg4) + (ext_call.return_data[32] * arg3 / 1000 * arg4) / 3600)
}

function sub_62b5c1c3(?) {
    require ext_code.size(sub_64beff2fAddress)
    call sub_64beff2fAddress.0xe6239da3 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x4d655aff with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xd414d536 with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    if ext_call.return_data[12 len 20] == arg2:
        return 0
    require ext_code.size(dbAddress)
    call dbAddress.0x433b547d with:
         gas gas_remaining - 50 wei
        args arg1, arg2
    require ext_call.success
    require ext_code.size(dbAddress)
    if not ext_call.return_data[0]:
        call dbAddress.0xc6cc6e04 with:
             gas gas_remaining - 50 wei
            args arg1
    else:
        call dbAddress.0x7a2a45a5 with:
             gas gas_remaining - 50 wei
            args arg1
    require ext_call.success
    if 2 < ext_call.return_data[95 len 1]:
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x9366974 with:
             gas gas_remaining - 50 wei
            args arg1
        require ext_call.success
    else:
        if ext_call.return_data[95 len 1] != 3:
            if not ext_call.return_data[95 len 1]:
                return 0
            if 1 == ext_call.return_data[95 len 1]:
                return ext_call.return_data[0]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x9366974 with:
                 gas gas_remaining - 50 wei
                args arg1
            require ext_call.success
            if uint8(ext_call.return_data[64]) != 2:
                if uint8(ext_call.return_data[64]) != 3:
                    return 0
                return (arg4 * ext_call.return_data[0] / 3600)
        else:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xa59acda4 with:
                 gas gas_remaining - 50 wei
                args arg1
            require ext_call.success
            if ext_call.return_data[12 len 20] != tx.origin:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x9366974 with:
                     gas gas_remaining - 50 wei
                    args arg1
                require ext_call.success
            else:
                if not uint8(ext_call.return_data[64]):
                    return 0
                if 1 == uint8(ext_call.return_data[64]):
                    return ext_call.return_data[0]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x9366974 with:
                     gas gas_remaining - 50 wei
                    args arg1
                require ext_call.success
                if uint8(ext_call.return_data[64]) != 2:
                    if uint8(ext_call.return_data[64]) != 3:
                        return 0
                    return (arg4 * ext_call.return_data[0] / 3600)
    if arg3 > ext_call.return_data[0]:
        return ((ext_call.return_data[0] * arg4) + (ext_call.return_data[32] * ext_call.return_data[0] / 1000 * arg4) / 3600)
    return ((ext_call.return_data[0] * arg4) + (ext_call.return_data[32] * arg3 / 1000 * arg4) / 3600)
}

function sub_152cf716(?) {
    require ext_code.size(sub_64beff2fAddress)
    call sub_64beff2fAddress.0xe6239da3 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x4d655aff with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xd414d536 with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    if ext_call.return_data[12 len 20] == arg2:
        return 0
    require ext_code.size(dbAddress)
    call dbAddress.0x433b547d with:
         gas gas_remaining - 50 wei
        args arg1, arg2
    require ext_call.success
    require ext_code.size(dbAddress)
    if not ext_call.return_data[0]:
        call dbAddress.0xc6cc6e04 with:
             gas gas_remaining - 50 wei
            args arg1
    else:
        call dbAddress.0x7a2a45a5 with:
             gas gas_remaining - 50 wei
            args arg1
    require ext_call.success
    if arg6 >= ext_call.return_data[95 len 1]:
        if ext_call.return_data[95 len 1] != 3:
            if not ext_call.return_data[95 len 1]:
                return 0
            if 1 == ext_call.return_data[95 len 1]:
                return ext_call.return_data[0]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x9366974 with:
                 gas gas_remaining - 50 wei
                args arg1
            require ext_call.success
            if uint8(ext_call.return_data[64]) != 2:
                if uint8(ext_call.return_data[64]) != 3:
                    return 0
                return ((arg4 * ext_call.return_data[0] / 3600) + (ext_call.return_data[32] * arg5 / 1000))
        else:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xa59acda4 with:
                 gas gas_remaining - 50 wei
                args arg1
            require ext_call.success
            if ext_call.return_data[12 len 20] != tx.origin:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x9366974 with:
                     gas gas_remaining - 50 wei
                    args arg1
                require ext_call.success
            else:
                if not uint8(ext_call.return_data[64]):
                    return 0
                if 1 == uint8(ext_call.return_data[64]):
                    return ext_call.return_data[0]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x9366974 with:
                     gas gas_remaining - 50 wei
                    args arg1
                require ext_call.success
                if uint8(ext_call.return_data[64]) != 2:
                    if uint8(ext_call.return_data[64]) != 3:
                        return 0
                    return ((arg4 * ext_call.return_data[0] / 3600) + (ext_call.return_data[32] * arg5 / 1000))
    else:
        if arg6 != 3:
            if not arg6:
                return 0
            if 1 == arg6:
                return ext_call.return_data[0]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x9366974 with:
                 gas gas_remaining - 50 wei
                args arg1
            require ext_call.success
            if arg6 != 2:
                if arg6 != 3:
                    return 0
                return ((arg4 * ext_call.return_data[0] / 3600) + (ext_call.return_data[32] * arg5 / 1000))
        else:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xa59acda4 with:
                 gas gas_remaining - 50 wei
                args arg1
            require ext_call.success
            if ext_call.return_data[12 len 20] != tx.origin:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x9366974 with:
                     gas gas_remaining - 50 wei
                    args arg1
                require ext_call.success
            else:
                if not arg6:
                    return 0
                if 1 == arg6:
                    return ext_call.return_data[0]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x9366974 with:
                     gas gas_remaining - 50 wei
                    args arg1
                require ext_call.success
                if arg6 != 2:
                    if arg6 != 3:
                        return 0
                    return ((arg4 * ext_call.return_data[0] / 3600) + (ext_call.return_data[32] * arg5 / 1000))
    if arg3 > ext_call.return_data[0]:
        return ((ext_call.return_data[0] * arg4) + (ext_call.return_data[32] * ext_call.return_data[0] / 1000 * arg4) / 3600)
    return ((ext_call.return_data[0] * arg4) + (ext_call.return_data[32] * arg3 / 1000 * arg4) / 3600)
}

function sub_9c0cb8ca(?) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require ext_code.size(sub_64beff2fAddress)
    call sub_64beff2fAddress.0xe6239da3 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x1953af25 with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[12 len 20] == msg.sender
    require ext_code.size(sub_64beff2fAddress)
    call sub_64beff2fAddress.0xe6239da3 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x4d655aff with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xf7a3b398 with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    require not ext_call.return_data[0]
    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 0x9c0cb8ca00000000000000000000000000000000000000000000000000000000
    mem[(32 * arg3.length) + (32 * arg2.length) + 164] = arg1
    mem[(32 * arg3.length) + (32 * arg2.length) + 196] = 96
    mem[(32 * arg3.length) + (32 * arg2.length) + 260] = arg2.length
    if not Mask(251, 0, arg2.length):
        mem[(32 * arg3.length) + (32 * arg2.length) + 228] = (32 * arg2.length) + 128
        mem[(64 * arg2.length) + (32 * arg3.length) + 292] = arg3.length
        if not Mask(251, 0, arg3.length):
            require ext_code.size(dbAddress)
            call dbAddress.0x9c0cb8ca with:
                 gas gas_remaining - 50 wei
                args arg1, Array(len=arg2.length, data=mem[(32 * arg3.length) + (32 * arg2.length) + 292 len (32 * arg3.length) + (32 * arg2.length) + 32]), (32 * arg2.length) + 128
            require ext_call.success
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                require idx < arg3.length
                _49 = mem[(32 * arg2.length) + (32 * idx) + 160]
                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + 140 len 20]
                mem[(32 * arg3.length) + (32 * arg2.length) + 192] = bool(_49)
                emit 0xa8160b42: mem[(32 * arg3.length) + (32 * arg2.length) + 160], bool(_49), arg1
                idx = idx + 1
                continue 
        else:
            mem[(64 * arg2.length) + (32 * arg3.length) + 324] = mem[(32 * arg2.length) + 160]
            mem[(64 * arg2.length) + (32 * arg3.length) + 356 len floor32((32 * arg3.length) - 1)] = mem[(32 * arg2.length) + 192 len floor32((32 * arg3.length) - 1)]
            require ext_code.size(dbAddress)
            call dbAddress.0x9c0cb8ca with:
                 gas gas_remaining - 50 wei
                args arg1, Array(len=arg2.length, data=mem[(32 * arg3.length) + (32 * arg2.length) + 292 len (32 * arg3.length) + (32 * arg2.length) + 32]), (32 * arg2.length) + 128
            require ext_call.success
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                require idx < arg3.length
                _96 = mem[(32 * arg2.length) + (32 * idx) + 160]
                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + 140 len 20]
                mem[(32 * arg3.length) + (32 * arg2.length) + 192] = bool(_96)
                emit 0xa8160b42: mem[(32 * arg3.length) + (32 * arg2.length) + 160], bool(_96), arg1
                idx = idx + 1
                continue 
    else:
        mem[(32 * arg3.length) + (32 * arg2.length) + 292] = mem[128]
        mem[(32 * arg3.length) + (32 * arg2.length) + 324 len floor32((32 * arg2.length) - 1)] = mem[160 len floor32((32 * arg2.length) - 1)]
        mem[(32 * arg3.length) + (32 * arg2.length) + 228] = (32 * arg2.length) + 128
        mem[(64 * arg2.length) + (32 * arg3.length) + 292] = arg3.length
        if not Mask(251, 0, arg3.length):
            require ext_code.size(dbAddress)
            call dbAddress.0x9c0cb8ca with:
                 gas gas_remaining - 50 wei
                args arg1, Array(len=arg2.length, data=mem[128], mem[(32 * arg3.length) + (32 * arg2.length) + 324 len (32 * arg3.length) + (32 * arg2.length)]), (32 * arg2.length) + 128
            require ext_call.success
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                require idx < arg3.length
                _99 = mem[(32 * arg2.length) + (32 * idx) + 160]
                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + 140 len 20]
                mem[(32 * arg3.length) + (32 * arg2.length) + 192] = bool(_99)
                emit 0xa8160b42: mem[(32 * arg3.length) + (32 * arg2.length) + 160], bool(_99), arg1
                idx = idx + 1
                continue 
        else:
            mem[(64 * arg2.length) + (32 * arg3.length) + 324] = mem[(32 * arg2.length) + 160]
            mem[(64 * arg2.length) + (32 * arg3.length) + 356 len floor32((32 * arg3.length) - 1)] = mem[(32 * arg2.length) + 192 len floor32((32 * arg3.length) - 1)]
            require ext_code.size(dbAddress)
            call dbAddress.0x9c0cb8ca with:
                 gas gas_remaining - 50 wei
                args arg1, Array(len=arg2.length, data=mem[128], mem[(32 * arg3.length) + (32 * arg2.length) + 324 len (32 * arg3.length) + (32 * arg2.length)]), (32 * arg2.length) + 128
            require ext_call.success
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                require idx < arg3.length
                _122 = mem[(32 * arg2.length) + (32 * idx) + 160]
                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + 140 len 20]
                mem[(32 * arg3.length) + (32 * arg2.length) + 192] = bool(_122)
                emit 0xa8160b42: mem[(32 * arg3.length) + (32 * arg2.length) + 160], bool(_122), arg1
                idx = idx + 1
                continue 
}



}

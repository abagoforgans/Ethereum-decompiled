contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;

function _fallback() {
    stor0 = msg.sender
    stor2 = code.data[9027 len 20]
    create contract with 0 wei
                    code: code.data[6651 len 2364]
    require create.new_address
    stor1 = address(create.new_address)
    return code.data[184 len 6467]
}



// =====================  Runtime code  =====================


const isAllowed(bytes32 arg1, address arg2) = 1


address owner;
address dbAddress;
address sub_64beff2fAddress;

function db() {
    return dbAddress
}

function sub_64beff2f(?) {
    return sub_64beff2fAddress
}

function owner() {
    return owner
}

function _fallback() {
    revert 
}

function changeOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
    emit 0x95fd5417: arg1
}

function sub_02f65328(?) {
    require owner == msg.sender
    require ext_code.size(dbAddress)
    call dbAddress.0x2f65328 with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    emit 0x8b5030e0: arg1
}

function sub_960ea596(?) {
    require owner == msg.sender
    require ext_code.size(dbAddress)
    call dbAddress.0x960ea596 with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    emit 0xdb0249e1: arg1
}

function sub_aebc7fee(?) {
    require owner == msg.sender
    require ext_code.size(dbAddress)
    call dbAddress.0xaebc7fee with:
         gas gas_remaining - 50 wei
        args arg1, arg2
    require ext_call.success
    emit 0xb8f748c1: arg1, arg2
}

function updateContract(address arg1) {
    require sub_64beff2fAddress == msg.sender
    require ext_code.size(dbAddress)
    call dbAddress.0xa6f9dae1 with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    dbAddress = 0
}

function sub_967911ee(?) {
    require owner == msg.sender
    require ext_code.size(dbAddress)
    call dbAddress.0x967911ee with:
         gas gas_remaining - 50 wei
        args address(arg1), arg2
    require ext_call.success
    emit 0x7822fa26: address(arg1), arg2
}

function sub_2e084adb(?) {
    require owner == msg.sender
    require ext_code.size(dbAddress)
    call dbAddress.0x2e084adb with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    emit 0x12d03c8f: 0x2e084adb00000000000000000000000000000000000000000000000000000000, arg1, 12, 'pricePerHour'
}

function sub_111e86ad(?) {
    require owner == msg.sender
    require ext_code.size(dbAddress)
    call dbAddress.0x111e86ad with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    emit 0x12d03c8f: 0x111e86ad00000000000000000000000000000000000000000000000000000000, arg1, 10, 'pricePerKW' << 176
}

function sub_8a90c309(?) {
    require owner == msg.sender
    require ext_code.size(dbAddress)
    call dbAddress.0x8a90c309 with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    emit 0x12d03c8f: 0x8a90c30900000000000000000000000000000000000000000000000000000000, arg1, 19, 'pricePerKWWhitelist'
}

function sub_a91032b5(?) {
    require owner == msg.sender
    require ext_code.size(dbAddress)
    call dbAddress.0xa91032b5 with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    emit 0x12d03c8f: 0xa91032b500000000000000000000000000000000000000000000000000000000, arg1, 21, 'pricePerHourWhitelist'
}

function sub_b8b7dd40(?) {
    require owner == msg.sender
    require ext_code.size(dbAddress)
    call dbAddress.0xb8b7dd40 with:
         gas gas_remaining - 50 wei
        args arg1 << 248, arg2, arg3
    require ext_call.success
    emit 0xdb0249e1: arg1
    emit 0x12d03c8f: arg1 << 248, arg2, 12, 'pricePerHour'
    emit 0x12d03c8f: arg1 << 248, arg3, 10, 'pricePerKW' << 176
}

function sub_b8984d50(?) {
    require owner == msg.sender
    require ext_code.size(dbAddress)
    call dbAddress.0xb8984d50 with:
         gas gas_remaining - 50 wei
        args arg1 << 248, arg2, arg3
    require ext_call.success
    emit 0x8b5030e0: arg1
    emit 0x12d03c8f: arg1 << 248, arg2, 21, 'pricePerHourWhitelist'
    emit 0x12d03c8f: arg1 << 248, arg3, 19, 'pricePerKWWhitelist'
}

function sub_0cbade0e(?) {
    require ext_code.size(dbAddress)
    call dbAddress.0x28e98374 with:
         gas gas_remaining - 50 wei
        args arg2
    require ext_call.success
    if ext_call.return_data[0]:
        if ext_code.size(dbAddress):
            call dbAddress.0x3eaca6d1 with:
                 gas gas_remaining - 50 wei
            if ext_call.success:
                return ext_call.return_data[0]
    else:
        if ext_code.size(dbAddress):
            call dbAddress.0x1a26cab with:
                 gas gas_remaining - 50 wei
                args arg1
            if ext_call.success:
                if ext_call.return_data[0]:
                    if ext_code.size(dbAddress):
                        call dbAddress.0x3eaca6d1 with:
                             gas gas_remaining - 50 wei
                        if ext_call.success:
                            return ext_call.return_data[0]
                else:
                    if ext_code.size(dbAddress):
                        call dbAddress.0xceb751da with:
                             gas gas_remaining - 50 wei
                        if ext_call.success:
                            return ext_call.return_data[0]
    revert
}

function sub_47fa91a3(?) {
    require ext_code.size(dbAddress)
    call dbAddress.0x28e98374 with:
         gas gas_remaining - 50 wei
        args arg2
    require ext_call.success
    if ext_call.return_data[0]:
        if ext_code.size(dbAddress):
            call dbAddress.0x4c7ce75c with:
                 gas gas_remaining - 50 wei
            if ext_call.success:
                return ext_call.return_data[0]
    else:
        if ext_code.size(dbAddress):
            call dbAddress.0x1a26cab with:
                 gas gas_remaining - 50 wei
                args arg1
            if ext_call.success:
                if ext_call.return_data[0]:
                    if ext_code.size(dbAddress):
                        call dbAddress.0x4c7ce75c with:
                             gas gas_remaining - 50 wei
                        if ext_call.success:
                            return ext_call.return_data[0]
                else:
                    if ext_code.size(dbAddress):
                        call dbAddress.pricePerKW() with:
                             gas gas_remaining - 50 wei
                        if ext_call.success:
                            return ext_call.return_data[0]
    revert
}

function sub_55609ea5(?) {
    require ext_code.size(dbAddress)
    call dbAddress.0x28e98374 with:
         gas gas_remaining - 50 wei
        args arg2
    require ext_call.success
    if ext_call.return_data[0]:
        if ext_code.size(dbAddress):
            call dbAddress.0xe36aaaf7 with:
                 gas gas_remaining - 50 wei
            if ext_call.success:
                return ext_call.return_data[31 len 1]
    else:
        if ext_code.size(dbAddress):
            call dbAddress.0x1a26cab with:
                 gas gas_remaining - 50 wei
                args arg1
            if ext_call.success:
                if ext_call.return_data[0]:
                    if ext_code.size(dbAddress):
                        call dbAddress.0xe36aaaf7 with:
                             gas gas_remaining - 50 wei
                        if ext_call.success:
                            return ext_call.return_data[31 len 1]
                else:
                    if ext_code.size(dbAddress):
                        call dbAddress.contractType() with:
                             gas gas_remaining - 50 wei
                        if ext_call.success:
                            return ext_call.return_data[31 len 1]
    revert
}

function sub_d75b1044(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require owner == msg.sender
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = 0xd75b104400000000000000000000000000000000000000000000000000000000
    mem[(32 * arg2.length) + (32 * arg1.length) + 164] = 64
    mem[(32 * arg2.length) + (32 * arg1.length) + 228] = arg1.length
    if not Mask(251, 0, arg1.length):
        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = (32 * arg1.length) + 96
        mem[(64 * arg1.length) + (32 * arg2.length) + 260] = arg2.length
        if not Mask(251, 0, arg2.length):
            require ext_code.size(dbAddress)
            call dbAddress.0xd75b1044 with:
                 gas gas_remaining - 50 wei
                args Array(len=arg1.length, data=mem[(32 * arg2.length) + (32 * arg1.length) + 260 len (32 * arg2.length) + (32 * arg1.length) + 32]), (32 * arg1.length) + 96
            require ext_call.success
            idx = 0
            while idx < arg1.length:
                require idx < arg1.length
                require idx < arg2.length
                _26 = mem[(32 * arg1.length) + (32 * idx) + 160]
                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + 128]
                mem[(32 * arg2.length) + (32 * arg1.length) + 192] = bool(_26)
                emit 0xb8f748c1: mem[(32 * arg2.length) + (32 * arg1.length) + 160], bool(_26)
                idx = idx + 1
                continue 
        else:
            mem[(64 * arg1.length) + (32 * arg2.length) + 292] = mem[(32 * arg1.length) + 160]
            mem[(64 * arg1.length) + (32 * arg2.length) + 324 len floor32((32 * arg2.length) - 1)] = mem[(32 * arg1.length) + 192 len floor32((32 * arg2.length) - 1)]
            require ext_code.size(dbAddress)
            call dbAddress.0xd75b1044 with:
                 gas gas_remaining - 50 wei
                args Array(len=arg1.length, data=mem[(32 * arg2.length) + (32 * arg1.length) + 260 len (32 * arg2.length) + (32 * arg1.length) + 32]), (32 * arg1.length) + 96
            require ext_call.success
            idx = 0
            while idx < arg1.length:
                require idx < arg1.length
                require idx < arg2.length
                _73 = mem[(32 * arg1.length) + (32 * idx) + 160]
                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + 128]
                mem[(32 * arg2.length) + (32 * arg1.length) + 192] = bool(_73)
                emit 0xb8f748c1: mem[(32 * arg2.length) + (32 * arg1.length) + 160], bool(_73)
                idx = idx + 1
                continue 
    else:
        mem[(32 * arg2.length) + (32 * arg1.length) + 260] = mem[128]
        mem[(32 * arg2.length) + (32 * arg1.length) + 292 len floor32((32 * arg1.length) - 1)] = mem[160 len floor32((32 * arg1.length) - 1)]
        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = (32 * arg1.length) + 96
        mem[(64 * arg1.length) + (32 * arg2.length) + 260] = arg2.length
        if not Mask(251, 0, arg2.length):
            require ext_code.size(dbAddress)
            call dbAddress.0xd75b1044 with:
                 gas gas_remaining - 50 wei
                args Array(len=arg1.length, data=mem[128], mem[(32 * arg2.length) + (32 * arg1.length) + 292 len (32 * arg2.length) + (32 * arg1.length)]), (32 * arg1.length) + 96
            require ext_call.success
            idx = 0
            while idx < arg1.length:
                require idx < arg1.length
                require idx < arg2.length
                _76 = mem[(32 * arg1.length) + (32 * idx) + 160]
                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + 128]
                mem[(32 * arg2.length) + (32 * arg1.length) + 192] = bool(_76)
                emit 0xb8f748c1: mem[(32 * arg2.length) + (32 * arg1.length) + 160], bool(_76)
                idx = idx + 1
                continue 
        else:
            mem[(64 * arg1.length) + (32 * arg2.length) + 292] = mem[(32 * arg1.length) + 160]
            mem[(64 * arg1.length) + (32 * arg2.length) + 324 len floor32((32 * arg2.length) - 1)] = mem[(32 * arg1.length) + 192 len floor32((32 * arg2.length) - 1)]
            require ext_code.size(dbAddress)
            call dbAddress.0xd75b1044 with:
                 gas gas_remaining - 50 wei
                args Array(len=arg1.length, data=mem[128], mem[(32 * arg2.length) + (32 * arg1.length) + 292 len (32 * arg2.length) + (32 * arg1.length)]), (32 * arg1.length) + 96
            require ext_call.success
            idx = 0
            while idx < arg1.length:
                require idx < arg1.length
                require idx < arg2.length
                _99 = mem[(32 * arg1.length) + (32 * idx) + 160]
                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + 128]
                mem[(32 * arg2.length) + (32 * arg1.length) + 192] = bool(_99)
                emit 0xb8f748c1: mem[(32 * arg2.length) + (32 * arg1.length) + 160], bool(_99)
                idx = idx + 1
                continue 
}

function sub_101fc447(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require owner == msg.sender
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = 0x101fc44700000000000000000000000000000000000000000000000000000000
    mem[(32 * arg2.length) + (32 * arg1.length) + 164] = 64
    mem[(32 * arg2.length) + (32 * arg1.length) + 228] = arg1.length
    if not Mask(251, 0, arg1.length):
        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = (32 * arg1.length) + 96
        mem[(64 * arg1.length) + (32 * arg2.length) + 260] = arg2.length
        if not Mask(251, 0, arg2.length):
            require ext_code.size(dbAddress)
            call dbAddress.0x101fc447 with:
                 gas gas_remaining - 50 wei
                args Array(len=arg1.length, data=mem[(32 * arg2.length) + (32 * arg1.length) + 260 len (32 * arg2.length) + (32 * arg1.length) + 32]), (32 * arg1.length) + 96
            require ext_call.success
            idx = 0
            while idx < arg1.length:
                require idx < arg1.length
                require idx < arg2.length
                _26 = mem[(32 * arg1.length) + (32 * idx) + 160]
                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + 140 len 20]
                mem[(32 * arg2.length) + (32 * arg1.length) + 192] = bool(_26)
                emit 0x7822fa26: mem[(32 * arg2.length) + (32 * arg1.length) + 160], bool(_26)
                idx = idx + 1
                continue 
        else:
            mem[(64 * arg1.length) + (32 * arg2.length) + 292] = mem[(32 * arg1.length) + 160]
            mem[(64 * arg1.length) + (32 * arg2.length) + 324 len floor32((32 * arg2.length) - 1)] = mem[(32 * arg1.length) + 192 len floor32((32 * arg2.length) - 1)]
            require ext_code.size(dbAddress)
            call dbAddress.0x101fc447 with:
                 gas gas_remaining - 50 wei
                args Array(len=arg1.length, data=mem[(32 * arg2.length) + (32 * arg1.length) + 260 len (32 * arg2.length) + (32 * arg1.length) + 32]), (32 * arg1.length) + 96
            require ext_call.success
            idx = 0
            while idx < arg1.length:
                require idx < arg1.length
                require idx < arg2.length
                _73 = mem[(32 * arg1.length) + (32 * idx) + 160]
                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + 140 len 20]
                mem[(32 * arg2.length) + (32 * arg1.length) + 192] = bool(_73)
                emit 0x7822fa26: mem[(32 * arg2.length) + (32 * arg1.length) + 160], bool(_73)
                idx = idx + 1
                continue 
    else:
        mem[(32 * arg2.length) + (32 * arg1.length) + 260] = mem[128]
        mem[(32 * arg2.length) + (32 * arg1.length) + 292 len floor32((32 * arg1.length) - 1)] = mem[160 len floor32((32 * arg1.length) - 1)]
        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = (32 * arg1.length) + 96
        mem[(64 * arg1.length) + (32 * arg2.length) + 260] = arg2.length
        if not Mask(251, 0, arg2.length):
            require ext_code.size(dbAddress)
            call dbAddress.0x101fc447 with:
                 gas gas_remaining - 50 wei
                args Array(len=arg1.length, data=mem[128], mem[(32 * arg2.length) + (32 * arg1.length) + 292 len (32 * arg2.length) + (32 * arg1.length)]), (32 * arg1.length) + 96
            require ext_call.success
            idx = 0
            while idx < arg1.length:
                require idx < arg1.length
                require idx < arg2.length
                _76 = mem[(32 * arg1.length) + (32 * idx) + 160]
                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + 140 len 20]
                mem[(32 * arg2.length) + (32 * arg1.length) + 192] = bool(_76)
                emit 0x7822fa26: mem[(32 * arg2.length) + (32 * arg1.length) + 160], bool(_76)
                idx = idx + 1
                continue 
        else:
            mem[(64 * arg1.length) + (32 * arg2.length) + 292] = mem[(32 * arg1.length) + 160]
            mem[(64 * arg1.length) + (32 * arg2.length) + 324 len floor32((32 * arg2.length) - 1)] = mem[(32 * arg1.length) + 192 len floor32((32 * arg2.length) - 1)]
            require ext_code.size(dbAddress)
            call dbAddress.0x101fc447 with:
                 gas gas_remaining - 50 wei
                args Array(len=arg1.length, data=mem[128], mem[(32 * arg2.length) + (32 * arg1.length) + 292 len (32 * arg2.length) + (32 * arg1.length)]), (32 * arg1.length) + 96
            require ext_call.success
            idx = 0
            while idx < arg1.length:
                require idx < arg1.length
                require idx < arg2.length
                _99 = mem[(32 * arg1.length) + (32 * idx) + 160]
                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + 140 len 20]
                mem[(32 * arg2.length) + (32 * arg1.length) + 192] = bool(_99)
                emit 0x7822fa26: mem[(32 * arg2.length) + (32 * arg1.length) + 160], bool(_99)
                idx = idx + 1
                continue 
}



}

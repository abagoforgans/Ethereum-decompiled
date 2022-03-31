contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = code.data[2779 len 20]
    stor1 = msg.sender
    return code.data[97 len 2670]
}



// =====================  Runtime code  =====================


address sub_edad1978Address;
array of address stor2;
array of uint256 stor18446744073709551618;

function sub_edad1978(?) {
    return sub_edad1978Address
}

function _fallback() payable {
  stop
}

function sub_fee36947(?) {
    if sub_edad1978Address != msg.sender:
        emit 0xc63df27d: -1, msg.sender, 0, 0
    else:
        require arg1 < 18446744073709551616
        stor2[arg1] = 0
        if arg2 < 2:
            emit 0xc63df27d: ('signextend', 7, ('signextend', 7, ('param', 'arg1'))), stor2[arg1], arg2 << 192, arg3
        else:
            require arg1 < 18446744073709551616
            call stor2[arg1] with:
               value stor1000[arg1] wei
                 gas 2300 * is_zero(value) wei
            emit 0xc63df27d: ('signextend', 7, ('signextend', 7, ('param', 'arg1'))), msg.sender, arg2 << 192, 0
}

function cancel(uint64 arg1) {
    if not arg1:
        emit 0xa2f9de8b: arg1 << 192, msg.sender, 0
    require arg1 < 18446744073709551616
    if stor2[arg1] != msg.sender:
        emit 0xa2f9de8b: arg1 << 192, msg.sender, 0
    require ext_code.size(sub_edad1978Address)
    call sub_edad1978Address.0x4c125e79 with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    if not ext_call.return_data[0]:
        emit 0xa2f9de8b: arg1 << 192, msg.sender, 0
    require arg1 < 18446744073709551616
    stor2[arg1] = 0
    call msg.sender with:
       value stor1000[arg1] - 125 * 10^13 wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
        emit 0xa2f9de8b: arg1 << 192, msg.sender, 1
    emit 0xa2f9de8b: arg1 << 192, msg.sender, 0
    revert 
}

function sub_26d2d1b3(?) payable {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if msg.value < 25 * 10^14:
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        mem[(32 * arg2.length) + 128] = -1
        mem[(32 * arg2.length) + 160] = msg.sender
        mem[(32 * arg2.length) + 192] = arg2.length
        mem[(32 * arg2.length) + 224] = 128
        mem[(32 * arg2.length) + 256] = arg2.length
        if Mask(251, 0, arg2.length):
            mem[(32 * arg2.length) + 288] = mem[128]
            mem[(32 * arg2.length) + 320 len floor32((32 * arg2.length) - 1)] = mem[160 len floor32((32 * arg2.length) - 1)]
        emit 0x59ac303f: -1, msg.sender, arg2.length, Array(len=arg2.length, data=mem[(32 * arg2.length) + 288 len 32 * arg2.length])
    else:
        mem[(32 * arg2.length) + 128] = 0x58487bee00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg2.length) + 132] = arg1
        mem[(32 * arg2.length) + 164] = this.address
        mem[(32 * arg2.length) + 196] = Mask(32, 224, sha3('response(uint64,uint64,bytes32)'))
        mem[(32 * arg2.length) + 228] = 0
        mem[(32 * arg2.length) + 260] = 160
        mem[(32 * arg2.length) + 292] = arg2.length
        if not Mask(251, 0, arg2.length):
            require ext_code.size(sub_edad1978Address)
            call sub_edad1978Address.0x58487bee with:
               value msg.value wei
                 gas gas_remaining - 9050 wei
                args 0, 0, 0, Mask(32, 224, sha3('response(uint64,uint64,bytes32)')), 0, 160, arg2.length, mem[(32 * arg2.length) + 324 len 32 * arg2.length]
        else:
            mem[(32 * arg2.length) + 324] = mem[128]
            mem[(32 * arg2.length) + 356 len floor32((32 * arg2.length) - 1)] = mem[160 len floor32((32 * arg2.length) - 1)]
            require ext_code.size(sub_edad1978Address)
            call sub_edad1978Address.0x58487bee with:
               value msg.value wei
                 gas gas_remaining - 9050 wei
                args arg1 << 248, address(this.address), Mask(32, 224, sha3('response(uint64,uint64,bytes32)')), 0, 160, arg2.length, mem[(32 * arg2.length) + 324 len 32 * arg2.length]
        require ext_call.success
        if ext_call.return_data[24 len 8]:
            require ext_call.return_data[24 len 8] < 18446744073709551616
            stor2[ext_call.return_data[24 len 8]] = msg.sender
            stor1000[ext_call.return_data[24 len 8]] = msg.value
            mem[(32 * arg2.length) + 128] = ('signextend', 7, ('signextend', 7, ('ext_call.return_data', 0, 32)))
            mem[(32 * arg2.length) + 160] = msg.sender
            mem[(32 * arg2.length) + 192] = arg2.length
            mem[(32 * arg2.length) + 224] = 128
            mem[(32 * arg2.length) + 256] = arg2.length
            if Mask(251, 0, arg2.length):
                mem[(32 * arg2.length) + 288] = mem[128]
                mem[(32 * arg2.length) + 320 len floor32((32 * arg2.length) - 1)] = mem[160 len floor32((32 * arg2.length) - 1)]
            emit 0x59ac303f: ('signextend', 7, ('signextend', 7, ('ext_call.return_data', 0, 32))), msg.sender, arg2.length, Array(len=arg2.length, data=mem[(32 * arg2.length) + 288 len 32 * arg2.length])
        else:
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            mem[(32 * arg2.length) + 128] = -2
            mem[(32 * arg2.length) + 160] = msg.sender
            mem[(32 * arg2.length) + 192] = arg2.length
            mem[(32 * arg2.length) + 224] = 128
            mem[(32 * arg2.length) + 256] = arg2.length
            if Mask(251, 0, arg2.length):
                mem[(32 * arg2.length) + 288] = mem[128]
                if 32 * arg2.length > 32:
                    mem[(32 * arg2.length) + 320] = mem[160]
                    mem[(32 * arg2.length) + 352 len floor32((32 * arg2.length) - 33)] = mem[192 len floor32((32 * arg2.length) - 33)]
            emit 0x59ac303f: -2, msg.sender, arg2.length, Array(len=arg2.length, data=mem[(32 * arg2.length) + 288 len 32 * arg2.length])
}



}

contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor1 = code.data[7883 len 20]
    stor0 = code.data[7851 len 20]
    return code.data[104 len 7735]
}



// =====================  Runtime code  =====================


address sub_44624e34Address;
address sub_c25343eaAddress;
mapping of struct sub_5fa80c12;
mapping of struct sub_91abe6b2;
mapping of struct sub_e0bff318;
mapping of struct vote;

function sub_44624e34(?) {
    return sub_44624e34Address
}

function sub_4e06810c(?) {
    return bool(sub_91abe6b2[arg1].field_0)
}

function sub_5fa80c12(?) {
    require uint8(sub_5fa80c12[arg1].field_768) <= 3
    mem[416] = sub_5fa80c12[arg1].field_0
    idx = 416
    s = 0
    while sub_5fa80c12[arg1].length + 416 > idx + 32:
        mem[idx + 32] = sub_5fa80c12[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=sub_5fa80c12[arg1].length, data=mem[416 len sub_5fa80c12[arg1].length + (floor32(sub_5fa80c12[arg1].length - 1) + -sub_5fa80c12[arg1].length + 32 % 32)]), 
           sub_5fa80c12[arg1].field_512,
           uint8(sub_5fa80c12[arg1].field_768),
           sub_5fa80c12[arg1].field_1024,
           sub_5fa80c12[arg1].field_1280,
           sub_5fa80c12[arg1].field_1536,
           sub_5fa80c12[arg1].field_1792,
           uint64(sub_5fa80c12[arg1].field_2048),
           uint64(sub_5fa80c12[arg1].field_2048)
}

function sub_91abe6b2(?) {
    require uint8(sub_91abe6b2[arg1].field_512) <= 3
    return sub_91abe6b2[arg1].field_0, 
           sub_91abe6b2[arg1].field_256,
           uint8(sub_91abe6b2[arg1].field_512),
           sub_91abe6b2[arg1].field_768,
           sub_91abe6b2[arg1].field_1024,
           bool(uint8(sub_91abe6b2[arg1].field_1280))
}

function vote(bytes32 arg1) {
    require uint8(vote[arg1].field_256) <= 3
    return vote[arg1].field_0, uint8(vote[arg1].field_256)
}

function sub_c25343ea(?) {
    return sub_c25343eaAddress
}

function sub_e0bff318(?) {
    mem[256] = sub_e0bff318[arg1].field_0
    idx = 256
    s = 0
    while sub_e0bff318[arg1].length + 256 > idx + 32:
        mem[idx + 32] = sub_e0bff318[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[sub_e0bff318[arg1].length + (floor32(sub_e0bff318[arg1].length - 1) + -sub_e0bff318[arg1].length + 32 % 32) + 256] = sub_e0bff318[arg1][2].length
    mem[sub_e0bff318[arg1].length + (floor32(sub_e0bff318[arg1].length - 1) + -sub_e0bff318[arg1].length + 32 % 32) + 288] = sub_e0bff318[arg1][2].field_0
    idx = sub_e0bff318[arg1].length + (floor32(sub_e0bff318[arg1].length - 1) + -sub_e0bff318[arg1].length + 32 % 32) + 288
    s = 0
    while sub_e0bff318[arg1].length + (floor32(sub_e0bff318[arg1].length - 1) + -sub_e0bff318[arg1].length + 32 % 32) + sub_e0bff318[arg1][2].length + 288 > idx + 32:
        mem[idx + 32] = sub_e0bff318[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=sub_e0bff318[arg1].length, data=mem[256 len sub_e0bff318[arg1].length + (floor32(sub_e0bff318[arg1].length - 1) + -sub_e0bff318[arg1].length + 32 % 32) + sub_e0bff318[arg1][2].length + (floor32(sub_e0bff318[arg1][2].length - 1) + -sub_e0bff318[arg1][2].length + 32 % 32) + 32]), 
           address(sub_e0bff318[arg1].field_256),
           sub_e0bff318[arg1].length + (floor32(sub_e0bff318[arg1].length - 1) + -sub_e0bff318[arg1].length + 32 % 32) + 160,
           sub_e0bff318[arg1].field_768
}

function _fallback() payable {
    revert
}

function sub_410e8473(?) {
    return sha3(arg1, arg2)
}

function sub_a456bf62(?) {
    return sha3(arg1, arg2)
}

function sub_644fa376(?) {
    require ext_code.size(sub_c25343eaAddress)
    call sub_c25343eaAddress.0xc359febb with:
         gas gas_remaining - 50 wei
        args arg1, arg2
    require ext_call.success
}

function sub_411ac3b9(?) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = 0x9e3ac9af00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg2.length) + 132] = arg1
    mem[ceil32(arg2.length) + 164] = 64
    mem[ceil32(arg2.length) + 196] = arg2.length
    if arg2.length:
        mem[ceil32(arg2.length) + 228] = mem[128]
        mem[ceil32(arg2.length) + 260 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
    require ext_code.size(sub_c25343eaAddress)
    call sub_c25343eaAddress.0x9e3ac9af with:
         gas gas_remaining - 50 wei
        args arg1, Array(len=arg2.length, data=mem[ceil32(arg2.length) + 228 len arg2.length])
    require ext_call.success
}

function sub_0a2b2943(?) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = 0x1948a08b00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg2.length) + 132] = arg1
    mem[ceil32(arg2.length) + 164] = 64
    mem[ceil32(arg2.length) + 196] = arg2.length
    if arg2.length:
        mem[ceil32(arg2.length) + 228] = mem[128]
        mem[ceil32(arg2.length) + 260 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
    require ext_code.size(sub_c25343eaAddress)
    call sub_c25343eaAddress.0x1948a08b with:
         gas gas_remaining - 50 wei
        args arg1, Array(len=arg2.length, data=mem[ceil32(arg2.length) + 228 len arg2.length])
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_69ff3388(?) {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128] = 0x1948a08b00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + 132] = sha3(arg1, arg2)
    mem[ceil32(arg3.length) + 164] = 64
    mem[ceil32(arg3.length) + 196] = arg3.length
    if arg3.length:
        mem[ceil32(arg3.length) + 228] = mem[128]
        mem[ceil32(arg3.length) + 260 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
    require ext_code.size(sub_c25343eaAddress)
    call sub_c25343eaAddress.0x1948a08b with:
         gas gas_remaining - 50 wei
        args sha3(arg1, arg2), Array(len=arg3.length, data=mem[ceil32(arg3.length) + 228 len arg3.length])
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_650d38cc(?) {
    require ext_code.size(sub_44624e34Address)
    call sub_44624e34Address.0x39bc5a53 with:
         gas gas_remaining - 50 wei
        args tx.origin
    require ext_call.success
    if ext_call.return_data[0]:
        if uint64(sub_5fa80c12[arg1].field_2048):
            if 1 == not uint64(sub_5fa80c12[arg1].field_2112):
                if sub_5fa80c12[arg1].field_1024 <= 0:
                    sub_e0bff318[arg1][stor2[arg1].field_512][].field_0 = Array(len=arg2.length, data=arg2[all])
                    address(sub_e0bff318[arg1][stor2[arg1].field_512].field_256) = arg3
                    sub_e0bff318[arg1][stor2[arg1].field_512][2][].field_0 = Array(len=arg4.length, data=arg4[all])
                    sub_e0bff318[arg1][stor2[arg1].field_512].field_768 = 0
                    sub_5fa80c12[arg1].field_512++
                    emit 0x233e3b80: 'ConfirmExecution'
}

function sub_1b81f9f5(?) {
    if sub_5fa80c12[arg1].field_256:
        mem[160] = sub_5fa80c12[arg1][1].field_0
        idx = 160
        s = 0
        while (32 * sub_5fa80c12[arg1].field_256) + 128 > idx:
            mem[idx + 32] = sub_5fa80c12[arg1][s + 1].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * sub_5fa80c12[arg1].field_256) + 160] = 32
    mem[(32 * sub_5fa80c12[arg1].field_256) + 192] = sub_5fa80c12[arg1].field_256
    if Mask(251, 0, sub_5fa80c12[arg1].field_256):
        mem[(32 * sub_5fa80c12[arg1].field_256) + 224] = mem[160]
        mem[(32 * sub_5fa80c12[arg1].field_256) + 256 len floor32((32 * sub_5fa80c12[arg1].field_256) - 1)] = mem[192 len floor32((32 * sub_5fa80c12[arg1].field_256) - 1)]
    return Array(len=sub_5fa80c12[arg1].field_256, data=mem[(32 * sub_5fa80c12[arg1].field_256) + 224 len 32 * sub_5fa80c12[arg1].field_256]), 
}

function sub_f161e40f(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = 0xa22541c000000000000000000000000000000000000000000000000000000000
    mem[(32 * arg2.length) + (32 * arg1.length) + 164] = 64
    mem[(32 * arg2.length) + (32 * arg1.length) + 228] = arg1.length
    if not Mask(251, 0, arg1.length):
        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = (32 * arg1.length) + 96
        mem[(64 * arg1.length) + (32 * arg2.length) + 260] = arg2.length
        if Mask(251, 0, arg2.length):
            mem[(64 * arg1.length) + (32 * arg2.length) + 292] = mem[(32 * arg1.length) + 160]
            mem[(64 * arg1.length) + (32 * arg2.length) + 324 len floor32((32 * arg2.length) - 1)] = mem[(32 * arg1.length) + 192 len floor32((32 * arg2.length) - 1)]
        if ext_code.size(sub_c25343eaAddress):
            call sub_c25343eaAddress.0xa22541c0 with:
                 gas gas_remaining - 50 wei
                args Array(len=arg1.length, data=mem[(32 * arg2.length) + (32 * arg1.length) + 260 len (32 * arg2.length) + (32 * arg1.length) + 32]), (32 * arg1.length) + 96
            if ext_call.success:
    else:
        mem[(32 * arg2.length) + (32 * arg1.length) + 260] = mem[128]
        mem[(32 * arg2.length) + (32 * arg1.length) + 292 len floor32((32 * arg1.length) - 1)] = mem[160 len floor32((32 * arg1.length) - 1)]
        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = (32 * arg1.length) + 96
        mem[(64 * arg1.length) + (32 * arg2.length) + 260] = arg2.length
        if Mask(251, 0, arg2.length):
            mem[(64 * arg1.length) + (32 * arg2.length) + 292] = mem[(32 * arg1.length) + 160]
            mem[(64 * arg1.length) + (32 * arg2.length) + 324 len floor32((32 * arg2.length) - 1)] = mem[(32 * arg1.length) + 192 len floor32((32 * arg2.length) - 1)]
        if ext_code.size(sub_c25343eaAddress):
            call sub_c25343eaAddress.0xa22541c0 with:
                 gas gas_remaining - 50 wei
                args Array(len=arg1.length, data=mem[128], mem[(32 * arg2.length) + (32 * arg1.length) + 292 len (32 * arg2.length) + (32 * arg1.length)]), (32 * arg1.length) + 96
            if ext_call.success:
    revert
}

function sub_b19482f2(?) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + (32 * arg2.length) + 192] = 0
    mem[(32 * arg3.length) + (32 * arg2.length) + 164] = tx.origin
    require ext_code.size(sub_44624e34Address)
    call sub_44624e34Address.0x39bc5a53 with:
         gas gas_remaining - 50 wei
        args tx.origin
    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
    require ext_call.success
    if ext_call.return_data[0]:
        if uint64(sub_5fa80c12[arg1].field_2048):
            if 1 == not uint64(sub_5fa80c12[arg1].field_2112):
                if arg2.length == arg3.length:
                    s = 0
                    idx = 0
                    while idx < arg2.length:
                        require idx < arg2.length
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 3
                        if not sub_91abe6b2[mem[(32 * idx) + 128]].field_0:
                            s = s
                            idx = idx + 1
                            continue 
                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = arg1
                        mem[(32 * arg3.length) + (32 * arg2.length) + 192] = sub_5fa80c12[arg1].field_1024
                        require idx < arg2.length
                        vote[arg1][stor2[arg1].field_1024].field_0 = mem[(32 * idx) + 128]
                        require idx < arg3.length
                        _48 = mem[(32 * idx) + (32 * arg2.length) + 160]
                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 0xc359febb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg3.length) + (32 * arg2.length) + 164] = sha3(arg1, sub_5fa80c12[arg1].field_1024)
                        mem[(32 * arg3.length) + (32 * arg2.length) + 196] = _48
                        require ext_code.size(sub_c25343eaAddress)
                        call sub_c25343eaAddress.0xc359febb with:
                             gas gas_remaining - 50 wei
                            args sha3(arg1, sub_5fa80c12[arg1].field_1024), _48
                        require ext_call.success
                        mem[0] = arg1
                        mem[32] = 2
                        sub_5fa80c12[arg1].field_1024++
                        s = sha3(arg1, sub_5fa80c12[arg1].field_1024)
                        idx = idx + 1
                        continue 
                    emit 0x233e3b80: 'ConfirmExecution'
}

function sub_e6bb27ec(?) {
    mem[128 len arg4.length] = arg4[all]
    require ext_code.size(sub_44624e34Address)
    call sub_44624e34Address.0x39bc5a53 with:
         gas gas_remaining - 50 wei
        args tx.origin
    require ext_call.success
    if ext_call.return_data[0]:
        if uint64(sub_5fa80c12[arg1].field_2048):
            if 1 == not uint64(sub_5fa80c12[arg1].field_2112):
                if vote[arg2].field_0:
                    require uint8(vote[arg2].field_256) <= 3
                    if not uint8(vote[arg2].field_256):
                        require arg3 <= 3
                        if arg3:
                            mem[ceil32(arg4.length) + 128] = 0x9e3ac9af00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(arg4.length) + 132] = arg2
                            mem[ceil32(arg4.length) + 164] = 64
                            mem[ceil32(arg4.length) + 196] = arg4.length
                            if arg4.length:
                                mem[ceil32(arg4.length) + 228] = mem[128]
                                mem[ceil32(arg4.length) + 260 len floor32(arg4.length - 1)] = mem[160 len floor32(arg4.length - 1)]
                            require ext_code.size(sub_c25343eaAddress)
                            call sub_c25343eaAddress.0x9e3ac9af with:
                                 gas gas_remaining - 50 wei
                                args arg2, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 228 len arg4.length])
                            require ext_call.success
                            require uint8(sub_91abe6b2[stor5[arg2].field_0].field_512) <= 3
                            if uint8(sub_91abe6b2[stor5[arg2].field_0].field_512) == 1:
                                sub_5fa80c12[arg1].field_1536 -= sub_91abe6b2[stor5[arg2].field_0].field_768
                            else:
                                require uint8(sub_91abe6b2[stor5[arg2].field_0].field_512) <= 3
                                if uint8(sub_91abe6b2[stor5[arg2].field_0].field_512) == 2:
                                    sub_5fa80c12[arg1].field_1536 += sub_91abe6b2[stor5[arg2].field_0].field_768
                            if not sub_91abe6b2[stor5[arg2].field_0].field_1024:
                                sub_5fa80c12[arg1].field_1280--
                            require arg3 <= 3
                            if arg3 == 1:
                                sub_5fa80c12[arg1].field_1536 += sub_91abe6b2[stor5[arg2].field_0].field_768
                            else:
                                require arg3 <= 3
                                if arg3 == 2:
                                    sub_5fa80c12[arg1].field_1536 -= sub_91abe6b2[stor5[arg2].field_0].field_768
                            require arg3 <= 3
                            uint8(sub_91abe6b2[stor5[arg2].field_0].field_512) = arg3
                            sub_91abe6b2[stor5[arg2].field_0].field_1024++
                            uint8(vote[arg2].field_256) = arg3
                            if sub_5fa80c12[arg1].field_1536 < 0:
                                if sub_5fa80c12[arg1].field_1792 <= -sub_5fa80c12[arg1].field_1536:
                                    if not sub_5fa80c12[arg1].field_1280:
                                        if sub_5fa80c12[arg1].field_1536 < 0:
                                            uint8(sub_5fa80c12[arg1].field_768) = 2
                                        else:
                                            uint8(sub_5fa80c12[arg1].field_768) = 1
                                        uint64(sub_5fa80c12[arg1].field_2112) = uint64(block.timestamp)
                            else:
                                if sub_5fa80c12[arg1].field_1792 <= sub_5fa80c12[arg1].field_1536:
                                    if not sub_5fa80c12[arg1].field_1280:
                                        if sub_5fa80c12[arg1].field_1536 < 0:
                                            uint8(sub_5fa80c12[arg1].field_768) = 2
                                        else:
                                            uint8(sub_5fa80c12[arg1].field_768) = 1
                                        uint64(sub_5fa80c12[arg1].field_2112) = uint64(block.timestamp)
                            emit 0x233e3b80: 'ConfirmExecution'
}

function sub_debfc35b(?) {
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = arg4.length
    mem[(32 * arg3.length) + (32 * arg2.length) + 192 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[64] = (32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224
    mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192] = arg5.length
    mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    mem[(32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 256] = 0
    mem[(32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 228] = tx.origin
    require ext_code.size(sub_44624e34Address)
    call sub_44624e34Address.0x39bc5a53 with:
         gas gas_remaining - 50 wei
        args tx.origin
    mem[(32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224] = ext_call.return_data[0]
    require ext_call.success
    if ext_call.return_data[0]:
        if 1 == bool(uint64(sub_5fa80c12[arg1].field_2048)):
            mem[0] = arg1
            mem[32] = 2
            if sub_5fa80c12[arg1].field_1024 <= 0:
                if arg2.length == arg3.length:
                    if arg2.length == arg4.length:
                        s = 0
                        idx = 0
                        while idx < arg2.length:
                            require idx < mem[96]
                            _61 = mem[(32 * idx) + 128]
                            mem[mem[64]] = arg1
                            mem[mem[64] + 32] = _61
                            mem[0] = sha3(arg1, _61)
                            mem[32] = 3
                            if not sub_91abe6b2[arg1][_61].field_0:
                                _66 = mem[64]
                                mem[64] = mem[64] + 192
                                require idx < mem[96]
                                mem[_66] = mem[(32 * idx) + 128]
                                require idx < mem[(32 * arg2.length) + 128]
                                mem[_66 + 32] = mem[(32 * arg2.length) + (32 * idx) + 160]
                                mem[_66 + 64] = 0
                                require idx < mem[(32 * arg3.length) + (32 * arg2.length) + 160]
                                mem[_66 + 96] = mem[(32 * idx) + (32 * arg3.length) + (32 * arg2.length) + 192]
                                mem[_66 + 128] = 0
                                require idx < mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]
                                mem[_66 + 160] = bool(mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * idx) + 224])
                                mem[0] = sha3(arg1, _61)
                                mem[32] = 3
                                sub_91abe6b2[arg1][_61].field_0 = mem[_66]
                                sub_91abe6b2[arg1][_61].field_256 = mem[_66 + 32]
                                uint8(sub_91abe6b2[arg1][_61].field_512) = 0
                                sub_91abe6b2[arg1][_61].field_768 % 1 = 0
                                sub_91abe6b2[arg1][_61].field_768 = mem[_66 + 96]
                                sub_91abe6b2[arg1][_61].field_1024 = 0
                                uint8(sub_91abe6b2[arg1][_61].field_1280) = uint8(bool(mem[_66 + 160]))
                                mem[32] = 2
                                sub_5fa80c12[arg1].field_256++
                                if not sub_5fa80c12[arg1].field_256 <= sub_5fa80c12[arg1].field_256 + 1:
                                    s = sub_5fa80c12[arg1].field_256 + sha3(sha3(arg1, 2) + 1) + 1
                                    while sha3(sha3(arg1, 2) + 1) + sub_5fa80c12[arg1].field_256 > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                mem[0] = sha3(arg1, 2) + 1
                                stor[sub_5fa80c12[arg1].field_256 + ('array', 1, ('map', ('param', 'arg1'), ('name', 'sub_5fa80c12', 2)))].field_0 = sha3(arg1, _61)
                                require idx < mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192]
                                if mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224]:
                                    mem[0] = arg1
                                    mem[32] = 2
                                    sub_5fa80c12[arg1].field_1280++
                            s = sha3(arg1, _61)
                            idx = idx + 1
                            continue 
                        sub_5fa80c12[arg1].field_1792 = arg6
                        emit 0x233e3b80: 'ConfirmExecution'
}

function sub_e198fba2(?) {
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + ceil32(arg2.length) + 160] = arg4.length
    mem[(32 * arg3.length) + ceil32(arg2.length) + 192 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + (32 * arg3.length) + ceil32(arg2.length) + 192] = arg5.length
    mem[(32 * arg4.length) + (32 * arg3.length) + ceil32(arg2.length) + 224 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    mem[64] = (32 * arg6.length) + (32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + ceil32(arg2.length) + 256
    mem[(32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + ceil32(arg2.length) + 224] = arg6.length
    mem[(32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + ceil32(arg2.length) + 256 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    require ext_code.size(sub_44624e34Address)
    call sub_44624e34Address.0x39bc5a53 with:
         gas gas_remaining - 50 wei
        args tx.origin
    require ext_call.success
    if ext_call.return_data[0]:
        if not uint64(sub_5fa80c12[arg1].field_2048):
            if arg3.length == arg4.length:
                if arg3.length == arg5.length:
                    sub_5fa80c12[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
                    uint64(sub_5fa80c12[arg1].field_2048) = uint64(block.timestamp)
                    mem[(32 * arg6.length) + (32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + ceil32(arg2.length) + 288] = 0
                    mem[(32 * arg6.length) + (32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + ceil32(arg2.length) + 260] = tx.origin
                    require ext_code.size(sub_44624e34Address)
                    call sub_44624e34Address.0x39bc5a53 with:
                         gas gas_remaining - 50 wei
                        args tx.origin
                    mem[(32 * arg6.length) + (32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + ceil32(arg2.length) + 256] = ext_call.return_data[0]
                    require ext_call.success
                    if not ext_call.return_data[0]:
                        if not arg3.length:
                            emit 0x233e3b80: 'ConfirmExecution'
                    else:
                        if bool(uint64(sub_5fa80c12[arg1].field_2048)) != 1:
                            if not arg3.length:
                                emit 0x233e3b80: 'ConfirmExecution'
                        else:
                            mem[0] = arg1
                            mem[32] = 2
                            if sub_5fa80c12[arg1].field_1024 > 0:
                                if not arg3.length:
                                    emit 0x233e3b80: 'ConfirmExecution'
                            else:
                                if arg3.length != arg4.length:
                                    if not arg3.length:
                                        emit 0x233e3b80: 'ConfirmExecution'
                                else:
                                    if arg3.length != arg5.length:
                                        if not arg3.length:
                                            emit 0x233e3b80: 'ConfirmExecution'
                                    else:
                                        s = 0
                                        idx = 0
                                        while idx < arg3.length:
                                            require idx < mem[ceil32(arg2.length) + 128]
                                            _675 = mem[(32 * idx) + ceil32(arg2.length) + 160]
                                            mem[mem[64]] = arg1
                                            mem[mem[64] + 32] = _675
                                            mem[0] = sha3(arg1, _675)
                                            mem[32] = 3
                                            if not sub_91abe6b2[arg1][_675].field_0:
                                                _688 = mem[64]
                                                mem[64] = mem[64] + 192
                                                require idx < mem[ceil32(arg2.length) + 128]
                                                mem[_688] = mem[(32 * idx) + ceil32(arg2.length) + 160]
                                                require idx < mem[(32 * arg3.length) + ceil32(arg2.length) + 160]
                                                mem[_688 + 32] = mem[(32 * arg3.length) + ceil32(arg2.length) + (32 * idx) + 192]
                                                mem[_688 + 64] = 0
                                                require idx < mem[(32 * arg4.length) + (32 * arg3.length) + ceil32(arg2.length) + 192]
                                                mem[_688 + 96] = mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + ceil32(arg2.length) + 224]
                                                mem[_688 + 128] = 0
                                                require idx < mem[(32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + ceil32(arg2.length) + 224]
                                                mem[_688 + 160] = bool(mem[(32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + ceil32(arg2.length) + (32 * idx) + 256])
                                                mem[0] = sha3(arg1, _675)
                                                mem[32] = 3
                                                sub_91abe6b2[arg1][_675].field_0 = mem[_688]
                                                sub_91abe6b2[arg1][_675].field_256 = mem[_688 + 32]
                                                uint8(sub_91abe6b2[arg1][_675].field_512) = 0
                                                sub_91abe6b2[arg1][_675].field_768 % 1 = 0
                                                sub_91abe6b2[arg1][_675].field_768 = mem[_688 + 96]
                                                sub_91abe6b2[arg1][_675].field_1024 = 0
                                                uint8(sub_91abe6b2[arg1][_675].field_1280) = uint8(bool(mem[_688 + 160]))
                                                mem[32] = 2
                                                sub_5fa80c12[arg1].field_256++
                                                if not sub_5fa80c12[arg1].field_256 <= sub_5fa80c12[arg1].field_256 + 1:
                                                    s = sub_5fa80c12[arg1].field_256 + sha3(sha3(arg1, 2) + 1) + 1
                                                    while sha3(sha3(arg1, 2) + 1) + sub_5fa80c12[arg1].field_256 > s:
                                                        stor[s] = 0
                                                        s = s + 1
                                                        continue 
                                                mem[0] = sha3(arg1, 2) + 1
                                                stor[sub_5fa80c12[arg1].field_256 + ('array', 1, ('map', ('param', 'arg1'), ('name', 'sub_5fa80c12', 2)))].field_0 = sha3(arg1, _675)
                                                require idx < mem[(32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + ceil32(arg2.length) + 224]
                                                if mem[(32 * idx) + (32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + ceil32(arg2.length) + 256]:
                                                    mem[0] = arg1
                                                    mem[32] = 2
                                                    sub_5fa80c12[arg1].field_1280++
                                            s = sha3(arg1, _675)
                                            idx = idx + 1
                                            continue 
                                        sub_5fa80c12[arg1].field_1792 = arg7
                                        mem[mem[64]] = 'ConfirmExecution'
                                        emit 0x233e3b80: 'ConfirmExecution'
                                        if not mem[ceil32(arg2.length) + 128]:
                                            emit 0x233e3b80: 'ConfirmExecution'
}



}

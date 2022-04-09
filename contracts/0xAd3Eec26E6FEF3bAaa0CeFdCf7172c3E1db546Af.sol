contract main {


// =======================  Init code  ======================


address stor1;
uint256 stor2;

function _fallback() {
    stor1 = code.data[7309 len 20]
    require ext_code.size(code.data[7309 len 20])
    call code.data[7309 len 20].getTokenAddress() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor2 = ext_call.return_data[12 len 20] or Mask(96, 160, stor2)
    return code.data[215 len 7082]
}



// =====================  Runtime code  =====================


mapping of struct stor0;
address hashtagAddress;
array of uint256 stor2;
array of address stor3;

function hashtagToken() {
    return address(stor2.length)
}

function hashtag() {
    return hashtagAddress
}

function _fallback() payable {
    revert
}

function readDeal(string arg1, address arg2) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = address(arg2)
    mem[ceil32(arg1.length) + 148 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 148] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 148] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[0] = sha3(arg2, call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 148 len arg1.length % 32])
    require stor0[arg2][call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 148 len arg1.length % 32]].field_0 <= 4
    mem[ceil32(arg1.length) + 128] = stor0[arg2][call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 148 len arg1.length % 32]].field_0
    return mem[ceil32(arg1.length) + 128], stor0[mem[0]].field_256, stor0[mem[0]].field_512, stor0[mem[0]].field_768
}

function sub_f74c803b(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg3.length
    mem[ceil32(arg1.length) + 160 len arg3.length] = arg3[all]
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 160] = address(arg2)
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 180 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg3.length) + floor32(arg1.length) + 180] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg3.length) + floor32(arg1.length) + 180] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    require stor0[arg2][call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg3.length) + floor32(arg1.length) + 180 len arg1.length % 32]].field_0 <= 4
    require not stor0[arg2][call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg3.length) + floor32(arg1.length) + 180 len arg1.length % 32]].field_0
    if arg2 != msg.sender:
        require stor0[arg2][call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg3.length) + floor32(arg1.length) + 180 len arg1.length % 32]].field_768 == msg.sender
    else:
        require stor0[arg2][call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg3.length) + floor32(arg1.length) + 180 len arg1.length % 32]].field_768
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 160] = address(arg2)
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 180 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg3.length) + floor32(arg1.length) + 180] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg3.length) + floor32(arg1.length) + 180] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    stor0[arg2][call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg3.length) + floor32(arg1.length) + 180 len arg1.length % 32]].field_0 = 2
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 160] = arg2
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 224] = 2
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 192] = 128
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 288] = arg1.length
    if not arg1.length:
        mem[ceil32(arg1.length) + ceil32(arg3.length) + 256] = arg1.length + 160
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + 320] = arg3.length
        if not arg3.length:
            if not arg3.length % 32:
                emit 0xae595888: address(arg2), Array(len=arg1.length, data=mem[ceil32(arg1.length) + ceil32(arg3.length) + 320 len arg3.length + arg1.length + 32]), 2, arg1.length + 160
            else:
                mem[floor32(arg3.length) + arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + 352] = mem[floor32(arg3.length) + arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + -(arg3.length % 32) + 384 len arg3.length % 32]
                emit 0xae595888: address(arg2), Array(len=arg1.length, data=mem[ceil32(arg1.length) + ceil32(arg3.length) + 320 len floor32(arg3.length) + arg1.length + 64]), 2, arg1.length + 160
        else:
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + 352] = mem[ceil32(arg1.length) + 160]
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + 384 len floor32(arg3.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg3.length - 1)]
            if not arg3.length % 32:
                emit 0xae595888: address(arg2), Array(len=arg1.length, data=mem[ceil32(arg1.length) + ceil32(arg3.length) + 320 len arg3.length + arg1.length + 32]), 2, arg1.length + 160
            else:
                mem[floor32(arg3.length) + arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + 352] = mem[floor32(arg3.length) + arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + -(arg3.length % 32) + 384 len arg3.length % 32]
                emit 0xae595888: address(arg2), Array(len=arg1.length, data=mem[ceil32(arg1.length) + ceil32(arg3.length) + 320 len arg1.length + 32], mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg3.length) + arg1.length + 384 len floor32(arg3.length)]), 2, arg1.length + 160
    else:
        mem[ceil32(arg1.length) + ceil32(arg3.length) + 320] = mem[128]
        mem[ceil32(arg1.length) + ceil32(arg3.length) + 352 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
        mem[ceil32(arg1.length) + ceil32(arg3.length) + 256] = arg1.length + 160
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + 320] = arg3.length
        if arg3.length:
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + 352] = mem[ceil32(arg1.length) + 160]
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + 384 len floor32(arg3.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg3.length - 1)]
        if not arg3.length % 32:
            emit 0xae595888: address(arg2), Array(len=arg1.length, data=mem[128], mem[ceil32(arg1.length) + ceil32(arg3.length) + 352 len arg3.length + arg1.length]), 2, arg1.length + 160
        else:
            mem[floor32(arg3.length) + arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + 352] = mem[floor32(arg3.length) + arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + -(arg3.length % 32) + 384 len arg3.length % 32]
            emit 0xae595888: address(arg2), Array(len=arg1.length, data=mem[128], mem[ceil32(arg1.length) + ceil32(arg3.length) + 352 len floor32(arg3.length) + arg1.length + 32]), 2, arg1.length + 160
}

function sub_876c170a(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg3.length
    mem[ceil32(arg1.length) + 160 len arg3.length] = arg3[all]
    require ext_code.size(hashtagAddress)
    call hashtagAddress.commission() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] / 2 <= arg2
    require ext_code.size(address(stor2.length))
    call address(stor2.length).0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, address(this.address), arg2
    require ext_call.success
    require ext_call.return_data[0]
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 160] = 0
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 320] = 0
    require ext_code.size(hashtagAddress)
    call hashtagAddress.commission() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 192] = ext_call.return_data[0]
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 224] = arg2
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 256] = 0
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 288] = address(msg.sender)
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 308 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg3.length) + floor32(arg1.length) + 308] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg3.length) + floor32(arg1.length) + 308] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    stor0[msg.sender][call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg3.length) + floor32(arg1.length) + 308 len arg1.length % 32]].field_0 = 0
    stor0[msg.sender][call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg3.length) + floor32(arg1.length) + 308 len arg1.length % 32]].field_256 = ext_call.return_data[0]
    stor0[msg.sender][call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg3.length) + floor32(arg1.length) + 308 len arg1.length % 32]].field_512 = arg2
    stor0[msg.sender][call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg3.length) + floor32(arg1.length) + 308 len arg1.length % 32]].field_768 = 0
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 288] = msg.sender
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 320] = 96
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 384] = arg1.length
    if not arg1.length:
        mem[ceil32(arg1.length) + ceil32(arg3.length) + 352] = arg1.length + 128
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + 416] = arg3.length
        if not arg3.length:
            if not arg3.length % 32:
                emit 0x972e893a: msg.sender, Array(len=arg1.length, data=mem[ceil32(arg1.length) + ceil32(arg3.length) + 416 len arg3.length + arg1.length + 32]), arg1.length + 128
            else:
                mem[floor32(arg3.length) + arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + 448] = mem[floor32(arg3.length) + arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + -(arg3.length % 32) + 480 len arg3.length % 32]
                emit 0x972e893a: msg.sender, Array(len=arg1.length, data=mem[ceil32(arg1.length) + ceil32(arg3.length) + 416 len floor32(arg3.length) + arg1.length + 64]), arg1.length + 128
        else:
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + 448] = mem[ceil32(arg1.length) + 160]
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + 480 len floor32(arg3.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg3.length - 1)]
            if not arg3.length % 32:
                emit 0x972e893a: msg.sender, Array(len=arg1.length, data=mem[ceil32(arg1.length) + ceil32(arg3.length) + 416 len arg3.length + arg1.length + 32]), arg1.length + 128
            else:
                mem[floor32(arg3.length) + arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + 448] = mem[floor32(arg3.length) + arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + -(arg3.length % 32) + 480 len arg3.length % 32]
                emit 0x972e893a: msg.sender, Array(len=arg1.length, data=mem[ceil32(arg1.length) + ceil32(arg3.length) + 416 len arg1.length + 32], mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg3.length) + arg1.length + 480 len floor32(arg3.length)]), arg1.length + 128
    else:
        mem[ceil32(arg1.length) + ceil32(arg3.length) + 416] = mem[128]
        mem[ceil32(arg1.length) + ceil32(arg3.length) + 448 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
        mem[ceil32(arg1.length) + ceil32(arg3.length) + 352] = arg1.length + 128
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + 416] = arg3.length
        if arg3.length:
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + 448] = mem[ceil32(arg1.length) + 160]
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + 480 len floor32(arg3.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg3.length - 1)]
        if not arg3.length % 32:
            emit 0x972e893a: msg.sender, Array(len=arg1.length, data=mem[128], mem[ceil32(arg1.length) + ceil32(arg3.length) + 448 len arg3.length + arg1.length]), arg1.length + 128
        else:
            mem[floor32(arg3.length) + arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + 448] = mem[floor32(arg3.length) + arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + -(arg3.length % 32) + 480 len arg3.length % 32]
            emit 0x972e893a: msg.sender, Array(len=arg1.length, data=mem[128], mem[ceil32(arg1.length) + ceil32(arg3.length) + 448 len floor32(arg3.length) + arg1.length + 32]), arg1.length + 128
}

function sub_caaba543(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg4.length
    mem[ceil32(arg1.length) + 160 len arg4.length] = arg4[all]
    mem[ceil32(arg1.length) + ceil32(arg4.length) + 160] = address(arg2)
    mem[ceil32(arg1.length) + ceil32(arg4.length) + 180 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg4.length) + floor32(arg1.length) + 180] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg4.length) + floor32(arg1.length) + 180] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    _54 = sha3(sha3(arg2, call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg4.length) + floor32(arg1.length) + 180 len arg1.length % 32]), 0)
    require ext_code.size(hashtagAddress)
    call hashtagAddress.getConflictResolver() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require address(ext_call.return_data[0]) == msg.sender
    require stor0[arg2][call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg4.length) + floor32(arg1.length) + 180 len arg1.length % 32]].field_0 <= 4
    require stor0[arg2][call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg4.length) + floor32(arg1.length) + 180 len arg1.length % 32]].field_0 == 2
    require ext_code.size(address(stor2.length))
    call address(stor2.length).0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg2), arg3
    require ext_call.success
    require ext_call.return_data[0]
    mem[ceil32(arg1.length) + ceil32(arg4.length) + 164] = stor0[arg2][call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg4.length) + floor32(arg1.length) + 180 len arg1.length % 32]].field_768
    mem[ceil32(arg1.length) + ceil32(arg4.length) + 196] = uint256(stor2[_54]) - arg3
    require ext_code.size(address(stor2.length))
    call address(stor2.length).0xa9059cbb with:
         gas gas_remaining - 710 wei
        args stor3[_54], uint256(stor2[_54]) - arg3
    require ext_call.success
    require ext_call.return_data[0]
    mem[ceil32(arg1.length) + ceil32(arg4.length) + 160] = address(arg2)
    mem[ceil32(arg1.length) + ceil32(arg4.length) + 180 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg4.length) + floor32(arg1.length) + 180] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg4.length) + floor32(arg1.length) + 180] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    stor0[arg2][call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg4.length) + floor32(arg1.length) + 180 len arg1.length % 32]].field_0 = 3
    mem[ceil32(arg1.length) + ceil32(arg4.length) + 160] = arg2
    mem[ceil32(arg1.length) + ceil32(arg4.length) + 224] = 3
    mem[ceil32(arg1.length) + ceil32(arg4.length) + 192] = 128
    mem[ceil32(arg1.length) + ceil32(arg4.length) + 288] = arg1.length
    if not arg1.length:
        mem[ceil32(arg1.length) + ceil32(arg4.length) + 256] = arg1.length + 160
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg4.length) + 320] = arg4.length
        if not arg4.length:
            if not arg4.length % 32:
                emit 0xae595888: address(arg2), Array(len=arg1.length, data=mem[ceil32(arg1.length) + ceil32(arg4.length) + 320 len arg4.length + arg1.length + 32]), 3, arg1.length + 160
            else:
                mem[floor32(arg4.length) + arg1.length + ceil32(arg1.length) + ceil32(arg4.length) + 352] = mem[floor32(arg4.length) + arg1.length + ceil32(arg1.length) + ceil32(arg4.length) + -(arg4.length % 32) + 384 len arg4.length % 32]
                emit 0xae595888: address(arg2), Array(len=arg1.length, data=mem[ceil32(arg1.length) + ceil32(arg4.length) + 320 len floor32(arg4.length) + arg1.length + 64]), 3, arg1.length + 160
        else:
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg4.length) + 352] = mem[ceil32(arg1.length) + 160]
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg4.length) + 384 len floor32(arg4.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg4.length - 1)]
            if not arg4.length % 32:
                emit 0xae595888: address(arg2), Array(len=arg1.length, data=mem[ceil32(arg1.length) + ceil32(arg4.length) + 320 len arg4.length + arg1.length + 32]), 3, arg1.length + 160
            else:
                mem[floor32(arg4.length) + arg1.length + ceil32(arg1.length) + ceil32(arg4.length) + 352] = mem[floor32(arg4.length) + arg1.length + ceil32(arg1.length) + ceil32(arg4.length) + -(arg4.length % 32) + 384 len arg4.length % 32]
                emit 0xae595888: address(arg2), Array(len=arg1.length, data=mem[ceil32(arg1.length) + ceil32(arg4.length) + 320 len arg1.length + 32], mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg4.length) + arg1.length + 384 len floor32(arg4.length)]), 3, arg1.length + 160
    else:
        mem[ceil32(arg1.length) + ceil32(arg4.length) + 320] = mem[128]
        mem[ceil32(arg1.length) + ceil32(arg4.length) + 352 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
        mem[ceil32(arg1.length) + ceil32(arg4.length) + 256] = arg1.length + 160
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg4.length) + 320] = arg4.length
        if arg4.length:
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg4.length) + 352] = mem[ceil32(arg1.length) + 160]
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg4.length) + 384 len floor32(arg4.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg4.length - 1)]
        if not arg4.length % 32:
            emit 0xae595888: address(arg2), Array(len=arg1.length, data=mem[128], mem[ceil32(arg1.length) + ceil32(arg4.length) + 352 len arg4.length + arg1.length]), 3, arg1.length + 160
        else:
            mem[floor32(arg4.length) + arg1.length + ceil32(arg1.length) + ceil32(arg4.length) + 352] = mem[floor32(arg4.length) + arg1.length + ceil32(arg1.length) + ceil32(arg4.length) + -(arg4.length % 32) + 384 len arg4.length % 32]
            emit 0xae595888: address(arg2), Array(len=arg1.length, data=mem[128], mem[ceil32(arg1.length) + ceil32(arg4.length) + 352 len floor32(arg4.length) + arg1.length + 32]), 3, arg1.length + 160
}

function sub_b5c31886(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = address(msg.sender)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 180 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 180] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 180] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    require stor0[msg.sender][call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 180 len arg1.length % 32]].field_0 <= 4
    require not stor0[msg.sender][call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 180 len arg1.length % 32]].field_0
    require ext_code.size(hashtagAddress)
    call hashtagAddress.getConflictResolver() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(address(stor2.length))
    call address(stor2.length).0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(ext_call.return_data[0]), stor0[msg.sender][call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 180 len arg1.length % 32]].field_256
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(address(stor2.length))
    call address(stor2.length).0xa9059cbb with:
         gas gas_remaining - 710 wei
        args stor0[msg.sender][call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 180 len arg1.length % 32]].field_768, (2 * stor0[msg.sender][call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 180 len arg1.length % 32]].field_512) - stor0[msg.sender][call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 180 len arg1.length % 32]].field_256
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(hashtagAddress)
    call hashtagAddress.mintRep(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args stor0[msg.sender][call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 180 len arg1.length % 32]].field_768, 5
    require ext_call.success
    require ext_code.size(hashtagAddress)
    call hashtagAddress.mintRep(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, 5
    require ext_call.success
    stor0[msg.sender][call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 180 len arg1.length % 32]].field_0 = 1
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = msg.sender
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] = 1
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = 128
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 288] = arg1.length
    if not arg1.length:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 256] = arg1.length + 160
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 320] = arg2.length
        if not arg2.length:
            if not arg2.length % 32:
                emit 0xae595888: msg.sender, Array(len=arg1.length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 320 len arg2.length + arg1.length + 32]), 1, arg1.length + 160
            else:
                mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 352] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 384 len arg2.length % 32]
                emit 0xae595888: msg.sender, Array(len=arg1.length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 320 len floor32(arg2.length) + arg1.length + 64]), 1, arg1.length + 160
        else:
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 352] = mem[ceil32(arg1.length) + 160]
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 384 len floor32(arg2.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg2.length - 1)]
            if not arg2.length % 32:
                emit 0xae595888: msg.sender, Array(len=arg1.length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 320 len arg2.length + arg1.length + 32]), 1, arg1.length + 160
            else:
                mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 352] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 384 len arg2.length % 32]
                emit 0xae595888: msg.sender, Array(len=arg1.length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 320 len arg1.length + 32], mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 384 len floor32(arg2.length)]), 1, arg1.length + 160
    else:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 320] = mem[128]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 256] = arg1.length + 160
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 320] = arg2.length
        if arg2.length:
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 352] = mem[ceil32(arg1.length) + 160]
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 384 len floor32(arg2.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg2.length - 1)]
        if not arg2.length % 32:
            emit 0xae595888: msg.sender, Array(len=arg1.length, data=mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len arg2.length + arg1.length]), 1, arg1.length + 160
        else:
            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 352] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 384 len arg2.length % 32]
            emit 0xae595888: msg.sender, Array(len=arg1.length, data=mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len floor32(arg2.length) + arg1.length + 32]), 1, arg1.length + 160
}

function sub_0d880085(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = address(msg.sender)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 180 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + -(arg1.length % 32) + 212 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    _44 = sha3(sha3(msg.sender, call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 180 len arg1.length % 32]), 0)
    if stor0[msg.sender][call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 180 len arg1.length % 32]].field_512 > 0:
        if not stor0[msg.sender][call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 180 len arg1.length % 32]].field_768:
            require stor0[msg.sender][call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 180 len arg1.length % 32]].field_0 <= 4
            if not stor0[msg.sender][call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 180 len arg1.length % 32]].field_0:
                mem[ceil32(arg1.length) + ceil32(arg2.length) + 164] = msg.sender
                mem[ceil32(arg1.length) + ceil32(arg2.length) + 196] = uint256(stor2[_44])
                require ext_code.size(address(stor2.length))
                call address(stor2.length).0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, uint256(stor2[_44])
                require ext_call.success
                require ext_call.return_data[0]
                mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = address(msg.sender)
                mem[ceil32(arg1.length) + ceil32(arg2.length) + 180 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 180] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 180] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
                stor0[msg.sender][call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 180 len arg1.length % 32]].field_0 = 4
                mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = msg.sender
                mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] = 4
                mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = 128
                mem[ceil32(arg1.length) + ceil32(arg2.length) + 288] = arg1.length
                if not arg1.length:
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + 256] = arg1.length + 160
                    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 320] = arg2.length
                    if not arg2.length:
                        if not arg2.length % 32:
                            emit 0xae595888: msg.sender, Array(len=arg1.length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 320 len arg2.length + arg1.length + 32]), 4, arg1.length + 160
                        else:
                            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 352] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 384 len arg2.length % 32]
                            emit 0xae595888: msg.sender, Array(len=arg1.length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 320 len floor32(arg2.length) + arg1.length + 64]), 4, arg1.length + 160
                    else:
                        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 352] = mem[ceil32(arg1.length) + 160]
                        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 384 len floor32(arg2.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg2.length - 1)]
                        if not arg2.length % 32:
                            emit 0xae595888: msg.sender, Array(len=arg1.length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 320 len arg2.length + arg1.length + 32]), 4, arg1.length + 160
                        else:
                            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 352] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 384 len arg2.length % 32]
                            emit 0xae595888: msg.sender, Array(len=arg1.length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 320 len arg1.length + 32], mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 384 len floor32(arg2.length)]), 4, arg1.length + 160
                else:
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + 320] = mem[128]
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + 256] = arg1.length + 160
                    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 320] = arg2.length
                    if arg2.length:
                        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 352] = mem[ceil32(arg1.length) + 160]
                        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 384 len floor32(arg2.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg2.length - 1)]
                    if not arg2.length % 32:
                        emit 0xae595888: msg.sender, Array(len=arg1.length, data=mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len arg2.length + arg1.length]), 4, arg1.length + 160
                    else:
                        mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 352] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 384 len arg2.length % 32]
                        emit 0xae595888: msg.sender, Array(len=arg1.length, data=mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len floor32(arg2.length) + arg1.length + 32]), 4, arg1.length + 160
}

function sub_d9df5e9c(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg3.length
    mem[ceil32(arg1.length) + 160 len arg3.length] = arg3[all]
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 160] = address(arg2)
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 180 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg3.length) + floor32(arg1.length) + 180] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg3.length) + floor32(arg1.length) + 180] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    _34 = sha3(arg2, call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg3.length) + floor32(arg1.length) + 180 len arg1.length % 32])
    _35 = sha3(sha3(arg2, call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg3.length) + floor32(arg1.length) + 180 len arg1.length % 32]), 0)
    require not stor0[arg2][call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg3.length) + floor32(arg1.length) + 180 len arg1.length % 32]].field_768
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 228] = stor0[arg2][call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg3.length) + floor32(arg1.length) + 180 len arg1.length % 32]].field_512
    require ext_code.size(address(stor2.length))
    call address(stor2.length).0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, address(this.address), uint256(stor2[_35])
    require ext_call.success
    require ext_call.return_data[0]
    stor0[_34].field_768 = msg.sender
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 160] = msg.sender
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 192] = arg2
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 224] = 128
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 288] = arg1.length
    if not arg1.length:
        mem[ceil32(arg1.length) + ceil32(arg3.length) + 256] = arg1.length + 160
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + 320] = arg3.length
        if not arg3.length:
            if not arg3.length % 32:
                emit 0x64c40495: msg.sender, address(arg2), Array(len=arg1.length, data=mem[ceil32(arg1.length) + ceil32(arg3.length) + 320 len arg3.length + arg1.length + 32]), arg1.length + 160
            else:
                mem[floor32(arg3.length) + arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + 352] = mem[floor32(arg3.length) + arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + -(arg3.length % 32) + 384 len arg3.length % 32]
                emit 0x64c40495: msg.sender, address(arg2), Array(len=arg1.length, data=mem[ceil32(arg1.length) + ceil32(arg3.length) + 320 len floor32(arg3.length) + arg1.length + 64]), arg1.length + 160
        else:
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + 352] = mem[ceil32(arg1.length) + 160]
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + 384 len floor32(arg3.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg3.length - 1)]
            if not arg3.length % 32:
                emit 0x64c40495: msg.sender, address(arg2), Array(len=arg1.length, data=mem[ceil32(arg1.length) + ceil32(arg3.length) + 320 len arg3.length + arg1.length + 32]), arg1.length + 160
            else:
                mem[floor32(arg3.length) + arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + 352] = mem[floor32(arg3.length) + arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + -(arg3.length % 32) + 384 len arg3.length % 32]
                emit 0x64c40495: msg.sender, address(arg2), Array(len=arg1.length, data=mem[ceil32(arg1.length) + ceil32(arg3.length) + 320 len arg1.length + 32], mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg3.length) + arg1.length + 384 len floor32(arg3.length)]), arg1.length + 160
    else:
        mem[ceil32(arg1.length) + ceil32(arg3.length) + 320] = mem[128]
        if arg1.length <= 32:
            mem[ceil32(arg1.length) + ceil32(arg3.length) + 256] = arg1.length + 160
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + 320] = arg3.length
            if arg3.length:
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + 352] = mem[ceil32(arg1.length) + 160]
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + 384 len floor32(arg3.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg3.length - 1)]
            if not arg3.length % 32:
                emit 0x64c40495: msg.sender, address(arg2), Array(len=arg1.length, data=mem[128], mem[ceil32(arg1.length) + ceil32(arg3.length) + 352 len arg3.length + arg1.length]), arg1.length + 160
            else:
                mem[floor32(arg3.length) + arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + 352] = mem[floor32(arg3.length) + arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + -(arg3.length % 32) + 384 len arg3.length % 32]
                emit 0x64c40495: msg.sender, address(arg2), Array(len=arg1.length, data=mem[128], mem[ceil32(arg1.length) + ceil32(arg3.length) + 352 len floor32(arg3.length) + arg1.length + 32]), arg1.length + 160
        else:
            mem[ceil32(arg1.length) + ceil32(arg3.length) + 352] = mem[160]
            mem[ceil32(arg1.length) + ceil32(arg3.length) + 384 len floor32(arg1.length - 33)] = mem[192 len floor32(arg1.length - 33)]
            mem[ceil32(arg1.length) + ceil32(arg3.length) + 256] = arg1.length + 160
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + 320] = arg3.length
            if arg3.length:
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + 352] = mem[ceil32(arg1.length) + 160]
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + 384 len floor32(arg3.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg3.length - 1)]
            if not arg3.length % 32:
                emit 0x64c40495: msg.sender, address(arg2), Array(len=arg1.length, data=mem[128], mem[ceil32(arg1.length) + ceil32(arg3.length) + 352 len arg3.length + arg1.length]), arg1.length + 160
            else:
                mem[floor32(arg3.length) + arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + 352] = mem[floor32(arg3.length) + arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + -(arg3.length % 32) + 384 len arg3.length % 32]
                emit 0x64c40495: msg.sender, address(arg2), Array(len=arg1.length, data=mem[128], mem[160], mem[ceil32(arg1.length) + ceil32(arg3.length) + 384 len floor32(arg3.length) + arg1.length]), arg1.length + 160
}



}

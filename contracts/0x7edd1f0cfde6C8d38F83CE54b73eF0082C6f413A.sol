contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;

function _fallback() {
    stor1 = msg.sender
    require ext_code.size(0xd99b9b07803e4d3a0d7ee773da4bedbe14b6661d)
    call 0xd99b9b07803e4d3a0d7ee773da4bedbe14b6661d.addressOf(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args 'custodian'
    require ext_call.success
    stor0 = ext_call.return_data[12 len 20] or Mask(96, 160, stor0)
    return code.data[262 len 6795]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
array of struct sub_d7c0c0f1;
mapping of struct stor3;
mapping of struct sub_7aa90a60;
array of struct sub_3621d5a4;
mapping of struct stor6;

function sub_3621d5a4(?) {
    require arg2 < sub_3621d5a4[arg1].field_0
    return sub_3621d5a4[arg1][arg2].field_0, 
           sub_3621d5a4[arg1][arg2].field_256,
           sub_3621d5a4[arg1][arg2].field_512,
           sub_3621d5a4[arg1][arg2].field_768,
           sub_3621d5a4[arg1][arg2].field_1024,
           sub_3621d5a4[arg1][arg2].field_1280,
           sub_3621d5a4[arg1][arg2].field_1536,
           sub_3621d5a4[arg1][arg2].field_1792,
           sub_3621d5a4[arg1][arg2].field_2048,
           sub_3621d5a4[arg1][arg2].field_2304,
           sub_3621d5a4[arg1][arg2].field_2560,
           bool(sub_3621d5a4[arg1][arg2].field_2816),
           bool(sub_3621d5a4[arg1][arg2].field_2824)
}

function sub_7aa90a60(?) {
    return sub_7aa90a60[arg1].field_256, sub_7aa90a60[arg1].field_512, sub_7aa90a60[arg1].field_768, sub_7aa90a60[arg1].field_1024
}

function sub_c18dac4e(?) {
    return sub_d7c0c0f1.length
}

function sub_d7c0c0f1(?) {
    require arg1 < sub_d7c0c0f1.length
    return sub_d7c0c0f1[arg1].field_0, 
           sub_d7c0c0f1[arg1].field_256,
           sub_d7c0c0f1[arg1].field_512,
           sub_d7c0c0f1[arg1].field_768,
           sub_d7c0c0f1[arg1].field_1024,
           sub_d7c0c0f1[arg1].field_1280,
           sub_d7c0c0f1[arg1].field_1536,
           sub_d7c0c0f1[arg1].field_1792,
           sub_d7c0c0f1[arg1].field_2048,
           sub_d7c0c0f1[arg1].field_2304,
           sub_d7c0c0f1[arg1].field_2560,
           bool(sub_d7c0c0f1[arg1].field_2816),
           bool(sub_d7c0c0f1[arg1].field_2824)
}

function kill() {
    if stor1 == msg.sender:
        selfdestruct(stor1)
}

function _fallback() payable {
    revert 
}

function sub_5168fe58(?) {
    sub_7aa90a60[arg1].field_768 = arg2
}

function sub_391465cb(?) {
    if stor3[arg1].field_0:
        if stor3[arg1].field_0 != arg2:
            return 0
        return 1
    emit code.data[6763 len 32]: arg1, 1, msg.sender
    return 0
}

function sub_1c828418(?) {
    require ext_code.size(stor0)
    call stor0.0xe849d4ef with:
         gas gas_remaining - 50 wei
        args arg1, stor3[arg1].field_0
    require ext_call.success
    return ext_call.return_data[0]
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
    if stor1 == msg.sender:
        require ext_code.size(0xd99b9b07803e4d3a0d7ee773da4bedbe14b6661d)
        call 0xd99b9b07803e4d3a0d7ee773da4bedbe14b6661d.register(bytes32 rg1) with:
             gas gas_remaining - 50 wei
            args 'bond'
        require ext_call.success
}

function sub_84d6755a(?) {
    if not stor3[arg1].field_0:
        emit code.data[6763 len 32]: arg1, 1, msg.sender
    return stor3[arg1].field_512, 
           stor3[arg1].field_1024,
           stor3[arg1].field_1536,
           0,
           bool(stor3[arg1].field_2816),
           bool(stor3[arg1].field_2824)
}

function sub_d76a022c(?) {
    emit 0xf474b986: stor3[arg1].field_0, stor3[arg1].field_256, stor3[arg1].field_2048, stor3[arg1].field_2304, stor3[arg1].field_512, 0, bool(stor3[arg1].field_2816), sub_7aa90a60[stor3[arg1].field_2560].field_256, sub_7aa90a60[stor3[arg1].field_2560].field_512, sub_7aa90a60[stor3[arg1].field_2560].field_768, 9, stor3[arg1].field_2560
}

function sub_6fc99d76(?) {
    if not stor3[arg1].field_0:
        emit code.data[6763 len 32]: arg1, 1, msg.sender
    return stor3[arg1].field_0, 
           stor3[arg1].field_256,
           stor3[arg1].field_768,
           stor3[arg1].field_1280,
           stor3[arg1].field_1792,
           stor3[arg1].field_2048,
           stor3[arg1].field_2304,
           stor3[arg1].field_2560
}

function sub_b45f89eb(?) {
    if stor3[arg1].field_1536 <= 0:
        if block.timestamp - stor3[arg1].field_256 < stor3[arg1].field_1792:
            return 0
        require stor3[arg1].field_1792
        return (stor3[arg1].field_1280 * block.timestamp - stor3[arg1].field_256 / stor3[arg1].field_1792)
    if block.timestamp - stor3[arg1].field_1536 < stor3[arg1].field_1792:
        return 0
    require stor3[arg1].field_1792
    return (stor3[arg1].field_1280 * block.timestamp - stor3[arg1].field_1536 / stor3[arg1].field_1792)
}

function sub_8bb0dfb5(?) {
    if not stor6[arg1].field_0:
        return 0
    require ext_code.size(0xd99b9b07803e4d3a0d7ee773da4bedbe14b6661d)
    call 0xd99b9b07803e4d3a0d7ee773da4bedbe14b6661d.addressOf(bytes32 rg1) with:
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

function sub_0ed8d7ce(?) {
    if stor3[arg1].field_2824:
        emit 0x5a29bc1d: arg1, 10, 3, msg.sender
    else:
        require ext_code.size(stor0)
        call stor0.0x146cd9 with:
             gas gas_remaining - 50 wei
            args arg1, stor3[arg1].field_0, stor3[arg1].field_2048
        require ext_call.success
        stor3[arg1].field_2824 = 1
        emit 0xf474b986: stor3[arg1].field_0, stor3[arg1].field_256, stor3[arg1].field_2048, stor3[arg1].field_2304, stor3[arg1].field_512, 0, bool(stor3[arg1].field_2816), sub_7aa90a60[stor3[arg1].field_2560].field_256, sub_7aa90a60[stor3[arg1].field_2560].field_512, sub_7aa90a60[stor3[arg1].field_2560].field_768, 9, stor3[arg1].field_2560
}

function sub_7d9baa95(?) {
    if stor3[arg1].field_2824:
        emit 0x5a29bc1d: arg1, 10, 3, msg.sender
    else:
        require ext_code.size(stor0)
        call stor0.0x146cd9 with:
             gas gas_remaining - 50 wei
            args arg1, stor3[arg1].field_0, stor3[arg1].field_2048
        require ext_call.success
        stor3[arg1].field_2824 = 1
        emit 0xf474b986: stor3[arg1].field_0, stor3[arg1].field_256, stor3[arg1].field_2048, stor3[arg1].field_2304, stor3[arg1].field_512, 0, bool(stor3[arg1].field_2816), sub_7aa90a60[stor3[arg1].field_2560].field_256, sub_7aa90a60[stor3[arg1].field_2560].field_512, sub_7aa90a60[stor3[arg1].field_2560].field_768, 9, stor3[arg1].field_2560
}

function sub_940589d6(?) {
    if not stor3[arg1].field_0:
        emit code.data[6763 len 32]: arg1, 1, msg.sender
    else:
        if stor3[arg1].field_0 != msg.sender:
            emit code.data[6763 len 32]: arg1, 11, msg.sender
        else:
            if arg2 < 0:
                emit code.data[6763 len 32]: arg1, 12, msg.sender
            else:
                stor3[arg1].field_2304 += arg2
                emit 0xf474b986: stor3[arg1].field_0, stor3[arg1].field_256, stor3[arg1].field_2048, stor3[arg1].field_2304, stor3[arg1].field_512, 0, bool(stor3[arg1].field_2816), sub_7aa90a60[stor3[arg1].field_2560].field_256, sub_7aa90a60[stor3[arg1].field_2560].field_512, sub_7aa90a60[stor3[arg1].field_2560].field_768, 9, stor3[arg1].field_2560
}

function sub_efa4bb68(?) {
    if stor3[arg1].field_0 == msg.sender:
        stor6[arg1].field_0 = arg1
        stor6[arg1].field_256 = arg2
        stor6[arg1].field_768 = msg.sender
        stor6[arg1].field_1280 = arg3
        stor6[arg1].field_1536 = arg4
        stor6[arg1].field_1792 = arg5
        require ext_code.size(0xd99b9b07803e4d3a0d7ee773da4bedbe14b6661d)
        call 0xd99b9b07803e4d3a0d7ee773da4bedbe14b6661d.addressOf(bytes32 rg1) with:
             gas gas_remaining - 50 wei
            args ('offerbook' << 184)
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x83b9d911 with:
             gas gas_remaining - 50 wei
            args stor6[arg1].field_256
        require ext_call.success
        stor6[arg1].field_512 = stor3[ext_call.return_data[0]].field_2560
        stor6[arg1].field_1024 = stor3[ext_call.return_data[0]].field_0
        stor6[arg1].field_1088 = 0
        emit 0xf474b986: stor3[arg1].field_0, 0, stor3[arg1].field_2048, stor3[arg1].field_2304, stor3[arg1].field_512, 0, bool(stor3[arg1].field_2816), sub_7aa90a60[stor3[arg1].field_2560].field_256, sub_7aa90a60[stor3[arg1].field_2560].field_512, sub_7aa90a60[stor3[arg1].field_2560].field_768, 9, stor3[arg1].field_2560
        emit 0x40188e3a: stor6[arg1].field_256, 0, msg.sender, stor6[arg1].field_1024, stor6[arg1].field_1280, stor6[arg1].field_1536, stor6[arg1].field_1792, 10, stor6[arg1].field_0
}

function sub_87d250fc(?) {
    require ext_code.size(0xd99b9b07803e4d3a0d7ee773da4bedbe14b6661d)
    call 0xd99b9b07803e4d3a0d7ee773da4bedbe14b6661d.addressOf(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args ('offerbook' << 184)
    require ext_call.success
    if not stor6[arg1].field_0:
        return 0
    require ext_code.size(stor0)
    call stor0.0xe849d4ef with:
         gas gas_remaining - 50 wei
        args arg1, stor3[arg1].field_0
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x9097548d with:
         gas gas_remaining - 50 wei
        args stor6[arg1].field_256
    require ext_call.success
    if (stor3[arg1].field_2304 * stor3[arg1].field_2048) - (ext_call.return_data[0] * stor3[arg1].field_2048) < ext_call.return_data[0]:
        emit 0x3d028f33: stor6[arg1].field_512, stor6[arg1].field_256, (stor3[arg1].field_2304 * stor3[arg1].field_2048) - (ext_call.return_data[0] * stor3[arg1].field_2048), 14, arg1, stor6[arg1].field_1024
        return 0
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xff534a34 with:
         gas gas_remaining - 50 wei
        args stor6[arg1].field_256, stor3[arg1].field_0
    require ext_call.success
    if not ext_call.return_data[0]:
        emit 0xefc84628: stor6[arg1].field_512, stor6[arg1].field_256, (stor3[arg1].field_2304 * stor3[arg1].field_2048) - (ext_call.return_data[0] * stor3[arg1].field_2048), 13, arg1, stor6[arg1].field_1024
    else:
        emit 0xde469e17: stor6[arg1].field_512, stor6[arg1].field_256, (stor3[arg1].field_2304 * stor3[arg1].field_2048) - (ext_call.return_data[0] * stor3[arg1].field_2048), 12, arg1, stor6[arg1].field_1024
    return bool(ext_call.return_data[0])
}

function sub_71669c81(?) payable {
    mem[64] = 96
    require not msg.value
    s = 0
    idx = 0
    while idx <= sub_d7c0c0f1.length:
        mem[0] = idx
        mem[32] = 3
        if stor3[idx].field_768 <= block.timestamp:
            mem[0] = idx
            mem[32] = 3
            if stor3[idx].field_2824:
                mem[mem[64]] = idx
                mem[mem[64] + 32] = 10
                emit 0x5a29bc1d: idx, 10, 3, msg.sender
            else:
                require ext_code.size(stor0)
                call stor0.0x146cd9 with:
                     gas gas_remaining - 50 wei
                    args idx, stor3[idx].field_0, stor3[idx].field_2048
                require ext_call.success
                stor3[idx].field_2824 = 1
                mem[0] = stor3[idx].field_2560
                mem[32] = 4
                mem[mem[64]] = stor3[idx].field_0
                mem[mem[64] + 32] = stor3[idx].field_256
                mem[mem[64] + 64] = stor3[idx].field_2048
                mem[mem[64] + 96] = stor3[idx].field_2304
                mem[mem[64] + 128] = stor3[idx].field_512
                mem[mem[64] + 160] = 0
                mem[mem[64] + 192] = bool(stor3[idx].field_2816)
                mem[mem[64] + 224] = sub_7aa90a60[stor3[idx].field_2560].field_256
                mem[mem[64] + 256] = sub_7aa90a60[stor3[idx].field_2560].field_512
                mem[mem[64] + 288] = sub_7aa90a60[stor3[idx].field_2560].field_768
                emit 0xf474b986: stor3[idx].field_0, stor3[idx].field_256, stor3[idx].field_2048, stor3[idx].field_2304, stor3[idx].field_512, 0, bool(stor3[idx].field_2816), sub_7aa90a60[stor3[idx].field_2560].field_256, sub_7aa90a60[stor3[idx].field_2560].field_512, sub_7aa90a60[stor3[idx].field_2560].field_768, 9, stor3[idx].field_2560
        s = sha3(idx, 3)
        idx = idx + 1
        continue 
}

function sub_ec587850(?) {
    sub_d7c0c0f1.length++
    if not sub_d7c0c0f1.length <= sub_d7c0c0f1.length + 1:
        idx = (12 * sub_d7c0c0f1.length) + 12
        while 12 * sub_d7c0c0f1.length > idx:
            sub_d7c0c0f1[idx].field_0 = 0
            sub_d7c0c0f1[idx].field_256 = 0
            sub_d7c0c0f1[idx].field_512 = 0
            sub_d7c0c0f1[idx].field_768 = 0
            sub_d7c0c0f1[idx].field_1024 = 0
            sub_d7c0c0f1[idx].field_1280 = 0
            sub_d7c0c0f1[idx].field_1536 = 0
            sub_d7c0c0f1[idx].field_1792 = 0
            sub_d7c0c0f1[idx].field_2048 = 0
            sub_d7c0c0f1[idx].field_2304 = 0
            sub_d7c0c0f1[idx].field_2560 = 0
            sub_d7c0c0f1[idx].field_2816 = 0
            idx = idx + 12
            continue 
    sub_d7c0c0f1[sub_d7c0c0f1.length].field_0 = msg.sender
    sub_d7c0c0f1[sub_d7c0c0f1.length].field_256 = block.timestamp
    sub_d7c0c0f1[sub_d7c0c0f1.length].field_512 = block.number
    sub_d7c0c0f1[sub_d7c0c0f1.length].field_768 = arg2
    sub_d7c0c0f1[sub_d7c0c0f1.length].field_1024 = 0
    sub_d7c0c0f1[sub_d7c0c0f1.length].field_1280 = arg3
    sub_d7c0c0f1[sub_d7c0c0f1.length].field_1536 = 0
    sub_d7c0c0f1[sub_d7c0c0f1.length].field_1792 = arg4
    sub_d7c0c0f1[sub_d7c0c0f1.length].field_2048 = arg5
    sub_d7c0c0f1[sub_d7c0c0f1.length].field_2304 = arg6
    sub_d7c0c0f1[sub_d7c0c0f1.length].field_2560 = arg1
    sub_d7c0c0f1[sub_d7c0c0f1.length].field_2816 = arg7
    sub_d7c0c0f1[sub_d7c0c0f1.length].field_2824 = 0
    sub_d7c0c0f1[sub_d7c0c0f1.length].field_3072 = 0
    stor3[arg1].field_0 = msg.sender
    stor3[arg1].field_256 = block.timestamp
    stor3[arg1].field_512 = block.number
    stor3[arg1].field_768 = arg2
    stor3[arg1].field_1024 = 0
    stor3[arg1].field_1280 = arg3
    stor3[arg1].field_1536 = 0
    stor3[arg1].field_1792 = arg4
    stor3[arg1].field_2048 = arg5
    stor3[arg1].field_2304 = arg6
    stor3[arg1].field_2560 = arg1
    stor3[arg1].field_2816 = arg7
    stor3[arg1].field_2824 = 0
    stor3[arg1].field_3072 = 0
    sub_7aa90a60[arg1].field_512 = arg9
    sub_7aa90a60[arg1].field_256 = arg8
    sub_7aa90a60[arg1].field_264 = 0
    require ext_code.size(stor0)
    call stor0.0xc5e11e2 with:
         gas gas_remaining - 50 wei
        args arg1, msg.sender, arg6, 0, 1
    require ext_call.success
    emit 0x7945715b: arg1, arg6, 1, msg.sender
    emit 0xf474b986: msg.sender, block.timestamp, arg5, arg6, block.number, 0, 0, arg8 << 248, arg9, 0, 8, arg1
}

function sub_b1cc3fdd(?) payable {
    mem[64] = 96
    require not msg.value
    s = 0
    s = 0
    s = 0
    idx = 0
    while idx <= sub_d7c0c0f1.length:
        require idx < sub_d7c0c0f1.length
        mem[0] = sub_d7c0c0f1[idx].field_2560
        mem[32] = 3
        if stor3[stor2[idx].field_2560].field_1536 <= 0:
            if block.timestamp - stor3[stor2[idx].field_2560].field_256 < stor3[stor2[idx].field_2560].field_1792:
            require stor3[stor2[idx].field_2560].field_1792
            if stor3[stor2[idx].field_2560].field_1280 * block.timestamp - stor3[stor2[idx].field_2560].field_256 / stor3[stor2[idx].field_2560].field_1792 < 1:
            mem[mem[64] + 4] = sub_d7c0c0f1[idx].field_2560
            mem[mem[64] + 36] = sub_d7c0c0f1[idx].field_0
            mem[mem[64] + 68] = stor3[stor2[idx].field_2560].field_1280 * block.timestamp - stor3[stor2[idx].field_2560].field_256 / stor3[stor2[idx].field_2560].field_1792
            mem[mem[64] + 100] = 2
            require ext_code.size(stor0)
            call stor0.0x433fdf55 with:
                 gas gas_remaining - 50 wei
                args sub_d7c0c0f1[idx].field_2560, sub_d7c0c0f1[idx].field_0, stor3[stor2[idx].field_2560].field_1280 * block.timestamp - stor3[stor2[idx].field_2560].field_256 / stor3[stor2[idx].field_2560].field_1792, 2
            mem[mem[64]] = ext_call.return_data[0]
            require ext_call.success
            if ext_call.return_data[0]:
                sub_d7c0c0f1[idx].field_1536 = block.timestamp
                mem[0] = stor3[idx].field_2560
                mem[32] = 4
                mem[mem[64]] = stor3[idx].field_0
                mem[mem[64] + 32] = stor3[idx].field_256
                mem[mem[64] + 64] = stor3[idx].field_2048
                mem[mem[64] + 96] = stor3[idx].field_2304
                mem[mem[64] + 128] = stor3[idx].field_512
                mem[mem[64] + 160] = 0
                mem[mem[64] + 192] = bool(stor3[idx].field_2816)
                mem[mem[64] + 224] = sub_7aa90a60[stor3[idx].field_2560].field_256
                mem[mem[64] + 256] = sub_7aa90a60[stor3[idx].field_2560].field_512
                mem[mem[64] + 288] = sub_7aa90a60[stor3[idx].field_2560].field_768
                emit 0xf474b986: stor3[idx].field_0, stor3[idx].field_256, stor3[idx].field_2048, stor3[idx].field_2304, stor3[idx].field_512, 0, bool(stor3[idx].field_2816), sub_7aa90a60[stor3[idx].field_2560].field_256, sub_7aa90a60[stor3[idx].field_2560].field_512, sub_7aa90a60[stor3[idx].field_2560].field_768, 9, stor3[idx].field_2560
            s = ext_call.return_data[0]
            s = stor3[stor2[idx].field_2560].field_1280 * block.timestamp - stor3[stor2[idx].field_2560].field_256 / stor3[stor2[idx].field_2560].field_1792
            s = (12 * idx) + sha3(2)
            idx = idx + 1
            continue 
        if block.timestamp - stor3[stor2[idx].field_2560].field_1536 < stor3[stor2[idx].field_2560].field_1792:
        require stor3[stor2[idx].field_2560].field_1792
        if stor3[stor2[idx].field_2560].field_1280 * block.timestamp - stor3[stor2[idx].field_2560].field_1536 / stor3[stor2[idx].field_2560].field_1792 < 1:
        mem[mem[64] + 4] = sub_d7c0c0f1[idx].field_2560
        mem[mem[64] + 36] = sub_d7c0c0f1[idx].field_0
        mem[mem[64] + 68] = stor3[stor2[idx].field_2560].field_1280 * block.timestamp - stor3[stor2[idx].field_2560].field_1536 / stor3[stor2[idx].field_2560].field_1792
        mem[mem[64] + 100] = 2
        require ext_code.size(stor0)
        call stor0.0x433fdf55 with:
             gas gas_remaining - 50 wei
            args sub_d7c0c0f1[idx].field_2560, sub_d7c0c0f1[idx].field_0, stor3[stor2[idx].field_2560].field_1280 * block.timestamp - stor3[stor2[idx].field_2560].field_1536 / stor3[stor2[idx].field_2560].field_1792, 2
        mem[mem[64]] = ext_call.return_data[0]
        require ext_call.success
        if ext_call.return_data[0]:
            sub_d7c0c0f1[idx].field_1536 = block.timestamp
            mem[0] = stor3[idx].field_2560
            mem[32] = 4
            mem[mem[64]] = stor3[idx].field_0
            mem[mem[64] + 32] = stor3[idx].field_256
            mem[mem[64] + 64] = stor3[idx].field_2048
            mem[mem[64] + 96] = stor3[idx].field_2304
            mem[mem[64] + 128] = stor3[idx].field_512
            mem[mem[64] + 160] = 0
            mem[mem[64] + 192] = bool(stor3[idx].field_2816)
            mem[mem[64] + 224] = sub_7aa90a60[stor3[idx].field_2560].field_256
            mem[mem[64] + 256] = sub_7aa90a60[stor3[idx].field_2560].field_512
            mem[mem[64] + 288] = sub_7aa90a60[stor3[idx].field_2560].field_768
            emit 0xf474b986: stor3[idx].field_0, stor3[idx].field_256, stor3[idx].field_2048, stor3[idx].field_2304, stor3[idx].field_512, 0, bool(stor3[idx].field_2816), sub_7aa90a60[stor3[idx].field_2560].field_256, sub_7aa90a60[stor3[idx].field_2560].field_512, sub_7aa90a60[stor3[idx].field_2560].field_768, 9, stor3[idx].field_2560
        s = ext_call.return_data[0]
        s = stor3[stor2[idx].field_2560].field_1280 * block.timestamp - stor3[stor2[idx].field_2560].field_1536 / stor3[stor2[idx].field_2560].field_1792
        s = (12 * idx) + sha3(2)
        idx = idx + 1
        continue 
}



}

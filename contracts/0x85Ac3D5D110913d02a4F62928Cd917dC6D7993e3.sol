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
    return code.data[262 len 6716]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
array of struct issues;
mapping of struct sub_7aa90a60;
array of struct sub_3621d5a4;
mapping of struct stor5;

function issues(uint256 arg1) {
    require arg1 < issues.length
    return issues[arg1].field_0, 
           issues[arg1].field_256,
           issues[arg1].field_512,
           issues[arg1].field_768,
           issues[arg1].field_1024,
           issues[arg1].field_1280,
           issues[arg1].field_1536,
           issues[arg1].field_1792,
           issues[arg1].field_2048,
           issues[arg1].field_2304,
           issues[arg1].field_2560,
           bool(issues[arg1].field_2816),
           bool(issues[arg1].field_2824)
}

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
    return issues.length
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
    if arg1 > issues.length:
        emit code.data[6684 len 32]: arg1, 1, msg.sender
        return 0
    require arg1 < issues.length
    if issues[arg1].field_0 != arg2:
        return 0
    return 1
}

function sub_1c828418(?) {
    require arg1 < issues.length
    require ext_code.size(stor0)
    call stor0.0xe849d4ef with:
         gas gas_remaining - 50 wei
        args arg1, issues[arg1].field_0
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_f57fbf55(?) {
    return arg1, 
           stor5[arg1].field_256,
           stor5[arg1].field_512,
           stor5[arg1].field_768,
           stor5[arg1].field_1024,
           stor5[arg1].field_1280,
           stor5[arg1].field_1536,
           stor5[arg1].field_1792
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
    if arg1 <= issues.length:
        require arg1 < issues.length
        return issues[arg1].field_512, 
               issues[arg1].field_1024,
               issues[arg1].field_1536,
               0,
               bool(issues[arg1].field_2816),
               bool(issues[arg1].field_2824)
    emit code.data[6684 len 32]: arg1, 1, msg.sender
    return 0
}

function sub_d76a022c(?) {
    require arg1 < issues.length
    emit 0xf474b986: issues[arg1].field_0, issues[arg1].field_256, issues[arg1].field_2048, issues[arg1].field_2304, issues[arg1].field_512, 0, bool(issues[arg1].field_2816), sub_7aa90a60[stor2[arg1].field_2560].field_256, sub_7aa90a60[stor2[arg1].field_2560].field_512, sub_7aa90a60[stor2[arg1].field_2560].field_768, 9, issues[arg1].field_2560
}

function sub_6fc99d76(?) {
    if arg1 <= issues.length:
        require arg1 < issues.length
        return issues[arg1].field_0, 
               issues[arg1].field_256,
               issues[arg1].field_768,
               issues[arg1].field_1280,
               issues[arg1].field_1792,
               issues[arg1].field_2048,
               issues[arg1].field_2304
    emit code.data[6684 len 32]: arg1, 1, msg.sender
    return 0
}

function sub_b45f89eb(?) {
    require arg1 < issues.length
    if issues[arg1].field_1536 <= 0:
        if block.timestamp - issues[arg1].field_256 < issues[arg1].field_1792:
            return 0
        require issues[arg1].field_1792
        return (issues[arg1].field_1280 * block.timestamp - issues[arg1].field_256 / issues[arg1].field_1792)
    if block.timestamp - issues[arg1].field_1536 < issues[arg1].field_1792:
        return 0
    require issues[arg1].field_1792
    return (issues[arg1].field_1280 * block.timestamp - issues[arg1].field_1536 / issues[arg1].field_1792)
}

function sub_8bb0dfb5(?) {
    if not stor5[arg1].field_0:
        return 0
    require ext_code.size(0xd99b9b07803e4d3a0d7ee773da4bedbe14b6661d)
    call 0xd99b9b07803e4d3a0d7ee773da4bedbe14b6661d.addressOf(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args ('offerbook' << 184)
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xf19b8273 with:
         gas gas_remaining - 50 wei
        args stor5[arg1].field_256
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function sub_0ed8d7ce(?) {
    require arg1 < issues.length
    if issues[arg1].field_2824:
        emit 0x5a29bc1d: arg1, 10, 3, msg.sender
    else:
        require ext_code.size(stor0)
        call stor0.0x146cd9 with:
             gas gas_remaining - 50 wei
            args arg1, issues[arg1].field_0, issues[arg1].field_2048
        require ext_call.success
        issues[arg1].field_2824 = 1
        require arg1 < issues.length
        emit 0xf474b986: issues[arg1].field_0, issues[arg1].field_256, issues[arg1].field_2048, issues[arg1].field_2304, issues[arg1].field_512, 0, bool(issues[arg1].field_2816), sub_7aa90a60[stor2[arg1].field_2560].field_256, sub_7aa90a60[stor2[arg1].field_2560].field_512, sub_7aa90a60[stor2[arg1].field_2560].field_768, 9, issues[arg1].field_2560
}

function sub_7d9baa95(?) {
    require arg1 < issues.length
    if issues[arg1].field_2824:
        emit 0x5a29bc1d: arg1, 10, 3, msg.sender
    else:
        require ext_code.size(stor0)
        call stor0.0x146cd9 with:
             gas gas_remaining - 50 wei
            args arg1, issues[arg1].field_0, issues[arg1].field_2048
        require ext_call.success
        issues[arg1].field_2824 = 1
        require arg1 < issues.length
        emit 0xf474b986: issues[arg1].field_0, issues[arg1].field_256, issues[arg1].field_2048, issues[arg1].field_2304, issues[arg1].field_512, 0, bool(issues[arg1].field_2816), sub_7aa90a60[stor2[arg1].field_2560].field_256, sub_7aa90a60[stor2[arg1].field_2560].field_512, sub_7aa90a60[stor2[arg1].field_2560].field_768, 9, issues[arg1].field_2560
}

function sub_940589d6(?) {
    if arg1 > issues.length:
        emit code.data[6684 len 32]: arg1, 1, msg.sender
    else:
        require arg1 < issues.length
        if issues[arg1].field_0 != msg.sender:
            emit code.data[6684 len 32]: arg1, 11, msg.sender
        else:
            if arg2 < 0:
                emit code.data[6684 len 32]: arg1, 12, msg.sender
            else:
                issues[arg1].field_2304 += arg2
                require arg1 < issues.length
                emit 0xf474b986: issues[arg1].field_0, issues[arg1].field_256, issues[arg1].field_2048, issues[arg1].field_2304, issues[arg1].field_512, 0, bool(issues[arg1].field_2816), sub_7aa90a60[stor2[arg1].field_2560].field_256, sub_7aa90a60[stor2[arg1].field_2560].field_512, sub_7aa90a60[stor2[arg1].field_2560].field_768, 9, issues[arg1].field_2560
}

function sub_efa4bb68(?) {
    require arg1 < issues.length
    if issues[arg1].field_0 == msg.sender:
        stor5[arg1].field_0 = arg1
        stor5[arg1].field_256 = arg2
        stor5[arg1].field_768 = msg.sender
        stor5[arg1].field_1280 = arg3
        stor5[arg1].field_1536 = arg4
        stor5[arg1].field_1792 = arg5
        require ext_code.size(0xd99b9b07803e4d3a0d7ee773da4bedbe14b6661d)
        call 0xd99b9b07803e4d3a0d7ee773da4bedbe14b6661d.addressOf(bytes32 rg1) with:
             gas gas_remaining - 50 wei
            args ('offerbook' << 184)
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x83b9d911 with:
             gas gas_remaining - 50 wei
            args stor5[arg1].field_256
        require ext_call.success
        require ext_call.return_data[0] < issues.length
        stor5[arg1].field_512 = issues[ext_call.return_data[0]].field_2560
        stor5[arg1].field_1024 = issues[ext_call.return_data[0]].field_0
        stor5[arg1].field_1088 = 0
        require arg1 < issues.length
        emit 0xf474b986: issues[arg1].field_0, 0, issues[arg1].field_2048, issues[arg1].field_2304, issues[arg1].field_512, 0, bool(issues[arg1].field_2816), sub_7aa90a60[stor2[arg1].field_2560].field_256, sub_7aa90a60[stor2[arg1].field_2560].field_512, sub_7aa90a60[stor2[arg1].field_2560].field_768, 9, issues[arg1].field_2560
        emit 0x40188e3a: stor5[arg1].field_256, 0, msg.sender, stor5[arg1].field_1024, stor5[arg1].field_1280, stor5[arg1].field_1536, stor5[arg1].field_1792, 10, stor5[arg1].field_0
}

function sub_386da5f7(?) {
    issues.length++
    if not issues.length <= issues.length + 1:
        idx = (12 * issues.length) + 12
        while 12 * issues.length > idx:
            issues[idx].field_0 = 0
            issues[idx].field_256 = 0
            issues[idx].field_512 = 0
            issues[idx].field_768 = 0
            issues[idx].field_1024 = 0
            issues[idx].field_1280 = 0
            issues[idx].field_1536 = 0
            issues[idx].field_1792 = 0
            issues[idx].field_2048 = 0
            issues[idx].field_2304 = 0
            issues[idx].field_2560 = 0
            issues[idx].field_2816 = 0
            idx = idx + 12
            continue 
    issues[issues.length].field_0 = msg.sender
    issues[issues.length].field_256 = block.timestamp
    issues[issues.length].field_512 = block.number
    issues[issues.length].field_768 = arg1
    issues[issues.length].field_1024 = 0
    issues[issues.length].field_1280 = arg2
    issues[issues.length].field_1536 = 0
    issues[issues.length].field_1792 = arg3
    issues[issues.length].field_2048 = arg4
    issues[issues.length].field_2304 = arg5
    issues[issues.length].field_2560 = 0
    issues[issues.length].field_2816 = arg6
    issues[issues.length].field_2824 = 0
    issues[issues.length].field_3072 = 0
    sub_7aa90a60[stor2.length + 2].field_512 = arg8
    sub_7aa90a60[stor2.length + 2].field_256 = arg7
    sub_7aa90a60[stor2.length + 2].field_264 = 0
    require ext_code.size(stor0)
    call stor0.0xc5e11e2 with:
         gas gas_remaining - 50 wei
        args issues.length + 2, msg.sender, arg5, 0, 1
    require ext_call.success
    emit 0x7945715b: issues.length + 2, arg5, 1, msg.sender
    emit 0xf474b986: msg.sender, block.timestamp, arg4, arg5, block.number, 0, 0, arg7 << 248, arg8, 0, 8, issues.length + 2
}

function sub_87d250fc(?) {
    require ext_code.size(0xd99b9b07803e4d3a0d7ee773da4bedbe14b6661d)
    call 0xd99b9b07803e4d3a0d7ee773da4bedbe14b6661d.addressOf(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args ('offerbook' << 184)
    require ext_call.success
    require arg1 < issues.length
    if not stor5[arg1].field_0:
        return 0
    require arg1 < issues.length
    require ext_code.size(stor0)
    call stor0.0xe849d4ef with:
         gas gas_remaining - 50 wei
        args arg1, issues[arg1].field_0
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x9097548d with:
         gas gas_remaining - 50 wei
        args stor5[arg1].field_256
    require ext_call.success
    if (issues[arg1].field_2304 * issues[arg1].field_2048) - (ext_call.return_data[0] * issues[arg1].field_2048) < ext_call.return_data[0]:
        emit 0x3d028f33: stor5[arg1].field_512, stor5[arg1].field_256, (issues[arg1].field_2304 * issues[arg1].field_2048) - (ext_call.return_data[0] * issues[arg1].field_2048), 14, arg1, stor5[arg1].field_1024
        return 0
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xff534a34 with:
         gas gas_remaining - 50 wei
        args stor5[arg1].field_256, issues[arg1].field_0
    require ext_call.success
    if not ext_call.return_data[0]:
        emit 0xefc84628: stor5[arg1].field_512, stor5[arg1].field_256, (issues[arg1].field_2304 * issues[arg1].field_2048) - (ext_call.return_data[0] * issues[arg1].field_2048), 13, arg1, stor5[arg1].field_1024
    else:
        emit 0xde469e17: stor5[arg1].field_512, stor5[arg1].field_256, (issues[arg1].field_2304 * issues[arg1].field_2048) - (ext_call.return_data[0] * issues[arg1].field_2048), 12, arg1, stor5[arg1].field_1024
    return bool(ext_call.return_data[0])
}

function sub_71669c81(?) payable {
    mem[64] = 96
    require not msg.value
    s = 0
    idx = 1
    while idx <= issues.length:
        require idx < issues.length
        mem[0] = 2
        if issues[idx].field_768 <= block.timestamp:
            require idx < issues.length
            mem[0] = 2
            if issues[idx].field_2824:
                mem[mem[64]] = idx
                mem[mem[64] + 32] = 10
                emit 0x5a29bc1d: idx, 10, 3, msg.sender
            else:
                require ext_code.size(stor0)
                call stor0.0x146cd9 with:
                     gas gas_remaining - 50 wei
                    args idx, issues[idx].field_0, issues[idx].field_2048
                require ext_call.success
                issues[idx].field_2824 = 1
                require idx < issues.length
                mem[0] = issues[idx].field_2560
                mem[32] = 3
                mem[mem[64]] = issues[idx].field_0
                mem[mem[64] + 32] = issues[idx].field_256
                mem[mem[64] + 64] = issues[idx].field_2048
                mem[mem[64] + 96] = issues[idx].field_2304
                mem[mem[64] + 128] = issues[idx].field_512
                mem[mem[64] + 160] = 0
                mem[mem[64] + 192] = bool(issues[idx].field_2816)
                mem[mem[64] + 224] = sub_7aa90a60[stor2[idx].field_2560].field_256
                mem[mem[64] + 256] = sub_7aa90a60[stor2[idx].field_2560].field_512
                mem[mem[64] + 288] = sub_7aa90a60[stor2[idx].field_2560].field_768
                emit 0xf474b986: issues[idx].field_0, issues[idx].field_256, issues[idx].field_2048, issues[idx].field_2304, issues[idx].field_512, 0, bool(issues[idx].field_2816), sub_7aa90a60[stor2[idx].field_2560].field_256, sub_7aa90a60[stor2[idx].field_2560].field_512, sub_7aa90a60[stor2[idx].field_2560].field_768, 9, issues[idx].field_2560
        s = (12 * idx) + sha3(2)
        idx = idx + 1
        continue 
}

function sub_b1cc3fdd(?) payable {
    mem[64] = 96
    require not msg.value
    s = 0
    s = 0
    s = 0
    idx = 1
    while idx <= issues.length:
        require idx < issues.length
        require issues[idx].field_2560 < issues.length
        mem[0] = 2
        if issues[issues[idx].field_2560].field_1536 <= 0:
            if block.timestamp - issues[issues[idx].field_2560].field_256 < issues[issues[idx].field_2560].field_1792:
            require issues[issues[idx].field_2560].field_1792
            if issues[issues[idx].field_2560].field_1280 * block.timestamp - issues[issues[idx].field_2560].field_256 / issues[issues[idx].field_2560].field_1792 < 1:
            mem[mem[64] + 4] = issues[idx].field_2560
            mem[mem[64] + 36] = issues[idx].field_0
            mem[mem[64] + 68] = issues[issues[idx].field_2560].field_1280 * block.timestamp - issues[issues[idx].field_2560].field_256 / issues[issues[idx].field_2560].field_1792
            mem[mem[64] + 100] = 2
            require ext_code.size(stor0)
            call stor0.0x433fdf55 with:
                 gas gas_remaining - 50 wei
                args issues[idx].field_2560, issues[idx].field_0, issues[issues[idx].field_2560].field_1280 * block.timestamp - issues[issues[idx].field_2560].field_256 / issues[issues[idx].field_2560].field_1792, 2
            mem[mem[64]] = ext_call.return_data[0]
            require ext_call.success
            if ext_call.return_data[0]:
                issues[idx].field_1536 = block.timestamp
                require idx < issues.length
                mem[0] = issues[idx].field_2560
                mem[32] = 3
                mem[mem[64]] = issues[idx].field_0
                mem[mem[64] + 32] = issues[idx].field_256
                mem[mem[64] + 64] = issues[idx].field_2048
                mem[mem[64] + 96] = issues[idx].field_2304
                mem[mem[64] + 128] = issues[idx].field_512
                mem[mem[64] + 160] = 0
                mem[mem[64] + 192] = bool(issues[idx].field_2816)
                mem[mem[64] + 224] = sub_7aa90a60[stor2[idx].field_2560].field_256
                mem[mem[64] + 256] = sub_7aa90a60[stor2[idx].field_2560].field_512
                mem[mem[64] + 288] = sub_7aa90a60[stor2[idx].field_2560].field_768
                emit 0xf474b986: issues[idx].field_0, issues[idx].field_256, issues[idx].field_2048, issues[idx].field_2304, issues[idx].field_512, 0, bool(issues[idx].field_2816), sub_7aa90a60[stor2[idx].field_2560].field_256, sub_7aa90a60[stor2[idx].field_2560].field_512, sub_7aa90a60[stor2[idx].field_2560].field_768, 9, issues[idx].field_2560
            s = ext_call.return_data[0]
            s = issues[issues[idx].field_2560].field_1280 * block.timestamp - issues[issues[idx].field_2560].field_256 / issues[issues[idx].field_2560].field_1792
            s = (12 * idx) + sha3(2)
            idx = idx + 1
            continue 
        if block.timestamp - issues[issues[idx].field_2560].field_1536 < issues[issues[idx].field_2560].field_1792:
        require issues[issues[idx].field_2560].field_1792
        if issues[issues[idx].field_2560].field_1280 * block.timestamp - issues[issues[idx].field_2560].field_1536 / issues[issues[idx].field_2560].field_1792 < 1:
        mem[mem[64] + 4] = issues[idx].field_2560
        mem[mem[64] + 36] = issues[idx].field_0
        mem[mem[64] + 68] = issues[issues[idx].field_2560].field_1280 * block.timestamp - issues[issues[idx].field_2560].field_1536 / issues[issues[idx].field_2560].field_1792
        mem[mem[64] + 100] = 2
        require ext_code.size(stor0)
        call stor0.0x433fdf55 with:
             gas gas_remaining - 50 wei
            args issues[idx].field_2560, issues[idx].field_0, issues[issues[idx].field_2560].field_1280 * block.timestamp - issues[issues[idx].field_2560].field_1536 / issues[issues[idx].field_2560].field_1792, 2
        mem[mem[64]] = ext_call.return_data[0]
        require ext_call.success
        if ext_call.return_data[0]:
            issues[idx].field_1536 = block.timestamp
            require idx < issues.length
            mem[0] = issues[idx].field_2560
            mem[32] = 3
            mem[mem[64]] = issues[idx].field_0
            mem[mem[64] + 32] = issues[idx].field_256
            mem[mem[64] + 64] = issues[idx].field_2048
            mem[mem[64] + 96] = issues[idx].field_2304
            mem[mem[64] + 128] = issues[idx].field_512
            mem[mem[64] + 160] = 0
            mem[mem[64] + 192] = bool(issues[idx].field_2816)
            mem[mem[64] + 224] = sub_7aa90a60[stor2[idx].field_2560].field_256
            mem[mem[64] + 256] = sub_7aa90a60[stor2[idx].field_2560].field_512
            mem[mem[64] + 288] = sub_7aa90a60[stor2[idx].field_2560].field_768
            emit 0xf474b986: issues[idx].field_0, issues[idx].field_256, issues[idx].field_2048, issues[idx].field_2304, issues[idx].field_512, 0, bool(issues[idx].field_2816), sub_7aa90a60[stor2[idx].field_2560].field_256, sub_7aa90a60[stor2[idx].field_2560].field_512, sub_7aa90a60[stor2[idx].field_2560].field_768, 9, issues[idx].field_2560
        s = ext_call.return_data[0]
        s = issues[issues[idx].field_2560].field_1280 * block.timestamp - issues[issues[idx].field_2560].field_1536 / issues[issues[idx].field_2560].field_1792
        s = (12 * idx) + sha3(2)
        idx = idx + 1
        continue 
}



}

contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint8 stor2;
address stor2; offset 8
array of uint256 stor3;
array of uint256 stor4;
array of struct stor5;
uint256 stor30;
uint256 stor31;

function _fallback() {
    mem[64] = 224
    stor0 = 0xbf15bd159ae5b410c4b7d4ae0230fb81f2f21cf1
    stor1 = 0
    uint8(stor2.field_0) = 1
    address(stor2.field_8) = msg.sender
    stor30 = 10^16
    stor31 = 0
    s = 96
    idx = 0
    while uint8(idx) < 9:
        _7 = mem[64]
        mem[64] = mem[64] + 128
        mem[_7] = 0
        mem[_7 + 32] = 0
        mem[_7 + 64] = 0
        mem[_7 + 96] = 0
        stor3[uint8(idx)] = 0
        stor4[uint8(idx)] = 0
        stor5[uint8(idx)].field_0 = 0
        stor5[uint8(idx)].field_256 = 0
        stor5[uint8(idx)].field_160 = 0
        s = _7
        idx = idx + 1
        continue 
    return code.data[568 len 4953]
}



// =====================  Runtime code  =====================


address managerAddress;
uint256 stor1;
uint8 checkStatus;
address stor2;
address dealerAddress; offset 8
array of uint256 stor3;
array of uint256 stor4;
array of struct stor5;
uint256 stor30;
uint256 stor31;

function checkStatus() {
    require msg.sender == managerAddress
    return bool(checkStatus)
}

function manager() {
    return managerAddress
}

function dealer() {
    return dealerAddress
}

function restore() {
    require msg.sender == managerAddress
    selfdestruct(managerAddress)
}

function close() {
    if msg.sender == dealerAddress:
        checkStatus = 0
}

function refund(address arg1) {
    require msg.sender == managerAddress
    idx = 0
    while uint8(idx) < 9:
        if stor5[uint8(idx)].field_0 != arg1:
            idx = idx + 1
            continue 
        require uint8(idx) < 9
        if bool(stor5[uint8(idx)].field_160) != 1:
            idx = idx + 1
            continue 
        require uint8(idx) < 9
        if stor4[uint8(idx)] <= 0:
            idx = idx + 1
            continue 
        require uint8(idx) < 9
        call stor5[uint8(idx)].field_0 with:
           value stor4[uint8(idx)] wei
             gas 2300 * is_zero(value) wei
        stor5[uint8(idx)].field_0 = 0
        stor4[uint8(idx)] = 0
        stor5[uint8(idx)].field_160 = 0
}

function _fallback() payable {
    require stor30
    require msg.value / stor30 >= 0
    idx = 0
    while uint8(idx) < 9:
        if stor5[uint8(idx)].field_160:
            idx = idx + 1
            continue 
        require uint8(idx) != 9
        stor31 += stor30
        require uint8(idx) < 9
        stor5[uint8(idx)].field_0 = msg.sender
        stor4[uint8(idx)] = msg.value
        stor3[uint8(idx)] = msg.value
        stor5[uint8(idx)].field_160 = 1
        emit 0xf2f3fe78: msg.sender, msg.value - stor31
    require uint8(None) != 9
    stor31 += stor30
    address(stor5.length) = msg.sender
    stor4.length = msg.value
    stor3.length = msg.value
    stor5.length.field_160 = 1
    emit 0xf2f3fe78: msg.sender, msg.value - stor31
}

function balance() {
    mem[128] = 0
    require msg.sender == managerAddress
    idx = 0
    s = 0
    while uint8(idx) < 9:
        if bool(stor5[uint8(idx)].field_160) != 1:
            idx = idx + 1
            s = s
            continue 
        require uint8(idx) < 9
        if not stor4[uint8(idx)]:
            idx = idx + 1
            s = s
            continue 
        require uint8(idx) < 9
        require s < 0
        mem[(32 * s) + 128] = stor5[uint8(idx)].field_0
        require uint8(idx) < 9
        require s < mem[128]
        mem[(32 * s) + 160] = stor4[uint8(idx)]
        idx = idx + 1
        s = s + 1
        continue 
    mem[320] = mem[128]
    if Mask(251, 0, mem[128]):
        mem[352] = 128
        mem[384 len floor32((32 * mem[128]) - 1)] = 160, stor2, stor31, 0, mem[128], 128, mem[384 len floor32((32 * mem[128]) - 1) - 192]
    emit 0xa1363477: 128, 160, stor2, stor31, 0, mem[320 len (32 * mem[128]) + 32]
}

function sub_f621d42f(?) {
    require msg.sender == managerAddress
    idx = 0
    while uint8(idx) < 9:
        if stor5[uint8(idx)].field_0 != arg1:
            idx = idx + 1
            continue 
        require uint8(idx) < 9
        require uint8(idx) < 9
        if stor4[uint8(idx)] > 0:
            if stor4[uint8(idx)] <= stor3[uint8(idx)]:
                call arg1 with:
                   value stor4[uint8(idx)] wei
                     gas 2300 * is_zero(value) wei
            else:
                require uint8(idx) < 9
                stor31 += stor4[uint8(idx)] - stor3[uint8(idx)] / 100
                stor1 += stor4[uint8(idx)] - stor3[uint8(idx)] / 100
                call arg1 with:
                   value stor4[uint8(idx)] - (2 * stor4[uint8(idx)] - stor3[uint8(idx)] / 100) wei
                     gas 2300 * is_zero(value) wei
            require ext_call.success
        stor5[uint8(idx)].field_0 = 0
        stor4[uint8(idx)] = 0
        stor5[uint8(idx)].field_160 = 0
}

function sub_4d92df14(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == managerAddress
    idx = 0
    while uint8(idx) < arg1.length:
        s = 0
        while uint8(s) < 9:
            require uint8(idx) < arg1.length
            require uint8(s) < 9
            if stor5[uint8(s)].field_0 != mem[(32 * uint8(idx)) + 140 len 20]:
                s = s + 1
                continue 
            require uint8(s) < arg2.length
            require uint8(s) < arg2.length
            require uint8(s) < 9
            if mem[(32 * uint8(s)) + (32 * arg1.length) + 160] < 0:
                stor4[uint8(s)] += test266151307() * mem[(32 * uint8(s)) + (32 * arg1.length) + 160]
            else:
                stor4[uint8(s)] += mem[(32 * uint8(s)) + (32 * arg1.length) + 160]
            idx = idx + 1
            continue 
        idx = idx + 1
        continue 
}



}

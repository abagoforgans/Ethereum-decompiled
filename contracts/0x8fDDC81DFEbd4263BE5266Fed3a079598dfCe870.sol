contract main {




// =====================  Runtime code  =====================


address owner;
address beneficiaryAddress;
mapping of uint8 stor2;
uint8 stor3;
mapping of uint8 sub_c5b5d793;
array of struct stor5;
mapping of struct sub_62afd3ea;
uint8 stor7;
uint8 stor7; offset 8
uint8 stor7; offset 16
address landContractAddress; offset 24
address sub_9918e0caAddress;
address sub_52c08f5dAddress;
address sub_fc7717a3Address;
uint256 royalty;
uint256 basePrice;

function landContract() {
    return landContractAddress
}

function royalty() {
    return royalty
}

function beneficiary() {
    return beneficiaryAddress
}

function sub_52c08f5d(?) {
    return sub_52c08f5dAddress
}

function sub_62afd3ea(?) {
    require arg3 < sub_62afd3ea[arg1][arg2].field_0
    return uint8(sub_62afd3ea[arg1][arg2][arg3].field_0), 
           uint8(sub_62afd3ea[arg1][arg2][arg3].field_0),
           uint8(sub_62afd3ea[arg1][arg2][arg3].field_0),
           uint8(sub_62afd3ea[arg1][arg2][arg3].field_24)
}

function owner() {
    return owner
}

function sub_9918e0ca(?) {
    return sub_9918e0caAddress
}

function sub_c5b5d793(?) {
    return sub_c5b5d793[arg1]
}

function basePrice() {
    return basePrice
}

function sub_fc7717a3(?) {
    return sub_fc7717a3Address
}

function managers(address arg1) {
    return bool(stor2[arg1])
}

function _fallback() payable {
  stop
}

function setManager(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Only owner'
    stor2[address(arg1)] = 1
}

function deleteManager(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Only owner'
    stor2[address(arg1)] = 0
}

function setBeneficiary(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Only owner'
    beneficiaryAddress = arg1
}

function sub_19dad680(?) {
    if not stor2[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 'Only managers allowed'
    stor3 = 1
}

function setTax(uint8 arg1, uint8 arg2, uint8 arg3) {
    if owner != msg.sender:
        revert with 0, 'Only owner'
    require uint8(arg3 + arg2 + arg1) == 100
    uint8(stor7.field_0) = arg1
    uint8(stor7.field_8) = arg2
    uint8(stor7.field_16) = arg3
}

function sub_0fec8db8(?) {
    if not stor2[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 'Only managers allowed'
    landContractAddress = arg1
    sub_9918e0caAddress = arg2
    sub_52c08f5dAddress = arg3
    sub_fc7717a3Address = arg4
}

function sub_5541315b(?) {
    require stor2[msg.sender]
    require ext_code.size(sub_52c08f5dAddress)
    call sub_52c08f5dAddress.0x127a5652 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_6c0db7e3(?) {
    require stor2[msg.sender]
    require ext_code.size(sub_52c08f5dAddress)
    call sub_52c08f5dAddress.0x127a5652 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawalAll() {
    if owner != msg.sender:
        revert with 0, 'Only owner'
    call beneficiaryAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_f698a095(?) payable {
    require msg.value > 0
    require ext_code.size(sub_52c08f5dAddress)
    call sub_52c08f5dAddress.0x127a5652 with:
         gas gas_remaining wei
        args msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_67c3b1b9(?) {
    if landContractAddress != msg.sender:
        require msg.sender == sub_9918e0caAddress
    call beneficiaryAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Only owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer to null address is not allowed'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_adea7a6a(?) {
    require ext_code.size(sub_9918e0caAddress)
    call sub_9918e0caAddress.0x7de46265 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function withdrawal(uint256 arg1) {
    if owner != msg.sender:
        revert with 0, 'Only owner'
    if arg1 > eth.balance(this.address):
        revert with 0, 'Insufficient balance'
    call beneficiaryAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_e90a5ca5(?) {
    mem[96 len 224] = call.data[36 len 224]
    if not stor2[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 'Only managers allowed'
    s = 0
    idx = 96
    while 320 > idx:
        stor5[arg1 << 248][s].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 7
    while 7 > idx:
        stor5[arg1 << 248][idx].field_0 = 0
        idx = idx + 1
        continue 
}

function sub_51320bed(?) {
    require msg.sender == landContractAddress
    require ext_code.size(sub_52c08f5dAddress)
    call sub_52c08f5dAddress.0x3916d3b0 with:
         gas gas_remaining wei
        args 0, uint32(('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1'))))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2')))), 2, arg3, arg4 << 248, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_a7ce6d89(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if not stor2[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 'Only managers allowed'
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 158 len 2]
        mem[32] = 4
        sub_c5b5d793[mem[(32 * idx) + 158 len 2]] = mem[(32 * idx) + (32 * arg1.length) + 191 len 1]
        idx = idx + 1
        continue 
}

function userWithdrawal() {
    require ext_code.size(sub_fc7717a3Address)
    call sub_fc7717a3Address.getBalance(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require ext_call.return_data[0] <= eth.balance(this.address)
    require ext_code.size(sub_fc7717a3Address)
    call sub_fc7717a3Address.0xc2154e3 with:
         gas gas_remaining wei
        args ext_call.return_data[0], msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if ext_call.return_data[0] > 0:
        call msg.sender with:
           value ext_call.return_data[0] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_16e9371d(?) {
    mem[(32 * arg1.length) + 228 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(sub_52c08f5dAddress)
    call sub_52c08f5dAddress.0x9fa24740 with:
         gas gas_remaining wei
        args msg.sender, Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 228 len (32 * arg1.length) - floor32(arg1.length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(sub_fc7717a3Address)
        call sub_fc7717a3Address.0xc9053d9a with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0], 4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit 0x6f811dc1: msg.sender, ext_call.return_data[0]
}

function sub_5034f244(?) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + 160
    mem[(32 * arg1.length) + 128] = arg2.length
    s = (32 * arg1.length) + 160
    idx = 0
    while idx < arg2.length:
        _23 = mem[64]
        mem[64] = mem[64] + 224
        mem[_23 len 224] = call.data[arg2 + (224 * idx) + 36 len 224]
        mem[s] = _23
        s = s + 32
        idx = idx + 1
        continue 
    mem[0] = msg.sender
    mem[32] = 2
    if not stor2[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 'Only managers allowed'
    idx = 0
    while idx < mem[96]:
        require idx < mem[(32 * arg1.length) + 128]
        require idx < mem[96]
        mem[0] = mem[(32 * idx) + 159 len 1]
        mem[32] = 5
        s = sha3(mem[(32 * idx) + 159 len 1], 5)
        t = mem[(32 * idx) + (32 * arg1.length) + 160]
        while mem[(32 * idx) + (32 * arg1.length) + 160] + 224 > t:
            stor[s] = mem[t]
            s = s + 1
            t = t + 32
            continue 
        s = sha3(mem[(32 * idx) + 159 len 1], 5) + 7
        while sha3(mem[(32 * idx) + 159 len 1], 5) + 7 > s:
            stor[s] = 0
            s = s + 1
            continue 
        idx = idx + 1
        continue 
}

function sub_8332c969(?) {
    require ext_code.size(landContractAddress)
    call landContractAddress.0x2421f58e with:
         gas gas_remaining wei
        args ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1')))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2'))))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(landContractAddress)
    call landContractAddress.0x1f03c48f with:
         gas gas_remaining wei
        args ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1')))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2'))))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_9918e0caAddress)
    call sub_9918e0caAddress.0x279ef71d with:
         gas gas_remaining wei
        args uint16(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require uint8(arg4 - 1) < 7
    return (stor5[stor4[arg3 << 240]][uint8(arg4 - 1)].field_0 + (stor5[stor4[arg3 << 240]][uint8(arg4 - 1)].field_0 * uint8(ext_call.return_data[0]) / 200))
}

function sub_9af07f42(?) {
    mem[96 len 256] = code.data[21109 len 256]
    mem[352 len 256] = code.data[21109 len 256]
    mem[64] = 864
    mem[608 len 256] = code.data[21109 len 256]
    idx = 0
    while idx < sub_62afd3ea[arg1 << 248][arg2 << 248].field_0:
        require uint8(uint8(sub_62afd3ea[arg1 << 248][arg2 << 248][idx].field_0) - 1) < 8
        mem[(32 * uint8(uint8(sub_62afd3ea[arg1 << 248][arg2 << 248][idx].field_0) - 1)) + 96] = uint8(sub_62afd3ea[arg1 << 248][arg2 << 248][idx].field_24)
        require idx < sub_62afd3ea[arg1 << 248][arg2 << 248].field_0
        require uint8(uint8(sub_62afd3ea[arg1 << 248][arg2 << 248][idx].field_0) - 1) < 8
        mem[(32 * uint8(uint8(sub_62afd3ea[arg1 << 248][arg2 << 248][idx].field_0) - 1)) + 352] = uint8(sub_62afd3ea[arg1 << 248][arg2 << 248][idx].field_8)
        require idx < sub_62afd3ea[arg1 << 248][arg2 << 248].field_0
        mem[0] = sha3(arg2 << 248, sha3(arg1 << 248, 6))
        require uint8(uint8(sub_62afd3ea[arg1 << 248][arg2 << 248][idx].field_0) - 1) < 8
        mem[(32 * uint8(uint8(sub_62afd3ea[arg1 << 248][arg2 << 248][idx].field_0) - 1)) + 608] = uint8(sub_62afd3ea[arg1 << 248][arg2 << 248][idx].field_16)
        idx = idx + 1
        continue 
    mem[864 len 256] = mem[96 len 256]
    mem[1120 len 256] = mem[352 len 256]
    mem[1376 len 256] = mem[608 len 256]
    return memory
      from mem[64]
       len -mem[64] + 1632
}

function sub_848d66b4(?) {
    mem[64] = 2976
    mem[2688 len 288] = code.data[21109 len 288]
    mem[var8001] = 2688
    s = var8001
    idx = var8002
    while idx - 1:
        mem[64] = mem[64] + 288
        mem[2688 len 288] = code.data[21109 len 288]
        mem[s + 32] = 2688
        s = s + 32
        idx = idx - 1
        continue 
    mem[mem[64] + 4] = arg1
    require ext_code.size(sub_9918e0caAddress)
    call sub_9918e0caAddress.0x279ef71d with:
         gas gas_remaining wei
        args (arg1 << 240)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    s = 0
    t = 0
    idx = 1
    while uint8(idx) < 9:
        mem[0] = uint8(idx)
        mem[32] = 5
        u = s
        t = 0
        while t < 7:
            require uint8(idx) < 9
            require t < 9
            mem[(32 * t) + mem[(32 * uint8(idx)) + 96]] = stor5[idx << 248][t].field_0 + (stor5[idx << 248][t].field_0 * uint8(ext_call.return_data[0]) / 200)
            mem[0] = uint8(idx)
            mem[32] = 5
            u = stor5[idx << 248][t].field_0
            t = t + 1
            continue 
        s = s + 1792
        t = 7
        idx = idx + 1
        continue 
    s = mem[64]
    idx = 0
    while idx < 9:
        _28 = mem[(32 * idx) + 96]
        t = 0
        while t < 288:
            mem[2 * t] = mem[t + _28]
            t = t + 32
            continue 
        t = 576
        idx = idx + 1
        continue 
    return memory
      from mem[64]
       len s - mem[64]
}

function sub_c3b067b9(?) {
    require ext_code.size(landContractAddress)
    call landContractAddress.0x1f03c48f with:
         gas gas_remaining wei
        args ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1')))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2'))))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(landContractAddress)
    call landContractAddress.0x1b6688dd with:
         gas gas_remaining wei
        args ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1')))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2'))))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(sub_9918e0caAddress)
    call sub_9918e0caAddress.0x9a7357ed with:
         gas gas_remaining wei
        args uint16(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(landContractAddress)
    call landContractAddress.0x9af40620 with:
         gas gas_remaining wei
        args ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1')))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2'))))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(sub_9918e0caAddress)
    call sub_9918e0caAddress.0xf778f01 with:
         gas gas_remaining wei
        args 0, 0, ext_call.return_data[32] << 248, basePrice, royalty
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ((2 * ext_call.return_data[0]) + (royalty * uint8(uint8(ext_call.return_data[32])^2)) + basePrice)
}

function sub_e2ea27c1(?) {
    require ext_code.size(landContractAddress)
    call landContractAddress.0x8bcd7116 with:
         gas gas_remaining wei
        args ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1')))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2'))))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if arg3 != ext_call.return_data[30 len 2]:
        if ext_call.return_data[30 len 2]:
            return 0
    if arg4 != uint8(ext_call.return_data[32] + 1):
        return 0
    idx = 0
    while idx < sub_62afd3ea[stor4[arg3 << 240]][arg4 << 248].field_0:
        mem[0] = sha3(arg4 << 248, sha3(sub_c5b5d793[arg3 << 240], 6))
        mem[100] = ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1'))))
        mem[132] = ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2'))))
        mem[164] = uint8(sub_62afd3ea[stor4[arg3 << 240]][arg4 << 248][idx].field_0)
        mem[196] = uint8(sub_62afd3ea[stor4[arg3 << 240]][arg4 << 248][idx].field_8)
        mem[228] = uint8(sub_62afd3ea[stor4[arg3 << 240]][arg4 << 248][idx].field_24)
        mem[260] = uint8(sub_62afd3ea[stor4[arg3 << 240]][arg4 << 248][idx].field_16)
        require ext_code.size(landContractAddress)
        call landContractAddress.0xc1fedee7 with:
             gas gas_remaining wei
            args ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1')))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2')))), uint8(sub_62afd3ea[stor4[arg3 << 240]][arg4 << 248][idx].field_0), uint8(sub_62afd3ea[stor4[arg3 << 240]][arg4 << 248][idx].field_0), uint8(sub_62afd3ea[stor4[arg3 << 240]][arg4 << 248][idx].field_0), uint8(sub_62afd3ea[stor4[arg3 << 240]][arg4 << 248][idx].field_16)
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            idx = idx + 1
            continue 
        else:
            return 0
    return 1
}

function sub_b296560f(?) {
    mem[96 len 256] = code.data[21109 len 256]
    mem[352 len 256] = code.data[21109 len 256]
    mem[64] = 864
    mem[608 len 256] = code.data[21109 len 256]
    s = 0
    idx = 0
    while idx < sub_62afd3ea[arg3 << 248][arg4 << 248].field_0:
        mem[mem[64] + 4] = ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1'))))
        mem[mem[64] + 36] = ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2'))))
        mem[mem[64] + 68] = uint8(sub_62afd3ea[arg3 << 248][arg4 << 248][idx].field_0)
        mem[mem[64] + 100] = uint8(sub_62afd3ea[arg3 << 248][arg4 << 248][idx].field_8)
        mem[mem[64] + 132] = uint8(sub_62afd3ea[arg3 << 248][arg4 << 248][idx].field_16)
        require ext_code.size(landContractAddress)
        call landContractAddress.0x2f244847 with:
             gas gas_remaining wei
            args ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1')))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2')))), uint8(sub_62afd3ea[arg3 << 248][arg4 << 248][idx].field_0), uint8(sub_62afd3ea[arg3 << 248][arg4 << 248][idx].field_0), uint8(sub_62afd3ea[arg3 << 248][arg4 << 248][idx].field_16)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < sub_62afd3ea[arg3 << 248][arg4 << 248].field_0
        require idx < sub_62afd3ea[arg3 << 248][arg4 << 248].field_0
        require uint8(uint8(sub_62afd3ea[arg3 << 248][arg4 << 248][idx].field_0) - 1) < 8
        if uint8(ext_call.return_data[0]) > uint8(sub_62afd3ea[arg3 << 248][arg4 << 248][idx].field_24):
            mem[(32 * uint8(uint8(sub_62afd3ea[arg3 << 248][arg4 << 248][idx].field_0) - 1)) + 96] = 0
        else:
            mem[(32 * uint8(uint8(sub_62afd3ea[arg3 << 248][arg4 << 248][idx].field_0) - 1)) + 96] = uint8(uint8(sub_62afd3ea[arg3 << 248][arg4 << 248][idx].field_24) - ext_call.return_data[0])
        require idx < sub_62afd3ea[arg3 << 248][arg4 << 248].field_0
        require uint8(uint8(sub_62afd3ea[arg3 << 248][arg4 << 248][idx].field_0) - 1) < 8
        mem[(32 * uint8(uint8(sub_62afd3ea[arg3 << 248][arg4 << 248][idx].field_0) - 1)) + 352] = uint8(sub_62afd3ea[arg3 << 248][arg4 << 248][idx].field_8)
        require idx < sub_62afd3ea[arg3 << 248][arg4 << 248].field_0
        mem[0] = sha3(arg4 << 248, sha3(arg3 << 248, 6))
        require uint8(uint8(sub_62afd3ea[arg3 << 248][arg4 << 248][idx].field_0) - 1) < 8
        mem[(32 * uint8(uint8(sub_62afd3ea[arg3 << 248][arg4 << 248][idx].field_0) - 1)) + 608] = uint8(sub_62afd3ea[arg3 << 248][arg4 << 248][idx].field_16)
        s = ext_call.return_data[0]
        idx = idx + 1
        continue 
    mem[mem[64] len 256] = mem[96 len 256]
    mem[mem[64] + 256 len 256] = mem[352 len 256]
    mem[mem[64] + 512 len 256] = mem[608 len 256]
    return memory
      from mem[64]
       len 768
}

function sub_dceb45e0(?) {
    require msg.sender == landContractAddress
    require ext_code.size(landContractAddress)
    call landContractAddress.0x70748343 with:
         gas gas_remaining wei
        args ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1')))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2'))))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_code.size(landContractAddress)
    call landContractAddress.tokens(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 256
    require ext_code.size(sub_52c08f5dAddress)
    call sub_52c08f5dAddress.0x56fce427 with:
         gas gas_remaining wei
        args 0, uint32(('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1'))))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2')))), address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 1 == uint8(ext_call.return_data[32]):
        require ext_code.size(sub_52c08f5dAddress)
        call sub_52c08f5dAddress.0x56fce427 with:
             gas gas_remaining wei
            args 0, uint32(('signextend', 7, ('signextend', 7, ('add', -1, ('signextend', 7, ('param', 'arg1')))))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2')))), address(arg3), arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if 2 == uint8(ext_call.return_data[32]):
            require ext_code.size(sub_52c08f5dAddress)
            call sub_52c08f5dAddress.0x56fce427 with:
                 gas gas_remaining wei
                args 0, uint32(('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1'))))), ('signextend', 7, ('signextend', 7, ('add', -1, ('signextend', 7, ('param', 'arg2'))))), address(arg3), arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if 3 == uint8(ext_call.return_data[32]):
                require ext_code.size(sub_52c08f5dAddress)
                call sub_52c08f5dAddress.0x56fce427 with:
                     gas gas_remaining wei
                    args 0, uint32(('signextend', 7, ('signextend', 7, ('add', -1, ('signextend', 7, ('param', 'arg1')))))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2')))), address(arg3), arg4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_52c08f5dAddress)
                call sub_52c08f5dAddress.0x56fce427 with:
                     gas gas_remaining wei
                    args 0, uint32(('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1'))))), ('signextend', 7, ('signextend', 7, ('add', -1, ('signextend', 7, ('param', 'arg2'))))), address(arg3), arg4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_52c08f5dAddress)
                call sub_52c08f5dAddress.0x56fce427 with:
                     gas gas_remaining wei
                    args 0, uint32(('signextend', 7, ('signextend', 7, ('add', -1, ('signextend', 7, ('param', 'arg1')))))), ('signextend', 7, ('signextend', 7, ('add', -1, ('signextend', 7, ('param', 'arg2'))))), address(arg3), arg4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
}

function sub_942dcd2e(?) {
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + (32 * arg3.length) + 160] = arg5.length
    mem[(32 * arg4.length) + (32 * arg3.length) + 192 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    mem[64] = (32 * arg6.length) + (32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + 224
    mem[(32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + 192] = arg6.length
    mem[(32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + 224 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    if stor2[msg.sender]:
        mem[0] = arg2
        mem[32] = sha3(arg1 << 248, 6)
        idx = 0
        while idx < arg3.length:
            _46 = mem[64]
            mem[64] = mem[64] + 128
            require idx < mem[(32 * arg3.length) + 128]
            mem[_46] = mem[(32 * idx) + (32 * arg3.length) + 191 len 1]
            require idx < mem[(32 * arg4.length) + (32 * arg3.length) + 160]
            mem[_46 + 32] = mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 223 len 1]
            require idx < mem[(32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + 192]
            mem[_46 + 64] = mem[(32 * idx) + (32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + 255 len 1]
            require idx < mem[96]
            mem[_46 + 96] = mem[(32 * idx) + 159 len 1]
            sub_62afd3ea[arg1 << 248][arg2 << 248].field_0++
            mem[0] = sha3(arg2 << 248, sha3(arg1 << 248, 6))
            uint8(sub_62afd3ea[arg1 << 248][arg2 << 248][sub_62afd3ea[arg1 << 248][arg2 << 248].field_0].field_0) = mem[_46 + 31 len 1]
            uint8(sub_62afd3ea[arg1 << 248][arg2 << 248][sub_62afd3ea[arg1 << 248][arg2 << 248].field_0].field_8) = mem[_46 + 63 len 1]
            uint8(sub_62afd3ea[arg1 << 248][arg2 << 248][sub_62afd3ea[arg1 << 248][arg2 << 248].field_0].field_16) = mem[_46 + 95 len 1]
            uint8(sub_62afd3ea[arg1 << 248][arg2 << 248][sub_62afd3ea[arg1 << 248][arg2 << 248].field_0].field_24) = mem[_46 + 127 len 1]
            idx = idx + 1
            continue 
    else:
        if msg.sender != this.address:
            revert with 0, 'Only managers allowed'
        mem[0] = arg2
        mem[32] = sha3(arg1 << 248, 6)
        idx = 0
        while idx < arg3.length:
            _48 = mem[64]
            mem[64] = mem[64] + 128
            require idx < mem[(32 * arg3.length) + 128]
            mem[_48] = mem[(32 * idx) + (32 * arg3.length) + 191 len 1]
            require idx < mem[(32 * arg4.length) + (32 * arg3.length) + 160]
            mem[_48 + 32] = mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 223 len 1]
            require idx < mem[(32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + 192]
            mem[_48 + 64] = mem[(32 * idx) + (32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + 255 len 1]
            require idx < mem[96]
            mem[_48 + 96] = mem[(32 * idx) + 159 len 1]
            sub_62afd3ea[arg1 << 248][arg2 << 248].field_0++
            mem[0] = sha3(arg2 << 248, sha3(arg1 << 248, 6))
            uint8(sub_62afd3ea[arg1 << 248][arg2 << 248][sub_62afd3ea[arg1 << 248][arg2 << 248].field_0].field_0) = mem[_48 + 31 len 1]
            uint8(sub_62afd3ea[arg1 << 248][arg2 << 248][sub_62afd3ea[arg1 << 248][arg2 << 248].field_0].field_8) = mem[_48 + 63 len 1]
            uint8(sub_62afd3ea[arg1 << 248][arg2 << 248][sub_62afd3ea[arg1 << 248][arg2 << 248].field_0].field_16) = mem[_48 + 95 len 1]
            uint8(sub_62afd3ea[arg1 << 248][arg2 << 248][sub_62afd3ea[arg1 << 248][arg2 << 248].field_0].field_24) = mem[_48 + 127 len 1]
            idx = idx + 1
            continue 
}

function sub_2387de16(?) {
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + (32 * arg3.length) + 160] = arg5.length
    mem[(32 * arg4.length) + (32 * arg3.length) + 192 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    mem[64] = (32 * arg6.length) + (32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + 224
    mem[(32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + 192] = arg6.length
    mem[(32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + 224 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    if stor2[msg.sender]:
        sub_62afd3ea[arg1 << 248][arg2 << 248].field_0 = 0
        idx = 0
        while sub_62afd3ea[arg1 << 248][arg2 << 248].field_0 > idx:
            uint32(sub_62afd3ea[arg1 << 248][arg2 << 248][idx].field_0) = 0
            idx = idx + 1
            continue 
        mem[0] = arg2
        mem[32] = sha3(arg1 << 248, 6)
        idx = 0
        while idx < arg3.length:
            _86 = mem[64]
            mem[64] = mem[64] + 128
            require idx < mem[(32 * arg3.length) + 128]
            mem[_86] = mem[(32 * idx) + (32 * arg3.length) + 191 len 1]
            require idx < mem[(32 * arg4.length) + (32 * arg3.length) + 160]
            mem[_86 + 32] = mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 223 len 1]
            require idx < mem[(32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + 192]
            mem[_86 + 64] = mem[(32 * idx) + (32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + 255 len 1]
            require idx < mem[96]
            mem[_86 + 96] = mem[(32 * idx) + 159 len 1]
            sub_62afd3ea[arg1 << 248][arg2 << 248].field_0++
            mem[0] = sha3(arg2 << 248, sha3(arg1 << 248, 6))
            uint8(sub_62afd3ea[arg1 << 248][arg2 << 248][sub_62afd3ea[arg1 << 248][arg2 << 248].field_0].field_0) = mem[_86 + 31 len 1]
            uint8(sub_62afd3ea[arg1 << 248][arg2 << 248][sub_62afd3ea[arg1 << 248][arg2 << 248].field_0].field_8) = mem[_86 + 63 len 1]
            uint8(sub_62afd3ea[arg1 << 248][arg2 << 248][sub_62afd3ea[arg1 << 248][arg2 << 248].field_0].field_16) = mem[_86 + 95 len 1]
            uint8(sub_62afd3ea[arg1 << 248][arg2 << 248][sub_62afd3ea[arg1 << 248][arg2 << 248].field_0].field_24) = mem[_86 + 127 len 1]
            idx = idx + 1
            continue 
    else:
        if msg.sender != this.address:
            revert with 0, 'Only managers allowed'
        sub_62afd3ea[arg1 << 248][arg2 << 248].field_0 = 0
        idx = 0
        while sub_62afd3ea[arg1 << 248][arg2 << 248].field_0 > idx:
            uint32(sub_62afd3ea[arg1 << 248][arg2 << 248][idx].field_0) = 0
            idx = idx + 1
            continue 
        mem[0] = arg2
        mem[32] = sha3(arg1 << 248, 6)
        idx = 0
        while idx < arg3.length:
            _88 = mem[64]
            mem[64] = mem[64] + 128
            require idx < mem[(32 * arg3.length) + 128]
            mem[_88] = mem[(32 * idx) + (32 * arg3.length) + 191 len 1]
            require idx < mem[(32 * arg4.length) + (32 * arg3.length) + 160]
            mem[_88 + 32] = mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + 223 len 1]
            require idx < mem[(32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + 192]
            mem[_88 + 64] = mem[(32 * idx) + (32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + 255 len 1]
            require idx < mem[96]
            mem[_88 + 96] = mem[(32 * idx) + 159 len 1]
            sub_62afd3ea[arg1 << 248][arg2 << 248].field_0++
            mem[0] = sha3(arg2 << 248, sha3(arg1 << 248, 6))
            uint8(sub_62afd3ea[arg1 << 248][arg2 << 248][sub_62afd3ea[arg1 << 248][arg2 << 248].field_0].field_0) = mem[_88 + 31 len 1]
            uint8(sub_62afd3ea[arg1 << 248][arg2 << 248][sub_62afd3ea[arg1 << 248][arg2 << 248].field_0].field_8) = mem[_88 + 63 len 1]
            uint8(sub_62afd3ea[arg1 << 248][arg2 << 248][sub_62afd3ea[arg1 << 248][arg2 << 248].field_0].field_16) = mem[_88 + 95 len 1]
            uint8(sub_62afd3ea[arg1 << 248][arg2 << 248][sub_62afd3ea[arg1 << 248][arg2 << 248].field_0].field_24) = mem[_88 + 127 len 1]
            idx = idx + 1
            continue 
}

function sub_62142f9c(?) payable {
    require ext_code.size(landContractAddress)
    call landContractAddress.0x1b6688dd with:
         gas gas_remaining wei
        args ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1')))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2'))))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Land cant be sold'
    require ext_code.size(landContractAddress)
    call landContractAddress.0x9af40620 with:
         gas gas_remaining wei
        args ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1')))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2'))))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(landContractAddress)
    call landContractAddress.0x1f03c48f with:
         gas gas_remaining wei
        args ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1')))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2'))))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_9918e0caAddress)
    call sub_9918e0caAddress.0x9a7357ed with:
         gas gas_remaining wei
        args uint16(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(sub_9918e0caAddress)
    call sub_9918e0caAddress.0xf778f01 with:
         gas gas_remaining wei
        args 0, 0, ext_call.return_data[32] << 248, basePrice, royalty
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if (2 * ext_call.return_data[0]) + basePrice + (royalty * uint8(uint8(ext_call.return_data[32])^2)) <= 0:
        revert with 0, 'Value is not enough'
    if msg.value < (2 * ext_call.return_data[0]) + basePrice + (royalty * uint8(uint8(ext_call.return_data[32])^2)):
        revert with 0, 'Value is not enough'
    require ext_code.size(landContractAddress)
    call landContractAddress.0xbcb7b1b9 with:
         gas gas_remaining wei
        args 0, uint32(('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1'))))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2')))), msg.sender, (2 * ext_call.return_data[0]) + basePrice + (royalty * uint8(uint8(ext_call.return_data[32])^2))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(landContractAddress)
    call landContractAddress.0xb061857e with:
         gas gas_remaining wei
        args ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1')))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2'))))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_9918e0caAddress)
    call sub_9918e0caAddress.0xa23c4f03 with:
         gas gas_remaining wei
        args ext_call.return_data[0] << 240, ext_call.return_data[0], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if msg.value - (2 * ext_call.return_data[0]) - basePrice - (royalty * uint8(uint8(ext_call.return_data[32])^2)) > 0:
        require ext_code.size(sub_fc7717a3Address)
        call sub_fc7717a3Address.0xc9053d9a with:
             gas gas_remaining wei
            args msg.sender, msg.value - (2 * ext_call.return_data[0]) - basePrice - (royalty * uint8(uint8(ext_call.return_data[32])^2)), 2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    call beneficiaryAddress with:
       value basePrice + (royalty * uint8(uint8(ext_call.return_data[32])^2)) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x8884aa39: ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1')))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2')))), (2 * ext_call.return_data[0]) + basePrice + (royalty * uint8(uint8(ext_call.return_data[32])^2)), ext_call.return_data[0]
}

function sub_b7b2de4c(?) {
    require ext_code.size(landContractAddress)
    call landContractAddress.0x85a714e1 with:
         gas gas_remaining wei
        args ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1')))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2')))), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Only land owner'
    require ext_code.size(landContractAddress)
    call landContractAddress.0x70748343 with:
         gas gas_remaining wei
        args ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1')))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2'))))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_code.size(landContractAddress)
    call landContractAddress.tokens(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 256
    require ext_code.size(landContractAddress)
    call landContractAddress.0xb7b2de4c with:
         gas gas_remaining wei
        args ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1')))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2'))))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[31 len 1]:
        require ext_code.size(sub_52c08f5dAddress)
        call sub_52c08f5dAddress.0x3916d3b0 with:
             gas gas_remaining wei
            args 0, uint32(('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1'))))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2')))), ext_call.return_data[160] << 248, uint16(ext_call.return_data[32]), 0, msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if 1 == ext_call.return_data[31 len 1]:
            require ext_code.size(sub_52c08f5dAddress)
            call sub_52c08f5dAddress.0x3916d3b0 with:
                 gas gas_remaining wei
                args 0, uint32(('signextend', 7, ('signextend', 7, ('add', -1, ('signextend', 7, ('param', 'arg1')))))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2')))), ext_call.return_data[160] << 248, uint16(ext_call.return_data[32]), 5, msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if uint8(ext_call.return_data[0]) > 0:
                require ext_code.size(sub_52c08f5dAddress)
                call sub_52c08f5dAddress.0x3916d3b0 with:
                     gas gas_remaining wei
                    args 0, uint32(('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1'))))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2')))), ext_call.return_data[160] << 248, uint16(ext_call.return_data[32]), 5, msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if 2 == ext_call.return_data[31 len 1]:
                require ext_code.size(sub_52c08f5dAddress)
                call sub_52c08f5dAddress.0x3916d3b0 with:
                     gas gas_remaining wei
                    args 0, uint32(('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1'))))), ('signextend', 7, ('signextend', 7, ('add', -1, ('signextend', 7, ('param', 'arg2'))))), ext_call.return_data[160] << 248, uint16(ext_call.return_data[32]), 5, msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if uint8(ext_call.return_data[0]) > 0:
                    require ext_code.size(sub_52c08f5dAddress)
                    call sub_52c08f5dAddress.0x3916d3b0 with:
                         gas gas_remaining wei
                        args 0, uint32(('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1'))))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2')))), ext_call.return_data[160] << 248, uint16(ext_call.return_data[32]), 5, msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                if ext_call.return_data[31 len 1] != 3:
                    if ext_call.return_data[31 len 1] > 0:
                        require ext_code.size(sub_52c08f5dAddress)
                        call sub_52c08f5dAddress.0x3916d3b0 with:
                             gas gas_remaining wei
                            args 0, uint32(('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1'))))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2')))), ext_call.return_data[160] << 248, uint16(ext_call.return_data[32]), 5, msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    require ext_code.size(sub_52c08f5dAddress)
                    call sub_52c08f5dAddress.0x3916d3b0 with:
                         gas gas_remaining wei
                        args 0, uint32(('signextend', 7, ('signextend', 7, ('add', -1, ('signextend', 7, ('param', 'arg1')))))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2')))), ext_call.return_data[160] << 248, uint16(ext_call.return_data[32]), 5, msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_52c08f5dAddress)
                    call sub_52c08f5dAddress.0x3916d3b0 with:
                         gas gas_remaining wei
                        args 0, uint32(('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1'))))), ('signextend', 7, ('signextend', 7, ('add', -1, ('signextend', 7, ('param', 'arg2'))))), ext_call.return_data[160] << 248, uint16(ext_call.return_data[32]), 5, msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_52c08f5dAddress)
                    call sub_52c08f5dAddress.0x3916d3b0 with:
                         gas gas_remaining wei
                        args 0, uint32(('signextend', 7, ('signextend', 7, ('add', -1, ('signextend', 7, ('param', 'arg1')))))), ('signextend', 7, ('signextend', 7, ('add', -1, ('signextend', 7, ('param', 'arg2'))))), ext_call.return_data[160] << 248, uint16(ext_call.return_data[32]), 5, msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if uint8(ext_call.return_data[0]) > 0:
                        require ext_code.size(sub_52c08f5dAddress)
                        call sub_52c08f5dAddress.0x3916d3b0 with:
                             gas gas_remaining wei
                            args 0, uint32(('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1'))))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2')))), ext_call.return_data[160] << 248, uint16(ext_call.return_data[32]), 5, msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
}

function sub_dfbd78ff(?) payable {
    require ext_code.size(landContractAddress)
    call landContractAddress.0x2421f58e with:
         gas gas_remaining wei
        args ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1')))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2'))))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(landContractAddress)
    call landContractAddress.0x8bcd7116 with:
         gas gas_remaining wei
        args ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1')))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2'))))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(landContractAddress)
    call landContractAddress.0x1f03c48f with:
         gas gas_remaining wei
        args ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1')))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2'))))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_9918e0caAddress)
    call sub_9918e0caAddress.0x279ef71d with:
         gas gas_remaining wei
        args uint16(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.value >= (stor5[stor4[ext_call.return_data[0] << 240]].field_1280 * uint8(ext_call.return_data[0]) / 200) + stor5[stor4[ext_call.return_data[0] << 240]].field_1280
    require ext_code.size(landContractAddress)
    if arg3:
        call landContractAddress.0x13f69bba with:
             gas gas_remaining wei
            args ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1')))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1')))) >> 256, ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2')))), ('signextend', 7, ('signextend', 7, ('add', -1, ('signextend', 7, ('param', 'arg2'))))) >> 256, msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_52c08f5dAddress)
        call sub_52c08f5dAddress.0x127a5652 with:
             gas gas_remaining wei
            args (uint8(stor7.field_8) * stor5[stor4[ext_call.return_data[0] << 240]].field_1280 / 100)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_52c08f5dAddress)
        call sub_52c08f5dAddress.0x127a5652 with:
             gas gas_remaining wei
            args (stor5[stor4[ext_call.return_data[0] << 240]].field_1280 * uint8(stor7.field_16) / 100)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if msg.value > (stor5[stor4[ext_call.return_data[0] << 240]].field_1280 * uint8(ext_call.return_data[0]) / 200) + stor5[stor4[ext_call.return_data[0] << 240]].field_1280:
            require ext_code.size(sub_fc7717a3Address)
            call sub_fc7717a3Address.0xc9053d9a with:
                 gas gas_remaining wei
                args msg.sender, msg.value - (stor5[stor4[ext_call.return_data[0] << 240]].field_1280 * uint8(ext_call.return_data[0]) / 200) - stor5[stor4[ext_call.return_data[0] << 240]].field_1280, 2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        require ext_code.size(sub_9918e0caAddress)
        call sub_9918e0caAddress.0xa23c4f03 with:
             gas gas_remaining wei
            args ext_call.return_data[0] << 240, stor5[stor4[ext_call.return_data[0] << 240]].field_1280 * uint8(ext_call.return_data[0]) / 200, 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_52c08f5dAddress)
        call sub_52c08f5dAddress.0x3916d3b0 with:
             gas gas_remaining wei
            args ('signextend', 7, ('signextend', 7, ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1')))))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2')))))), sub_c5b5d793[ext_call.return_data[0] << 240], ext_call.return_data[0] << 240, 6, msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_52c08f5dAddress)
        call sub_52c08f5dAddress.0x3916d3b0 with:
             gas gas_remaining wei
            args ('signextend', 7, ('signextend', 7, ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1')))))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('signextend', 7, ('add', -1, ('signextend', 7, ('param', 'arg2'))))))), sub_c5b5d793[ext_call.return_data[0] << 240], ext_call.return_data[0] << 240, 6, msg.sender
    else:
        call landContractAddress.0x13f69bba with:
             gas gas_remaining wei
            args ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1')))), ('signextend', 7, ('signextend', 7, ('add', -1, ('signextend', 7, ('param', 'arg1'))))) >> 256, ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2')))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2')))) >> 256, msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_52c08f5dAddress)
        call sub_52c08f5dAddress.0x127a5652 with:
             gas gas_remaining wei
            args (uint8(stor7.field_8) * stor5[stor4[ext_call.return_data[0] << 240]].field_1280 / 100)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_52c08f5dAddress)
        call sub_52c08f5dAddress.0x127a5652 with:
             gas gas_remaining wei
            args (stor5[stor4[ext_call.return_data[0] << 240]].field_1280 * uint8(stor7.field_16) / 100)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if msg.value > (stor5[stor4[ext_call.return_data[0] << 240]].field_1280 * uint8(ext_call.return_data[0]) / 200) + stor5[stor4[ext_call.return_data[0] << 240]].field_1280:
            require ext_code.size(sub_fc7717a3Address)
            call sub_fc7717a3Address.0xc9053d9a with:
                 gas gas_remaining wei
                args msg.sender, msg.value - (stor5[stor4[ext_call.return_data[0] << 240]].field_1280 * uint8(ext_call.return_data[0]) / 200) - stor5[stor4[ext_call.return_data[0] << 240]].field_1280, 2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        require ext_code.size(sub_9918e0caAddress)
        call sub_9918e0caAddress.0xa23c4f03 with:
             gas gas_remaining wei
            args ext_call.return_data[0] << 240, stor5[stor4[ext_call.return_data[0] << 240]].field_1280 * uint8(ext_call.return_data[0]) / 200, 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_52c08f5dAddress)
        call sub_52c08f5dAddress.0x3916d3b0 with:
             gas gas_remaining wei
            args ('signextend', 7, ('signextend', 7, ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1')))))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2')))))), sub_c5b5d793[ext_call.return_data[0] << 240], ext_call.return_data[0] << 240, 6, msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_52c08f5dAddress)
        call sub_52c08f5dAddress.0x3916d3b0 with:
             gas gas_remaining wei
            args ('signextend', 7, ('signextend', 7, ('signextend', 7, ('signextend', 7, ('add', -1, ('signextend', 7, ('param', 'arg1'))))))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2')))))), sub_c5b5d793[ext_call.return_data[0] << 240], ext_call.return_data[0] << 240, 6, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call beneficiaryAddress with:
       value uint8(stor7.field_0) * stor5[stor4[ext_call.return_data[0] << 240]].field_1280 / 100 wei
         gas 2300 * is_zero(value) wei
}

function sub_c2fb8c41(?) payable {
    require ext_code.size(landContractAddress)
    call landContractAddress.0x85a714e1 with:
         gas gas_remaining wei
        args ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1')))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2')))), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Only land owner'
    require ext_code.size(landContractAddress)
    call landContractAddress.0x2421f58e with:
         gas gas_remaining wei
        args ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1')))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2'))))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(landContractAddress)
    call landContractAddress.0x8bcd7116 with:
         gas gas_remaining wei
        args ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1')))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2'))))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[30 len 2] > 0
    require ext_call.return_data[63 len 1] < 5
    require ext_code.size(landContractAddress)
    call landContractAddress.0x1f03c48f with:
         gas gas_remaining wei
        args ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1')))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2'))))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_9918e0caAddress)
    call sub_9918e0caAddress.0x279ef71d with:
         gas gas_remaining wei
        args uint16(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require uint8(ext_call.return_data[32]) < 7
    require (stor5[stor4[ext_call.return_data[0] << 240]][uint8(ext_call.return_data[32])].field_0 * uint8(ext_call.return_data[0]) / 200) + stor5[stor4[ext_call.return_data[0] << 240]][uint8(ext_call.return_data[32])].field_0 <= msg.value
    require ext_code.size(landContractAddress)
    call landContractAddress.0x8bcd7116 with:
         gas gas_remaining wei
        args ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1')))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2'))))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if uint16(ext_call.return_data[0]) != ext_call.return_data[30 len 2]:
        if ext_call.return_data[30 len 2]:
            revert with 0, 'Requirements not satisfied'
    if uint8(ext_call.return_data[32] + 1) != uint8(ext_call.return_data[32] + 1):
        revert with 0, 'Requirements not satisfied'
    idx = 0
    while idx < sub_62afd3ea[stor4[ext_call.return_data[0] << 240]][ext_call.return_data[32] + 1 << 248].field_0:
        mem[0] = sha3(ext_call.return_data[32] + 1 << 248, sha3(sub_c5b5d793[ext_call.return_data[0] << 240], 6))
        mem[100] = ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1'))))
        mem[132] = ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2'))))
        mem[164] = uint8(sub_62afd3ea[stor4[ext_call.return_data[0] << 240]][ext_call.return_data[32] + 1 << 248][idx].field_0)
        mem[196] = uint8(sub_62afd3ea[stor4[ext_call.return_data[0] << 240]][ext_call.return_data[32] + 1 << 248][idx].field_8)
        mem[228] = uint8(sub_62afd3ea[stor4[ext_call.return_data[0] << 240]][ext_call.return_data[32] + 1 << 248][idx].field_24)
        mem[260] = uint8(sub_62afd3ea[stor4[ext_call.return_data[0] << 240]][ext_call.return_data[32] + 1 << 248][idx].field_16)
        require ext_code.size(landContractAddress)
        call landContractAddress.0xc1fedee7 with:
             gas gas_remaining wei
            args ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1')))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2')))), uint8(sub_62afd3ea[stor4[ext_call.return_data[0] << 240]][ext_call.return_data[32] + 1 << 248][idx].field_0), uint8(sub_62afd3ea[stor4[ext_call.return_data[0] << 240]][ext_call.return_data[32] + 1 << 248][idx].field_0), uint8(sub_62afd3ea[stor4[ext_call.return_data[0] << 240]][ext_call.return_data[32] + 1 << 248][idx].field_0), uint8(sub_62afd3ea[stor4[ext_call.return_data[0] << 240]][ext_call.return_data[32] + 1 << 248][idx].field_16)
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Requirements not satisfied'
        idx = idx + 1
        continue 
    require ext_code.size(landContractAddress)
    call landContractAddress.0x1cc71715 with:
         gas gas_remaining wei
        args ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1')))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2'))))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require ext_code.size(landContractAddress)
    call landContractAddress.0xa8dafaa8 with:
         gas gas_remaining wei
        args ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1')))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2')))), ext_call.return_data[0] << 240, ext_call.return_data[32] + 1 << 248, sub_c5b5d793[ext_call.return_data[0] << 240]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if (stor5[stor4[ext_call.return_data[0] << 240]][uint8(ext_call.return_data[32])].field_0 * uint8(ext_call.return_data[0]) / 200) + stor5[stor4[ext_call.return_data[0] << 240]][uint8(ext_call.return_data[32])].field_0 > 0:
        require uint8(ext_call.return_data[32]) < 7
        require ext_code.size(sub_52c08f5dAddress)
        call sub_52c08f5dAddress.0x127a5652 with:
             gas gas_remaining wei
            args (stor5[stor4[ext_call.return_data[0] << 240]][uint8(ext_call.return_data[32])].field_0 * uint8(stor7.field_8) / 100)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require uint8(ext_call.return_data[32]) < 7
        require ext_code.size(sub_52c08f5dAddress)
        call sub_52c08f5dAddress.0x127a5652 with:
             gas gas_remaining wei
            args (stor5[stor4[ext_call.return_data[0] << 240]][uint8(ext_call.return_data[32])].field_0 * uint8(stor7.field_16) / 100)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_52c08f5dAddress)
    call sub_52c08f5dAddress.0x3916d3b0 with:
         gas gas_remaining wei
        args ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1')))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2')))), sub_c5b5d793[ext_call.return_data[0] << 240], ext_call.return_data[32] << 240, ext_call.return_data[32] + 1 << 248, address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_9918e0caAddress)
    call sub_9918e0caAddress.0xa23c4f03 with:
         gas gas_remaining wei
        args ext_call.return_data[0] << 240, stor5[stor4[ext_call.return_data[0] << 240]][uint8(ext_call.return_data[32])].field_0 * uint8(ext_call.return_data[0]) / 200, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if msg.value > (stor5[stor4[ext_call.return_data[0] << 240]][uint8(ext_call.return_data[32])].field_0 * uint8(ext_call.return_data[0]) / 200) + stor5[stor4[ext_call.return_data[0] << 240]][uint8(ext_call.return_data[32])].field_0:
        require ext_code.size(sub_fc7717a3Address)
        call sub_fc7717a3Address.0xc9053d9a with:
             gas gas_remaining wei
            args msg.sender, msg.value - (stor5[stor4[ext_call.return_data[0] << 240]][uint8(ext_call.return_data[32])].field_0 * uint8(ext_call.return_data[0]) / 200) - stor5[stor4[ext_call.return_data[0] << 240]][uint8(ext_call.return_data[32])].field_0, 2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    require uint8(ext_call.return_data[32]) < 7
    call beneficiaryAddress with:
       value uint8(stor7.field_0) * stor5[stor4[ext_call.return_data[0] << 240]][uint8(ext_call.return_data[32])].field_0 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_7d3ca2eb(?) payable {
    mem[224 len 128] = code.data[21109 len 128]
    require ext_code.size(landContractAddress)
    call landContractAddress.0x2421f58e with:
         gas gas_remaining wei
        args ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1')))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2'))))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(landContractAddress)
    call landContractAddress.0x8bcd7116 with:
         gas gas_remaining wei
        args ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1')))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2'))))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(landContractAddress)
    call landContractAddress.0x1f03c48f with:
         gas gas_remaining wei
        args ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1')))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2'))))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_9918e0caAddress)
    call sub_9918e0caAddress.0x279ef71d with:
         gas gas_remaining wei
        args uint16(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.value >= (stor5[stor4[ext_call.return_data[0] << 240]].field_1536 * uint8(ext_call.return_data[0]) / 200) + stor5[stor4[ext_call.return_data[0] << 240]].field_1536
    mem[352] = ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1'))))
    mem[384] = ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1'))))
    mem[416] = ('signextend', 7, ('signextend', 7, ('add', -1, ('signextend', 7, ('param', 'arg1')))))
    mem[448] = ('signextend', 7, ('signextend', 7, ('add', -1, ('signextend', 7, ('param', 'arg1')))))
    mem[480] = ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2'))))
    mem[512] = ('signextend', 7, ('signextend', 7, ('add', -1, ('signextend', 7, ('param', 'arg2')))))
    mem[544] = ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2'))))
    mem[576] = ('signextend', 7, ('signextend', 7, ('add', -1, ('signextend', 7, ('param', 'arg2')))))
    mem[612 len 128] = ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1')))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1')))), ('signextend', 7, ('signextend', 7, ('add', -1, ('signextend', 7, ('param', 'arg1'))))), ('signextend', 7, ('signextend', 7, ('add', -1, ('signextend', 7, ('param', 'arg1')))))
    mem[740 len 128] = ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2')))), ('signextend', 7, ('signextend', 7, ('add', -1, ('signextend', 7, ('param', 'arg2'))))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2')))), ('signextend', 7, ('signextend', 7, ('add', -1, ('signextend', 7, ('param', 'arg2')))))
    mem[868] = msg.sender
    require ext_code.size(landContractAddress)
    call landContractAddress.0xb70f4eaa with:
         gas gas_remaining wei
        args ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1')))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1')))), ('signextend', 7, ('signextend', 7, ('add', -1, ('signextend', 7, ('param', 'arg1'))))), ('signextend', 7, ('signextend', 7, ('add', -1, ('signextend', 7, ('param', 'arg1'))))) >> 768, ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2')))), ('signextend', 7, ('signextend', 7, ('add', -1, ('signextend', 7, ('param', 'arg2'))))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2')))), ('signextend', 7, ('signextend', 7, ('add', -1, ('signextend', 7, ('param', 'arg2'))))) >> 768, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_52c08f5dAddress)
    call sub_52c08f5dAddress.0x127a5652 with:
         gas gas_remaining wei
        args (uint8(stor7.field_8) * stor5[stor4[ext_call.return_data[0] << 240]].field_1536 / 100)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_52c08f5dAddress)
    call sub_52c08f5dAddress.0x127a5652 with:
         gas gas_remaining wei
        args (stor5[stor4[ext_call.return_data[0] << 240]].field_1536 * uint8(stor7.field_16) / 100)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if msg.value <= (stor5[stor4[ext_call.return_data[0] << 240]].field_1536 * uint8(ext_call.return_data[0]) / 200) + stor5[stor4[ext_call.return_data[0] << 240]].field_1536:
        mem[608] = 0xa23c4f0300000000000000000000000000000000000000000000000000000000
        mem[612] = uint16(ext_call.return_data[0])
        mem[644] = stor5[stor4[ext_call.return_data[0] << 240]].field_1536 * uint8(ext_call.return_data[0]) / 200
        mem[676] = 1
        require ext_code.size(sub_9918e0caAddress)
        call sub_9918e0caAddress.0xa23c4f03 with:
             gas gas_remaining wei
            args ext_call.return_data[0] << 240, stor5[stor4[ext_call.return_data[0] << 240]].field_1536 * uint8(ext_call.return_data[0]) / 200, 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = 0
        while uint8(idx) < 4:
            _59 = mem[(32 * uint8(idx)) + 352]
            _61 = mem[(32 * uint8(idx)) + 480]
            mem[0] = uint16(ext_call.return_data[0])
            mem[32] = 4
            mem[608] = 0x3916d3b000000000000000000000000000000000000000000000000000000000
            mem[612] = ('signextend', 7, ('signextend', 7, ('var', '_59')))
            mem[644] = ('signextend', 7, ('signextend', 7, ('var', '_61')))
            mem[676] = sub_c5b5d793[ext_call.return_data[0] << 240]
            mem[708] = uint16(ext_call.return_data[0])
            mem[740] = 7
            mem[772] = msg.sender
            require ext_code.size(sub_52c08f5dAddress)
            call sub_52c08f5dAddress.0x3916d3b0 with:
                 gas gas_remaining wei
                args ('signextend', 7, ('signextend', 7, ('var', '_59'))), ('signextend', 7, ('signextend', 7, ('var', '_61'))), sub_c5b5d793[ext_call.return_data[0] << 240], ext_call.return_data[0] << 240, 7, msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    else:
        require ext_code.size(sub_fc7717a3Address)
        call sub_fc7717a3Address.0xc9053d9a with:
             gas gas_remaining wei
            args msg.sender, msg.value - (stor5[stor4[ext_call.return_data[0] << 240]].field_1536 * uint8(ext_call.return_data[0]) / 200) - stor5[stor4[ext_call.return_data[0] << 240]].field_1536, 2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[608] = 0xa23c4f0300000000000000000000000000000000000000000000000000000000
        mem[612] = uint16(ext_call.return_data[0])
        mem[644] = stor5[stor4[ext_call.return_data[0] << 240]].field_1536 * uint8(ext_call.return_data[0]) / 200
        mem[676] = 1
        require ext_code.size(sub_9918e0caAddress)
        call sub_9918e0caAddress.0xa23c4f03 with:
             gas gas_remaining wei
            args ext_call.return_data[0] << 240, stor5[stor4[ext_call.return_data[0] << 240]].field_1536 * uint8(ext_call.return_data[0]) / 200, 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = 0
        while uint8(idx) < 4:
            _60 = mem[(32 * uint8(idx)) + 352]
            _63 = mem[(32 * uint8(idx)) + 480]
            mem[0] = uint16(ext_call.return_data[0])
            mem[32] = 4
            mem[608] = 0x3916d3b000000000000000000000000000000000000000000000000000000000
            mem[612] = ('signextend', 7, ('signextend', 7, ('var', '_60')))
            mem[644] = ('signextend', 7, ('signextend', 7, ('var', '_63')))
            mem[676] = sub_c5b5d793[ext_call.return_data[0] << 240]
            mem[708] = uint16(ext_call.return_data[0])
            mem[740] = 7
            mem[772] = msg.sender
            require ext_code.size(sub_52c08f5dAddress)
            call sub_52c08f5dAddress.0x3916d3b0 with:
                 gas gas_remaining wei
                args ('signextend', 7, ('signextend', 7, ('var', '_60'))), ('signextend', 7, ('signextend', 7, ('var', '_63'))), sub_c5b5d793[ext_call.return_data[0] << 240], ext_call.return_data[0] << 240, 7, msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    call beneficiaryAddress with:
       value uint8(stor7.field_0) * stor5[stor4[ext_call.return_data[0] << 240]].field_1536 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3a95800a(?) payable {
    require ext_code.size(landContractAddress)
    call landContractAddress.0x85a714e1 with:
         gas gas_remaining wei
        args ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1')))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2')))), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Only land owner'
    require ext_code.size(landContractAddress)
    call landContractAddress.0x2421f58e with:
         gas gas_remaining wei
        args ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1')))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2'))))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(landContractAddress)
    call landContractAddress.0x1f03c48f with:
         gas gas_remaining wei
        args ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1')))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2'))))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_9918e0caAddress)
    call sub_9918e0caAddress.0x279ef71d with:
         gas gas_remaining wei
        args uint16(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg3 > 0
    require (stor5[stor4[arg3 << 240]].field_0 * uint8(ext_call.return_data[0]) / 200) + stor5[stor4[arg3 << 240]].field_0 > 0
    require (stor5[stor4[arg3 << 240]].field_0 * uint8(ext_call.return_data[0]) / 200) + stor5[stor4[arg3 << 240]].field_0 <= msg.value
    require ext_code.size(landContractAddress)
    call landContractAddress.0x8bcd7116 with:
         gas gas_remaining wei
        args ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1')))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2'))))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if arg3 == ext_call.return_data[30 len 2]:
        if uint8(ext_call.return_data[32] + 1) != 1:
            revert with 0, 'Requirements not satisfied'
        idx = 0
        while idx < sub_62afd3ea[stor4[arg3 << 240]][1].field_0:
            mem[0] = sha3(1, sha3(sub_c5b5d793[arg3 << 240], 6))
            mem[100] = ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1'))))
            mem[132] = ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2'))))
            mem[164] = uint8(sub_62afd3ea[stor4[arg3 << 240]][1][idx].field_0)
            mem[196] = uint8(sub_62afd3ea[stor4[arg3 << 240]][1][idx].field_8)
            mem[228] = uint8(sub_62afd3ea[stor4[arg3 << 240]][1][idx].field_24)
            mem[260] = uint8(sub_62afd3ea[stor4[arg3 << 240]][1][idx].field_16)
            require ext_code.size(landContractAddress)
            call landContractAddress.0xc1fedee7 with:
                 gas gas_remaining wei
                args ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1')))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2')))), uint8(sub_62afd3ea[stor4[arg3 << 240]][1][idx].field_0), uint8(sub_62afd3ea[stor4[arg3 << 240]][1][idx].field_0), uint8(sub_62afd3ea[stor4[arg3 << 240]][1][idx].field_0), uint8(sub_62afd3ea[stor4[arg3 << 240]][1][idx].field_16)
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Requirements not satisfied'
            idx = idx + 1
            continue 
        require ext_code.size(sub_52c08f5dAddress)
        call sub_52c08f5dAddress.0x532e7c33 with:
             gas gas_remaining wei
            args msg.sender, 64, 0
    else:
        if ext_call.return_data[30 len 2]:
            revert with 0, 'Requirements not satisfied'
        if uint8(ext_call.return_data[32] + 1) != 1:
            revert with 0, 'Requirements not satisfied'
        idx = 0
        while idx < sub_62afd3ea[stor4[arg3 << 240]][1].field_0:
            mem[0] = sha3(1, sha3(sub_c5b5d793[arg3 << 240], 6))
            mem[100] = ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1'))))
            mem[132] = ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2'))))
            mem[164] = uint8(sub_62afd3ea[stor4[arg3 << 240]][1][idx].field_0)
            mem[196] = uint8(sub_62afd3ea[stor4[arg3 << 240]][1][idx].field_8)
            mem[228] = uint8(sub_62afd3ea[stor4[arg3 << 240]][1][idx].field_24)
            mem[260] = uint8(sub_62afd3ea[stor4[arg3 << 240]][1][idx].field_16)
            require ext_code.size(landContractAddress)
            call landContractAddress.0xc1fedee7 with:
                 gas gas_remaining wei
                args ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1')))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2')))), uint8(sub_62afd3ea[stor4[arg3 << 240]][1][idx].field_0), uint8(sub_62afd3ea[stor4[arg3 << 240]][1][idx].field_0), uint8(sub_62afd3ea[stor4[arg3 << 240]][1][idx].field_0), uint8(sub_62afd3ea[stor4[arg3 << 240]][1][idx].field_16)
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Requirements not satisfied'
            idx = idx + 1
            continue 
        require ext_code.size(sub_52c08f5dAddress)
        call sub_52c08f5dAddress with:
             gas gas_remaining wei
            args msg.sender, 64, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[0] < 0:
        require ext_code.size(sub_52c08f5dAddress)
        call sub_52c08f5dAddress.0xe3533422 with:
             gas gas_remaining wei
            args msg.sender, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(landContractAddress)
    call landContractAddress.0x1cc71715 with:
         gas gas_remaining wei
        args ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1')))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2'))))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require ext_code.size(landContractAddress)
    call landContractAddress.0xa8dafaa8 with:
         gas gas_remaining wei
        args ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1')))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2')))), arg3 << 240, 1, sub_c5b5d793[arg3 << 240]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(sub_52c08f5dAddress)
    if (stor5[stor4[arg3 << 240]].field_0 * uint8(ext_call.return_data[0]) / 200) + stor5[stor4[arg3 << 240]].field_0 > 0:
        call sub_52c08f5dAddress.0x127a5652 with:
             gas gas_remaining wei
            args (stor5[stor4[arg3 << 240]].field_0 * uint8(stor7.field_8) / 100)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_52c08f5dAddress)
        call sub_52c08f5dAddress.0x127a5652 with:
             gas gas_remaining wei
            args (stor5[stor4[arg3 << 240]].field_0 * uint8(stor7.field_16) / 100)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    call sub_52c08f5dAddress.0x3916d3b0 with:
         gas gas_remaining wei
        args ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg1')))), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2')))), sub_c5b5d793[arg3 << 240], ext_call.return_data[32] << 240, 1, address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_9918e0caAddress)
    call sub_9918e0caAddress.0xa23c4f03 with:
         gas gas_remaining wei
        args ext_call.return_data[0] << 240, stor5[stor4[arg3 << 240]].field_0 * uint8(ext_call.return_data[0]) / 200, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if msg.value > (stor5[stor4[arg3 << 240]].field_0 * uint8(ext_call.return_data[0]) / 200) + stor5[stor4[arg3 << 240]].field_0:
        require ext_code.size(sub_fc7717a3Address)
        call sub_fc7717a3Address.0xc9053d9a with:
             gas gas_remaining wei
            args msg.sender, msg.value - (stor5[stor4[arg3 << 240]].field_0 * uint8(ext_call.return_data[0]) / 200) - stor5[stor4[arg3 << 240]].field_0, 2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    call beneficiaryAddress with:
       value uint8(stor7.field_0) * stor5[stor4[arg3 << 240]].field_0 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}

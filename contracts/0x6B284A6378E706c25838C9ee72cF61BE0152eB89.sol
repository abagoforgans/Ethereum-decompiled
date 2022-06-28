contract main {




// =====================  Runtime code  =====================


address ownerAddress;
uint256 sub_36b89709;
uint256 sub_e1c29a51;
uint8 k;
uint8 n; offset 8
array of struct beneficiaries;
array of struct sub_7b128d70;
mapping of struct sub_6f7bf246;
mapping of struct keeperData;

function getOwnerAddress() {
    return ownerAddress
}

function n() {
    return n
}

function sub_36b89709(?) {
    return sub_36b89709
}

function keeperData(address arg1) {
    mem[128] = keeperData[arg1].field_0
    idx = 128
    s = 0
    while keeperData[arg1].length + 96 > idx:
        mem[idx + 32] = keeperData[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=keeperData[arg1].length, data=mem[128 len keeperData[arg1].length]), 
           keeperData[arg1].field_256,
           uint8(keeperData[arg1].field_512)
}

function sub_6f7bf246(?) {
    return sub_6f7bf246[arg1].field_0, sub_6f7bf246[arg1].field_256
}

function sub_7b128d70(?) {
    require arg1 < sub_7b128d70.length
    return address(sub_7b128d70[arg1].field_0)
}

function k() {
    return k
}

function sub_c51a4f10(?) {
    return sub_6f7bf246[address(arg1)].field_0
}

function sub_e1c29a51(?) {
    return sub_e1c29a51
}

function beneficiaries(uint256 arg1) {
    require arg1 < beneficiaries.length
    return address(beneficiaries[arg1].field_0)
}

function kill() {
    if ownerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can call this function.'
    selfdestruct(ownerAddress)
}

function _fallback() payable {
    if msg.sender == ownerAddress:
        sub_e1c29a51 += sub_36b89709
}

function sub_e34a1551(?) {
    if block.timestamp < sub_e1c29a51:
        return 1
    else:
        return 0
}

function sub_dd120bb9(?) {
    if ownerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can call this function.'
    sub_e1c29a51 += sub_36b89709
}

function isKeeper(address arg1) {
    idx = 0
    while uint8(idx) < sub_7b128d70.length:
        mem[0] = 5
        if arg1 != address(sub_7b128d70[uint8(idx)].field_0):
            idx = idx + 1
            continue 
        return 1
    return 0
}

function isBeneficiary(address arg1) {
    idx = 0
    while uint8(idx) < beneficiaries.length:
        mem[0] = 4
        if arg1 != address(beneficiaries[uint8(idx)].field_0):
            idx = idx + 1
            continue 
        return 1
    return 0
}

function sub_ce014910(?) {
    if ownerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can call this function.'
    if arg1 >= 0:
        sub_36b89709 = 24 * 3600 * arg1
    sub_e1c29a51 += sub_36b89709
}

function withdraw(uint256 arg1) {
    if ownerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can call this function.'
    if eth.balance(this.address) >= arg1:
        call msg.sender with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    sub_e1c29a51 += sub_36b89709
}

function sub_388cb8f1(?) {
    if not sub_7b128d70.length:
        mem[(32 * sub_7b128d70.length) + 128] = 32
        mem[(32 * sub_7b128d70.length) + 160] = sub_7b128d70.length
        mem[(32 * sub_7b128d70.length) + 192 len floor32(sub_7b128d70.length)] = mem[128 len floor32(sub_7b128d70.length)]
        return memory
          from (32 * sub_7b128d70.length) + 128
           len (96 * sub_7b128d70.length) + 64
    mem[128] = address(sub_7b128d70.field_0)
    idx = 128
    s = 0
    while (32 * sub_7b128d70.length) + 96 > idx:
        mem[idx + 32] = address(sub_7b128d70[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_7b128d70.length) + 192 len floor32(sub_7b128d70.length)] = mem[128 len floor32(sub_7b128d70.length)]
    return Array(len=sub_7b128d70.length, data=mem[128 len floor32(sub_7b128d70.length)], mem[(32 * sub_7b128d70.length) + floor32(sub_7b128d70.length) + 192 len (32 * sub_7b128d70.length) - floor32(sub_7b128d70.length)]), 
}

function getBeneficiaries() {
    if not beneficiaries.length:
        mem[(32 * beneficiaries.length) + 128] = 32
        mem[(32 * beneficiaries.length) + 160] = beneficiaries.length
        mem[(32 * beneficiaries.length) + 192 len floor32(beneficiaries.length)] = mem[128 len floor32(beneficiaries.length)]
        return memory
          from (32 * beneficiaries.length) + 128
           len (96 * beneficiaries.length) + 64
    mem[128] = address(beneficiaries.field_0)
    idx = 128
    s = 0
    while (32 * beneficiaries.length) + 96 > idx:
        mem[idx + 32] = address(beneficiaries[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * beneficiaries.length) + 192 len floor32(beneficiaries.length)] = mem[128 len floor32(beneficiaries.length)]
    return Array(len=beneficiaries.length, data=mem[128 len floor32(beneficiaries.length)], mem[(32 * beneficiaries.length) + floor32(beneficiaries.length) + 192 len (32 * beneficiaries.length) - floor32(beneficiaries.length)]), 
}

function sub_7d3bca76(?) {
    if ownerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can call this function.'
    sub_6f7bf246[address(arg1)].field_0 = 0
    sub_6f7bf246[address(arg1)].field_256 = 0
    idx = 0
    while uint8(idx) < uint8(beneficiaries.length):
        require uint8(idx) < beneficiaries.length
        mem[0] = 4
        if address(beneficiaries[uint8(idx)].field_0) != arg1:
            idx = idx + 1
            continue 
        if ('signextend', 0, ('var', 0)) > -1:
            s = idx
            while uint8(s) < uint8(beneficiaries.length - 1):
                require uint8(s + 1) < beneficiaries.length
                require uint8(s) < beneficiaries.length
                mem[0] = 4
                address(beneficiaries[uint8(s)].field_0) = address(beneficiaries[uint8(s + 1)].field_0)
                s = s + 1
                continue 
            beneficiaries.length--
            if beneficiaries.length > beneficiaries.length - 1:
                idx = sha3(4) + beneficiaries.length - 1
                while sha3(4) + beneficiaries.length > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
}

function sub_205db87f(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if ownerAddress != msg.sender:
        revert with 0, 'Only owner can call this function.'
    if arg1.length < 2:
        revert with 0, 'At least 2 secret keepers must be provided'
    idx = 0
    while uint8(idx) < arg1.length:
        require uint8(idx) < arg2.length
        require uint8(idx) < arg1.length
        keeperData[mem[(32 * uint8(idx)) + 140 len 20]].field_256 = mem[(32 * uint8(idx)) + (32 * arg1.length) + 160]
        require uint8(idx) < arg1.length
        mem[32] = 7
        uint8(keeperData[mem[(32 * uint8(idx)) + 140 len 20]].field_512) = uint8(idx)
        require uint8(idx) < arg1.length
        s = 0
        while uint8(s) < sub_7b128d70.length:
            mem[0] = 5
            if mem[(32 * uint8(idx)) + 140 len 20] != address(sub_7b128d70[uint8(s)].field_0):
                s = s + 1
                continue 
            idx = idx + 1
            continue 
        require uint8(idx) < arg1.length
        sub_7b128d70.length++
        mem[0] = 5
        address(sub_7b128d70[sub_7b128d70.length].field_0) = mem[(32 * uint8(idx)) + 140 len 20]
        idx = idx + 1
        continue 
    sub_e1c29a51 += sub_36b89709
}

function sub_2362b7f6(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    if ownerAddress != msg.sender:
        revert with 0, 'Only owner can call this function.'
    idx = 0
    while uint8(idx) < arg1.length:
        require uint8(idx) < arg2.length
        require uint8(idx) < arg1.length
        sub_6f7bf246[mem[(32 * uint8(idx)) + 140 len 20]].field_0 = mem[(32 * uint8(idx)) + (32 * arg1.length) + 160]
        require uint8(idx) < arg3.length
        require uint8(idx) < arg1.length
        mem[32] = 6
        sub_6f7bf246[mem[(32 * uint8(idx)) + 140 len 20]].field_256 = mem[(32 * uint8(idx)) + (32 * arg1.length) + (32 * arg2.length) + 192]
        require uint8(idx) < arg1.length
        s = 0
        while uint8(s) < beneficiaries.length:
            mem[0] = 4
            if mem[(32 * uint8(idx)) + 140 len 20] != address(beneficiaries[uint8(s)].field_0):
                s = s + 1
                continue 
            idx = idx + 1
            continue 
        require uint8(idx) < arg1.length
        beneficiaries.length++
        mem[0] = 4
        address(beneficiaries[beneficiaries.length].field_0) = mem[(32 * uint8(idx)) + 140 len 20]
        idx = idx + 1
        continue 
    sub_e1c29a51 += sub_36b89709
}

function claimFunds(address arg1) {
    require 0 < beneficiaries.length
    idx = 0
    while arg1 != address(beneficiaries[uint8(idx)].field_0):
        require uint8(idx + 1) < beneficiaries.length
        mem[0] = 4
        idx = idx + 1
        continue 
    require block.timestamp >= sub_e1c29a51
    require beneficiaries.length
    call arg1 with:
       value eth.balance(this.address) / beneficiaries.length wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if ownerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can call this function.'
    sub_6f7bf246[address(arg1)].field_0 = 0
    sub_6f7bf246[address(arg1)].field_256 = 0
    idx = 0
    while uint8(idx) < uint8(beneficiaries.length):
        require uint8(idx) < beneficiaries.length
        mem[0] = 4
        if address(beneficiaries[uint8(idx)].field_0) != arg1:
            idx = idx + 1
            continue 
        if ('signextend', 0, ('var', 0)) > -1:
            s = idx
            while uint8(s) < uint8(beneficiaries.length - 1):
                require uint8(s + 1) < beneficiaries.length
                require uint8(s) < beneficiaries.length
                mem[0] = 4
                address(beneficiaries[uint8(s)].field_0) = address(beneficiaries[uint8(s + 1)].field_0)
                s = s + 1
                continue 
            beneficiaries.length--
            if beneficiaries.length > beneficiaries.length - 1:
                idx = sha3(4) + beneficiaries.length - 1
                while sha3(4) + beneficiaries.length > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
}

function sub_f94bfea0(?) {
    mem[64] = ceil32(arg2.length) + 128
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    idx = 0
    while uint8(idx) < sub_7b128d70.length:
        mem[0] = 5
        if address(sub_7b128d70[uint8(idx)].field_0) != msg.sender:
            idx = idx + 1
            continue 
        if block.timestamp < sub_e1c29a51:
            revert with 0, 'PoL timer has not reached zero yet.'
        s = 128
        t = ceil32(arg2.length) + 160
        idx = arg2.length
        while idx >= 32:
            mem[t] = mem[s]
            s = s + 32
            t = t + 32
            idx = idx - 32
            continue 
        mem[ceil32(arg2.length) + floor32(arg2.length) + 160] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32] or Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, mem[ceil32(arg2.length) + floor32(arg2.length) + 160])
        mem[ceil32(arg2.length) + 128] = arg2.length
        s = ceil32(arg2.length) + 160
        t = arg2.length + ceil32(arg2.length) + 160
        idx = arg2.length
        while idx >= 32:
            mem[t] = mem[s]
            s = s + 32
            t = t + 32
            idx = idx - 32
            continue 
        mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 160] = mem[ceil32(arg2.length) + -(arg2.length % 32) + floor32(arg2.length) + 192 len arg2.length % 32] or Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 160])
        if keeperData[address(arg1)].field_256 == sha3(mem[arg2.length + ceil32(arg2.length) + 160 len arg2.length]):
            keeperData[address(arg1)].field_0 = (2 * arg2.length) + 1
            s = sha3(sha3(address(arg1), 7))
            idx = 128
            while arg2.length + 128 > idx:
                stor[s] = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = sha3(sha3(address(arg1), 7)) + (Mask(251, 0, arg2.length + 31) >> 5)
            while sha3(sha3(address(arg1), 7)) + (keeperData[address(arg1)].length + 31 / 32) > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
    revert with 0, 'Only a secret keeper can call this function.'
}



}

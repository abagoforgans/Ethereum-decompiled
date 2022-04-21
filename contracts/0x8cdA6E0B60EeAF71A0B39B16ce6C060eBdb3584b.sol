contract main {


// =======================  Init code  ======================


address stor13;
address stor14;
address stor15;

function _fallback() {
    stor13 = code.data[15904 len 20]
    stor14 = code.data[15936 len 20]
    stor15 = 0x1a6184cd4c5bea62b0116de7962ee7315b7bcbce
    return code.data[137 len 15755]
}



// =====================  Runtime code  =====================


#
#  - sub_635d8c07(?)
#
array of struct sub_d3836152;
mapping of uint8 stor1;
mapping of address sub_20a4d9fa;
mapping of uint8 stor3;
array of uint256 symbolFrom;
mapping of uint8 stor5;
mapping of uint256 sub_d4dd8d9c;
mapping of uint256 rate;
mapping of address sub_f0f4a34c;
mapping of address sub_cf25d8ec;
mapping of address sub_2d5cb74b;
mapping of uint8 stor11;
mapping of uint256 balances;
address sub_5d37e2ccAddress;
address managerAddress;
address sub_205cd37bAddress;
address dexAddress;

function sub_205cd37b(?) {
    return sub_205cd37bAddress
}

function sub_20a4d9fa(?) {
    return sub_20a4d9fa[arg1][arg2][arg3]
}

function sub_2d5cb74b(?) {
    return sub_2d5cb74b[arg1][arg2]
}

function getRate(address arg1) {
    return rate[arg1]
}

function sub_5d37e2cc(?) {
    return sub_5d37e2ccAddress
}

function sub_5def14f2(?) {
    return bool(stor11[arg1][arg2])
}

function dex() {
    return dexAddress
}

function sub_6bb44f2d(?) {
    return bool(stor5[arg1])
}

function sub_a1297749(?) {
    return bool(stor3[arg1])
}

function balances(address arg1, address arg2) {
    return balances[arg1][arg2]
}

function sub_cf25d8ec(?) {
    return sub_cf25d8ec[arg1][arg2]
}

function managerAddress() {
    return managerAddress
}

function getSymbolFromAddress(address arg1) {
    return symbolFrom[arg1][0 len symbolFrom[arg1].length]
}

function sub_d3836152(?) {
    require arg1 < sub_d3836152.length
    return address(sub_d3836152[arg1].field_0)
}

function sub_d4dd8d9c(?) {
    return sub_d4dd8d9c[arg1]
}

function sub_d6c65654(?) {
    return bool(stor1[arg1][arg2][arg3])
}

function sub_f0f4a34c(?) {
    return sub_f0f4a34c[arg1]
}

function circuitBreaker() {
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function sub_7b66a723(?) {
    require managerAddress == msg.sender
    dexAddress = arg1
}

function changeManager(address arg1) {
    require managerAddress == msg.sender
    managerAddress = arg1
}

function sub_de8978e3(?) {
    require dexAddress == msg.sender
    require stor3[address(arg2)]
    balances[address(arg2)][address(arg1)] += arg3
}

function sub_94eb559e(?) {
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, ext_call.return_data[0]
    require ext_call.success
}

function sub_b28087b6(?) {
    if not arg1:
        return 0
    s = 0
    idx = arg1
    while idx >= 1000:
        if not idx % 10:
            s = s + 1
            idx = idx / 10
            continue 
        else:
            return 0
    if idx > 250:
        if idx > 500:
            return s + 3, 0 == idx % 50
        return s + 3, 0 == idx % 25
    if idx < 100:
        return s + 2, 0 == idx % 10
    return s + 3, 0 == idx % 10
}

function sub_a19c5163(?) {
    require stor3[address(arg1)]
    require balances[address(arg1)][address(msg.sender)] >= arg2
    balances[address(arg1)][address(msg.sender)] -= arg2
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args dexAddress, arg2
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(dexAddress)
    call dexAddress.0xc6ef63ff with:
         gas gas_remaining - 710 wei
        args msg.sender, address(arg1), arg2
    require ext_call.success
}

function sub_77bbacf8(?) {
    require stor1[arg1][arg2][arg3]
    require balances[stor2[arg1][arg2][arg3]][address(msg.sender)] >= arg4
    balances[stor2[arg1][arg2][arg3]][address(msg.sender)] -= arg4
    require ext_code.size(sub_20a4d9fa[arg1][arg2][arg3])
    call sub_20a4d9fa[arg1][arg2][arg3].0xa9059cbb with:
         gas gas_remaining - 710 wei
        args dexAddress, arg4
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(dexAddress)
    call dexAddress.0xc6ef63ff with:
         gas gas_remaining - 710 wei
        args msg.sender, sub_20a4d9fa[arg1][arg2][arg3], arg4
    require ext_call.success
}

function sub_42feab3a(?) payable {
    require stor1[arg1][arg2][arg3]
    require balances[stor2[arg1][arg2][arg3]][address(msg.sender)] >= arg4
    balances[stor2[arg1][arg2][arg3]][address(msg.sender)] -= arg4
    require ext_code.size(sub_20a4d9fa[arg1][arg2][arg3])
    if arg1:
        call sub_20a4d9fa[arg1][arg2][arg3].0x1c5a0a07 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_code.size(sub_5d37e2ccAddress)
        call sub_5d37e2ccAddress.0x23b872dd with:
             gas gas_remaining - 710 wei
            args msg.sender, sub_20a4d9fa[arg1][arg2][arg3], arg3 * arg4 * ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
    call sub_20a4d9fa[arg1][arg2][arg3].0x5867c3 with:
       value msg.value wei
         gas gas_remaining - 9710 wei
        args msg.sender, arg4
    require ext_call.success
    emit 0x134fd131: arg1, arg2, arg3, arg4, msg.sender, sub_20a4d9fa[arg1][arg2][arg3]
}

function sub_d3daa87e(?) payable {
    require stor1[arg1][arg2][arg3]
    require ext_code.size(sub_20a4d9fa[arg1][arg2][arg3])
    if not arg1:
        call sub_20a4d9fa[arg1][arg2][arg3].0x1c5a0a07 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_code.size(sub_5d37e2ccAddress)
        call sub_5d37e2ccAddress.0x23b872dd with:
             gas gas_remaining - 710 wei
            args msg.sender, sub_20a4d9fa[arg1][arg2][arg3], arg3 * arg4 * ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
    call sub_20a4d9fa[arg1][arg2][arg3].0x91217a25 with:
       value msg.value wei
         gas gas_remaining - 9710 wei
        args msg.sender, arg4
    require ext_call.success
    balances[stor2[arg1][arg2][arg3]][address(msg.sender)] += arg4
    require stor3[stor2[arg1][arg2][arg3]]
    if not stor11[address(msg.sender)][stor2[arg1][arg2][arg3]]:
        stor11[address(msg.sender)][stor2[arg1][arg2][arg3]] = 1
        sub_f0f4a34c[address(msg.sender)] = sub_20a4d9fa[arg1][arg2][arg3]
        if not sub_f0f4a34c[address(msg.sender)]:
        else:
            sub_cf25d8ec[address(msg.sender)][stor2[arg1][arg2][arg3]] = sub_f0f4a34c[address(msg.sender)]
            sub_2d5cb74b[address(msg.sender)][stor8[address(msg.sender)]] = sub_20a4d9fa[arg1][arg2][arg3]
    emit 0x5b26e43d: arg1, arg2, arg3, arg4, msg.sender, sub_20a4d9fa[arg1][arg2][arg3]
}

function sub_3e3cd1ba(?) {
    require ext_code.size(sub_205cd37bAddress)
    call sub_205cd37bAddress.toTimestamp(uint16 rg1, uint8 rg2, uint8 rg3) with:
         gas gas_remaining - 710 wei
        args arg1 / 100 / 100 << 240, arg1 / 100 % 100 << 248, uint8(arg1 % 100)
    require ext_call.success
    if ext_call.return_data[0] > block.timestamp + (2184 * 24 * 3600):
        return 0
    if ext_call.return_data[0] < block.timestamp + (24 * 3600):
        return 0
    require ext_code.size(sub_205cd37bAddress)
    call sub_205cd37bAddress.getYear(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args ext_call.return_data[0]
    require ext_call.success
    if ext_call.return_data[30 len 2] != arg1 / 100 / 100:
        return 0
    require ext_code.size(sub_205cd37bAddress)
    call sub_205cd37bAddress.getMonth(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args ext_call.return_data[0]
    require ext_call.success
    if ext_call.return_data[31 len 1] != arg1 / 100 % 100:
        return 0
    require ext_code.size(sub_205cd37bAddress)
    call sub_205cd37bAddress.getDay(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args ext_call.return_data[0]
    require ext_call.success
    if ext_call.return_data[31 len 1] != arg1 % 100:
        return 0
    if 10 == arg1 % 100:
        return ext_call.return_data[0], 1
    if 25 == arg1 % 100:
        return ext_call.return_data[0], 1
    return ext_call.return_data[0], 0
}

function sub_b763b3d9(?) payable {
    require stor3[address(arg1)]
    require stor1[bool(stor5[address(arg1)])][stor6[address(arg1)]][stor7[address(arg1)]]
    require balances[stor2[bool(stor5[address(arg1)])][stor6[address(arg1)]][stor7[address(arg1)]]][address(msg.sender)] >= arg2
    balances[stor2[bool(stor5[address(arg1)])][stor6[address(arg1)]][stor7[address(arg1)]]][address(msg.sender)] -= arg2
    require ext_code.size(sub_20a4d9fa[bool(stor5[address(arg1)])][stor6[address(arg1)]][stor7[address(arg1)]])
    if stor5[address(arg1)]:
        call sub_20a4d9fa[bool(stor5[address(arg1)])][stor6[address(arg1)]][stor7[address(arg1)]].0x1c5a0a07 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_code.size(sub_5d37e2ccAddress)
        call sub_5d37e2ccAddress.0x23b872dd with:
             gas gas_remaining - 710 wei
            args msg.sender, sub_20a4d9fa[bool(stor5[address(arg1)])][stor6[address(arg1)]][stor7[address(arg1)]], rate[address(arg1)] * arg2 * ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
    call sub_20a4d9fa[bool(stor5[address(arg1)])][stor6[address(arg1)]][stor7[address(arg1)]].0x5867c3 with:
       value msg.value wei
         gas gas_remaining - 9710 wei
        args msg.sender, arg2
    require ext_call.success
    emit 0x134fd131: bool(stor5[address(arg1)]), sub_d4dd8d9c[address(arg1)], rate[address(arg1)], arg2, msg.sender, sub_20a4d9fa[bool(stor5[address(arg1)])][stor6[address(arg1)]][stor7[address(arg1)]]
}

function sub_8f8e1cb8(?) {
    mem[0] = arg1
    mem[32] = 8
    idx = address(stor[sha3(mem[0 len 64])])
    while address(idx):
        sub_d3836152.length++
        if not sub_d3836152.length <= sub_d3836152.length + 1:
            s = sub_d3836152.length + sha3(0) + 1
            while sha3(0) + sub_d3836152.length > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
        address(sub_d3836152[sub_d3836152.length].field_0) = address(idx)
        mem[0] = address(idx)
        mem[32] = sha3(address(arg1), 9)
        idx = sub_cf25d8ec[address(arg1)][address(idx)]
        continue 
    if not sub_d3836152.length:
        mem[(32 * sub_d3836152.length) + 160] = 32
        mem[(32 * sub_d3836152.length) + 192] = sub_d3836152.length
        mem[(32 * sub_d3836152.length) + 224 len floor32(sub_d3836152.length)] = mem[160 len floor32(sub_d3836152.length)]
        return memory
          from (32 * sub_d3836152.length) + 160
           len (96 * sub_d3836152.length) + 64
    mem[160] = address(sub_d3836152.field_0)
    idx = 160
    s = 0
    while (32 * sub_d3836152.length) + 128 > idx:
        mem[idx + 32] = address(sub_d3836152[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_d3836152.length) + 224 len floor32(sub_d3836152.length)] = mem[160 len floor32(sub_d3836152.length)]
    return Array(len=sub_d3836152.length, data=mem[160 len floor32(sub_d3836152.length)], mem[(32 * sub_d3836152.length) + floor32(sub_d3836152.length) + 224 len (32 * sub_d3836152.length) - floor32(sub_d3836152.length)]), 
}

function sub_4f03a7df(?) {
    mem[0] = arg1
    mem[32] = 8
    idx = address(stor[sha3(mem[0 len 64])])
    while address(idx):
        require ext_code.size(address(idx))
        call address(idx).0x97f734c9 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        mem[160] = 0
        require ext_code.size(address(idx))
        call address(idx).0xec86948a with:
             gas gas_remaining - 710 wei
        mem[128] = ext_call.return_data[0]
        require ext_call.success
        if 2 * ext_call.return_data[0] > block.timestamp:
            sub_d3836152.length++
            if not sub_d3836152.length <= sub_d3836152.length + 1:
                s = sub_d3836152.length + sha3(0) + 1
                while sha3(0) + sub_d3836152.length > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            address(sub_d3836152[sub_d3836152.length].field_0) = address(idx)
        mem[0] = address(idx)
        mem[32] = sha3(address(arg1), 9)
        idx = sub_cf25d8ec[address(arg1)][address(idx)]
        continue 
    if not sub_d3836152.length:
        mem[(32 * sub_d3836152.length) + 160] = 32
        mem[(32 * sub_d3836152.length) + 192] = sub_d3836152.length
        mem[(32 * sub_d3836152.length) + 224 len floor32(sub_d3836152.length)] = mem[160 len floor32(sub_d3836152.length)]
        return memory
          from (32 * sub_d3836152.length) + 160
           len (96 * sub_d3836152.length) + 64
    mem[160] = address(sub_d3836152.field_0)
    idx = 160
    s = 0
    while (32 * sub_d3836152.length) + 128 > idx:
        mem[idx + 32] = address(sub_d3836152[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_d3836152.length) + 224 len floor32(sub_d3836152.length)] = mem[160 len floor32(sub_d3836152.length)]
    return Array(len=sub_d3836152.length, data=mem[160 len floor32(sub_d3836152.length)], mem[(32 * sub_d3836152.length) + floor32(sub_d3836152.length) + 224 len (32 * sub_d3836152.length) - floor32(sub_d3836152.length)]), 
}

function sub_e2a346a0(?) {
    mem[0] = arg1
    mem[32] = 8
    idx = address(stor[sha3(mem[0 len 64])])
    while address(idx):
        require ext_code.size(address(idx))
        call address(idx).0x97f734c9 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        mem[160] = 0
        require ext_code.size(address(idx))
        call address(idx).0xec86948a with:
             gas gas_remaining - 710 wei
        mem[128] = ext_call.return_data[0]
        require ext_call.success
        if 2 * ext_call.return_data[0] <= block.timestamp:
            sub_d3836152.length++
            if not sub_d3836152.length <= sub_d3836152.length + 1:
                s = sub_d3836152.length + sha3(0) + 1
                while sha3(0) + sub_d3836152.length > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            address(sub_d3836152[sub_d3836152.length].field_0) = address(idx)
        mem[0] = address(idx)
        mem[32] = sha3(address(arg1), 9)
        idx = sub_cf25d8ec[address(arg1)][address(idx)]
        continue 
    if not sub_d3836152.length:
        mem[(32 * sub_d3836152.length) + 160] = 32
        mem[(32 * sub_d3836152.length) + 192] = sub_d3836152.length
        mem[(32 * sub_d3836152.length) + 224 len floor32(sub_d3836152.length)] = mem[160 len floor32(sub_d3836152.length)]
        return memory
          from (32 * sub_d3836152.length) + 160
           len (96 * sub_d3836152.length) + 64
    mem[160] = address(sub_d3836152.field_0)
    idx = 160
    s = 0
    while (32 * sub_d3836152.length) + 128 > idx:
        mem[idx + 32] = address(sub_d3836152[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_d3836152.length) + 224 len floor32(sub_d3836152.length)] = mem[160 len floor32(sub_d3836152.length)]
    return Array(len=sub_d3836152.length, data=mem[160 len floor32(sub_d3836152.length)], mem[(32 * sub_d3836152.length) + floor32(sub_d3836152.length) + 224 len (32 * sub_d3836152.length) - floor32(sub_d3836152.length)]), 
}

function sub_31d3f1d3(?) payable {
    require stor3[address(arg1)]
    require stor1[bool(stor5[address(arg1)])][stor6[address(arg1)]][stor7[address(arg1)]]
    require ext_code.size(sub_20a4d9fa[bool(stor5[address(arg1)])][stor6[address(arg1)]][stor7[address(arg1)]])
    if not stor5[address(arg1)]:
        call sub_20a4d9fa[bool(stor5[address(arg1)])][stor6[address(arg1)]][stor7[address(arg1)]].0x1c5a0a07 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_code.size(sub_5d37e2ccAddress)
        call sub_5d37e2ccAddress.0x23b872dd with:
             gas gas_remaining - 710 wei
            args msg.sender, sub_20a4d9fa[bool(stor5[address(arg1)])][stor6[address(arg1)]][stor7[address(arg1)]], rate[address(arg1)] * arg2 * ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
    call sub_20a4d9fa[bool(stor5[address(arg1)])][stor6[address(arg1)]][stor7[address(arg1)]].0x91217a25 with:
       value msg.value wei
         gas gas_remaining - 9710 wei
        args msg.sender, arg2
    require ext_call.success
    balances[stor2[bool(stor5[address(arg1)])][stor6[address(arg1)]][stor7[address(arg1)]]][address(msg.sender)] += arg2
    require stor3[stor2[bool(stor5[address(arg1)])][stor6[address(arg1)]][stor7[address(arg1)]]]
    if not stor11[address(msg.sender)][stor2[bool(stor5[address(arg1)])][stor6[address(arg1)]][stor7[address(arg1)]]]:
        stor11[address(msg.sender)][stor2[bool(stor5[address(arg1)])][stor6[address(arg1)]][stor7[address(arg1)]]] = 1
        sub_f0f4a34c[address(msg.sender)] = sub_20a4d9fa[bool(stor5[address(arg1)])][stor6[address(arg1)]][stor7[address(arg1)]]
        if not sub_f0f4a34c[address(msg.sender)]:
        else:
            sub_cf25d8ec[address(msg.sender)][stor2[bool(stor5[address(arg1)])][stor6[address(arg1)]][stor7[address(arg1)]]] = sub_f0f4a34c[address(msg.sender)]
            sub_2d5cb74b[address(msg.sender)][stor8[address(msg.sender)]] = sub_20a4d9fa[bool(stor5[address(arg1)])][stor6[address(arg1)]][stor7[address(arg1)]]
    emit 0x5b26e43d: bool(stor5[address(arg1)]), sub_d4dd8d9c[address(arg1)], rate[address(arg1)], arg2, msg.sender, sub_20a4d9fa[bool(stor5[address(arg1)])][stor6[address(arg1)]][stor7[address(arg1)]]
}

function sub_6b97aaf5(?) {
    require stor1[arg1][arg2][arg3]
    require ext_code.size(sub_20a4d9fa[arg1][arg2][arg3])
    call sub_20a4d9fa[arg1][arg2][arg3].0xbf47f6bc with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_code.size(sub_20a4d9fa[arg1][arg2][arg3])
    call sub_20a4d9fa[arg1][arg2][arg3]._totalSupply() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(sub_20a4d9fa[arg1][arg2][arg3])
    call sub_20a4d9fa[arg1][arg2][arg3].0x79489242 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(sub_20a4d9fa[arg1][arg2][arg3])
    call sub_20a4d9fa[arg1][arg2][arg3].0x79489242 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require 2 * ext_call.return_data[0]
    emit 0xde27a305: arg1, 0, arg3, ext_call.return_data[0], 10000 * ext_call.return_data[0] / 2 * ext_call.return_data[0], msg.sender, sub_20a4d9fa[arg1][arg2][arg3]
    require ext_code.size(sub_20a4d9fa[arg1][arg2][arg3])
    call sub_20a4d9fa[arg1][arg2][arg3].0x67a89d86 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require stor3[stor2[arg1][arg2][arg3]]
    if stor11[address(msg.sender)][stor2[arg1][arg2][arg3]]:
        stor11[address(msg.sender)][stor2[arg1][arg2][arg3]] = 0
        if not sub_2d5cb74b[address(msg.sender)][stor2[arg1][arg2][arg3]]:
            sub_f0f4a34c[address(msg.sender)] = sub_cf25d8ec[address(msg.sender)][stor2[arg1][arg2][arg3]]
            if sub_cf25d8ec[address(msg.sender)][stor2[arg1][arg2][arg3]]:
                sub_2d5cb74b[address(msg.sender)][stor9[address(msg.sender)][stor2[arg1][arg2][arg3]]] = 0
                sub_cf25d8ec[address(msg.sender)][stor2[arg1][arg2][arg3]] = 0
        else:
            sub_cf25d8ec[address(msg.sender)][stor10[address(msg.sender)][stor2[arg1][arg2][arg3]]] = sub_cf25d8ec[address(msg.sender)][stor2[arg1][arg2][arg3]]
            if sub_cf25d8ec[address(msg.sender)][stor2[arg1][arg2][arg3]]:
                sub_2d5cb74b[address(msg.sender)][stor9[address(msg.sender)][stor2[arg1][arg2][arg3]]] = sub_2d5cb74b[address(msg.sender)][stor2[arg1][arg2][arg3]]
            sub_2d5cb74b[address(msg.sender)][stor2[arg1][arg2][arg3]] = 0
            sub_cf25d8ec[address(msg.sender)][stor2[arg1][arg2][arg3]] = 0
}

function sub_87e7f5b7(?) {
    require stor3[address(arg1)]
    require stor1[bool(stor5[address(arg1)])][stor6[address(arg1)]][stor7[address(arg1)]]
    require ext_code.size(sub_20a4d9fa[bool(stor5[address(arg1)])][stor6[address(arg1)]][stor7[address(arg1)]])
    call sub_20a4d9fa[bool(stor5[address(arg1)])][stor6[address(arg1)]][stor7[address(arg1)]].0xbf47f6bc with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_code.size(sub_20a4d9fa[bool(stor5[address(arg1)])][stor6[address(arg1)]][stor7[address(arg1)]])
    call sub_20a4d9fa[bool(stor5[address(arg1)])][stor6[address(arg1)]][stor7[address(arg1)]]._totalSupply() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(sub_20a4d9fa[bool(stor5[address(arg1)])][stor6[address(arg1)]][stor7[address(arg1)]])
    call sub_20a4d9fa[bool(stor5[address(arg1)])][stor6[address(arg1)]][stor7[address(arg1)]].0x79489242 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(sub_20a4d9fa[bool(stor5[address(arg1)])][stor6[address(arg1)]][stor7[address(arg1)]])
    call sub_20a4d9fa[bool(stor5[address(arg1)])][stor6[address(arg1)]][stor7[address(arg1)]].0x79489242 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require 2 * ext_call.return_data[0]
    emit 0xde27a305: bool(stor5[address(arg1)]), 0, rate[address(arg1)], ext_call.return_data[0], 10000 * ext_call.return_data[0] / 2 * ext_call.return_data[0], msg.sender, sub_20a4d9fa[bool(stor5[address(arg1)])][stor6[address(arg1)]][stor7[address(arg1)]]
    require ext_code.size(sub_20a4d9fa[bool(stor5[address(arg1)])][stor6[address(arg1)]][stor7[address(arg1)]])
    call sub_20a4d9fa[bool(stor5[address(arg1)])][stor6[address(arg1)]][stor7[address(arg1)]].0x67a89d86 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require stor3[stor2[bool(stor5[address(arg1)])][stor6[address(arg1)]][stor7[address(arg1)]]]
    if stor11[address(msg.sender)][stor2[bool(stor5[address(arg1)])][stor6[address(arg1)]][stor7[address(arg1)]]]:
        stor11[address(msg.sender)][stor2[bool(stor5[address(arg1)])][stor6[address(arg1)]][stor7[address(arg1)]]] = 0
        if not sub_2d5cb74b[address(msg.sender)][stor2[bool(stor5[address(arg1)])][stor6[address(arg1)]][stor7[address(arg1)]]]:
            sub_f0f4a34c[address(msg.sender)] = sub_cf25d8ec[address(msg.sender)][stor2[bool(stor5[address(arg1)])][stor6[address(arg1)]][stor7[address(arg1)]]]
            if sub_cf25d8ec[address(msg.sender)][stor2[bool(stor5[address(arg1)])][stor6[address(arg1)]][stor7[address(arg1)]]]:
                sub_2d5cb74b[address(msg.sender)][stor9[address(msg.sender)][stor2[bool(stor5[address(arg1)])][stor6[address(arg1)]][stor7[address(arg1)]]]] = 0
                sub_cf25d8ec[address(msg.sender)][stor2[bool(stor5[address(arg1)])][stor6[address(arg1)]][stor7[address(arg1)]]] = 0
        else:
            sub_cf25d8ec[address(msg.sender)][stor10[address(msg.sender)][stor2[bool(stor5[address(arg1)])][stor6[address(arg1)]][stor7[address(arg1)]]]] = sub_cf25d8ec[address(msg.sender)][stor2[bool(stor5[address(arg1)])][stor6[address(arg1)]][stor7[address(arg1)]]]
            if sub_cf25d8ec[address(msg.sender)][stor2[bool(stor5[address(arg1)])][stor6[address(arg1)]][stor7[address(arg1)]]]:
                sub_2d5cb74b[address(msg.sender)][stor9[address(msg.sender)][stor2[bool(stor5[address(arg1)])][stor6[address(arg1)]][stor7[address(arg1)]]]] = sub_2d5cb74b[address(msg.sender)][stor2[bool(stor5[address(arg1)])][stor6[address(arg1)]][stor7[address(arg1)]]]
            sub_2d5cb74b[address(msg.sender)][stor2[bool(stor5[address(arg1)])][stor6[address(arg1)]][stor7[address(arg1)]]] = 0
            sub_cf25d8ec[address(msg.sender)][stor2[bool(stor5[address(arg1)])][stor6[address(arg1)]][stor7[address(arg1)]]] = 0
}

function sub_079077fa(?) {
    require not stor1[arg1][arg2][arg3]
    require arg3
    s = 0
    idx = arg3
    while idx >= 1000:
        require not idx % 10
        s = s + 1
        idx = idx / 10
        continue 
    if idx > 250:
        if idx > 500:
            require 0 == idx % 50
        else:
            require 0 == idx % 25
        require ext_code.size(sub_205cd37bAddress)
        call sub_205cd37bAddress.toTimestamp(uint16 rg1, uint8 rg2, uint8 rg3) with:
             gas gas_remaining - 710 wei
            args arg2 / 100 / 100 << 240, arg2 / 100 % 100 << 248, uint8(arg2 % 100)
        require ext_call.success
        require ext_call.return_data[0] <= block.timestamp + (2184 * 24 * 3600)
        require ext_call.return_data[0] >= block.timestamp + (24 * 3600)
        require ext_code.size(sub_205cd37bAddress)
        call sub_205cd37bAddress.getYear(uint256 rg1) with:
             gas gas_remaining - 710 wei
            args ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[30 len 2] == arg2 / 100 / 100
        require ext_code.size(sub_205cd37bAddress)
        call sub_205cd37bAddress.getMonth(uint256 rg1) with:
             gas gas_remaining - 710 wei
            args ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[31 len 1] == arg2 / 100 % 100
        require ext_code.size(sub_205cd37bAddress)
        call sub_205cd37bAddress.getDay(uint256 rg1) with:
             gas gas_remaining - 710 wei
            args ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[31 len 1] == arg2 % 100
        if arg2 % 100 != 10:
            require 25 == arg2 % 100
        require 0 < s + 12
        if arg1:
            mem[292 len 8] = Mask(8, -(3731581000811947704079924321569043905427645990201307239552832297130012966912, 0) + 256, 0) << (3731581000811947704079924321569043905427645990201307239552832297130012966912, 0) - 256
        else:
            mem[292 len 8] = Mask(8, -(4692745804051388779373238161973191578037797230101643952770986070633198125056, 0) + 256, 0) << (4692745804051388779373238161973191578037797230101643952770986070633198125056, 0) - 256
        idx = 1
        while idx < 7:
            require 10^(-idx + 6)
            require idx < s + 12
            mem[idx + 292 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('div', ('param', 'arg2'), ('exp', 10, ('add', 6, ('mul', -1, ('var', 0))))), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('div', ('param', 'arg2'), ('exp', 10, ('add', 6, ('mul', -1, ('var', 0))))), 10))), 0) - 256
            idx = idx + 1
            continue 
        require 7 < s + 12
        mem[299 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'r'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'r'"), 0) - 256
        t = 0
        while t < s + 3:
            require 10^(s + -t + 2)
            require t + 8 < s + 12
            mem[t + 300 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('div', ('param', 'arg3'), ('exp', 10, ('add', 2, ('var', 1), ('mul', -1, ('var', 2))))), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('div', ('param', 'arg3'), ('exp', 10, ('add', 2, ('var', 1), ('mul', -1, ('var', 2))))), 10))), 0) - 256
            t = t + 1
            continue 
        stor1[arg1][arg2][arg3] = 1
        if not s + 12 % 32:
            if not s + 12 % 32:
                create contract with 0 wei
                                code: code.data[11641 len 4071], arg3, arg1, ext_call.return_data[0], Array(len=sub_5d37e2ccAddress, data=s + 12, mem[292 len s + 12], s + 12, mem[292 len s + 12]), s + 236
            else:
                create contract with 0 wei
                                code: code.data[11641 len 4071], arg3, arg1, ext_call.return_data[0], Array(len=sub_5d37e2ccAddress, data=s + 12, mem[292 len s + 12], s + 12, mem[292 len floor32(s + 43)], mem[(2 * floor32(s + 43)) + s + 4631 len floor32(s + 12) + -floor32(s + 43) + 32]), s + 236
        else:
            mem[floor32(s + 12) + floor32(s + 43) + 4651 len floor32(s + 43)] = mem[292 len floor32(s + 43)]
            if not s + 12 % 32:
                create contract with 0 wei
                                code: code.data[11641 len 4071], arg3, arg1, ext_call.return_data[0], Array(len=sub_5d37e2ccAddress, data=s + 12, mem[292 len floor32(s + 43)], mem[(2 * floor32(s + 43)) + 4587 len floor32(s + 12) + -floor32(s + 43) + 32], s + 12, mem[292 len s + 12]), floor32(s + 12) + 256
            else:
                mem[(2 * floor32(s + 12)) + floor32(s + 43) + 4651] = mem[(2 * floor32(s + 12)) + floor32(s + 43) + -(s + 12 % 32) + 4683 len s + 12 % 32]
                create contract with 0 wei
                                code: code.data[11641 len 4071], arg3, arg1, ext_call.return_data[0], Array(len=sub_5d37e2ccAddress, data=s + 12, mem[292 len floor32(s + 43)], mem[(2 * floor32(s + 43)) + 4587 len floor32(s + 12) + -floor32(s + 43) + 32], s + 12, mem[292 len floor32(s + 43)], mem[(2 * floor32(s + 43)) + floor32(s + 12) + 4651 len floor32(s + 12) + -floor32(s + 43) + 32]), floor32(s + 12) + 256
        require create.new_address
        sub_20a4d9fa[arg1][arg2][arg3] = address(create.new_address)
        stor3[address(create.new_address)] = 1
        symbolFrom[address(create.new_address)][] = Array(len=s + 12, data=mem[292 len s + 12])
    else:
        require 0 == idx % 10
        require ext_code.size(sub_205cd37bAddress)
        call sub_205cd37bAddress.toTimestamp(uint16 rg1, uint8 rg2, uint8 rg3) with:
             gas gas_remaining - 710 wei
            args arg2 / 100 / 100 << 240, arg2 / 100 % 100 << 248, uint8(arg2 % 100)
        require ext_call.success
        require ext_call.return_data[0] <= block.timestamp + (2184 * 24 * 3600)
        require ext_call.return_data[0] >= block.timestamp + (24 * 3600)
        require ext_code.size(sub_205cd37bAddress)
        call sub_205cd37bAddress.getYear(uint256 rg1) with:
             gas gas_remaining - 710 wei
            args ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[30 len 2] == arg2 / 100 / 100
        require ext_code.size(sub_205cd37bAddress)
        call sub_205cd37bAddress.getMonth(uint256 rg1) with:
             gas gas_remaining - 710 wei
            args ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[31 len 1] == arg2 / 100 % 100
        require ext_code.size(sub_205cd37bAddress)
        call sub_205cd37bAddress.getDay(uint256 rg1) with:
             gas gas_remaining - 710 wei
            args ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[31 len 1] == arg2 % 100
        if idx < 100:
            if arg2 % 100 != 10:
                require 25 == arg2 % 100
            require 0 < s + 11
            if arg1:
                mem[292 len 8] = Mask(8, -(3731581000811947704079924321569043905427645990201307239552832297130012966912, 0) + 256, 0) << (3731581000811947704079924321569043905427645990201307239552832297130012966912, 0) - 256
            else:
                mem[292 len 8] = Mask(8, -(4692745804051388779373238161973191578037797230101643952770986070633198125056, 0) + 256, 0) << (4692745804051388779373238161973191578037797230101643952770986070633198125056, 0) - 256
            idx = 1
            while idx < 7:
                require 10^(-idx + 6)
                require idx < s + 11
                mem[idx + 292 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('div', ('param', 'arg2'), ('exp', 10, ('add', 6, ('mul', -1, ('var', 0))))), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('div', ('param', 'arg2'), ('exp', 10, ('add', 6, ('mul', -1, ('var', 0))))), 10))), 0) - 256
                idx = idx + 1
                continue 
            require 7 < s + 11
            mem[299 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'r'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'r'"), 0) - 256
            t = 0
            while t < s + 2:
                require 10^(s + -t + 1)
                require t + 8 < s + 11
                mem[t + 300 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('div', ('param', 'arg3'), ('exp', 10, ('add', 1, ('var', 1), ('mul', -1, ('var', 2))))), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('div', ('param', 'arg3'), ('exp', 10, ('add', 1, ('var', 1), ('mul', -1, ('var', 2))))), 10))), 0) - 256
                t = t + 1
                continue 
            stor1[arg1][arg2][arg3] = 1
            if not s + 11 % 32:
                if not s + 11 % 32:
                    create contract with 0 wei
                                    code: code.data[11641 len 4071], arg3, arg1, ext_call.return_data[0], Array(len=sub_5d37e2ccAddress, data=s + 11, mem[292 len s + 11], s + 11, mem[292 len s + 11]), s + 235
                else:
                    create contract with 0 wei
                                    code: code.data[11641 len 4071], arg3, arg1, ext_call.return_data[0], Array(len=sub_5d37e2ccAddress, data=s + 11, mem[292 len s + 11], s + 11, mem[292 len floor32(s + 42)], mem[(2 * floor32(s + 42)) + s + 4630 len floor32(s + 11) + -floor32(s + 42) + 32]), s + 235
            else:
                mem[floor32(s + 11) + floor32(s + 42) + 4651 len floor32(s + 42)] = mem[292 len floor32(s + 42)]
                if not s + 11 % 32:
                    create contract with 0 wei
                                    code: code.data[11641 len 4071], arg3, arg1, ext_call.return_data[0], Array(len=sub_5d37e2ccAddress, data=s + 11, mem[292 len floor32(s + 42)], mem[(2 * floor32(s + 42)) + 4587 len floor32(s + 11) + -floor32(s + 42) + 32], s + 11, mem[292 len s + 11]), floor32(s + 11) + 256
                else:
                    mem[(2 * floor32(s + 11)) + floor32(s + 42) + 4651] = mem[(2 * floor32(s + 11)) + floor32(s + 42) + -(s + 11 % 32) + 4683 len s + 11 % 32]
                    create contract with 0 wei
                                    code: code.data[11641 len 4071], arg3, arg1, ext_call.return_data[0], Array(len=sub_5d37e2ccAddress, data=s + 11, mem[292 len floor32(s + 42)], mem[(2 * floor32(s + 42)) + 4587 len floor32(s + 11) + -floor32(s + 42) + 32], s + 11, mem[292 len floor32(s + 42)], mem[(2 * floor32(s + 42)) + floor32(s + 11) + 4651 len floor32(s + 11) + -floor32(s + 42) + 32]), floor32(s + 11) + 256
            require create.new_address
            sub_20a4d9fa[arg1][arg2][arg3] = address(create.new_address)
            stor3[address(create.new_address)] = 1
            symbolFrom[address(create.new_address)][] = Array(len=s + 11, data=mem[292 len s + 11])
        else:
            if 10 == arg2 % 100:
                require 0 < s + 12
                if arg1:
                    mem[292 len 8] = Mask(8, -(3731581000811947704079924321569043905427645990201307239552832297130012966912, 0) + 256, 0) << (3731581000811947704079924321569043905427645990201307239552832297130012966912, 0) - 256
                else:
                    mem[292 len 8] = Mask(8, -(4692745804051388779373238161973191578037797230101643952770986070633198125056, 0) + 256, 0) << (4692745804051388779373238161973191578037797230101643952770986070633198125056, 0) - 256
                idx = 1
                while idx < 7:
                    require 10^(-idx + 6)
                    require idx < s + 12
                    mem[idx + 292 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('div', ('param', 'arg2'), ('exp', 10, ('add', 6, ('mul', -1, ('var', 0))))), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('div', ('param', 'arg2'), ('exp', 10, ('add', 6, ('mul', -1, ('var', 0))))), 10))), 0) - 256
                    idx = idx + 1
                    continue 
                require 7 < s + 12
                mem[299 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'r'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'r'"), 0) - 256
                t = 0
                while t < s + 3:
                    require 10^(s + -t + 2)
                    require t + 8 < s + 12
                    mem[t + 300 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('div', ('param', 'arg3'), ('exp', 10, ('add', 2, ('var', 1), ('mul', -1, ('var', 2))))), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('div', ('param', 'arg3'), ('exp', 10, ('add', 2, ('var', 1), ('mul', -1, ('var', 2))))), 10))), 0) - 256
                    t = t + 1
                    continue 
                stor1[arg1][arg2][arg3] = 1
                if not s + 12 % 32:
                    if not s + 12 % 32:
                        create contract with 0 wei
                                        code: code.data[11641 len 4071], arg3, arg1, ext_call.return_data[0], Array(len=sub_5d37e2ccAddress, data=s + 12, mem[292 len s + 12], s + 12, mem[292 len s + 12]), s + 236
                    else:
                        create contract with 0 wei
                                        code: code.data[11641 len 4071], arg3, arg1, ext_call.return_data[0], Array(len=sub_5d37e2ccAddress, data=s + 12, mem[292 len s + 12], s + 12, mem[292 len floor32(s + 43)], mem[(2 * floor32(s + 43)) + s + 4631 len floor32(s + 12) + -floor32(s + 43) + 32]), s + 236
                else:
                    mem[floor32(s + 12) + floor32(s + 43) + 4651 len floor32(s + 43)] = mem[292 len floor32(s + 43)]
                    if not s + 12 % 32:
                        create contract with 0 wei
                                        code: code.data[11641 len 4071], arg3, arg1, ext_call.return_data[0], Array(len=sub_5d37e2ccAddress, data=s + 12, mem[292 len floor32(s + 43)], mem[(2 * floor32(s + 43)) + 4587 len floor32(s + 12) + -floor32(s + 43) + 32], s + 12, mem[292 len s + 12]), floor32(s + 12) + 256
                    else:
                        mem[(2 * floor32(s + 12)) + floor32(s + 43) + 4651] = mem[(2 * floor32(s + 12)) + floor32(s + 43) + -(s + 12 % 32) + 4683 len s + 12 % 32]
                        create contract with 0 wei
                                        code: code.data[11641 len 4071], arg3, arg1, ext_call.return_data[0], Array(len=sub_5d37e2ccAddress, data=s + 12, mem[292 len floor32(s + 43)], mem[(2 * floor32(s + 43)) + 4587 len floor32(s + 12) + -floor32(s + 43) + 32], s + 12, mem[292 len floor32(s + 43)], mem[(2 * floor32(s + 43)) + floor32(s + 12) + 4651 len floor32(s + 12) + -floor32(s + 43) + 32]), floor32(s + 12) + 256
            else:
                require 25 == arg2 % 100
                require 0 < s + 12
                if arg1:
                    mem[292 len 8] = Mask(8, -(3731581000811947704079924321569043905427645990201307239552832297130012966912, 0) + 256, 0) << (3731581000811947704079924321569043905427645990201307239552832297130012966912, 0) - 256
                    idx = 1
                    while idx < 7:
                        require 10^(-idx + 6)
                        require idx < s + 12
                        mem[idx + 292 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('div', ('param', 'arg2'), ('exp', 10, ('add', 6, ('mul', -1, ('var', 0))))), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('div', ('param', 'arg2'), ('exp', 10, ('add', 6, ('mul', -1, ('var', 0))))), 10))), 0) - 256
                        idx = idx + 1
                        continue 
                    require 7 < s + 12
                    mem[299 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'r'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'r'"), 0) - 256
                    t = 0
                    while t < s + 3:
                        require 10^(s + -t + 2)
                        require t + 8 < s + 12
                        mem[t + 300 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('div', ('param', 'arg3'), ('exp', 10, ('add', 2, ('var', 1), ('mul', -1, ('var', 2))))), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('div', ('param', 'arg3'), ('exp', 10, ('add', 2, ('var', 1), ('mul', -1, ('var', 2))))), 10))), 0) - 256
                        t = t + 1
                        continue 
                    stor1[arg1][arg2][arg3] = 1
                    if not s + 12 % 32:
                        if not s + 12 % 32:
                            create contract with 0 wei
                                            code: code.data[11641 len 4071], arg3, arg1, ext_call.return_data[0], Array(len=sub_5d37e2ccAddress, data=s + 12, mem[292 len s + 12], s + 12, mem[292 len s + 12]), s + 236
                        else:
                            create contract with 0 wei
                                            code: code.data[11641 len 4071], arg3, arg1, ext_call.return_data[0], Array(len=sub_5d37e2ccAddress, data=s + 12, mem[292 len s + 12], s + 12, mem[292 len floor32(s + 43)], mem[(2 * floor32(s + 43)) + s + 4631 len floor32(s + 12) + -floor32(s + 43) + 32]), s + 236
                    else:
                        mem[floor32(s + 12) + floor32(s + 43) + 4651 len floor32(s + 43)] = mem[292 len floor32(s + 43)]
                        if not s + 12 % 32:
                            create contract with 0 wei
                                            code: code.data[11641 len 4071], arg3, arg1, ext_call.return_data[0], Array(len=sub_5d37e2ccAddress, data=s + 12, mem[292 len floor32(s + 43)], mem[(2 * floor32(s + 43)) + 4587 len s + floor32(s + 12) + -floor32(s + 43) + 76]), floor32(s + 12) + 256
                        else:
                            mem[(2 * floor32(s + 12)) + floor32(s + 43) + 4651] = mem[(2 * floor32(s + 12)) + floor32(s + 43) + -(s + 12 % 32) + 4683 len s + 12 % 32]
                            create contract with 0 wei
                                            code: code.data[11641 len 4071], arg3, arg1, ext_call.return_data[0], Array(len=sub_5d37e2ccAddress, data=s + 12, mem[292 len floor32(s + 43)], mem[(2 * floor32(s + 43)) + 4587 len (2 * floor32(s + 12)) + -floor32(s + 43) + 96]), floor32(s + 12) + 256
                else:
                    mem[292 len 8] = Mask(8, -(4692745804051388779373238161973191578037797230101643952770986070633198125056, 0) + 256, 0) << (4692745804051388779373238161973191578037797230101643952770986070633198125056, 0) - 256
                    idx = 1
                    while idx < 7:
                        require 10^(-idx + 6)
                        require idx < s + 12
                        mem[idx + 292 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('div', ('param', 'arg2'), ('exp', 10, ('add', 6, ('mul', -1, ('var', 0))))), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('div', ('param', 'arg2'), ('exp', 10, ('add', 6, ('mul', -1, ('var', 0))))), 10))), 0) - 256
                        idx = idx + 1
                        continue 
                    require 7 < s + 12
                    mem[299 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'r'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'r'"), 0) - 256
                    t = 0
                    while t < s + 3:
                        require 10^(s + -t + 2)
                        require t + 8 < s + 12
                        mem[t + 300 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('div', ('param', 'arg3'), ('exp', 10, ('add', 2, ('var', 1), ('mul', -1, ('var', 2))))), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('div', ('param', 'arg3'), ('exp', 10, ('add', 2, ('var', 1), ('mul', -1, ('var', 2))))), 10))), 0) - 256
                        t = t + 1
                        continue 
                    stor1[arg1][arg2][arg3] = 1
                    if not s + 12 % 32:
                        if not s + 12 % 32:
                            create contract with 0 wei
                                            code: code.data[11641 len 4071], arg3, arg1, ext_call.return_data[0], Array(len=sub_5d37e2ccAddress, data=s + 12, mem[292 len s + 12], s + 12, mem[292 len s + 12]), s + 236
                        else:
                            create contract with 0 wei
                                            code: code.data[11641 len 4071], arg3, arg1, ext_call.return_data[0], Array(len=sub_5d37e2ccAddress, data=s + 12, mem[292 len s + 12], s + 12, mem[292 len floor32(s + 43)], mem[(2 * floor32(s + 43)) + s + 4631 len floor32(s + 12) + -floor32(s + 43) + 32]), s + 236
                    else:
                        mem[floor32(s + 12) + floor32(s + 43) + 4651 len floor32(s + 43)] = mem[292 len floor32(s + 43)]
                        if not s + 12 % 32:
                            create contract with 0 wei
                                            code: code.data[11641 len 4071], arg3, arg1, ext_call.return_data[0], Array(len=sub_5d37e2ccAddress, data=s + 12, mem[292 len floor32(s + 43)], mem[(2 * floor32(s + 43)) + 4587 len floor32(s + 12) + -floor32(s + 43) + 32], s + 12, mem[292 len s + 12]), floor32(s + 12) + 256
                        else:
                            mem[(2 * floor32(s + 12)) + floor32(s + 43) + 4651] = mem[(2 * floor32(s + 12)) + floor32(s + 43) + -(s + 12 % 32) + 4683 len s + 12 % 32]
                            create contract with 0 wei
                                            code: code.data[11641 len 4071], arg3, arg1, ext_call.return_data[0], Array(len=sub_5d37e2ccAddress, data=s + 12, mem[292 len floor32(s + 43)], mem[(2 * floor32(s + 43)) + 4587 len floor32(s + 12) + -floor32(s + 43) + 32], s + 12, mem[292 len floor32(s + 43)], mem[(2 * floor32(s + 43)) + floor32(s + 12) + 4651 len floor32(s + 12) + -floor32(s + 43) + 32]), floor32(s + 12) + 256
            require create.new_address
            sub_20a4d9fa[arg1][arg2][arg3] = address(create.new_address)
            stor3[address(create.new_address)] = 1
            symbolFrom[address(create.new_address)][] = Array(len=s + 12, data=mem[292 len s + 12])
    stor5[address(create.new_address)] = uint8(arg1)
    sub_d4dd8d9c[address(create.new_address)] = arg2
    rate[address(create.new_address)] = arg3
    require ext_code.size(dexAddress)
    call dexAddress.0xa8dc4aac with:
         gas gas_remaining - 710 wei
        args address(create.new_address)
    require ext_call.success
}



}

contract main {




// =====================  Runtime code  =====================


#
#  - sub_49202c86(?)
#
mapping of uint256 stor0;
mapping of uint8 sub_40292f55;
mapping of uint8 stor2;
address stor3;
address stor4;
uint256 stor5;
mapping of uint8 stor6;
mapping of uint256 stor7;
uint256 basePrice;
mapping of uint256 price;
mapping of uint256 stor10;
array of uint256 stor11;
array of uint256 sub_642b3f85;
mapping of uint256 sub_13725147;
mapping of address sub_eaeae92c;

function sub_13725147(?) {
    return sub_13725147[arg1]
}

function sub_40292f55(?) {
    return Mask(8, 248, sub_40292f55[arg1])
}

function sub_642b3f85(?) {
    require arg1 < sub_642b3f85.length
    return sub_642b3f85[arg1]
}

function offchainPayment(address arg1) {
    return bool(stor2[arg1])
}

function price(bytes32 arg1) {
    return price[arg1]
}

function randomDS_getSessionPubKeyHash() {
    require sub_642b3f85.length
    require sha3(stor0[msg.sender]) % sub_642b3f85.length < sub_642b3f85.length
    return sub_642b3f85[sha3(stor0[msg.sender]) % sub_642b3f85.length]
}

function sub_bcfaaa35(?) {
    require sub_642b3f85.length
    require sha3(stor0[msg.sender]) % sub_642b3f85.length < sub_642b3f85.length
    return sub_642b3f85[sha3(stor0[msg.sender]) % sub_642b3f85.length]
}

function basePrice() {
    return basePrice
}

function cbAddresses(address arg1) {
    return Mask(8, 248, sub_40292f55[address(arg1)])
}

function sub_eaeae92c(?) {
    return sub_eaeae92c[arg1]
}

function _fallback() payable {
    revert
}

function sub_eaefb88e(?) {
    stor6[msg.sender] = arg1
}

function sub_a782f9f5(?) {
    sub_eaeae92c[msg.sender] = 0
}

function setCustomGasPrice(uint256 arg1) {
    stor7[msg.sender] = arg1
}

function setProofType(bytes1 arg1) {
    stor6[msg.sender] = uint8(arg1)
}

function changeAdmin(address arg1) {
    require msg.sender == stor3
    stor3 = arg1
}

function setGasPrice(uint256 arg1) {
    require msg.sender == stor3
    stor5 = arg1
}

function sub_6cd9fe5e(?) {
    require msg.sender == stor3
    sub_40292f55[address(arg1)] = 0
}

function changePaymentFlagger(address arg1) {
    require msg.sender == stor3
    stor4 = arg1
}

function sub_6d1ae483(?) {
    require msg.sender == stor3
    sub_40292f55[address(arg1)] = arg2
}

function sub_a4e5aee4(?) {
    require msg.sender == stor3
    sub_40292f55[address(arg1)] = arg2
}

function sub_0fa3a07e(?) {
    require stor0[msg.sender] > 0
    emit 0x7a212ebe: arg1, msg.sender
}

function sub_111b3ba4(?) {
    if not Mask(8, 248, sub_40292f55[tx.origin]):
        return 0
    return 1
}

function sub_bea75974(?) {
    require sub_13725147[address(arg1)] > 0
    sub_eaeae92c[msg.sender] = arg1
}

function removeCbAddress(address arg1) {
    require msg.sender == stor3
    sub_40292f55[address(arg1)] = 0
}

function cbAddress() {
    if not Mask(8, 248, sub_40292f55[tx.origin]):
        return 0
    return tx.origin
}

function addCbAddress(address arg1, bytes1 arg2) {
    require msg.sender == stor3
    sub_40292f55[address(arg1)] = uint8(arg2)
}

function sub_4b14136c(?) {
    if stor3 != msg.sender:
        require msg.sender == stor4
    sub_13725147[address(arg1)] = arg2
}

function addCbAddress(address arg1, bytes1 arg2, bytes arg3) {
    require msg.sender == stor3
    sub_40292f55[address(arg1)] = uint8(arg2)
}

function sub_01f9cd96(?) {
    if stor3 != msg.sender:
        require msg.sender == stor4
    sub_13725147[address(arg1)] = 0
    emit 0xfaefc06c: arg1
}

function sub_8a1fc9fa(?) {
    require msg.sender == stor3
    sub_13725147[address(arg2)] = arg3
    emit 0xaf389ee7: Array(len=arg1.length, data=arg1[all]), address(arg2)
}

function sub_f2e35423(?) {
    require arg1 >= 21000
    require arg3 > arg2
    require arg3 - arg2
    require (arg3 * arg1) - (arg2 * arg1) / arg3 - arg2 == arg1
    return ((arg3 * arg1) - (arg2 * arg1))
}

function sub_1f36e9b2(?) payable {
    stor0[msg.sender]++
    emit 0xcbbbd094: msg.sender, sha3(this.address, msg.sender, stor0[msg.sender]), msg.value
    return sha3(this.address, msg.sender, stor0[msg.sender])
}

function sub_c5a08b2f(?) {
    require sub_13725147[address(arg2)] * basePrice
    require 10^18 * arg1 / sub_13725147[address(arg2)] * basePrice > 0
    return (10^18 * arg1 / sub_13725147[address(arg2)] * basePrice)
}

function setOffchainPayment(address arg1, bool arg2) {
    if stor3 != msg.sender:
        require msg.sender == stor4
    stor2[address(arg1)] = uint8(arg2)
    emit Emit_OffchainPaymentFlag(address(arg1), arg2, arg1, arg2);
}

function withdrawFunds(address arg1) {
    require msg.sender == stor3
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setBasePrice(uint256 arg1) {
    if stor3 != msg.sender:
        require msg.sender == stor4
    basePrice = arg1
    idx = 0
    while idx < stor11.length:
        mem[0] = stor11[idx]
        mem[32] = 9
        price[stor11[idx]] = arg1 * stor10[stor11[idx]]
        idx = idx + 1
        continue 
}

function getTokenBalance(address arg1) {
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function withdrawTokens(address arg1, address arg2, uint256 arg3) {
    require msg.sender == stor3
    require arg2
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_53a704b2(?) {
    require msg.sender == stor3
    stor11.length++
    if stor11.length > stor11.length + 1:
        idx = stor11.length + 1
        while stor11.length > idx:
            stor11[idx] = 0
            idx = idx + 1
            continue 
    require stor11.length < stor11.length
    stor11[stor11.length] = sha3(arg1, arg2)
    stor10[arg1][arg2] = arg3
}

function sub_cedfd7c8(?) {
    require msg.sender == stor3
    stor11.length++
    if stor11.length > stor11.length + 1:
        idx = stor11.length + 1
        while stor11.length > idx:
            stor11[idx] = 0
            idx = idx + 1
            continue 
    require stor11.length < stor11.length
    stor11[stor11.length] = sha3(arg1, 0)
    stor10[('map', ('param', 'arg1'), ('name', 'stor0', 0))] = arg2
}

function sub_a369e2d7(?) {
    if stor2[address(arg2)]:
        return 0
    if not stor0[address(arg2)]:
        if stor7[address(arg2)] <= stor5:
            if not Mask(8, 248, sub_40292f55[tx.origin]):
                return 0
    if stor7[address(arg2)]:
        return ((200000 * stor7[address(arg2)]) + stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))])
    return ((200000 * stor5) + stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))])
}

function sub_58b15c95(?) {
    if stor2[address(arg3)]:
        return 0
    if not stor0[address(arg3)]:
        if arg2 <= 200000:
            if stor7[address(arg3)] <= stor5:
                if not Mask(8, 248, sub_40292f55[tx.origin]):
                    return 0
    if stor7[address(arg3)]:
        return ((stor7[address(arg3)] * arg2) + stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))])
    return ((stor5 * arg2) + stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))])
}

function sub_6d0dc650(?) {
    if stor2[address(msg.sender)]:
        return 0
    if not stor0[address(msg.sender)]:
        if arg2 <= 200000:
            if stor7[address(msg.sender)] <= stor5:
                if not Mask(8, 248, sub_40292f55[tx.origin]):
                    return 0
    if stor7[address(msg.sender)]:
        return ((stor7[address(msg.sender)] * arg2) + stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))])
    return ((stor5 * arg2) + stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))])
}

function getPrice(bytes1 arg1) {
    if stor2[address(msg.sender)]:
        return 0
    if not stor0[address(msg.sender)]:
        if stor7[address(msg.sender)] <= stor5:
            if not Mask(8, 248, sub_40292f55[tx.origin]):
                return 0
    if stor7[address(msg.sender)]:
        return ((200000 * stor7[address(msg.sender)]) + stor9[('map', ('mask_shl', 8, 0, 0, ('param', 'arg1')), ('name', 'stor0', 0))])
    return ((200000 * stor5) + stor9[('map', ('mask_shl', 8, 0, 0, ('param', 'arg1')), ('name', 'stor0', 0))])
}

function sub_b29b8201(?) payable {
    require arg2 >= 21000
    require arg4 > arg3
    require arg4 - arg3
    require (arg4 * arg2) - (arg3 * arg2) / arg4 - arg3 == arg2
    require (arg4 * arg2) - (arg3 * arg2) <= msg.value
    if msg.value > (arg4 * arg2) - (arg3 * arg2):
        call msg.sender with:
           value msg.value - (arg4 * arg2) + (arg3 * arg2) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit 0x39c2983d: arg2, arg3, arg4, arg1
}

function sub_130a002b(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == stor3
    sub_642b3f85.length = 0
    if sub_642b3f85.length > 0:
        idx = 0
        while sub_642b3f85.length > idx:
            sub_642b3f85[idx] = 0
            idx = idx + 1
            continue 
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        sub_642b3f85.length++
        mem[0] = 12
        sub_642b3f85[sub_642b3f85.length] = mem[(32 * idx) + 128]
        idx = idx + 1
        continue 
}

function randomDS_updateSessionPubKeysHash(bytes32[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == stor3
    sub_642b3f85.length = 0
    if sub_642b3f85.length > 0:
        idx = 0
        while sub_642b3f85.length > idx:
            sub_642b3f85[idx] = 0
            idx = idx + 1
            continue 
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        sub_642b3f85.length++
        mem[0] = 12
        sub_642b3f85[sub_642b3f85.length] = mem[(32 * idx) + 128]
        idx = idx + 1
        continue 
}

function sub_d9a0dfeb(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == stor3
    idx = 0
    while idx < arg2.length:
        require idx < arg1.length
        require idx < arg2.length
        mem[0] = mem[(32 * arg1.length) + (32 * idx) + 172 len 20]
        mem[32] = 7
        stor7[mem[(32 * arg1.length) + (32 * idx) + 172 len 20]] = mem[(32 * idx) + 128]
        idx = idx + 1
        continue 
}

function sub_9f71d980(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == stor3
    idx = 0
    while idx < arg2.length:
        require idx < arg1.length
        require idx < arg2.length
        mem[0] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
        mem[32] = 6
        stor6[mem[(32 * idx) + (32 * arg1.length) + 172 len 20]] = mem[(32 * idx) + 159 len 1]
        idx = idx + 1
        continue 
}

function withdrawTokens(address arg1) {
    require msg.sender == stor3
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == stor3
    require msg.sender
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function multisetCustomGasPrice(uint256[] arg1, address[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == stor3
    idx = 0
    while idx < arg2.length:
        require idx < arg1.length
        require idx < arg2.length
        mem[0] = mem[(32 * arg1.length) + (32 * idx) + 172 len 20]
        mem[32] = 7
        stor7[mem[(32 * arg1.length) + (32 * idx) + 172 len 20]] = mem[(32 * idx) + 128]
        idx = idx + 1
        continue 
}

function multisetProofType(uint256[] arg1, address[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == stor3
    idx = 0
    while idx < arg2.length:
        require idx < arg1.length
        require idx < arg2.length
        mem[0] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
        mem[32] = 6
        stor6[mem[(32 * idx) + (32 * arg1.length) + 172 len 20]] = mem[(32 * idx) + 159 len 1]
        idx = idx + 1
        continue 
}

function sub_b732b922(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if stor3 != msg.sender:
        require msg.sender == stor4
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg2.length
        require not stor0[mem[(32 * idx) + 140 len 20]]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 0
        stor0[address(mem[(32 * idx) + 128])] = mem[(32 * idx) + (32 * arg1.length) + 160]
        idx = idx + 1
        continue 
}

function sub_0e3a554c(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == stor3
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        stor11.length++
        if stor11.length > stor11.length + 1:
            s = stor11.length + sha3(11) + 1
            while sha3(11) + stor11.length > s:
                stor[s] = 0
                s = s + 1
                continue 
        require stor11.length < stor11.length
        stor11[stor11.length] = mem[(32 * idx) + 128]
        require idx < arg2.length
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 10
        stor10[mem[(32 * idx) + 128]] = mem[(32 * idx) + (32 * arg1.length) + 160]
        idx = idx + 1
        continue 
}

function multiAddDSource(bytes32[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == stor3
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        stor11.length++
        if stor11.length > stor11.length + 1:
            s = stor11.length + sha3(11) + 1
            while sha3(11) + stor11.length > s:
                stor[s] = 0
                s = s + 1
                continue 
        require stor11.length < stor11.length
        stor11[stor11.length] = mem[(32 * idx) + 128]
        require idx < arg2.length
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 10
        stor10[mem[(32 * idx) + 128]] = mem[(32 * idx) + (32 * arg1.length) + 160]
        idx = idx + 1
        continue 
}

function sub_cd291212(?) {
    mem[128 len arg1.length] = arg1[all]
    require msg.sender == stor3
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 0
    stor11.length++
    if stor11.length > stor11.length + 1:
        idx = stor11.length + 1
        while stor11.length > idx:
            stor11[idx] = 0
            idx = idx + 1
            continue 
    require stor11.length < stor11.length
    stor11[stor11.length] = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 1])
    stor10[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 1]] = arg2
}

function sub_ab362470(?) {
    mem[128 len arg1.length] = arg1[all]
    require msg.sender == stor3
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = Mask(8, 248, arg2)
    stor11.length++
    if stor11.length > stor11.length + 1:
        idx = stor11.length + 1
        while stor11.length > idx:
            stor11[idx] = 0
            idx = idx + 1
            continue 
    require stor11.length < stor11.length
    stor11[stor11.length] = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 1])
    stor10[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 1]] = arg3
}

function addDSource(string arg1, uint256 arg2) {
    mem[128 len arg1.length] = arg1[all]
    require msg.sender == stor3
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 0
    stor11.length++
    if stor11.length > stor11.length + 1:
        idx = stor11.length + 1
        while stor11.length > idx:
            stor11[idx] = 0
            idx = idx + 1
            continue 
    require stor11.length < stor11.length
    stor11[stor11.length] = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 1])
    stor10[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 1]] = arg2
}

function getPrice(string arg1, address arg2) {
    mem[128 len arg1.length] = arg1[all]
    if stor2[address(arg2)]:
        return 0
    if not stor0[address(arg2)]:
        if stor7[address(arg2)] <= stor5:
            if not Mask(8, 248, sub_40292f55[tx.origin]):
                return 0
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = !(256^(-(arg1.length % 32) + 32) - 1) and call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] or 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128]
    mem[ceil32(arg1.length) + arg1.length + 128] = Mask(8, 248, stor6[address(arg2)])
    if stor7[address(arg2)]:
        mem[ceil32(arg1.length) + 128] = (200000 * stor7[address(arg2)]) + price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 1]]
    else:
        mem[ceil32(arg1.length) + 128] = (200000 * stor5) + price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 1]]
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function getPrice(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    if stor2[address(msg.sender)]:
        return 0
    if not stor0[address(msg.sender)]:
        if stor7[address(msg.sender)] <= stor5:
            if not Mask(8, 248, sub_40292f55[tx.origin]):
                return 0
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = !(256^(-(arg1.length % 32) + 32) - 1) and call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] or 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128]
    mem[ceil32(arg1.length) + arg1.length + 128] = Mask(8, 248, stor6[address(msg.sender)])
    if stor7[address(msg.sender)]:
        mem[ceil32(arg1.length) + 128] = (200000 * stor7[address(msg.sender)]) + price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 1]]
    else:
        mem[ceil32(arg1.length) + 128] = (200000 * stor5) + price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 1]]
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function getPrice(string arg1, uint256 arg2, address arg3) {
    mem[128 len arg1.length] = arg1[all]
    if stor2[address(arg3)]:
        return 0
    if not stor0[address(arg3)]:
        if arg2 <= 200000:
            if stor7[address(arg3)] <= stor5:
                if not Mask(8, 248, sub_40292f55[tx.origin]):
                    return 0
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = !(256^(-(arg1.length % 32) + 32) - 1) and call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] or 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128]
    mem[ceil32(arg1.length) + arg1.length + 128] = Mask(8, 248, stor6[address(arg3)])
    if stor7[address(arg3)]:
        mem[ceil32(arg1.length) + 128] = (stor7[address(arg3)] * arg2) + price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 1]]
    else:
        mem[ceil32(arg1.length) + 128] = (stor5 * arg2) + price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 1]]
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function getPrice(string arg1, uint256 arg2) {
    mem[128 len arg1.length] = arg1[all]
    if stor2[address(msg.sender)]:
        return 0
    if not stor0[address(msg.sender)]:
        if arg2 <= 200000:
            if stor7[address(msg.sender)] <= stor5:
                if not Mask(8, 248, sub_40292f55[tx.origin]):
                    return 0
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = !(256^(-(arg1.length % 32) + 32) - 1) and call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] or 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128]
    mem[ceil32(arg1.length) + arg1.length + 128] = Mask(8, 248, stor6[address(msg.sender)])
    if stor7[address(msg.sender)]:
        mem[ceil32(arg1.length) + 128] = (stor7[address(msg.sender)] * arg2) + price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 1]]
    else:
        mem[ceil32(arg1.length) + 128] = (stor5 * arg2) + price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 1]]
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function sub_38c4a1b7(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = arg3.length
    mem[(32 * arg2.length) + (32 * arg1.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 192] = arg4.length
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224] = arg5.length
    mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 256 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    if stor3 != msg.sender:
        require msg.sender == stor4
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg2.length
        require idx < arg3.length
        require idx < arg4.length
        require idx < arg5.length
        require not stor0[mem[(32 * idx) + 140 len 20]]
        mem[0] = mem[(32 * idx) + 140 len 20]
        stor6[address(mem[(32 * idx) + 128])] = mem[(32 * idx) + (32 * arg1.length) + 160 len 1]
        stor0[address(mem[(32 * idx) + 128])] = mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 256]
        stor2[address(mem[(32 * idx) + 128])] = uint8(bool(mem[(32 * idx) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224]))
        mem[32] = 7
        stor7[address(mem[(32 * idx) + 128])] = mem[(32 * idx) + (32 * arg2.length) + (32 * arg1.length) + 192]
        idx = idx + 1
        continue 
}

function sub_5284f943(?) payable {
    mem[128 len arg2.length] = arg2[all]
    if stor2[address(msg.sender)]:
        if msg.value:
            if msg.value > 0:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if not sub_eaeae92c[msg.sender]:
                    revert with 0, 'Error settling query payment'
                require sub_13725147[stor14[msg.sender]] * basePrice
                require 0 / sub_13725147[stor14[msg.sender]] * basePrice > 0
                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, 0 / sub_13725147[stor14[msg.sender]] * basePrice
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
    else:
        if stor0[address(msg.sender)]:
            if stor7[address(msg.sender)]:
                if (200000 * stor7[address(msg.sender)]) + stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))] != msg.value:
                    if msg.value > (200000 * stor7[address(msg.sender)]) + stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))]:
                        call msg.sender with:
                           value msg.value - (200000 * stor7[address(msg.sender)]) - stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not sub_eaeae92c[msg.sender]:
                            revert with 0, 'Error settling query payment'
                        require sub_13725147[stor14[msg.sender]] * basePrice
                        require (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                        require ext_code.size(sub_eaeae92c[address(msg.sender)])
                        call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
            else:
                if (200000 * stor5) + stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))] != msg.value:
                    if msg.value > (200000 * stor5) + stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))]:
                        call msg.sender with:
                           value msg.value - (200000 * stor5) - stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not sub_eaeae92c[msg.sender]:
                            revert with 0, 'Error settling query payment'
                        require sub_13725147[stor14[msg.sender]] * basePrice
                        require (200000 * 10^18 * stor5) + (10^18 * stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                        require ext_code.size(sub_eaeae92c[address(msg.sender)])
                        call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, (200000 * 10^18 * stor5) + (10^18 * stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
        else:
            if stor7[address(msg.sender)] > stor5:
                if stor7[address(msg.sender)]:
                    if (200000 * stor7[address(msg.sender)]) + stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))] != msg.value:
                        if msg.value > (200000 * stor7[address(msg.sender)]) + stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))]:
                            call msg.sender with:
                               value msg.value - (200000 * stor7[address(msg.sender)]) - stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    if (200000 * stor5) + stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))] != msg.value:
                        if msg.value > (200000 * stor5) + stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))]:
                            call msg.sender with:
                               value msg.value - (200000 * stor5) - stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require (200000 * 10^18 * stor5) + (10^18 * stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, (200000 * 10^18 * stor5) + (10^18 * stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
            else:
                if not Mask(8, 248, sub_40292f55[tx.origin]):
                    if msg.value:
                        if msg.value > 0:
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require 0 / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, 0 / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    if stor7[address(msg.sender)]:
                        if (200000 * stor7[address(msg.sender)]) + stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))] != msg.value:
                            if msg.value > (200000 * stor7[address(msg.sender)]) + stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))]:
                                call msg.sender with:
                                   value msg.value - (200000 * stor7[address(msg.sender)]) - stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        if (200000 * stor5) + stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))] != msg.value:
                            if msg.value > (200000 * stor5) + stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))]:
                                call msg.sender with:
                                   value msg.value - (200000 * stor5) - stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require (200000 * 10^18 * stor5) + (10^18 * stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, (200000 * 10^18 * stor5) + (10^18 * stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
    stor0[msg.sender]++
    mem[ceil32(arg2.length) + 128] = msg.sender
    mem[ceil32(arg2.length) + 416 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        emit 0xc91a7218: msg.sender, sha3(this.address, msg.sender, stor0[msg.sender]), 0, Mask(8, 248, arg1), 256, 200000, Mask(8, 248, stor6[msg.sender]), stor7[msg.sender], arg2.length, Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 416] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 448 len arg2.length % 32]
        emit 0xc91a7218: msg.sender, sha3(this.address, msg.sender, stor0[msg.sender]), 0, Mask(8, 248, arg1), 256, 200000, Mask(8, 248, stor6[msg.sender]), stor7[msg.sender], arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + 416 len floor32(arg2.length) + -ceil32(arg2.length) + 32]
    return sha3(this.address, msg.sender, stor0[msg.sender])
}

function sub_b4c6154c(?) payable {
    mem[128 len arg2.length] = arg2[all]
    if stor2[address(msg.sender)]:
        if msg.value:
            if msg.value > 0:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if not sub_eaeae92c[msg.sender]:
                    revert with 0, 'Error settling query payment'
                require sub_13725147[stor14[msg.sender]] * basePrice
                require 0 / sub_13725147[stor14[msg.sender]] * basePrice > 0
                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, 0 / sub_13725147[stor14[msg.sender]] * basePrice
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
    else:
        if stor0[address(msg.sender)]:
            if stor7[address(msg.sender)]:
                if (200000 * stor7[address(msg.sender)]) + stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))] != msg.value:
                    if msg.value > (200000 * stor7[address(msg.sender)]) + stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))]:
                        call msg.sender with:
                           value msg.value - (200000 * stor7[address(msg.sender)]) - stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not sub_eaeae92c[msg.sender]:
                            revert with 0, 'Error settling query payment'
                        require sub_13725147[stor14[msg.sender]] * basePrice
                        require (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                        require ext_code.size(sub_eaeae92c[address(msg.sender)])
                        call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
            else:
                if (200000 * stor5) + stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))] != msg.value:
                    if msg.value > (200000 * stor5) + stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))]:
                        call msg.sender with:
                           value msg.value - (200000 * stor5) - stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not sub_eaeae92c[msg.sender]:
                            revert with 0, 'Error settling query payment'
                        require sub_13725147[stor14[msg.sender]] * basePrice
                        require (200000 * 10^18 * stor5) + (10^18 * stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                        require ext_code.size(sub_eaeae92c[address(msg.sender)])
                        call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, (200000 * 10^18 * stor5) + (10^18 * stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
        else:
            if stor7[address(msg.sender)] > stor5:
                if stor7[address(msg.sender)]:
                    if (200000 * stor7[address(msg.sender)]) + stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))] != msg.value:
                        if msg.value > (200000 * stor7[address(msg.sender)]) + stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))]:
                            call msg.sender with:
                               value msg.value - (200000 * stor7[address(msg.sender)]) - stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    if (200000 * stor5) + stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))] != msg.value:
                        if msg.value > (200000 * stor5) + stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))]:
                            call msg.sender with:
                               value msg.value - (200000 * stor5) - stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require (200000 * 10^18 * stor5) + (10^18 * stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, (200000 * 10^18 * stor5) + (10^18 * stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
            else:
                if not Mask(8, 248, sub_40292f55[tx.origin]):
                    if msg.value:
                        if msg.value > 0:
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require 0 / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, 0 / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    if stor7[address(msg.sender)]:
                        if (200000 * stor7[address(msg.sender)]) + stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))] != msg.value:
                            if msg.value > (200000 * stor7[address(msg.sender)]) + stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))]:
                                call msg.sender with:
                                   value msg.value - (200000 * stor7[address(msg.sender)]) - stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        if (200000 * stor5) + stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))] != msg.value:
                            if msg.value > (200000 * stor5) + stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))]:
                                call msg.sender with:
                                   value msg.value - (200000 * stor5) - stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require (200000 * 10^18 * stor5) + (10^18 * stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, (200000 * 10^18 * stor5) + (10^18 * stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
    stor0[msg.sender]++
    mem[ceil32(arg2.length) + 128] = msg.sender
    mem[ceil32(arg2.length) + 416 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        emit 0xc91a7218: msg.sender, sha3(this.address, msg.sender, stor0[msg.sender]), 0, Mask(8, 248, arg1), 256, 200000, Mask(8, 248, stor6[msg.sender]), stor7[msg.sender], arg2.length, Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 416] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 448 len arg2.length % 32]
        emit 0xc91a7218: msg.sender, sha3(this.address, msg.sender, stor0[msg.sender]), 0, Mask(8, 248, arg1), 256, 200000, Mask(8, 248, stor6[msg.sender]), stor7[msg.sender], arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + 416 len floor32(arg2.length) + -ceil32(arg2.length) + 32]
    return sha3(this.address, msg.sender, stor0[msg.sender])
}

function sub_4703385e(?) payable {
    mem[128 len arg3.length] = arg3[all]
    if stor2[address(msg.sender)]:
        if msg.value:
            if msg.value > 0:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if not sub_eaeae92c[msg.sender]:
                    revert with 0, 'Error settling query payment'
                require sub_13725147[stor14[msg.sender]] * basePrice
                require 0 / sub_13725147[stor14[msg.sender]] * basePrice > 0
                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, 0 / sub_13725147[stor14[msg.sender]] * basePrice
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
    else:
        if stor0[address(msg.sender)]:
            if stor7[address(msg.sender)]:
                if (200000 * stor7[address(msg.sender)]) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] != msg.value:
                    if msg.value > (200000 * stor7[address(msg.sender)]) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]:
                        call msg.sender with:
                           value msg.value - (200000 * stor7[address(msg.sender)]) - stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not sub_eaeae92c[msg.sender]:
                            revert with 0, 'Error settling query payment'
                        require sub_13725147[stor14[msg.sender]] * basePrice
                        require (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                        require ext_code.size(sub_eaeae92c[address(msg.sender)])
                        call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
            else:
                if (200000 * stor5) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] != msg.value:
                    if msg.value > (200000 * stor5) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]:
                        call msg.sender with:
                           value msg.value - (200000 * stor5) - stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not sub_eaeae92c[msg.sender]:
                            revert with 0, 'Error settling query payment'
                        require sub_13725147[stor14[msg.sender]] * basePrice
                        require (200000 * 10^18 * stor5) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                        require ext_code.size(sub_eaeae92c[address(msg.sender)])
                        call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, (200000 * 10^18 * stor5) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
        else:
            if stor7[address(msg.sender)] > stor5:
                if stor7[address(msg.sender)]:
                    if (200000 * stor7[address(msg.sender)]) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] != msg.value:
                        if msg.value > (200000 * stor7[address(msg.sender)]) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]:
                            call msg.sender with:
                               value msg.value - (200000 * stor7[address(msg.sender)]) - stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    if (200000 * stor5) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] != msg.value:
                        if msg.value > (200000 * stor5) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]:
                            call msg.sender with:
                               value msg.value - (200000 * stor5) - stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require (200000 * 10^18 * stor5) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, (200000 * 10^18 * stor5) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
            else:
                if not Mask(8, 248, sub_40292f55[tx.origin]):
                    if msg.value:
                        if msg.value > 0:
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require 0 / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, 0 / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    if stor7[address(msg.sender)]:
                        if (200000 * stor7[address(msg.sender)]) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] != msg.value:
                            if msg.value > (200000 * stor7[address(msg.sender)]) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]:
                                call msg.sender with:
                                   value msg.value - (200000 * stor7[address(msg.sender)]) - stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        if (200000 * stor5) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] != msg.value:
                            if msg.value > (200000 * stor5) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]:
                                call msg.sender with:
                                   value msg.value - (200000 * stor5) - stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require (200000 * 10^18 * stor5) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, (200000 * 10^18 * stor5) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
    stor0[msg.sender]++
    mem[ceil32(arg3.length) + 128] = msg.sender
    mem[ceil32(arg3.length) + 416 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        emit 0xc91a7218: msg.sender, sha3(this.address, msg.sender, stor0[msg.sender]), arg1, Mask(8, 248, arg2), 256, 200000, Mask(8, 248, stor6[msg.sender]), stor7[msg.sender], arg3.length, Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 416] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 448 len arg3.length % 32]
        emit 0xc91a7218: msg.sender, sha3(this.address, msg.sender, stor0[msg.sender]), arg1, Mask(8, 248, arg2), 256, 200000, Mask(8, 248, stor6[msg.sender]), stor7[msg.sender], arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + 416 len floor32(arg3.length) + -ceil32(arg3.length) + 32]
    return sha3(this.address, msg.sender, stor0[msg.sender])
}

function sub_57b958a0(?) payable {
    mem[128 len arg3.length] = arg3[all]
    if stor2[address(msg.sender)]:
        if msg.value:
            if msg.value > 0:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if not sub_eaeae92c[msg.sender]:
                    revert with 0, 'Error settling query payment'
                require sub_13725147[stor14[msg.sender]] * basePrice
                require 0 / sub_13725147[stor14[msg.sender]] * basePrice > 0
                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, 0 / sub_13725147[stor14[msg.sender]] * basePrice
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
    else:
        if stor0[address(msg.sender)]:
            if stor7[address(msg.sender)]:
                if (200000 * stor7[address(msg.sender)]) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] != msg.value:
                    if msg.value > (200000 * stor7[address(msg.sender)]) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]:
                        call msg.sender with:
                           value msg.value - (200000 * stor7[address(msg.sender)]) - stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not sub_eaeae92c[msg.sender]:
                            revert with 0, 'Error settling query payment'
                        require sub_13725147[stor14[msg.sender]] * basePrice
                        require (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                        require ext_code.size(sub_eaeae92c[address(msg.sender)])
                        call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
            else:
                if (200000 * stor5) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] != msg.value:
                    if msg.value > (200000 * stor5) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]:
                        call msg.sender with:
                           value msg.value - (200000 * stor5) - stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not sub_eaeae92c[msg.sender]:
                            revert with 0, 'Error settling query payment'
                        require sub_13725147[stor14[msg.sender]] * basePrice
                        require (200000 * 10^18 * stor5) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                        require ext_code.size(sub_eaeae92c[address(msg.sender)])
                        call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, (200000 * 10^18 * stor5) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
        else:
            if stor7[address(msg.sender)] > stor5:
                if stor7[address(msg.sender)]:
                    if (200000 * stor7[address(msg.sender)]) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] != msg.value:
                        if msg.value > (200000 * stor7[address(msg.sender)]) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]:
                            call msg.sender with:
                               value msg.value - (200000 * stor7[address(msg.sender)]) - stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    if (200000 * stor5) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] != msg.value:
                        if msg.value > (200000 * stor5) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]:
                            call msg.sender with:
                               value msg.value - (200000 * stor5) - stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require (200000 * 10^18 * stor5) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, (200000 * 10^18 * stor5) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
            else:
                if not Mask(8, 248, sub_40292f55[tx.origin]):
                    if msg.value:
                        if msg.value > 0:
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require 0 / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, 0 / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    if stor7[address(msg.sender)]:
                        if (200000 * stor7[address(msg.sender)]) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] != msg.value:
                            if msg.value > (200000 * stor7[address(msg.sender)]) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]:
                                call msg.sender with:
                                   value msg.value - (200000 * stor7[address(msg.sender)]) - stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        if (200000 * stor5) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] != msg.value:
                            if msg.value > (200000 * stor5) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]:
                                call msg.sender with:
                                   value msg.value - (200000 * stor5) - stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require (200000 * 10^18 * stor5) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, (200000 * 10^18 * stor5) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
    stor0[msg.sender]++
    mem[ceil32(arg3.length) + 128] = msg.sender
    mem[ceil32(arg3.length) + 416 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        emit 0xc91a7218: msg.sender, sha3(this.address, msg.sender, stor0[msg.sender]), arg1, Mask(8, 248, arg2), 256, 200000, Mask(8, 248, stor6[msg.sender]), stor7[msg.sender], arg3.length, Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 416] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 448 len arg3.length % 32]
        emit 0xc91a7218: msg.sender, sha3(this.address, msg.sender, stor0[msg.sender]), arg1, Mask(8, 248, arg2), 256, 200000, Mask(8, 248, stor6[msg.sender]), stor7[msg.sender], arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + 416 len floor32(arg3.length) + -ceil32(arg3.length) + 32]
    return sha3(this.address, msg.sender, stor0[msg.sender])
}

function sub_480981cd(?) payable {
    mem[128 len arg2.length] = arg2[all]
    if stor2[address(msg.sender)]:
        if msg.value:
            if msg.value > 0:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if not sub_eaeae92c[msg.sender]:
                    revert with 0, 'Error settling query payment'
                require sub_13725147[stor14[msg.sender]] * basePrice
                require 0 / sub_13725147[stor14[msg.sender]] * basePrice > 0
                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, 0 / sub_13725147[stor14[msg.sender]] * basePrice
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
    else:
        if stor0[address(msg.sender)]:
            if stor7[address(msg.sender)]:
                if (200000 * stor7[address(msg.sender)]) + stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))] != msg.value:
                    if msg.value > (200000 * stor7[address(msg.sender)]) + stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))]:
                        call msg.sender with:
                           value msg.value - (200000 * stor7[address(msg.sender)]) - stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not sub_eaeae92c[msg.sender]:
                            revert with 0, 'Error settling query payment'
                        require sub_13725147[stor14[msg.sender]] * basePrice
                        require (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                        require ext_code.size(sub_eaeae92c[address(msg.sender)])
                        call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
            else:
                if (200000 * stor5) + stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))] != msg.value:
                    if msg.value > (200000 * stor5) + stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))]:
                        call msg.sender with:
                           value msg.value - (200000 * stor5) - stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not sub_eaeae92c[msg.sender]:
                            revert with 0, 'Error settling query payment'
                        require sub_13725147[stor14[msg.sender]] * basePrice
                        require (200000 * 10^18 * stor5) + (10^18 * stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                        require ext_code.size(sub_eaeae92c[address(msg.sender)])
                        call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, (200000 * 10^18 * stor5) + (10^18 * stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
        else:
            if stor7[address(msg.sender)] > stor5:
                if stor7[address(msg.sender)]:
                    if (200000 * stor7[address(msg.sender)]) + stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))] != msg.value:
                        if msg.value > (200000 * stor7[address(msg.sender)]) + stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))]:
                            call msg.sender with:
                               value msg.value - (200000 * stor7[address(msg.sender)]) - stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    if (200000 * stor5) + stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))] != msg.value:
                        if msg.value > (200000 * stor5) + stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))]:
                            call msg.sender with:
                               value msg.value - (200000 * stor5) - stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require (200000 * 10^18 * stor5) + (10^18 * stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, (200000 * 10^18 * stor5) + (10^18 * stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
            else:
                if not Mask(8, 248, sub_40292f55[tx.origin]):
                    if msg.value:
                        if msg.value > 0:
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require 0 / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, 0 / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    if stor7[address(msg.sender)]:
                        if (200000 * stor7[address(msg.sender)]) + stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))] != msg.value:
                            if msg.value > (200000 * stor7[address(msg.sender)]) + stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))]:
                                call msg.sender with:
                                   value msg.value - (200000 * stor7[address(msg.sender)]) - stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        if (200000 * stor5) + stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))] != msg.value:
                            if msg.value > (200000 * stor5) + stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))]:
                                call msg.sender with:
                                   value msg.value - (200000 * stor5) - stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require (200000 * 10^18 * stor5) + (10^18 * stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, (200000 * 10^18 * stor5) + (10^18 * stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
    stor0[msg.sender]++
    mem[ceil32(arg2.length) + 128] = msg.sender
    mem[ceil32(arg2.length) + 160] = sha3(this.address, msg.sender, stor0[msg.sender])
    mem[ceil32(arg2.length) + 192] = 0
    mem[ceil32(arg2.length) + 224] = Mask(8, 248, arg1)
    mem[ceil32(arg2.length) + 288] = 200000
    mem[ceil32(arg2.length) + 320] = Mask(8, 248, stor6[msg.sender])
    mem[ceil32(arg2.length) + 352] = stor7[msg.sender]
    mem[ceil32(arg2.length) + 256] = 256
    mem[ceil32(arg2.length) + 384] = arg2.length
    if 0 >= arg2.length:
        if not arg2.length % 32:
            emit 0x21973bb6: msg.sender, sha3(this.address, msg.sender, stor0[msg.sender]), 0, Mask(8, 248, arg1), 256, 200000, Mask(8, 248, stor6[msg.sender]), stor7[msg.sender], arg2.length, mem[ceil32(arg2.length) + 416 len arg2.length]
        else:
            mem[floor32(arg2.length) + ceil32(arg2.length) + 416] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 448 len arg2.length % 32]
            emit 0x21973bb6: msg.sender, sha3(this.address, msg.sender, stor0[msg.sender]), 0, Mask(8, 248, arg1), 256, 200000, Mask(8, 248, stor6[msg.sender]), stor7[msg.sender], arg2.length, mem[ceil32(arg2.length) + 416 len floor32(arg2.length) + 32]
    else:
        mem[ceil32(arg2.length) + 416] = mem[128]
        mem[ceil32(arg2.length) + 448 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
        if not arg2.length % 32:
            emit 0x21973bb6: msg.sender, sha3(this.address, msg.sender, stor0[msg.sender]), 0, Mask(8, 248, arg1), 256, 200000, Mask(8, 248, stor6[msg.sender]), stor7[msg.sender], arg2.length, mem[ceil32(arg2.length) + 416 len arg2.length]
        else:
            mem[floor32(arg2.length) + ceil32(arg2.length) + 416] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 448 len arg2.length % 32]
            emit 0x21973bb6: msg.sender, sha3(this.address, msg.sender, stor0[msg.sender]), 0, Mask(8, 248, arg1), 256, 200000, Mask(8, 248, stor6[msg.sender]), stor7[msg.sender], arg2.length, mem[128], mem[ceil32(arg2.length) + 448 len floor32(arg2.length)]
    return sha3(this.address, msg.sender, stor0[msg.sender])
}

function sub_c2481c54(?) payable {
    mem[128 len arg3.length] = arg3[all]
    if stor2[address(msg.sender)]:
        if msg.value:
            if msg.value > 0:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if not sub_eaeae92c[msg.sender]:
                    revert with 0, 'Error settling query payment'
                require sub_13725147[stor14[msg.sender]] * basePrice
                require 0 / sub_13725147[stor14[msg.sender]] * basePrice > 0
                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, 0 / sub_13725147[stor14[msg.sender]] * basePrice
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
    else:
        if stor0[address(msg.sender)]:
            if stor7[address(msg.sender)]:
                if (200000 * stor7[address(msg.sender)]) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] != msg.value:
                    if msg.value > (200000 * stor7[address(msg.sender)]) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]:
                        call msg.sender with:
                           value msg.value - (200000 * stor7[address(msg.sender)]) - stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not sub_eaeae92c[msg.sender]:
                            revert with 0, 'Error settling query payment'
                        require sub_13725147[stor14[msg.sender]] * basePrice
                        require (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                        require ext_code.size(sub_eaeae92c[address(msg.sender)])
                        call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
            else:
                if (200000 * stor5) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] != msg.value:
                    if msg.value > (200000 * stor5) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]:
                        call msg.sender with:
                           value msg.value - (200000 * stor5) - stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not sub_eaeae92c[msg.sender]:
                            revert with 0, 'Error settling query payment'
                        require sub_13725147[stor14[msg.sender]] * basePrice
                        require (200000 * 10^18 * stor5) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                        require ext_code.size(sub_eaeae92c[address(msg.sender)])
                        call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, (200000 * 10^18 * stor5) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
        else:
            if stor7[address(msg.sender)] > stor5:
                if stor7[address(msg.sender)]:
                    if (200000 * stor7[address(msg.sender)]) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] != msg.value:
                        if msg.value > (200000 * stor7[address(msg.sender)]) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]:
                            call msg.sender with:
                               value msg.value - (200000 * stor7[address(msg.sender)]) - stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    if (200000 * stor5) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] != msg.value:
                        if msg.value > (200000 * stor5) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]:
                            call msg.sender with:
                               value msg.value - (200000 * stor5) - stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require (200000 * 10^18 * stor5) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, (200000 * 10^18 * stor5) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
            else:
                if not Mask(8, 248, sub_40292f55[tx.origin]):
                    if msg.value:
                        if msg.value > 0:
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require 0 / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, 0 / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    if stor7[address(msg.sender)]:
                        if (200000 * stor7[address(msg.sender)]) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] != msg.value:
                            if msg.value > (200000 * stor7[address(msg.sender)]) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]:
                                call msg.sender with:
                                   value msg.value - (200000 * stor7[address(msg.sender)]) - stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        if (200000 * stor5) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] != msg.value:
                            if msg.value > (200000 * stor5) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]:
                                call msg.sender with:
                                   value msg.value - (200000 * stor5) - stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require (200000 * 10^18 * stor5) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, (200000 * 10^18 * stor5) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
    stor0[msg.sender]++
    mem[ceil32(arg3.length) + 128] = msg.sender
    mem[ceil32(arg3.length) + 160] = sha3(this.address, msg.sender, stor0[msg.sender])
    mem[ceil32(arg3.length) + 192] = arg1
    mem[ceil32(arg3.length) + 224] = Mask(8, 248, arg2)
    mem[ceil32(arg3.length) + 288] = 200000
    mem[ceil32(arg3.length) + 320] = Mask(8, 248, stor6[msg.sender])
    mem[ceil32(arg3.length) + 352] = stor7[msg.sender]
    mem[ceil32(arg3.length) + 256] = 256
    mem[ceil32(arg3.length) + 384] = arg3.length
    if 0 >= arg3.length:
        if not arg3.length % 32:
            emit 0x21973bb6: msg.sender, sha3(this.address, msg.sender, stor0[msg.sender]), arg1, Mask(8, 248, arg2), 256, 200000, Mask(8, 248, stor6[msg.sender]), stor7[msg.sender], arg3.length, mem[ceil32(arg3.length) + 416 len arg3.length]
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + 416] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 448 len arg3.length % 32]
            emit 0x21973bb6: msg.sender, sha3(this.address, msg.sender, stor0[msg.sender]), arg1, Mask(8, 248, arg2), 256, 200000, Mask(8, 248, stor6[msg.sender]), stor7[msg.sender], arg3.length, mem[ceil32(arg3.length) + 416 len floor32(arg3.length) + 32]
    else:
        mem[ceil32(arg3.length) + 416] = mem[128]
        mem[ceil32(arg3.length) + 448 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
        if not arg3.length % 32:
            emit 0x21973bb6: msg.sender, sha3(this.address, msg.sender, stor0[msg.sender]), arg1, Mask(8, 248, arg2), 256, 200000, Mask(8, 248, stor6[msg.sender]), stor7[msg.sender], arg3.length, mem[ceil32(arg3.length) + 416 len arg3.length]
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + 416] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 448 len arg3.length % 32]
            emit 0x21973bb6: msg.sender, sha3(this.address, msg.sender, stor0[msg.sender]), arg1, Mask(8, 248, arg2), 256, 200000, Mask(8, 248, stor6[msg.sender]), stor7[msg.sender], arg3.length, mem[128], mem[ceil32(arg3.length) + 448 len floor32(arg3.length)]
    return sha3(this.address, msg.sender, stor0[msg.sender])
}

function sub_f0e87a1a(?) payable {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    if stor2[address(msg.sender)]:
        if msg.value:
            if msg.value > 0:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if not sub_eaeae92c[msg.sender]:
                    revert with 0, 'Error settling query payment'
                require sub_13725147[stor14[msg.sender]] * basePrice
                require 0 / sub_13725147[stor14[msg.sender]] * basePrice > 0
                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, 0 / sub_13725147[stor14[msg.sender]] * basePrice
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
    else:
        if stor0[address(msg.sender)]:
            if stor7[address(msg.sender)]:
                if (200000 * stor7[address(msg.sender)]) + stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))] != msg.value:
                    if msg.value > (200000 * stor7[address(msg.sender)]) + stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))]:
                        call msg.sender with:
                           value msg.value - (200000 * stor7[address(msg.sender)]) - stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not sub_eaeae92c[msg.sender]:
                            revert with 0, 'Error settling query payment'
                        require sub_13725147[stor14[msg.sender]] * basePrice
                        require (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                        require ext_code.size(sub_eaeae92c[address(msg.sender)])
                        call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
            else:
                if (200000 * stor5) + stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))] != msg.value:
                    if msg.value > (200000 * stor5) + stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))]:
                        call msg.sender with:
                           value msg.value - (200000 * stor5) - stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not sub_eaeae92c[msg.sender]:
                            revert with 0, 'Error settling query payment'
                        require sub_13725147[stor14[msg.sender]] * basePrice
                        require (200000 * 10^18 * stor5) + (10^18 * stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                        require ext_code.size(sub_eaeae92c[address(msg.sender)])
                        call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, (200000 * 10^18 * stor5) + (10^18 * stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
        else:
            if stor7[address(msg.sender)] > stor5:
                if stor7[address(msg.sender)]:
                    if (200000 * stor7[address(msg.sender)]) + stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))] != msg.value:
                        if msg.value > (200000 * stor7[address(msg.sender)]) + stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))]:
                            call msg.sender with:
                               value msg.value - (200000 * stor7[address(msg.sender)]) - stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    if (200000 * stor5) + stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))] != msg.value:
                        if msg.value > (200000 * stor5) + stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))]:
                            call msg.sender with:
                               value msg.value - (200000 * stor5) - stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require (200000 * 10^18 * stor5) + (10^18 * stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, (200000 * 10^18 * stor5) + (10^18 * stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
            else:
                if not Mask(8, 248, sub_40292f55[tx.origin]):
                    if msg.value:
                        if msg.value > 0:
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require 0 / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, 0 / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    if stor7[address(msg.sender)]:
                        if (200000 * stor7[address(msg.sender)]) + stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))] != msg.value:
                            if msg.value > (200000 * stor7[address(msg.sender)]) + stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))]:
                                call msg.sender with:
                                   value msg.value - (200000 * stor7[address(msg.sender)]) - stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        if (200000 * stor5) + stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))] != msg.value:
                            if msg.value > (200000 * stor5) + stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))]:
                                call msg.sender with:
                                   value msg.value - (200000 * stor5) - stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require (200000 * 10^18 * stor5) + (10^18 * stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, (200000 * 10^18 * stor5) + (10^18 * stor9[('map', ('param', 'arg1'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
    stor0[msg.sender]++
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = msg.sender
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 480 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 480] = arg3.length
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 512 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            emit 0xc158eefa: msg.sender, sha3(this.address, msg.sender, stor0[msg.sender]), 0, Mask(8, 248, arg1), 288, arg2.length + 320, 200000, Mask(8, 248, stor6[msg.sender]), stor7[msg.sender], arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 480 len arg3.length + arg2.length + -ceil32(arg2.length) + 32]
        else:
            mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 512] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 544 len arg3.length % 32]
            emit 0xc158eefa: msg.sender, sha3(this.address, msg.sender, stor0[msg.sender]), 0, Mask(8, 248, arg1), 288, arg2.length + 320, 200000, Mask(8, 248, stor6[msg.sender]), stor7[msg.sender], arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 480 len floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 64]
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 480] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 512 len arg2.length % 32]
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 512] = arg3.length
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 544 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            emit 0xc158eefa: msg.sender, sha3(this.address, msg.sender, stor0[msg.sender]), 0, Mask(8, 248, arg1), 288, floor32(arg2.length) + 352, 200000, Mask(8, 248, stor6[msg.sender]), stor7[msg.sender], arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 480 len arg3.length + floor32(arg2.length) + -ceil32(arg2.length) + 64]
        else:
            mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 544] = mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 576 len arg3.length % 32]
            emit 0xc158eefa: msg.sender, sha3(this.address, msg.sender, stor0[msg.sender]), 0, Mask(8, 248, arg1), 288, floor32(arg2.length) + 352, 200000, Mask(8, 248, stor6[msg.sender]), stor7[msg.sender], arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 480 len floor32(arg3.length) + floor32(arg2.length) + -ceil32(arg2.length) + 96]
    return sha3(this.address, msg.sender, stor0[msg.sender])
}

function sub_7a99a65a(?) payable {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128] = arg4.length
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    if stor2[address(msg.sender)]:
        if msg.value:
            if msg.value > 0:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if not sub_eaeae92c[msg.sender]:
                    revert with 0, 'Error settling query payment'
                require sub_13725147[stor14[msg.sender]] * basePrice
                require 0 / sub_13725147[stor14[msg.sender]] * basePrice > 0
                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, 0 / sub_13725147[stor14[msg.sender]] * basePrice
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
    else:
        if stor0[address(msg.sender)]:
            if stor7[address(msg.sender)]:
                if (200000 * stor7[address(msg.sender)]) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] != msg.value:
                    if msg.value > (200000 * stor7[address(msg.sender)]) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]:
                        call msg.sender with:
                           value msg.value - (200000 * stor7[address(msg.sender)]) - stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not sub_eaeae92c[msg.sender]:
                            revert with 0, 'Error settling query payment'
                        require sub_13725147[stor14[msg.sender]] * basePrice
                        require (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                        require ext_code.size(sub_eaeae92c[address(msg.sender)])
                        call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
            else:
                if (200000 * stor5) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] != msg.value:
                    if msg.value > (200000 * stor5) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]:
                        call msg.sender with:
                           value msg.value - (200000 * stor5) - stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not sub_eaeae92c[msg.sender]:
                            revert with 0, 'Error settling query payment'
                        require sub_13725147[stor14[msg.sender]] * basePrice
                        require (200000 * 10^18 * stor5) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                        require ext_code.size(sub_eaeae92c[address(msg.sender)])
                        call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, (200000 * 10^18 * stor5) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
        else:
            if stor7[address(msg.sender)] > stor5:
                if stor7[address(msg.sender)]:
                    if (200000 * stor7[address(msg.sender)]) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] != msg.value:
                        if msg.value > (200000 * stor7[address(msg.sender)]) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]:
                            call msg.sender with:
                               value msg.value - (200000 * stor7[address(msg.sender)]) - stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    if (200000 * stor5) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] != msg.value:
                        if msg.value > (200000 * stor5) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]:
                            call msg.sender with:
                               value msg.value - (200000 * stor5) - stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require (200000 * 10^18 * stor5) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, (200000 * 10^18 * stor5) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
            else:
                if not Mask(8, 248, sub_40292f55[tx.origin]):
                    if msg.value:
                        if msg.value > 0:
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require 0 / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, 0 / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    if stor7[address(msg.sender)]:
                        if (200000 * stor7[address(msg.sender)]) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] != msg.value:
                            if msg.value > (200000 * stor7[address(msg.sender)]) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]:
                                call msg.sender with:
                                   value msg.value - (200000 * stor7[address(msg.sender)]) - stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        if (200000 * stor5) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] != msg.value:
                            if msg.value > (200000 * stor5) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]:
                                call msg.sender with:
                                   value msg.value - (200000 * stor5) - stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require (200000 * 10^18 * stor5) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, (200000 * 10^18 * stor5) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
    stor0[msg.sender]++
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = msg.sender
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 480 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 480] = arg4.length
        mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 512 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg3.length) + arg4.length + 160 len ceil32(arg4.length) - arg4.length]
        if not arg4.length % 32:
            emit 0xc158eefa: msg.sender, sha3(this.address, msg.sender, stor0[msg.sender]), arg1, Mask(8, 248, arg2), 288, arg3.length + 320, 200000, Mask(8, 248, stor6[msg.sender]), stor7[msg.sender], arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 480 len arg4.length + arg3.length + -ceil32(arg3.length) + 32]
        else:
            mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 512] = mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 544 len arg4.length % 32]
            emit 0xc158eefa: msg.sender, sha3(this.address, msg.sender, stor0[msg.sender]), arg1, Mask(8, 248, arg2), 288, arg3.length + 320, 200000, Mask(8, 248, stor6[msg.sender]), stor7[msg.sender], arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 480 len floor32(arg4.length) + arg3.length + -ceil32(arg3.length) + 64]
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 480] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 512 len arg3.length % 32]
        mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 512] = arg4.length
        mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg3.length) + arg4.length + 160 len ceil32(arg4.length) - arg4.length]
        if not arg4.length % 32:
            emit 0xc158eefa: msg.sender, sha3(this.address, msg.sender, stor0[msg.sender]), arg1, Mask(8, 248, arg2), 288, floor32(arg3.length) + 352, 200000, Mask(8, 248, stor6[msg.sender]), stor7[msg.sender], arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 480 len arg4.length + floor32(arg3.length) + -ceil32(arg3.length) + 64]
        else:
            mem[floor32(arg4.length) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544] = mem[floor32(arg4.length) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 576 len arg4.length % 32]
            emit 0xc158eefa: msg.sender, sha3(this.address, msg.sender, stor0[msg.sender]), arg1, Mask(8, 248, arg2), 288, floor32(arg3.length) + 352, 200000, Mask(8, 248, stor6[msg.sender]), stor7[msg.sender], arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 480 len floor32(arg4.length) + floor32(arg3.length) + -ceil32(arg3.length) + 96]
    return sha3(this.address, msg.sender, stor0[msg.sender])
}

function sub_a32c1400(?) payable {
    if stor2[address(msg.sender)]:
        if msg.value:
            if msg.value > 0:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if not sub_eaeae92c[msg.sender]:
                    revert with 0, 'Error settling query payment'
                require sub_13725147[stor14[msg.sender]] * basePrice
                require 0 / sub_13725147[stor14[msg.sender]] * basePrice > 0
                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, 0 / sub_13725147[stor14[msg.sender]] * basePrice
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
    else:
        if stor0[address(msg.sender)]:
            if stor7[address(msg.sender)]:
                if (stor7[address(msg.sender)] * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] != msg.value:
                    if msg.value > (stor7[address(msg.sender)] * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]:
                        call msg.sender with:
                           value msg.value - (stor7[address(msg.sender)] * arg4) - stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not sub_eaeae92c[msg.sender]:
                            revert with 0, 'Error settling query payment'
                        require sub_13725147[stor14[msg.sender]] * basePrice
                        require (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                        require ext_code.size(sub_eaeae92c[address(msg.sender)])
                        call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
            else:
                if (stor5 * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] != msg.value:
                    if msg.value > (stor5 * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]:
                        call msg.sender with:
                           value msg.value - (stor5 * arg4) - stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not sub_eaeae92c[msg.sender]:
                            revert with 0, 'Error settling query payment'
                        require sub_13725147[stor14[msg.sender]] * basePrice
                        require (10^18 * stor5 * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                        require ext_code.size(sub_eaeae92c[address(msg.sender)])
                        call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, (10^18 * stor5 * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
        else:
            if arg4 > 200000:
                if stor7[address(msg.sender)]:
                    if (stor7[address(msg.sender)] * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] != msg.value:
                        if msg.value > (stor7[address(msg.sender)] * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]:
                            call msg.sender with:
                               value msg.value - (stor7[address(msg.sender)] * arg4) - stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    if (stor5 * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] != msg.value:
                        if msg.value > (stor5 * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]:
                            call msg.sender with:
                               value msg.value - (stor5 * arg4) - stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require (10^18 * stor5 * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, (10^18 * stor5 * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
            else:
                if stor7[address(msg.sender)] > stor5:
                    if stor7[address(msg.sender)]:
                        if (stor7[address(msg.sender)] * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] != msg.value:
                            if msg.value > (stor7[address(msg.sender)] * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]:
                                call msg.sender with:
                                   value msg.value - (stor7[address(msg.sender)] * arg4) - stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        if (stor5 * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] != msg.value:
                            if msg.value > (stor5 * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]:
                                call msg.sender with:
                                   value msg.value - (stor5 * arg4) - stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require (10^18 * stor5 * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, (10^18 * stor5 * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                else:
                    if not Mask(8, 248, sub_40292f55[tx.origin]):
                        if msg.value:
                            if msg.value > 0:
                                call msg.sender with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require 0 / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, 0 / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        if stor7[address(msg.sender)]:
                            if (stor7[address(msg.sender)] * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] != msg.value:
                                if msg.value > (stor7[address(msg.sender)] * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]:
                                    call msg.sender with:
                                       value msg.value - (stor7[address(msg.sender)] * arg4) - stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if not sub_eaeae92c[msg.sender]:
                                        revert with 0, 'Error settling query payment'
                                    require sub_13725147[stor14[msg.sender]] * basePrice
                                    require (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                    require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                    call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, this.address, (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                        else:
                            if (stor5 * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] != msg.value:
                                if msg.value > (stor5 * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]:
                                    call msg.sender with:
                                       value msg.value - (stor5 * arg4) - stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if not sub_eaeae92c[msg.sender]:
                                        revert with 0, 'Error settling query payment'
                                    require sub_13725147[stor14[msg.sender]] * basePrice
                                    require (10^18 * stor5 * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                    require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                    call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, this.address, (10^18 * stor5 * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
    stor0[msg.sender]++
    emit 0xc91a7218: msg.sender, sha3(this.address, msg.sender, stor0[msg.sender]), arg1, Mask(8, 248, arg2), Array(len=arg3.length, data=arg3[all]), arg4, Mask(8, 248, stor6[msg.sender]), stor7[msg.sender]
    return sha3(this.address, msg.sender, stor0[msg.sender])
}

function sub_afdd7d6b(?) payable {
    if stor2[address(msg.sender)]:
        if msg.value:
            if msg.value > 0:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if not sub_eaeae92c[msg.sender]:
                    revert with 0, 'Error settling query payment'
                require sub_13725147[stor14[msg.sender]] * basePrice
                require 0 / sub_13725147[stor14[msg.sender]] * basePrice > 0
                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, 0 / sub_13725147[stor14[msg.sender]] * basePrice
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
    else:
        if stor0[address(msg.sender)]:
            if stor7[address(msg.sender)]:
                if (stor7[address(msg.sender)] * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] != msg.value:
                    if msg.value > (stor7[address(msg.sender)] * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]:
                        call msg.sender with:
                           value msg.value - (stor7[address(msg.sender)] * arg4) - stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not sub_eaeae92c[msg.sender]:
                            revert with 0, 'Error settling query payment'
                        require sub_13725147[stor14[msg.sender]] * basePrice
                        require (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                        require ext_code.size(sub_eaeae92c[address(msg.sender)])
                        call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
            else:
                if (stor5 * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] != msg.value:
                    if msg.value > (stor5 * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]:
                        call msg.sender with:
                           value msg.value - (stor5 * arg4) - stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not sub_eaeae92c[msg.sender]:
                            revert with 0, 'Error settling query payment'
                        require sub_13725147[stor14[msg.sender]] * basePrice
                        require (10^18 * stor5 * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                        require ext_code.size(sub_eaeae92c[address(msg.sender)])
                        call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, (10^18 * stor5 * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
        else:
            if arg4 > 200000:
                if stor7[address(msg.sender)]:
                    if (stor7[address(msg.sender)] * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] != msg.value:
                        if msg.value > (stor7[address(msg.sender)] * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]:
                            call msg.sender with:
                               value msg.value - (stor7[address(msg.sender)] * arg4) - stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    if (stor5 * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] != msg.value:
                        if msg.value > (stor5 * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]:
                            call msg.sender with:
                               value msg.value - (stor5 * arg4) - stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require (10^18 * stor5 * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, (10^18 * stor5 * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
            else:
                if stor7[address(msg.sender)] > stor5:
                    if stor7[address(msg.sender)]:
                        if (stor7[address(msg.sender)] * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] != msg.value:
                            if msg.value > (stor7[address(msg.sender)] * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]:
                                call msg.sender with:
                                   value msg.value - (stor7[address(msg.sender)] * arg4) - stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        if (stor5 * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] != msg.value:
                            if msg.value > (stor5 * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]:
                                call msg.sender with:
                                   value msg.value - (stor5 * arg4) - stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require (10^18 * stor5 * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, (10^18 * stor5 * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                else:
                    if not Mask(8, 248, sub_40292f55[tx.origin]):
                        if msg.value:
                            if msg.value > 0:
                                call msg.sender with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require 0 / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, 0 / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        if stor7[address(msg.sender)]:
                            if (stor7[address(msg.sender)] * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] != msg.value:
                                if msg.value > (stor7[address(msg.sender)] * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]:
                                    call msg.sender with:
                                       value msg.value - (stor7[address(msg.sender)] * arg4) - stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if not sub_eaeae92c[msg.sender]:
                                        revert with 0, 'Error settling query payment'
                                    require sub_13725147[stor14[msg.sender]] * basePrice
                                    require (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                    require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                    call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, this.address, (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                        else:
                            if (stor5 * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] != msg.value:
                                if msg.value > (stor5 * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]:
                                    call msg.sender with:
                                       value msg.value - (stor5 * arg4) - stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if not sub_eaeae92c[msg.sender]:
                                        revert with 0, 'Error settling query payment'
                                    require sub_13725147[stor14[msg.sender]] * basePrice
                                    require (10^18 * stor5 * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                    require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                    call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, this.address, (10^18 * stor5 * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
    stor0[msg.sender]++
    emit 0xc91a7218: msg.sender, sha3(this.address, msg.sender, stor0[msg.sender]), arg1, Mask(8, 248, arg2), Array(len=arg3.length, data=arg3[all]), arg4, Mask(8, 248, stor6[msg.sender]), stor7[msg.sender]
    return sha3(this.address, msg.sender, stor0[msg.sender])
}

function sub_eb89c1a8(?) payable {
    if stor2[address(msg.sender)]:
        if msg.value:
            if msg.value > 0:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if not sub_eaeae92c[msg.sender]:
                    revert with 0, 'Error settling query payment'
                require sub_13725147[stor14[msg.sender]] * basePrice
                require 0 / sub_13725147[stor14[msg.sender]] * basePrice > 0
                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, 0 / sub_13725147[stor14[msg.sender]] * basePrice
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
    else:
        if stor0[address(msg.sender)]:
            if stor7[address(msg.sender)]:
                if (stor7[address(msg.sender)] * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] != msg.value:
                    if msg.value > (stor7[address(msg.sender)] * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]:
                        call msg.sender with:
                           value msg.value - (stor7[address(msg.sender)] * arg4) - stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not sub_eaeae92c[msg.sender]:
                            revert with 0, 'Error settling query payment'
                        require sub_13725147[stor14[msg.sender]] * basePrice
                        require (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                        require ext_code.size(sub_eaeae92c[address(msg.sender)])
                        call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
            else:
                if (stor5 * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] != msg.value:
                    if msg.value > (stor5 * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]:
                        call msg.sender with:
                           value msg.value - (stor5 * arg4) - stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not sub_eaeae92c[msg.sender]:
                            revert with 0, 'Error settling query payment'
                        require sub_13725147[stor14[msg.sender]] * basePrice
                        require (10^18 * stor5 * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                        require ext_code.size(sub_eaeae92c[address(msg.sender)])
                        call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, (10^18 * stor5 * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
        else:
            if arg4 > 200000:
                if stor7[address(msg.sender)]:
                    if (stor7[address(msg.sender)] * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] != msg.value:
                        if msg.value > (stor7[address(msg.sender)] * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]:
                            call msg.sender with:
                               value msg.value - (stor7[address(msg.sender)] * arg4) - stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    if (stor5 * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] != msg.value:
                        if msg.value > (stor5 * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]:
                            call msg.sender with:
                               value msg.value - (stor5 * arg4) - stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require (10^18 * stor5 * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, (10^18 * stor5 * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
            else:
                if stor7[address(msg.sender)] > stor5:
                    if stor7[address(msg.sender)]:
                        if (stor7[address(msg.sender)] * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] != msg.value:
                            if msg.value > (stor7[address(msg.sender)] * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]:
                                call msg.sender with:
                                   value msg.value - (stor7[address(msg.sender)] * arg4) - stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        if (stor5 * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] != msg.value:
                            if msg.value > (stor5 * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]:
                                call msg.sender with:
                                   value msg.value - (stor5 * arg4) - stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require (10^18 * stor5 * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, (10^18 * stor5 * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                else:
                    if not Mask(8, 248, sub_40292f55[tx.origin]):
                        if msg.value:
                            if msg.value > 0:
                                call msg.sender with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require 0 / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, 0 / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        if stor7[address(msg.sender)]:
                            if (stor7[address(msg.sender)] * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] != msg.value:
                                if msg.value > (stor7[address(msg.sender)] * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]:
                                    call msg.sender with:
                                       value msg.value - (stor7[address(msg.sender)] * arg4) - stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if not sub_eaeae92c[msg.sender]:
                                        revert with 0, 'Error settling query payment'
                                    require sub_13725147[stor14[msg.sender]] * basePrice
                                    require (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                    require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                    call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, this.address, (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                        else:
                            if (stor5 * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] != msg.value:
                                if msg.value > (stor5 * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]:
                                    call msg.sender with:
                                       value msg.value - (stor5 * arg4) - stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if not sub_eaeae92c[msg.sender]:
                                        revert with 0, 'Error settling query payment'
                                    require sub_13725147[stor14[msg.sender]] * basePrice
                                    require (10^18 * stor5 * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                    require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                    call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, this.address, (10^18 * stor5 * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
    stor0[msg.sender]++
    emit 0xc91a7218: msg.sender, sha3(this.address, msg.sender, stor0[msg.sender]), arg1, Mask(8, 248, arg2), Array(len=arg3.length, data=arg3[all]), arg4, Mask(8, 248, stor6[msg.sender]), stor7[msg.sender]
    return sha3(this.address, msg.sender, stor0[msg.sender])
}

function sub_1e1f3c61(?) payable {
    mem[128 len arg3.length] = arg3[all]
    if stor2[address(msg.sender)]:
        if msg.value:
            if msg.value > 0:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if not sub_eaeae92c[msg.sender]:
                    revert with 0, 'Error settling query payment'
                require sub_13725147[stor14[msg.sender]] * basePrice
                require 0 / sub_13725147[stor14[msg.sender]] * basePrice > 0
                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, 0 / sub_13725147[stor14[msg.sender]] * basePrice
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
    else:
        if stor0[address(msg.sender)]:
            if stor7[address(msg.sender)]:
                if (stor7[address(msg.sender)] * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] != msg.value:
                    if msg.value > (stor7[address(msg.sender)] * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]:
                        call msg.sender with:
                           value msg.value - (stor7[address(msg.sender)] * arg4) - stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not sub_eaeae92c[msg.sender]:
                            revert with 0, 'Error settling query payment'
                        require sub_13725147[stor14[msg.sender]] * basePrice
                        require (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                        require ext_code.size(sub_eaeae92c[address(msg.sender)])
                        call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
            else:
                if (stor5 * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] != msg.value:
                    if msg.value > (stor5 * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]:
                        call msg.sender with:
                           value msg.value - (stor5 * arg4) - stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not sub_eaeae92c[msg.sender]:
                            revert with 0, 'Error settling query payment'
                        require sub_13725147[stor14[msg.sender]] * basePrice
                        require (10^18 * stor5 * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                        require ext_code.size(sub_eaeae92c[address(msg.sender)])
                        call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, (10^18 * stor5 * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
        else:
            if arg4 > 200000:
                if stor7[address(msg.sender)]:
                    if (stor7[address(msg.sender)] * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] != msg.value:
                        if msg.value > (stor7[address(msg.sender)] * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]:
                            call msg.sender with:
                               value msg.value - (stor7[address(msg.sender)] * arg4) - stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    if (stor5 * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] != msg.value:
                        if msg.value > (stor5 * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]:
                            call msg.sender with:
                               value msg.value - (stor5 * arg4) - stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require (10^18 * stor5 * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, (10^18 * stor5 * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
            else:
                if stor7[address(msg.sender)] > stor5:
                    if stor7[address(msg.sender)]:
                        if (stor7[address(msg.sender)] * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] != msg.value:
                            if msg.value > (stor7[address(msg.sender)] * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]:
                                call msg.sender with:
                                   value msg.value - (stor7[address(msg.sender)] * arg4) - stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        if (stor5 * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] != msg.value:
                            if msg.value > (stor5 * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]:
                                call msg.sender with:
                                   value msg.value - (stor5 * arg4) - stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require (10^18 * stor5 * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, (10^18 * stor5 * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                else:
                    if not Mask(8, 248, sub_40292f55[tx.origin]):
                        if msg.value:
                            if msg.value > 0:
                                call msg.sender with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require 0 / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, 0 / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        if stor7[address(msg.sender)]:
                            if (stor7[address(msg.sender)] * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] != msg.value:
                                if msg.value > (stor7[address(msg.sender)] * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]:
                                    call msg.sender with:
                                       value msg.value - (stor7[address(msg.sender)] * arg4) - stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if not sub_eaeae92c[msg.sender]:
                                        revert with 0, 'Error settling query payment'
                                    require sub_13725147[stor14[msg.sender]] * basePrice
                                    require (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                    require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                    call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, this.address, (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                        else:
                            if (stor5 * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] != msg.value:
                                if msg.value > (stor5 * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]:
                                    call msg.sender with:
                                       value msg.value - (stor5 * arg4) - stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if not sub_eaeae92c[msg.sender]:
                                        revert with 0, 'Error settling query payment'
                                    require sub_13725147[stor14[msg.sender]] * basePrice
                                    require (10^18 * stor5 * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                    require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                    call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, this.address, (10^18 * stor5 * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
    stor0[msg.sender]++
    mem[ceil32(arg3.length) + 128] = msg.sender
    mem[ceil32(arg3.length) + 160] = sha3(this.address, msg.sender, stor0[msg.sender])
    mem[ceil32(arg3.length) + 192] = arg1
    mem[ceil32(arg3.length) + 224] = Mask(8, 248, arg2)
    mem[ceil32(arg3.length) + 288] = arg4
    mem[ceil32(arg3.length) + 320] = Mask(8, 248, stor6[msg.sender])
    mem[ceil32(arg3.length) + 352] = stor7[msg.sender]
    mem[ceil32(arg3.length) + 256] = 256
    mem[ceil32(arg3.length) + 384] = arg3.length
    if 0 < arg3.length:
        mem[ceil32(arg3.length) + 416] = mem[128]
        mem[ceil32(arg3.length) + 448 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
    emit 0x21973bb6: msg.sender, sha3(this.address, msg.sender, stor0[msg.sender]), arg1, Mask(8, 248, arg2), Array(len=arg3.length, data=mem[ceil32(arg3.length) + 416 len arg3.length]), arg4, Mask(8, 248, stor6[msg.sender]), stor7[msg.sender]
    return sha3(this.address, msg.sender, stor0[msg.sender])
}

function sub_c53fbe0f(?) payable {
    mem[128 len arg3.length] = arg3[all]
    if stor2[address(msg.sender)]:
        if msg.value:
            if msg.value > 0:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if not sub_eaeae92c[msg.sender]:
                    revert with 0, 'Error settling query payment'
                require sub_13725147[stor14[msg.sender]] * basePrice
                require 0 / sub_13725147[stor14[msg.sender]] * basePrice > 0
                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, 0 / sub_13725147[stor14[msg.sender]] * basePrice
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
    else:
        if stor0[address(msg.sender)]:
            if stor7[address(msg.sender)]:
                if (stor7[address(msg.sender)] * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] != msg.value:
                    if msg.value > (stor7[address(msg.sender)] * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]:
                        call msg.sender with:
                           value msg.value - (stor7[address(msg.sender)] * arg4) - stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not sub_eaeae92c[msg.sender]:
                            revert with 0, 'Error settling query payment'
                        require sub_13725147[stor14[msg.sender]] * basePrice
                        require (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                        require ext_code.size(sub_eaeae92c[address(msg.sender)])
                        call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
            else:
                if (stor5 * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] != msg.value:
                    if msg.value > (stor5 * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]:
                        call msg.sender with:
                           value msg.value - (stor5 * arg4) - stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not sub_eaeae92c[msg.sender]:
                            revert with 0, 'Error settling query payment'
                        require sub_13725147[stor14[msg.sender]] * basePrice
                        require (10^18 * stor5 * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                        require ext_code.size(sub_eaeae92c[address(msg.sender)])
                        call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, (10^18 * stor5 * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
        else:
            if arg4 > 200000:
                if stor7[address(msg.sender)]:
                    if (stor7[address(msg.sender)] * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] != msg.value:
                        if msg.value > (stor7[address(msg.sender)] * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]:
                            call msg.sender with:
                               value msg.value - (stor7[address(msg.sender)] * arg4) - stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    if (stor5 * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] != msg.value:
                        if msg.value > (stor5 * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]:
                            call msg.sender with:
                               value msg.value - (stor5 * arg4) - stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require (10^18 * stor5 * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, (10^18 * stor5 * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
            else:
                if stor7[address(msg.sender)] > stor5:
                    if stor7[address(msg.sender)]:
                        if (stor7[address(msg.sender)] * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] != msg.value:
                            if msg.value > (stor7[address(msg.sender)] * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]:
                                call msg.sender with:
                                   value msg.value - (stor7[address(msg.sender)] * arg4) - stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        if (stor5 * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] != msg.value:
                            if msg.value > (stor5 * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]:
                                call msg.sender with:
                                   value msg.value - (stor5 * arg4) - stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require (10^18 * stor5 * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, (10^18 * stor5 * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                else:
                    if not Mask(8, 248, sub_40292f55[tx.origin]):
                        if msg.value:
                            if msg.value > 0:
                                call msg.sender with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require 0 / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, 0 / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        if stor7[address(msg.sender)]:
                            if (stor7[address(msg.sender)] * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] != msg.value:
                                if msg.value > (stor7[address(msg.sender)] * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]:
                                    call msg.sender with:
                                       value msg.value - (stor7[address(msg.sender)] * arg4) - stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if not sub_eaeae92c[msg.sender]:
                                        revert with 0, 'Error settling query payment'
                                    require sub_13725147[stor14[msg.sender]] * basePrice
                                    require (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                    require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                    call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, this.address, (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                        else:
                            if (stor5 * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] != msg.value:
                                if msg.value > (stor5 * arg4) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]:
                                    call msg.sender with:
                                       value msg.value - (stor5 * arg4) - stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if not sub_eaeae92c[msg.sender]:
                                        revert with 0, 'Error settling query payment'
                                    require sub_13725147[stor14[msg.sender]] * basePrice
                                    require (10^18 * stor5 * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                    require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                    call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, this.address, (10^18 * stor5 * arg4) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
    stor0[msg.sender]++
    mem[ceil32(arg3.length) + 128] = msg.sender
    mem[ceil32(arg3.length) + 160] = sha3(this.address, msg.sender, stor0[msg.sender])
    mem[ceil32(arg3.length) + 192] = arg1
    mem[ceil32(arg3.length) + 224] = Mask(8, 248, arg2)
    mem[ceil32(arg3.length) + 288] = arg4
    mem[ceil32(arg3.length) + 320] = Mask(8, 248, stor6[msg.sender])
    mem[ceil32(arg3.length) + 352] = stor7[msg.sender]
    mem[ceil32(arg3.length) + 256] = 256
    mem[ceil32(arg3.length) + 384] = arg3.length
    if 0 < arg3.length:
        mem[ceil32(arg3.length) + 416] = mem[128]
        mem[ceil32(arg3.length) + 448 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
    emit 0x21973bb6: msg.sender, sha3(this.address, msg.sender, stor0[msg.sender]), arg1, Mask(8, 248, arg2), Array(len=arg3.length, data=mem[ceil32(arg3.length) + 416 len arg3.length]), arg4, Mask(8, 248, stor6[msg.sender]), stor7[msg.sender]
    return sha3(this.address, msg.sender, stor0[msg.sender])
}

function sub_fcce91c2(?) payable {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128] = arg4.length
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    if stor2[address(msg.sender)]:
        if msg.value:
            if msg.value > 0:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if not sub_eaeae92c[msg.sender]:
                    revert with 0, 'Error settling query payment'
                require sub_13725147[stor14[msg.sender]] * basePrice
                require 0 / sub_13725147[stor14[msg.sender]] * basePrice > 0
                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, 0 / sub_13725147[stor14[msg.sender]] * basePrice
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
    else:
        if stor0[address(msg.sender)]:
            if stor7[address(msg.sender)]:
                if (stor7[address(msg.sender)] * arg5) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] != msg.value:
                    if msg.value > (stor7[address(msg.sender)] * arg5) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]:
                        call msg.sender with:
                           value msg.value - (stor7[address(msg.sender)] * arg5) - stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not sub_eaeae92c[msg.sender]:
                            revert with 0, 'Error settling query payment'
                        require sub_13725147[stor14[msg.sender]] * basePrice
                        require (10^18 * stor7[address(msg.sender)] * arg5) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                        require ext_code.size(sub_eaeae92c[address(msg.sender)])
                        call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, (10^18 * stor7[address(msg.sender)] * arg5) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
            else:
                if (stor5 * arg5) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] != msg.value:
                    if msg.value > (stor5 * arg5) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]:
                        call msg.sender with:
                           value msg.value - (stor5 * arg5) - stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not sub_eaeae92c[msg.sender]:
                            revert with 0, 'Error settling query payment'
                        require sub_13725147[stor14[msg.sender]] * basePrice
                        require (10^18 * stor5 * arg5) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                        require ext_code.size(sub_eaeae92c[address(msg.sender)])
                        call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, (10^18 * stor5 * arg5) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
        else:
            if arg5 > 200000:
                if stor7[address(msg.sender)]:
                    if (stor7[address(msg.sender)] * arg5) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] != msg.value:
                        if msg.value > (stor7[address(msg.sender)] * arg5) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]:
                            call msg.sender with:
                               value msg.value - (stor7[address(msg.sender)] * arg5) - stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require (10^18 * stor7[address(msg.sender)] * arg5) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, (10^18 * stor7[address(msg.sender)] * arg5) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    if (stor5 * arg5) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] != msg.value:
                        if msg.value > (stor5 * arg5) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]:
                            call msg.sender with:
                               value msg.value - (stor5 * arg5) - stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require (10^18 * stor5 * arg5) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, (10^18 * stor5 * arg5) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
            else:
                if stor7[address(msg.sender)] > stor5:
                    if stor7[address(msg.sender)]:
                        if (stor7[address(msg.sender)] * arg5) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] != msg.value:
                            if msg.value > (stor7[address(msg.sender)] * arg5) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]:
                                call msg.sender with:
                                   value msg.value - (stor7[address(msg.sender)] * arg5) - stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require (10^18 * stor7[address(msg.sender)] * arg5) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, (10^18 * stor7[address(msg.sender)] * arg5) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        if (stor5 * arg5) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] != msg.value:
                            if msg.value > (stor5 * arg5) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]:
                                call msg.sender with:
                                   value msg.value - (stor5 * arg5) - stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require (10^18 * stor5 * arg5) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, (10^18 * stor5 * arg5) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                else:
                    if not Mask(8, 248, sub_40292f55[tx.origin]):
                        if msg.value:
                            if msg.value > 0:
                                call msg.sender with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require 0 / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, 0 / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        if stor7[address(msg.sender)]:
                            if (stor7[address(msg.sender)] * arg5) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] != msg.value:
                                if msg.value > (stor7[address(msg.sender)] * arg5) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]:
                                    call msg.sender with:
                                       value msg.value - (stor7[address(msg.sender)] * arg5) - stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if not sub_eaeae92c[msg.sender]:
                                        revert with 0, 'Error settling query payment'
                                    require sub_13725147[stor14[msg.sender]] * basePrice
                                    require (10^18 * stor7[address(msg.sender)] * arg5) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                    require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                    call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, this.address, (10^18 * stor7[address(msg.sender)] * arg5) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                        else:
                            if (stor5 * arg5) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] != msg.value:
                                if msg.value > (stor5 * arg5) + stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]:
                                    call msg.sender with:
                                       value msg.value - (stor5 * arg5) - stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if not sub_eaeae92c[msg.sender]:
                                        revert with 0, 'Error settling query payment'
                                    require sub_13725147[stor14[msg.sender]] * basePrice
                                    require (10^18 * stor5 * arg5) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                    require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                    call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, this.address, (10^18 * stor5 * arg5) + (10^18 * stor9[('map', ('param', 'arg2'), ('name', 'stor0', 0))]) / sub_13725147[stor14[msg.sender]] * basePrice
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
    stor0[msg.sender]++
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = msg.sender
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 480 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 480] = arg4.length
    mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 512 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg3.length) + arg4.length + 160 len ceil32(arg4.length) - arg4.length]
    if not arg4.length % 32:
        emit 0xc158eefa: msg.sender, sha3(this.address, msg.sender, stor0[msg.sender]), arg1, Mask(8, 248, arg2), Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 480 len arg4.length + arg3.length + -ceil32(arg3.length) + 32]), arg3.length + 320, arg5, Mask(8, 248, stor6[msg.sender]), stor7[msg.sender]
    else:
        mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 512] = mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 544 len arg4.length % 32]
        emit 0xc158eefa: msg.sender, sha3(this.address, msg.sender, stor0[msg.sender]), arg1, Mask(8, 248, arg2), Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 480 len floor32(arg4.length) + arg3.length + -ceil32(arg3.length) + 64]), arg3.length + 320, arg5, Mask(8, 248, stor6[msg.sender]), stor7[msg.sender]
    return sha3(this.address, msg.sender, stor0[msg.sender])
}

function query(string arg1, string arg2) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    if stor2[address(msg.sender)]:
        if msg.value:
            if msg.value > 0:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if not sub_eaeae92c[msg.sender]:
                    revert with 0, 'Error settling query payment'
                require sub_13725147[stor14[msg.sender]] * basePrice
                require 0 / sub_13725147[stor14[msg.sender]] * basePrice > 0
                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, 0 / sub_13725147[stor14[msg.sender]] * basePrice
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
    else:
        if stor0[address(msg.sender)]:
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] = !(256^(-(arg1.length % 32) + 32) - 1) and call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] or 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 160] = Mask(8, 248, stor6[address(msg.sender)])
            if stor7[address(msg.sender)]:
                if (200000 * stor7[address(msg.sender)]) + price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] != msg.value:
                    if msg.value > (200000 * stor7[address(msg.sender)]) + price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]]:
                        call msg.sender with:
                           value msg.value - (200000 * stor7[address(msg.sender)]) - price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not sub_eaeae92c[msg.sender]:
                            revert with 0, 'Error settling query payment'
                        require sub_13725147[stor14[msg.sender]] * basePrice
                        require (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                        require ext_code.size(sub_eaeae92c[address(msg.sender)])
                        call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
            else:
                if (200000 * stor5) + price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] != msg.value:
                    if msg.value > (200000 * stor5) + price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]]:
                        call msg.sender with:
                           value msg.value - (200000 * stor5) - price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not sub_eaeae92c[msg.sender]:
                            revert with 0, 'Error settling query payment'
                        require sub_13725147[stor14[msg.sender]] * basePrice
                        require (200000 * 10^18 * stor5) + (10^18 * price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                        require ext_code.size(sub_eaeae92c[address(msg.sender)])
                        call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, (200000 * 10^18 * stor5) + (10^18 * price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
        else:
            if stor7[address(msg.sender)] > stor5:
                mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] = !(256^(-(arg1.length % 32) + 32) - 1) and call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] or 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160]
                mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 160] = Mask(8, 248, stor6[address(msg.sender)])
                if stor7[address(msg.sender)]:
                    if (200000 * stor7[address(msg.sender)]) + price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] != msg.value:
                        if msg.value > (200000 * stor7[address(msg.sender)]) + price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]]:
                            call msg.sender with:
                               value msg.value - (200000 * stor7[address(msg.sender)]) - price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    if (200000 * stor5) + price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] != msg.value:
                        if msg.value > (200000 * stor5) + price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]]:
                            call msg.sender with:
                               value msg.value - (200000 * stor5) - price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require (200000 * 10^18 * stor5) + (10^18 * price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, (200000 * 10^18 * stor5) + (10^18 * price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
            else:
                if not Mask(8, 248, sub_40292f55[tx.origin]):
                    if msg.value:
                        if msg.value > 0:
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require 0 / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, 0 / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] = !(256^(-(arg1.length % 32) + 32) - 1) and call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] or 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160]
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 160] = Mask(8, 248, stor6[address(msg.sender)])
                    if stor7[address(msg.sender)]:
                        if (200000 * stor7[address(msg.sender)]) + price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] != msg.value:
                            if msg.value > (200000 * stor7[address(msg.sender)]) + price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]]:
                                call msg.sender with:
                                   value msg.value - (200000 * stor7[address(msg.sender)]) - price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        if (200000 * stor5) + price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] != msg.value:
                            if msg.value > (200000 * stor5) + price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]]:
                                call msg.sender with:
                                   value msg.value - (200000 * stor5) - price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require (200000 * 10^18 * stor5) + (10^18 * price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, (200000 * 10^18 * stor5) + (10^18 * price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
    stor0[msg.sender]++
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = msg.sender
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 448 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 448] = arg2.length
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 480 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            emit Log1(address arg1, bytes32 arg2, uint256 arg3, string arg4, string arg5, uint256 arg6, bytes1 arg7, uint256 arg8):
                      msg.sender,
                      sha3(this.address, msg.sender, stor0[msg.sender]),
                      0,
                      256,
                      arg1.length + 288,
                      200000,
                      Mask(8, 248, stor6[msg.sender]),
                      stor7[msg.sender],
                      arg1.length,
                      Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                      mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 448 len arg2.length + arg1.length + -ceil32(arg1.length) + 32],
        else:
            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 480] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 512 len arg2.length % 32]
            emit Log1(address arg1, bytes32 arg2, uint256 arg3, string arg4, string arg5, uint256 arg6, bytes1 arg7, uint256 arg8):
                      msg.sender,
                      sha3(this.address, msg.sender, stor0[msg.sender]),
                      0,
                      256,
                      arg1.length + 288,
                      200000,
                      Mask(8, 248, stor6[msg.sender]),
                      stor7[msg.sender],
                      arg1.length,
                      Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                      mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 448 len floor32(arg2.length) + arg1.length + -ceil32(arg1.length) + 64],
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 448] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg1.length % 32) + 480 len arg1.length % 32]
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 480] = arg2.length
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 512 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            emit Log1(address arg1, bytes32 arg2, uint256 arg3, string arg4, string arg5, uint256 arg6, bytes1 arg7, uint256 arg8):
                      msg.sender,
                      sha3(this.address, msg.sender, stor0[msg.sender]),
                      0,
                      256,
                      floor32(arg1.length) + 320,
                      200000,
                      Mask(8, 248, stor6[msg.sender]),
                      stor7[msg.sender],
                      arg1.length,
                      Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                      mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 448 len arg2.length + floor32(arg1.length) + -ceil32(arg1.length) + 64],
        else:
            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 512] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 544 len arg2.length % 32]
            emit Log1(address arg1, bytes32 arg2, uint256 arg3, string arg4, string arg5, uint256 arg6, bytes1 arg7, uint256 arg8):
                      msg.sender,
                      sha3(this.address, msg.sender, stor0[msg.sender]),
                      0,
                      256,
                      floor32(arg1.length) + 320,
                      200000,
                      Mask(8, 248, stor6[msg.sender]),
                      stor7[msg.sender],
                      arg1.length,
                      Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                      mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 448 len floor32(arg2.length) + floor32(arg1.length) + -ceil32(arg1.length) + 96],
    return sha3(this.address, msg.sender, stor0[msg.sender])
}

function query1(string arg1, string arg2) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    if stor2[address(msg.sender)]:
        if msg.value:
            if msg.value > 0:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if not sub_eaeae92c[msg.sender]:
                    revert with 0, 'Error settling query payment'
                require sub_13725147[stor14[msg.sender]] * basePrice
                require 0 / sub_13725147[stor14[msg.sender]] * basePrice > 0
                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, 0 / sub_13725147[stor14[msg.sender]] * basePrice
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
    else:
        if stor0[address(msg.sender)]:
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] = !(256^(-(arg1.length % 32) + 32) - 1) and call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] or 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 160] = Mask(8, 248, stor6[address(msg.sender)])
            if stor7[address(msg.sender)]:
                if (200000 * stor7[address(msg.sender)]) + price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] != msg.value:
                    if msg.value > (200000 * stor7[address(msg.sender)]) + price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]]:
                        call msg.sender with:
                           value msg.value - (200000 * stor7[address(msg.sender)]) - price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not sub_eaeae92c[msg.sender]:
                            revert with 0, 'Error settling query payment'
                        require sub_13725147[stor14[msg.sender]] * basePrice
                        require (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                        require ext_code.size(sub_eaeae92c[address(msg.sender)])
                        call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
            else:
                if (200000 * stor5) + price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] != msg.value:
                    if msg.value > (200000 * stor5) + price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]]:
                        call msg.sender with:
                           value msg.value - (200000 * stor5) - price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not sub_eaeae92c[msg.sender]:
                            revert with 0, 'Error settling query payment'
                        require sub_13725147[stor14[msg.sender]] * basePrice
                        require (200000 * 10^18 * stor5) + (10^18 * price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                        require ext_code.size(sub_eaeae92c[address(msg.sender)])
                        call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, (200000 * 10^18 * stor5) + (10^18 * price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
        else:
            if stor7[address(msg.sender)] > stor5:
                mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] = !(256^(-(arg1.length % 32) + 32) - 1) and call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] or 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160]
                mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 160] = Mask(8, 248, stor6[address(msg.sender)])
                if stor7[address(msg.sender)]:
                    if (200000 * stor7[address(msg.sender)]) + price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] != msg.value:
                        if msg.value > (200000 * stor7[address(msg.sender)]) + price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]]:
                            call msg.sender with:
                               value msg.value - (200000 * stor7[address(msg.sender)]) - price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    if (200000 * stor5) + price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] != msg.value:
                        if msg.value > (200000 * stor5) + price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]]:
                            call msg.sender with:
                               value msg.value - (200000 * stor5) - price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require (200000 * 10^18 * stor5) + (10^18 * price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, (200000 * 10^18 * stor5) + (10^18 * price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
            else:
                if not Mask(8, 248, sub_40292f55[tx.origin]):
                    if msg.value:
                        if msg.value > 0:
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require 0 / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, 0 / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] = !(256^(-(arg1.length % 32) + 32) - 1) and call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] or 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160]
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 160] = Mask(8, 248, stor6[address(msg.sender)])
                    if stor7[address(msg.sender)]:
                        if (200000 * stor7[address(msg.sender)]) + price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] != msg.value:
                            if msg.value > (200000 * stor7[address(msg.sender)]) + price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]]:
                                call msg.sender with:
                                   value msg.value - (200000 * stor7[address(msg.sender)]) - price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        if (200000 * stor5) + price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] != msg.value:
                            if msg.value > (200000 * stor5) + price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]]:
                                call msg.sender with:
                                   value msg.value - (200000 * stor5) - price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require (200000 * 10^18 * stor5) + (10^18 * price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, (200000 * 10^18 * stor5) + (10^18 * price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
    stor0[msg.sender]++
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = msg.sender
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 448 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 448] = arg2.length
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 480 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            emit Log1(address arg1, bytes32 arg2, uint256 arg3, string arg4, string arg5, uint256 arg6, bytes1 arg7, uint256 arg8):
                      msg.sender,
                      sha3(this.address, msg.sender, stor0[msg.sender]),
                      0,
                      256,
                      arg1.length + 288,
                      200000,
                      Mask(8, 248, stor6[msg.sender]),
                      stor7[msg.sender],
                      arg1.length,
                      Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                      mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 448 len arg2.length + arg1.length + -ceil32(arg1.length) + 32],
        else:
            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 480] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 512 len arg2.length % 32]
            emit Log1(address arg1, bytes32 arg2, uint256 arg3, string arg4, string arg5, uint256 arg6, bytes1 arg7, uint256 arg8):
                      msg.sender,
                      sha3(this.address, msg.sender, stor0[msg.sender]),
                      0,
                      256,
                      arg1.length + 288,
                      200000,
                      Mask(8, 248, stor6[msg.sender]),
                      stor7[msg.sender],
                      arg1.length,
                      Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                      mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 448 len floor32(arg2.length) + arg1.length + -ceil32(arg1.length) + 64],
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 448] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg1.length % 32) + 480 len arg1.length % 32]
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 480] = arg2.length
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 512 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            emit Log1(address arg1, bytes32 arg2, uint256 arg3, string arg4, string arg5, uint256 arg6, bytes1 arg7, uint256 arg8):
                      msg.sender,
                      sha3(this.address, msg.sender, stor0[msg.sender]),
                      0,
                      256,
                      floor32(arg1.length) + 320,
                      200000,
                      Mask(8, 248, stor6[msg.sender]),
                      stor7[msg.sender],
                      arg1.length,
                      Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                      mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 448 len arg2.length + floor32(arg1.length) + -ceil32(arg1.length) + 64],
        else:
            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 512] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 544 len arg2.length % 32]
            emit Log1(address arg1, bytes32 arg2, uint256 arg3, string arg4, string arg5, uint256 arg6, bytes1 arg7, uint256 arg8):
                      msg.sender,
                      sha3(this.address, msg.sender, stor0[msg.sender]),
                      0,
                      256,
                      floor32(arg1.length) + 320,
                      200000,
                      Mask(8, 248, stor6[msg.sender]),
                      stor7[msg.sender],
                      arg1.length,
                      Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                      mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 448 len floor32(arg2.length) + floor32(arg1.length) + -ceil32(arg1.length) + 96],
    return sha3(this.address, msg.sender, stor0[msg.sender])
}

function query(uint256 arg1, string arg2, string arg3) payable {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    if stor2[address(msg.sender)]:
        if msg.value:
            if msg.value > 0:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if not sub_eaeae92c[msg.sender]:
                    revert with 0, 'Error settling query payment'
                require sub_13725147[stor14[msg.sender]] * basePrice
                require 0 / sub_13725147[stor14[msg.sender]] * basePrice > 0
                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, 0 / sub_13725147[stor14[msg.sender]] * basePrice
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
    else:
        if stor0[address(msg.sender)]:
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160] = !(256^(-(arg2.length % 32) + 32) - 1) and call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] or 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160]
            mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 160] = Mask(8, 248, stor6[address(msg.sender)])
            if stor7[address(msg.sender)]:
                if (200000 * stor7[address(msg.sender)]) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                    if msg.value > (200000 * stor7[address(msg.sender)]) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                        call msg.sender with:
                           value msg.value - (200000 * stor7[address(msg.sender)]) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not sub_eaeae92c[msg.sender]:
                            revert with 0, 'Error settling query payment'
                        require sub_13725147[stor14[msg.sender]] * basePrice
                        require (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                        require ext_code.size(sub_eaeae92c[address(msg.sender)])
                        call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
            else:
                if (200000 * stor5) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                    if msg.value > (200000 * stor5) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                        call msg.sender with:
                           value msg.value - (200000 * stor5) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not sub_eaeae92c[msg.sender]:
                            revert with 0, 'Error settling query payment'
                        require sub_13725147[stor14[msg.sender]] * basePrice
                        require (200000 * 10^18 * stor5) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                        require ext_code.size(sub_eaeae92c[address(msg.sender)])
                        call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, (200000 * 10^18 * stor5) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
        else:
            if stor7[address(msg.sender)] > stor5:
                mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160] = !(256^(-(arg2.length % 32) + 32) - 1) and call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] or 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160]
                mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 160] = Mask(8, 248, stor6[address(msg.sender)])
                if stor7[address(msg.sender)]:
                    if (200000 * stor7[address(msg.sender)]) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                        if msg.value > (200000 * stor7[address(msg.sender)]) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                            call msg.sender with:
                               value msg.value - (200000 * stor7[address(msg.sender)]) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    if (200000 * stor5) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                        if msg.value > (200000 * stor5) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                            call msg.sender with:
                               value msg.value - (200000 * stor5) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require (200000 * 10^18 * stor5) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, (200000 * 10^18 * stor5) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
            else:
                if not Mask(8, 248, sub_40292f55[tx.origin]):
                    if msg.value:
                        if msg.value > 0:
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require 0 / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, 0 / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160] = !(256^(-(arg2.length % 32) + 32) - 1) and call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] or 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160]
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 160] = Mask(8, 248, stor6[address(msg.sender)])
                    if stor7[address(msg.sender)]:
                        if (200000 * stor7[address(msg.sender)]) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                            if msg.value > (200000 * stor7[address(msg.sender)]) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                                call msg.sender with:
                                   value msg.value - (200000 * stor7[address(msg.sender)]) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        if (200000 * stor5) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                            if msg.value > (200000 * stor5) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                                call msg.sender with:
                                   value msg.value - (200000 * stor5) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require (200000 * 10^18 * stor5) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, (200000 * 10^18 * stor5) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
    stor0[msg.sender]++
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = msg.sender
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 448 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 448] = arg3.length
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 480 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            emit Log1(address arg1, bytes32 arg2, uint256 arg3, string arg4, string arg5, uint256 arg6, bytes1 arg7, uint256 arg8):
                      msg.sender,
                      sha3(this.address, msg.sender, stor0[msg.sender]),
                      arg1,
                      256,
                      arg2.length + 288,
                      200000,
                      Mask(8, 248, stor6[msg.sender]),
                      stor7[msg.sender],
                      arg2.length,
                      Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                      mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 448 len arg3.length + arg2.length + -ceil32(arg2.length) + 32],
        else:
            mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 480] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 512 len arg3.length % 32]
            emit Log1(address arg1, bytes32 arg2, uint256 arg3, string arg4, string arg5, uint256 arg6, bytes1 arg7, uint256 arg8):
                      msg.sender,
                      sha3(this.address, msg.sender, stor0[msg.sender]),
                      arg1,
                      256,
                      arg2.length + 288,
                      200000,
                      Mask(8, 248, stor6[msg.sender]),
                      stor7[msg.sender],
                      arg2.length,
                      Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                      mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 448 len floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 64],
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 448] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 480 len arg2.length % 32]
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 480] = arg3.length
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 512 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            emit Log1(address arg1, bytes32 arg2, uint256 arg3, string arg4, string arg5, uint256 arg6, bytes1 arg7, uint256 arg8):
                      msg.sender,
                      sha3(this.address, msg.sender, stor0[msg.sender]),
                      arg1,
                      256,
                      floor32(arg2.length) + 320,
                      200000,
                      Mask(8, 248, stor6[msg.sender]),
                      stor7[msg.sender],
                      arg2.length,
                      Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                      mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 448 len arg3.length + floor32(arg2.length) + -ceil32(arg2.length) + 64],
        else:
            mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 512] = mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 544 len arg3.length % 32]
            emit Log1(address arg1, bytes32 arg2, uint256 arg3, string arg4, string arg5, uint256 arg6, bytes1 arg7, uint256 arg8):
                      msg.sender,
                      sha3(this.address, msg.sender, stor0[msg.sender]),
                      arg1,
                      256,
                      floor32(arg2.length) + 320,
                      200000,
                      Mask(8, 248, stor6[msg.sender]),
                      stor7[msg.sender],
                      arg2.length,
                      Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                      mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 448 len floor32(arg3.length) + floor32(arg2.length) + -ceil32(arg2.length) + 96],
    return sha3(this.address, msg.sender, stor0[msg.sender])
}

function query1(uint256 arg1, string arg2, string arg3) payable {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    if stor2[address(msg.sender)]:
        if msg.value:
            if msg.value > 0:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if not sub_eaeae92c[msg.sender]:
                    revert with 0, 'Error settling query payment'
                require sub_13725147[stor14[msg.sender]] * basePrice
                require 0 / sub_13725147[stor14[msg.sender]] * basePrice > 0
                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, 0 / sub_13725147[stor14[msg.sender]] * basePrice
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
    else:
        if stor0[address(msg.sender)]:
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160] = !(256^(-(arg2.length % 32) + 32) - 1) and call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] or 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160]
            mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 160] = Mask(8, 248, stor6[address(msg.sender)])
            if stor7[address(msg.sender)]:
                if (200000 * stor7[address(msg.sender)]) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                    if msg.value > (200000 * stor7[address(msg.sender)]) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                        call msg.sender with:
                           value msg.value - (200000 * stor7[address(msg.sender)]) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not sub_eaeae92c[msg.sender]:
                            revert with 0, 'Error settling query payment'
                        require sub_13725147[stor14[msg.sender]] * basePrice
                        require (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                        require ext_code.size(sub_eaeae92c[address(msg.sender)])
                        call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
            else:
                if (200000 * stor5) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                    if msg.value > (200000 * stor5) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                        call msg.sender with:
                           value msg.value - (200000 * stor5) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not sub_eaeae92c[msg.sender]:
                            revert with 0, 'Error settling query payment'
                        require sub_13725147[stor14[msg.sender]] * basePrice
                        require (200000 * 10^18 * stor5) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                        require ext_code.size(sub_eaeae92c[address(msg.sender)])
                        call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, (200000 * 10^18 * stor5) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
        else:
            if stor7[address(msg.sender)] > stor5:
                mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160] = !(256^(-(arg2.length % 32) + 32) - 1) and call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] or 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160]
                mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 160] = Mask(8, 248, stor6[address(msg.sender)])
                if stor7[address(msg.sender)]:
                    if (200000 * stor7[address(msg.sender)]) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                        if msg.value > (200000 * stor7[address(msg.sender)]) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                            call msg.sender with:
                               value msg.value - (200000 * stor7[address(msg.sender)]) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    if (200000 * stor5) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                        if msg.value > (200000 * stor5) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                            call msg.sender with:
                               value msg.value - (200000 * stor5) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require (200000 * 10^18 * stor5) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, (200000 * 10^18 * stor5) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
            else:
                if not Mask(8, 248, sub_40292f55[tx.origin]):
                    if msg.value:
                        if msg.value > 0:
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require 0 / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, 0 / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160] = !(256^(-(arg2.length % 32) + 32) - 1) and call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] or 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160]
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 160] = Mask(8, 248, stor6[address(msg.sender)])
                    if stor7[address(msg.sender)]:
                        if (200000 * stor7[address(msg.sender)]) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                            if msg.value > (200000 * stor7[address(msg.sender)]) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                                call msg.sender with:
                                   value msg.value - (200000 * stor7[address(msg.sender)]) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        if (200000 * stor5) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                            if msg.value > (200000 * stor5) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                                call msg.sender with:
                                   value msg.value - (200000 * stor5) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require (200000 * 10^18 * stor5) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, (200000 * 10^18 * stor5) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
    stor0[msg.sender]++
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = msg.sender
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 448 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 448] = arg3.length
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 480 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            emit Log1(address arg1, bytes32 arg2, uint256 arg3, string arg4, string arg5, uint256 arg6, bytes1 arg7, uint256 arg8):
                      msg.sender,
                      sha3(this.address, msg.sender, stor0[msg.sender]),
                      arg1,
                      256,
                      arg2.length + 288,
                      200000,
                      Mask(8, 248, stor6[msg.sender]),
                      stor7[msg.sender],
                      arg2.length,
                      Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                      mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 448 len arg3.length + arg2.length + -ceil32(arg2.length) + 32],
        else:
            mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 480] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 512 len arg3.length % 32]
            emit Log1(address arg1, bytes32 arg2, uint256 arg3, string arg4, string arg5, uint256 arg6, bytes1 arg7, uint256 arg8):
                      msg.sender,
                      sha3(this.address, msg.sender, stor0[msg.sender]),
                      arg1,
                      256,
                      arg2.length + 288,
                      200000,
                      Mask(8, 248, stor6[msg.sender]),
                      stor7[msg.sender],
                      arg2.length,
                      Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                      mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 448 len floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 64],
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 448] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 480 len arg2.length % 32]
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 480] = arg3.length
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 512 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            emit Log1(address arg1, bytes32 arg2, uint256 arg3, string arg4, string arg5, uint256 arg6, bytes1 arg7, uint256 arg8):
                      msg.sender,
                      sha3(this.address, msg.sender, stor0[msg.sender]),
                      arg1,
                      256,
                      floor32(arg2.length) + 320,
                      200000,
                      Mask(8, 248, stor6[msg.sender]),
                      stor7[msg.sender],
                      arg2.length,
                      Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                      mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 448 len arg3.length + floor32(arg2.length) + -ceil32(arg2.length) + 64],
        else:
            mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 512] = mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 544 len arg3.length % 32]
            emit Log1(address arg1, bytes32 arg2, uint256 arg3, string arg4, string arg5, uint256 arg6, bytes1 arg7, uint256 arg8):
                      msg.sender,
                      sha3(this.address, msg.sender, stor0[msg.sender]),
                      arg1,
                      256,
                      floor32(arg2.length) + 320,
                      200000,
                      Mask(8, 248, stor6[msg.sender]),
                      stor7[msg.sender],
                      arg2.length,
                      Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                      mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 448 len floor32(arg3.length) + floor32(arg2.length) + -ceil32(arg2.length) + 96],
    return sha3(this.address, msg.sender, stor0[msg.sender])
}

function sub_399a80fd(?) payable {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    if stor2[address(msg.sender)]:
        if msg.value:
            if msg.value > 0:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if not sub_eaeae92c[msg.sender]:
                    revert with 0, 'Error settling query payment'
                require sub_13725147[stor14[msg.sender]] * basePrice
                require 0 / sub_13725147[stor14[msg.sender]] * basePrice > 0
                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, 0 / sub_13725147[stor14[msg.sender]] * basePrice
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
    else:
        if stor0[address(msg.sender)]:
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160] = !(256^(-(arg2.length % 32) + 32) - 1) and call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] or 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160]
            mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 160] = Mask(8, 248, stor6[address(msg.sender)])
            if stor7[address(msg.sender)]:
                if (stor7[address(msg.sender)] * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                    if msg.value > (stor7[address(msg.sender)] * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                        call msg.sender with:
                           value msg.value - (stor7[address(msg.sender)] * arg4) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not sub_eaeae92c[msg.sender]:
                            revert with 0, 'Error settling query payment'
                        require sub_13725147[stor14[msg.sender]] * basePrice
                        require (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                        require ext_code.size(sub_eaeae92c[address(msg.sender)])
                        call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
            else:
                if (stor5 * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                    if msg.value > (stor5 * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                        call msg.sender with:
                           value msg.value - (stor5 * arg4) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not sub_eaeae92c[msg.sender]:
                            revert with 0, 'Error settling query payment'
                        require sub_13725147[stor14[msg.sender]] * basePrice
                        require (10^18 * stor5 * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                        require ext_code.size(sub_eaeae92c[address(msg.sender)])
                        call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, (10^18 * stor5 * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
        else:
            if arg4 > 200000:
                mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160] = !(256^(-(arg2.length % 32) + 32) - 1) and call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] or 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160]
                mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 160] = Mask(8, 248, stor6[address(msg.sender)])
                if stor7[address(msg.sender)]:
                    if (stor7[address(msg.sender)] * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                        if msg.value > (stor7[address(msg.sender)] * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                            call msg.sender with:
                               value msg.value - (stor7[address(msg.sender)] * arg4) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    if (stor5 * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                        if msg.value > (stor5 * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                            call msg.sender with:
                               value msg.value - (stor5 * arg4) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require (10^18 * stor5 * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, (10^18 * stor5 * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
            else:
                if stor7[address(msg.sender)] > stor5:
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160] = !(256^(-(arg2.length % 32) + 32) - 1) and call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] or 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160]
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 160] = Mask(8, 248, stor6[address(msg.sender)])
                    if stor7[address(msg.sender)]:
                        if (stor7[address(msg.sender)] * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                            if msg.value > (stor7[address(msg.sender)] * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                                call msg.sender with:
                                   value msg.value - (stor7[address(msg.sender)] * arg4) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        if (stor5 * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                            if msg.value > (stor5 * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                                call msg.sender with:
                                   value msg.value - (stor5 * arg4) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require (10^18 * stor5 * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, (10^18 * stor5 * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                else:
                    if not Mask(8, 248, sub_40292f55[tx.origin]):
                        if msg.value:
                            if msg.value > 0:
                                call msg.sender with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require 0 / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, 0 / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160] = !(256^(-(arg2.length % 32) + 32) - 1) and call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] or 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160]
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 160] = Mask(8, 248, stor6[address(msg.sender)])
                        if stor7[address(msg.sender)]:
                            if (stor7[address(msg.sender)] * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                                if msg.value > (stor7[address(msg.sender)] * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                                    call msg.sender with:
                                       value msg.value - (stor7[address(msg.sender)] * arg4) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if not sub_eaeae92c[msg.sender]:
                                        revert with 0, 'Error settling query payment'
                                    require sub_13725147[stor14[msg.sender]] * basePrice
                                    require (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                    require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                    call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, this.address, (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                        else:
                            if (stor5 * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                                if msg.value > (stor5 * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                                    call msg.sender with:
                                       value msg.value - (stor5 * arg4) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if not sub_eaeae92c[msg.sender]:
                                        revert with 0, 'Error settling query payment'
                                    require sub_13725147[stor14[msg.sender]] * basePrice
                                    require (10^18 * stor5 * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                    require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                    call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, this.address, (10^18 * stor5 * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
    stor0[msg.sender]++
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = msg.sender
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 448 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 448] = arg3.length
    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 480 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        emit Log1(msg.sender, sha3(this.address, msg.sender, stor0[msg.sender]), arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 448 len arg3.length + arg2.length + -ceil32(arg2.length) + 32]), arg2.length + 288, arg4, Mask(8, 248, stor6[msg.sender]), stor7[msg.sender]);
    else:
        mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 480] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 512 len arg3.length % 32]
        emit Log1(msg.sender, sha3(this.address, msg.sender, stor0[msg.sender]), arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 448 len floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 64]), arg2.length + 288, arg4, Mask(8, 248, stor6[msg.sender]), stor7[msg.sender]);
    return sha3(this.address, msg.sender, stor0[msg.sender])
}

function sub_67fe745c(?) payable {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    if stor2[address(msg.sender)]:
        if msg.value:
            if msg.value > 0:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if not sub_eaeae92c[msg.sender]:
                    revert with 0, 'Error settling query payment'
                require sub_13725147[stor14[msg.sender]] * basePrice
                require 0 / sub_13725147[stor14[msg.sender]] * basePrice > 0
                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, 0 / sub_13725147[stor14[msg.sender]] * basePrice
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
    else:
        if stor0[address(msg.sender)]:
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160] = !(256^(-(arg2.length % 32) + 32) - 1) and call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] or 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160]
            mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 160] = Mask(8, 248, stor6[address(msg.sender)])
            if stor7[address(msg.sender)]:
                if (stor7[address(msg.sender)] * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                    if msg.value > (stor7[address(msg.sender)] * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                        call msg.sender with:
                           value msg.value - (stor7[address(msg.sender)] * arg4) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not sub_eaeae92c[msg.sender]:
                            revert with 0, 'Error settling query payment'
                        require sub_13725147[stor14[msg.sender]] * basePrice
                        require (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                        require ext_code.size(sub_eaeae92c[address(msg.sender)])
                        call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
            else:
                if (stor5 * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                    if msg.value > (stor5 * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                        call msg.sender with:
                           value msg.value - (stor5 * arg4) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not sub_eaeae92c[msg.sender]:
                            revert with 0, 'Error settling query payment'
                        require sub_13725147[stor14[msg.sender]] * basePrice
                        require (10^18 * stor5 * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                        require ext_code.size(sub_eaeae92c[address(msg.sender)])
                        call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, (10^18 * stor5 * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
        else:
            if arg4 > 200000:
                mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160] = !(256^(-(arg2.length % 32) + 32) - 1) and call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] or 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160]
                mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 160] = Mask(8, 248, stor6[address(msg.sender)])
                if stor7[address(msg.sender)]:
                    if (stor7[address(msg.sender)] * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                        if msg.value > (stor7[address(msg.sender)] * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                            call msg.sender with:
                               value msg.value - (stor7[address(msg.sender)] * arg4) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    if (stor5 * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                        if msg.value > (stor5 * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                            call msg.sender with:
                               value msg.value - (stor5 * arg4) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require (10^18 * stor5 * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, (10^18 * stor5 * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
            else:
                if stor7[address(msg.sender)] > stor5:
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160] = !(256^(-(arg2.length % 32) + 32) - 1) and call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] or 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160]
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 160] = Mask(8, 248, stor6[address(msg.sender)])
                    if stor7[address(msg.sender)]:
                        if (stor7[address(msg.sender)] * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                            if msg.value > (stor7[address(msg.sender)] * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                                call msg.sender with:
                                   value msg.value - (stor7[address(msg.sender)] * arg4) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        if (stor5 * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                            if msg.value > (stor5 * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                                call msg.sender with:
                                   value msg.value - (stor5 * arg4) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require (10^18 * stor5 * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, (10^18 * stor5 * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                else:
                    if not Mask(8, 248, sub_40292f55[tx.origin]):
                        if msg.value:
                            if msg.value > 0:
                                call msg.sender with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require 0 / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, 0 / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160] = !(256^(-(arg2.length % 32) + 32) - 1) and call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] or 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160]
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 160] = Mask(8, 248, stor6[address(msg.sender)])
                        if stor7[address(msg.sender)]:
                            if (stor7[address(msg.sender)] * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                                if msg.value > (stor7[address(msg.sender)] * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                                    call msg.sender with:
                                       value msg.value - (stor7[address(msg.sender)] * arg4) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if not sub_eaeae92c[msg.sender]:
                                        revert with 0, 'Error settling query payment'
                                    require sub_13725147[stor14[msg.sender]] * basePrice
                                    require (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                    require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                    call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, this.address, (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                        else:
                            if (stor5 * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                                if msg.value > (stor5 * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                                    call msg.sender with:
                                       value msg.value - (stor5 * arg4) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if not sub_eaeae92c[msg.sender]:
                                        revert with 0, 'Error settling query payment'
                                    require sub_13725147[stor14[msg.sender]] * basePrice
                                    require (10^18 * stor5 * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                    require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                    call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, this.address, (10^18 * stor5 * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
    stor0[msg.sender]++
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = msg.sender
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 448 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 448] = arg3.length
    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 480 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        emit Log1(msg.sender, sha3(this.address, msg.sender, stor0[msg.sender]), arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 448 len arg3.length + arg2.length + -ceil32(arg2.length) + 32]), arg2.length + 288, arg4, Mask(8, 248, stor6[msg.sender]), stor7[msg.sender]);
    else:
        mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 480] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 512 len arg3.length % 32]
        emit Log1(msg.sender, sha3(this.address, msg.sender, stor0[msg.sender]), arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 448 len floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 64]), arg2.length + 288, arg4, Mask(8, 248, stor6[msg.sender]), stor7[msg.sender]);
    return sha3(this.address, msg.sender, stor0[msg.sender])
}

function query1(uint256 arg1, string arg2, string arg3, uint256 arg4) payable {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    if stor2[address(msg.sender)]:
        if msg.value:
            if msg.value > 0:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if not sub_eaeae92c[msg.sender]:
                    revert with 0, 'Error settling query payment'
                require sub_13725147[stor14[msg.sender]] * basePrice
                require 0 / sub_13725147[stor14[msg.sender]] * basePrice > 0
                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, 0 / sub_13725147[stor14[msg.sender]] * basePrice
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
    else:
        if stor0[address(msg.sender)]:
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160] = !(256^(-(arg2.length % 32) + 32) - 1) and call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] or 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160]
            mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 160] = Mask(8, 248, stor6[address(msg.sender)])
            if stor7[address(msg.sender)]:
                if (stor7[address(msg.sender)] * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                    if msg.value > (stor7[address(msg.sender)] * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                        call msg.sender with:
                           value msg.value - (stor7[address(msg.sender)] * arg4) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not sub_eaeae92c[msg.sender]:
                            revert with 0, 'Error settling query payment'
                        require sub_13725147[stor14[msg.sender]] * basePrice
                        require (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                        require ext_code.size(sub_eaeae92c[address(msg.sender)])
                        call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
            else:
                if (stor5 * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                    if msg.value > (stor5 * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                        call msg.sender with:
                           value msg.value - (stor5 * arg4) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not sub_eaeae92c[msg.sender]:
                            revert with 0, 'Error settling query payment'
                        require sub_13725147[stor14[msg.sender]] * basePrice
                        require (10^18 * stor5 * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                        require ext_code.size(sub_eaeae92c[address(msg.sender)])
                        call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, (10^18 * stor5 * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
        else:
            if arg4 > 200000:
                mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160] = !(256^(-(arg2.length % 32) + 32) - 1) and call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] or 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160]
                mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 160] = Mask(8, 248, stor6[address(msg.sender)])
                if stor7[address(msg.sender)]:
                    if (stor7[address(msg.sender)] * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                        if msg.value > (stor7[address(msg.sender)] * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                            call msg.sender with:
                               value msg.value - (stor7[address(msg.sender)] * arg4) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    if (stor5 * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                        if msg.value > (stor5 * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                            call msg.sender with:
                               value msg.value - (stor5 * arg4) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require (10^18 * stor5 * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, (10^18 * stor5 * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
            else:
                if stor7[address(msg.sender)] > stor5:
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160] = !(256^(-(arg2.length % 32) + 32) - 1) and call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] or 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160]
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 160] = Mask(8, 248, stor6[address(msg.sender)])
                    if stor7[address(msg.sender)]:
                        if (stor7[address(msg.sender)] * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                            if msg.value > (stor7[address(msg.sender)] * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                                call msg.sender with:
                                   value msg.value - (stor7[address(msg.sender)] * arg4) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        if (stor5 * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                            if msg.value > (stor5 * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                                call msg.sender with:
                                   value msg.value - (stor5 * arg4) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require (10^18 * stor5 * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, (10^18 * stor5 * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                else:
                    if not Mask(8, 248, sub_40292f55[tx.origin]):
                        if msg.value:
                            if msg.value > 0:
                                call msg.sender with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require 0 / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, 0 / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160] = !(256^(-(arg2.length % 32) + 32) - 1) and call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] or 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160]
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 160] = Mask(8, 248, stor6[address(msg.sender)])
                        if stor7[address(msg.sender)]:
                            if (stor7[address(msg.sender)] * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                                if msg.value > (stor7[address(msg.sender)] * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                                    call msg.sender with:
                                       value msg.value - (stor7[address(msg.sender)] * arg4) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if not sub_eaeae92c[msg.sender]:
                                        revert with 0, 'Error settling query payment'
                                    require sub_13725147[stor14[msg.sender]] * basePrice
                                    require (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                    require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                    call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, this.address, (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                        else:
                            if (stor5 * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                                if msg.value > (stor5 * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                                    call msg.sender with:
                                       value msg.value - (stor5 * arg4) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if not sub_eaeae92c[msg.sender]:
                                        revert with 0, 'Error settling query payment'
                                    require sub_13725147[stor14[msg.sender]] * basePrice
                                    require (10^18 * stor5 * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                    require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                    call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, this.address, (10^18 * stor5 * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
    stor0[msg.sender]++
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = msg.sender
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 448 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 448] = arg3.length
    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 480 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        emit Log1(msg.sender, sha3(this.address, msg.sender, stor0[msg.sender]), arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 448 len arg3.length + arg2.length + -ceil32(arg2.length) + 32]), arg2.length + 288, arg4, Mask(8, 248, stor6[msg.sender]), stor7[msg.sender]);
    else:
        mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 480] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 512 len arg3.length % 32]
        emit Log1(msg.sender, sha3(this.address, msg.sender, stor0[msg.sender]), arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 448 len floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 64]), arg2.length + 288, arg4, Mask(8, 248, stor6[msg.sender]), stor7[msg.sender]);
    return sha3(this.address, msg.sender, stor0[msg.sender])
}

function query_withGasLimit(uint256 arg1, string arg2, string arg3, uint256 arg4) payable {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    if stor2[address(msg.sender)]:
        if msg.value:
            if msg.value > 0:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if not sub_eaeae92c[msg.sender]:
                    revert with 0, 'Error settling query payment'
                require sub_13725147[stor14[msg.sender]] * basePrice
                require 0 / sub_13725147[stor14[msg.sender]] * basePrice > 0
                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, 0 / sub_13725147[stor14[msg.sender]] * basePrice
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
    else:
        if stor0[address(msg.sender)]:
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160] = !(256^(-(arg2.length % 32) + 32) - 1) and call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] or 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160]
            mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 160] = Mask(8, 248, stor6[address(msg.sender)])
            if stor7[address(msg.sender)]:
                if (stor7[address(msg.sender)] * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                    if msg.value > (stor7[address(msg.sender)] * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                        call msg.sender with:
                           value msg.value - (stor7[address(msg.sender)] * arg4) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not sub_eaeae92c[msg.sender]:
                            revert with 0, 'Error settling query payment'
                        require sub_13725147[stor14[msg.sender]] * basePrice
                        require (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                        require ext_code.size(sub_eaeae92c[address(msg.sender)])
                        call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
            else:
                if (stor5 * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                    if msg.value > (stor5 * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                        call msg.sender with:
                           value msg.value - (stor5 * arg4) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not sub_eaeae92c[msg.sender]:
                            revert with 0, 'Error settling query payment'
                        require sub_13725147[stor14[msg.sender]] * basePrice
                        require (10^18 * stor5 * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                        require ext_code.size(sub_eaeae92c[address(msg.sender)])
                        call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, (10^18 * stor5 * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
        else:
            if arg4 > 200000:
                mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160] = !(256^(-(arg2.length % 32) + 32) - 1) and call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] or 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160]
                mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 160] = Mask(8, 248, stor6[address(msg.sender)])
                if stor7[address(msg.sender)]:
                    if (stor7[address(msg.sender)] * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                        if msg.value > (stor7[address(msg.sender)] * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                            call msg.sender with:
                               value msg.value - (stor7[address(msg.sender)] * arg4) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    if (stor5 * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                        if msg.value > (stor5 * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                            call msg.sender with:
                               value msg.value - (stor5 * arg4) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require (10^18 * stor5 * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, (10^18 * stor5 * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
            else:
                if stor7[address(msg.sender)] > stor5:
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160] = !(256^(-(arg2.length % 32) + 32) - 1) and call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] or 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160]
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 160] = Mask(8, 248, stor6[address(msg.sender)])
                    if stor7[address(msg.sender)]:
                        if (stor7[address(msg.sender)] * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                            if msg.value > (stor7[address(msg.sender)] * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                                call msg.sender with:
                                   value msg.value - (stor7[address(msg.sender)] * arg4) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        if (stor5 * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                            if msg.value > (stor5 * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                                call msg.sender with:
                                   value msg.value - (stor5 * arg4) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require (10^18 * stor5 * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, (10^18 * stor5 * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                else:
                    if not Mask(8, 248, sub_40292f55[tx.origin]):
                        if msg.value:
                            if msg.value > 0:
                                call msg.sender with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require 0 / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, 0 / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160] = !(256^(-(arg2.length % 32) + 32) - 1) and call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] or 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160]
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 160] = Mask(8, 248, stor6[address(msg.sender)])
                        if stor7[address(msg.sender)]:
                            if (stor7[address(msg.sender)] * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                                if msg.value > (stor7[address(msg.sender)] * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                                    call msg.sender with:
                                       value msg.value - (stor7[address(msg.sender)] * arg4) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if not sub_eaeae92c[msg.sender]:
                                        revert with 0, 'Error settling query payment'
                                    require sub_13725147[stor14[msg.sender]] * basePrice
                                    require (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                    require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                    call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, this.address, (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                        else:
                            if (stor5 * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                                if msg.value > (stor5 * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                                    call msg.sender with:
                                       value msg.value - (stor5 * arg4) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if not sub_eaeae92c[msg.sender]:
                                        revert with 0, 'Error settling query payment'
                                    require sub_13725147[stor14[msg.sender]] * basePrice
                                    require (10^18 * stor5 * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                    require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                    call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, this.address, (10^18 * stor5 * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
    stor0[msg.sender]++
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = msg.sender
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 448 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 448] = arg3.length
    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 480 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        emit Log1(msg.sender, sha3(this.address, msg.sender, stor0[msg.sender]), arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 448 len arg3.length + arg2.length + -ceil32(arg2.length) + 32]), arg2.length + 288, arg4, Mask(8, 248, stor6[msg.sender]), stor7[msg.sender]);
    else:
        mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 480] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 512 len arg3.length % 32]
        emit Log1(msg.sender, sha3(this.address, msg.sender, stor0[msg.sender]), arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 448 len floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 64]), arg2.length + 288, arg4, Mask(8, 248, stor6[msg.sender]), stor7[msg.sender]);
    return sha3(this.address, msg.sender, stor0[msg.sender])
}

function query1_withGasLimit(uint256 arg1, string arg2, string arg3, uint256 arg4) payable {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    if stor2[address(msg.sender)]:
        if msg.value:
            if msg.value > 0:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if not sub_eaeae92c[msg.sender]:
                    revert with 0, 'Error settling query payment'
                require sub_13725147[stor14[msg.sender]] * basePrice
                require 0 / sub_13725147[stor14[msg.sender]] * basePrice > 0
                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, 0 / sub_13725147[stor14[msg.sender]] * basePrice
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
    else:
        if stor0[address(msg.sender)]:
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160] = !(256^(-(arg2.length % 32) + 32) - 1) and call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] or 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160]
            mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 160] = Mask(8, 248, stor6[address(msg.sender)])
            if stor7[address(msg.sender)]:
                if (stor7[address(msg.sender)] * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                    if msg.value > (stor7[address(msg.sender)] * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                        call msg.sender with:
                           value msg.value - (stor7[address(msg.sender)] * arg4) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not sub_eaeae92c[msg.sender]:
                            revert with 0, 'Error settling query payment'
                        require sub_13725147[stor14[msg.sender]] * basePrice
                        require (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                        require ext_code.size(sub_eaeae92c[address(msg.sender)])
                        call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
            else:
                if (stor5 * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                    if msg.value > (stor5 * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                        call msg.sender with:
                           value msg.value - (stor5 * arg4) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not sub_eaeae92c[msg.sender]:
                            revert with 0, 'Error settling query payment'
                        require sub_13725147[stor14[msg.sender]] * basePrice
                        require (10^18 * stor5 * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                        require ext_code.size(sub_eaeae92c[address(msg.sender)])
                        call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, (10^18 * stor5 * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
        else:
            if arg4 > 200000:
                mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160] = !(256^(-(arg2.length % 32) + 32) - 1) and call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] or 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160]
                mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 160] = Mask(8, 248, stor6[address(msg.sender)])
                if stor7[address(msg.sender)]:
                    if (stor7[address(msg.sender)] * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                        if msg.value > (stor7[address(msg.sender)] * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                            call msg.sender with:
                               value msg.value - (stor7[address(msg.sender)] * arg4) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    if (stor5 * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                        if msg.value > (stor5 * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                            call msg.sender with:
                               value msg.value - (stor5 * arg4) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require (10^18 * stor5 * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, (10^18 * stor5 * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
            else:
                if stor7[address(msg.sender)] > stor5:
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160] = !(256^(-(arg2.length % 32) + 32) - 1) and call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] or 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160]
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 160] = Mask(8, 248, stor6[address(msg.sender)])
                    if stor7[address(msg.sender)]:
                        if (stor7[address(msg.sender)] * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                            if msg.value > (stor7[address(msg.sender)] * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                                call msg.sender with:
                                   value msg.value - (stor7[address(msg.sender)] * arg4) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        if (stor5 * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                            if msg.value > (stor5 * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                                call msg.sender with:
                                   value msg.value - (stor5 * arg4) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require (10^18 * stor5 * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, (10^18 * stor5 * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                else:
                    if not Mask(8, 248, sub_40292f55[tx.origin]):
                        if msg.value:
                            if msg.value > 0:
                                call msg.sender with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require 0 / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, 0 / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160] = !(256^(-(arg2.length % 32) + 32) - 1) and call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] or 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160]
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 160] = Mask(8, 248, stor6[address(msg.sender)])
                        if stor7[address(msg.sender)]:
                            if (stor7[address(msg.sender)] * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                                if msg.value > (stor7[address(msg.sender)] * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                                    call msg.sender with:
                                       value msg.value - (stor7[address(msg.sender)] * arg4) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if not sub_eaeae92c[msg.sender]:
                                        revert with 0, 'Error settling query payment'
                                    require sub_13725147[stor14[msg.sender]] * basePrice
                                    require (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                    require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                    call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, this.address, (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                        else:
                            if (stor5 * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                                if msg.value > (stor5 * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                                    call msg.sender with:
                                       value msg.value - (stor5 * arg4) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if not sub_eaeae92c[msg.sender]:
                                        revert with 0, 'Error settling query payment'
                                    require sub_13725147[stor14[msg.sender]] * basePrice
                                    require (10^18 * stor5 * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                    require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                    call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, this.address, (10^18 * stor5 * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
    stor0[msg.sender]++
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = msg.sender
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 448 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 448] = arg3.length
    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 480 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        emit Log1(msg.sender, sha3(this.address, msg.sender, stor0[msg.sender]), arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 448 len arg3.length + arg2.length + -ceil32(arg2.length) + 32]), arg2.length + 288, arg4, Mask(8, 248, stor6[msg.sender]), stor7[msg.sender]);
    else:
        mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 480] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 512 len arg3.length % 32]
        emit Log1(msg.sender, sha3(this.address, msg.sender, stor0[msg.sender]), arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 448 len floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 64]), arg2.length + 288, arg4, Mask(8, 248, stor6[msg.sender]), stor7[msg.sender]);
    return sha3(this.address, msg.sender, stor0[msg.sender])
}

function sub_742bf6bf(?) payable {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    if stor2[address(msg.sender)]:
        if msg.value:
            if msg.value > 0:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if not sub_eaeae92c[msg.sender]:
                    revert with 0, 'Error settling query payment'
                require sub_13725147[stor14[msg.sender]] * basePrice
                require 0 / sub_13725147[stor14[msg.sender]] * basePrice > 0
                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, 0 / sub_13725147[stor14[msg.sender]] * basePrice
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
    else:
        if stor0[address(msg.sender)]:
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160] = !(256^(-(arg2.length % 32) + 32) - 1) and call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] or 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160]
            mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 160] = Mask(8, 248, stor6[address(msg.sender)])
            if stor7[address(msg.sender)]:
                if (stor7[address(msg.sender)] * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                    if msg.value > (stor7[address(msg.sender)] * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                        call msg.sender with:
                           value msg.value - (stor7[address(msg.sender)] * arg4) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not sub_eaeae92c[msg.sender]:
                            revert with 0, 'Error settling query payment'
                        require sub_13725147[stor14[msg.sender]] * basePrice
                        require (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                        require ext_code.size(sub_eaeae92c[address(msg.sender)])
                        call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
            else:
                if (stor5 * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                    if msg.value > (stor5 * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                        call msg.sender with:
                           value msg.value - (stor5 * arg4) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not sub_eaeae92c[msg.sender]:
                            revert with 0, 'Error settling query payment'
                        require sub_13725147[stor14[msg.sender]] * basePrice
                        require (10^18 * stor5 * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                        require ext_code.size(sub_eaeae92c[address(msg.sender)])
                        call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, (10^18 * stor5 * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
        else:
            if arg4 > 200000:
                mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160] = !(256^(-(arg2.length % 32) + 32) - 1) and call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] or 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160]
                mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 160] = Mask(8, 248, stor6[address(msg.sender)])
                if stor7[address(msg.sender)]:
                    if (stor7[address(msg.sender)] * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                        if msg.value > (stor7[address(msg.sender)] * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                            call msg.sender with:
                               value msg.value - (stor7[address(msg.sender)] * arg4) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    if (stor5 * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                        if msg.value > (stor5 * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                            call msg.sender with:
                               value msg.value - (stor5 * arg4) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require (10^18 * stor5 * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, (10^18 * stor5 * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
            else:
                if stor7[address(msg.sender)] > stor5:
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160] = !(256^(-(arg2.length % 32) + 32) - 1) and call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] or 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160]
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 160] = Mask(8, 248, stor6[address(msg.sender)])
                    if stor7[address(msg.sender)]:
                        if (stor7[address(msg.sender)] * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                            if msg.value > (stor7[address(msg.sender)] * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                                call msg.sender with:
                                   value msg.value - (stor7[address(msg.sender)] * arg4) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        if (stor5 * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                            if msg.value > (stor5 * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                                call msg.sender with:
                                   value msg.value - (stor5 * arg4) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require (10^18 * stor5 * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, (10^18 * stor5 * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                else:
                    if not Mask(8, 248, sub_40292f55[tx.origin]):
                        if msg.value:
                            if msg.value > 0:
                                call msg.sender with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require 0 / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, 0 / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160] = !(256^(-(arg2.length % 32) + 32) - 1) and call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] or 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160]
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 160] = Mask(8, 248, stor6[address(msg.sender)])
                        if stor7[address(msg.sender)]:
                            if (stor7[address(msg.sender)] * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                                if msg.value > (stor7[address(msg.sender)] * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                                    call msg.sender with:
                                       value msg.value - (stor7[address(msg.sender)] * arg4) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if not sub_eaeae92c[msg.sender]:
                                        revert with 0, 'Error settling query payment'
                                    require sub_13725147[stor14[msg.sender]] * basePrice
                                    require (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                    require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                    call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, this.address, (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                        else:
                            if (stor5 * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                                if msg.value > (stor5 * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                                    call msg.sender with:
                                       value msg.value - (stor5 * arg4) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if not sub_eaeae92c[msg.sender]:
                                        revert with 0, 'Error settling query payment'
                                    require sub_13725147[stor14[msg.sender]] * basePrice
                                    require (10^18 * stor5 * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                    require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                    call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, this.address, (10^18 * stor5 * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
    stor0[msg.sender]++
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = msg.sender
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 192] = sha3(this.address, msg.sender, stor0[msg.sender])
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 224] = arg1
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 320] = arg4
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 352] = Mask(8, 248, stor6[msg.sender])
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 384] = stor7[msg.sender]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 256] = 256
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 416] = arg2.length
    if 0 >= arg2.length:
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 448] = arg3.length
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 480 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            emit LogN(msg.sender, sha3(this.address, msg.sender, stor0[msg.sender]), arg1, Array(len=arg2.length, data=mem[ceil32(arg2.length) + ceil32(arg3.length) + 448 len arg2.length + 32], Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256), arg2.length + 288, arg4, Mask(8, 248, stor6[msg.sender]), stor7[msg.sender]);
        else:
            mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 480] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 512 len arg3.length % 32]
            emit LogN(msg.sender, sha3(this.address, msg.sender, stor0[msg.sender]), arg1, Array(len=arg2.length, data=mem[ceil32(arg2.length) + ceil32(arg3.length) + 448 len arg2.length + 32], Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + arg2.length + 480 len floor32(arg3.length) + -ceil32(arg3.length) + 32]), arg2.length + 288, arg4, Mask(8, 248, stor6[msg.sender]), stor7[msg.sender]);
    else:
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 448] = mem[128]
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 480 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 448] = arg3.length
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 480 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            emit LogN(msg.sender, sha3(this.address, msg.sender, stor0[msg.sender]), arg1, Array(len=arg2.length, data=mem[128], mem[ceil32(arg2.length) + ceil32(arg3.length) + 480 len arg3.length + arg2.length]), arg2.length + 288, arg4, Mask(8, 248, stor6[msg.sender]), stor7[msg.sender]);
        else:
            mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 480] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 512 len arg3.length % 32]
            emit LogN(msg.sender, sha3(this.address, msg.sender, stor0[msg.sender]), arg1, Array(len=arg2.length, data=mem[128], mem[ceil32(arg2.length) + ceil32(arg3.length) + 480 len floor32(arg3.length) + arg2.length + 32]), arg2.length + 288, arg4, Mask(8, 248, stor6[msg.sender]), stor7[msg.sender]);
    return sha3(this.address, msg.sender, stor0[msg.sender])
}

function queryN(uint256 arg1, string arg2, bytes arg3, uint256 arg4) payable {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    if stor2[address(msg.sender)]:
        if msg.value:
            if msg.value > 0:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if not sub_eaeae92c[msg.sender]:
                    revert with 0, 'Error settling query payment'
                require sub_13725147[stor14[msg.sender]] * basePrice
                require 0 / sub_13725147[stor14[msg.sender]] * basePrice > 0
                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, 0 / sub_13725147[stor14[msg.sender]] * basePrice
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
    else:
        if stor0[address(msg.sender)]:
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160] = !(256^(-(arg2.length % 32) + 32) - 1) and call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] or 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160]
            mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 160] = Mask(8, 248, stor6[address(msg.sender)])
            if stor7[address(msg.sender)]:
                if (stor7[address(msg.sender)] * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                    if msg.value > (stor7[address(msg.sender)] * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                        call msg.sender with:
                           value msg.value - (stor7[address(msg.sender)] * arg4) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not sub_eaeae92c[msg.sender]:
                            revert with 0, 'Error settling query payment'
                        require sub_13725147[stor14[msg.sender]] * basePrice
                        require (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                        require ext_code.size(sub_eaeae92c[address(msg.sender)])
                        call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
            else:
                if (stor5 * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                    if msg.value > (stor5 * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                        call msg.sender with:
                           value msg.value - (stor5 * arg4) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not sub_eaeae92c[msg.sender]:
                            revert with 0, 'Error settling query payment'
                        require sub_13725147[stor14[msg.sender]] * basePrice
                        require (10^18 * stor5 * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                        require ext_code.size(sub_eaeae92c[address(msg.sender)])
                        call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, (10^18 * stor5 * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
        else:
            if arg4 > 200000:
                mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160] = !(256^(-(arg2.length % 32) + 32) - 1) and call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] or 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160]
                mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 160] = Mask(8, 248, stor6[address(msg.sender)])
                if stor7[address(msg.sender)]:
                    if (stor7[address(msg.sender)] * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                        if msg.value > (stor7[address(msg.sender)] * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                            call msg.sender with:
                               value msg.value - (stor7[address(msg.sender)] * arg4) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    if (stor5 * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                        if msg.value > (stor5 * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                            call msg.sender with:
                               value msg.value - (stor5 * arg4) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require (10^18 * stor5 * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, (10^18 * stor5 * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
            else:
                if stor7[address(msg.sender)] > stor5:
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160] = !(256^(-(arg2.length % 32) + 32) - 1) and call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] or 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160]
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 160] = Mask(8, 248, stor6[address(msg.sender)])
                    if stor7[address(msg.sender)]:
                        if (stor7[address(msg.sender)] * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                            if msg.value > (stor7[address(msg.sender)] * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                                call msg.sender with:
                                   value msg.value - (stor7[address(msg.sender)] * arg4) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        if (stor5 * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                            if msg.value > (stor5 * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                                call msg.sender with:
                                   value msg.value - (stor5 * arg4) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require (10^18 * stor5 * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, (10^18 * stor5 * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                else:
                    if not Mask(8, 248, sub_40292f55[tx.origin]):
                        if msg.value:
                            if msg.value > 0:
                                call msg.sender with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require 0 / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, 0 / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160] = !(256^(-(arg2.length % 32) + 32) - 1) and call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] or 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160]
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 160] = Mask(8, 248, stor6[address(msg.sender)])
                        if stor7[address(msg.sender)]:
                            if (stor7[address(msg.sender)] * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                                if msg.value > (stor7[address(msg.sender)] * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                                    call msg.sender with:
                                       value msg.value - (stor7[address(msg.sender)] * arg4) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if not sub_eaeae92c[msg.sender]:
                                        revert with 0, 'Error settling query payment'
                                    require sub_13725147[stor14[msg.sender]] * basePrice
                                    require (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                    require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                    call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, this.address, (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                        else:
                            if (stor5 * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                                if msg.value > (stor5 * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                                    call msg.sender with:
                                       value msg.value - (stor5 * arg4) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if not sub_eaeae92c[msg.sender]:
                                        revert with 0, 'Error settling query payment'
                                    require sub_13725147[stor14[msg.sender]] * basePrice
                                    require (10^18 * stor5 * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                    require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                    call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, this.address, (10^18 * stor5 * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
    stor0[msg.sender]++
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = msg.sender
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 192] = sha3(this.address, msg.sender, stor0[msg.sender])
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 224] = arg1
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 320] = arg4
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 352] = Mask(8, 248, stor6[msg.sender])
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 384] = stor7[msg.sender]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 256] = 256
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 416] = arg2.length
    if 0 >= arg2.length:
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 448] = arg3.length
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 480 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            emit LogN(msg.sender, sha3(this.address, msg.sender, stor0[msg.sender]), arg1, Array(len=arg2.length, data=mem[ceil32(arg2.length) + ceil32(arg3.length) + 448 len arg2.length + 32], Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256), arg2.length + 288, arg4, Mask(8, 248, stor6[msg.sender]), stor7[msg.sender]);
        else:
            mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 480] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 512 len arg3.length % 32]
            emit LogN(msg.sender, sha3(this.address, msg.sender, stor0[msg.sender]), arg1, Array(len=arg2.length, data=mem[ceil32(arg2.length) + ceil32(arg3.length) + 448 len arg2.length + 32], Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + arg2.length + 480 len floor32(arg3.length) + -ceil32(arg3.length) + 32]), arg2.length + 288, arg4, Mask(8, 248, stor6[msg.sender]), stor7[msg.sender]);
    else:
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 448] = mem[128]
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 480 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 448] = arg3.length
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 480 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            emit LogN(msg.sender, sha3(this.address, msg.sender, stor0[msg.sender]), arg1, Array(len=arg2.length, data=mem[128], mem[ceil32(arg2.length) + ceil32(arg3.length) + 480 len arg3.length + arg2.length]), arg2.length + 288, arg4, Mask(8, 248, stor6[msg.sender]), stor7[msg.sender]);
        else:
            mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 480] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 512 len arg3.length % 32]
            emit LogN(msg.sender, sha3(this.address, msg.sender, stor0[msg.sender]), arg1, Array(len=arg2.length, data=mem[128], mem[ceil32(arg2.length) + ceil32(arg3.length) + 480 len floor32(arg3.length) + arg2.length + 32]), arg2.length + 288, arg4, Mask(8, 248, stor6[msg.sender]), stor7[msg.sender]);
    return sha3(this.address, msg.sender, stor0[msg.sender])
}

function queryN_withGasLimit(uint256 arg1, string arg2, bytes arg3, uint256 arg4) payable {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    if stor2[address(msg.sender)]:
        if msg.value:
            if msg.value > 0:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if not sub_eaeae92c[msg.sender]:
                    revert with 0, 'Error settling query payment'
                require sub_13725147[stor14[msg.sender]] * basePrice
                require 0 / sub_13725147[stor14[msg.sender]] * basePrice > 0
                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, 0 / sub_13725147[stor14[msg.sender]] * basePrice
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
    else:
        if stor0[address(msg.sender)]:
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160] = !(256^(-(arg2.length % 32) + 32) - 1) and call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] or 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160]
            mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 160] = Mask(8, 248, stor6[address(msg.sender)])
            if stor7[address(msg.sender)]:
                if (stor7[address(msg.sender)] * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                    if msg.value > (stor7[address(msg.sender)] * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                        call msg.sender with:
                           value msg.value - (stor7[address(msg.sender)] * arg4) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not sub_eaeae92c[msg.sender]:
                            revert with 0, 'Error settling query payment'
                        require sub_13725147[stor14[msg.sender]] * basePrice
                        require (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                        require ext_code.size(sub_eaeae92c[address(msg.sender)])
                        call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
            else:
                if (stor5 * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                    if msg.value > (stor5 * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                        call msg.sender with:
                           value msg.value - (stor5 * arg4) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not sub_eaeae92c[msg.sender]:
                            revert with 0, 'Error settling query payment'
                        require sub_13725147[stor14[msg.sender]] * basePrice
                        require (10^18 * stor5 * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                        require ext_code.size(sub_eaeae92c[address(msg.sender)])
                        call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, (10^18 * stor5 * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
        else:
            if arg4 > 200000:
                mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160] = !(256^(-(arg2.length % 32) + 32) - 1) and call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] or 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160]
                mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 160] = Mask(8, 248, stor6[address(msg.sender)])
                if stor7[address(msg.sender)]:
                    if (stor7[address(msg.sender)] * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                        if msg.value > (stor7[address(msg.sender)] * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                            call msg.sender with:
                               value msg.value - (stor7[address(msg.sender)] * arg4) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    if (stor5 * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                        if msg.value > (stor5 * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                            call msg.sender with:
                               value msg.value - (stor5 * arg4) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require (10^18 * stor5 * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, (10^18 * stor5 * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
            else:
                if stor7[address(msg.sender)] > stor5:
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160] = !(256^(-(arg2.length % 32) + 32) - 1) and call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] or 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160]
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 160] = Mask(8, 248, stor6[address(msg.sender)])
                    if stor7[address(msg.sender)]:
                        if (stor7[address(msg.sender)] * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                            if msg.value > (stor7[address(msg.sender)] * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                                call msg.sender with:
                                   value msg.value - (stor7[address(msg.sender)] * arg4) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        if (stor5 * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                            if msg.value > (stor5 * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                                call msg.sender with:
                                   value msg.value - (stor5 * arg4) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require (10^18 * stor5 * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, (10^18 * stor5 * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                else:
                    if not Mask(8, 248, sub_40292f55[tx.origin]):
                        if msg.value:
                            if msg.value > 0:
                                call msg.sender with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require 0 / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, 0 / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160] = !(256^(-(arg2.length % 32) + 32) - 1) and call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] or 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160]
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 160] = Mask(8, 248, stor6[address(msg.sender)])
                        if stor7[address(msg.sender)]:
                            if (stor7[address(msg.sender)] * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                                if msg.value > (stor7[address(msg.sender)] * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                                    call msg.sender with:
                                       value msg.value - (stor7[address(msg.sender)] * arg4) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if not sub_eaeae92c[msg.sender]:
                                        revert with 0, 'Error settling query payment'
                                    require sub_13725147[stor14[msg.sender]] * basePrice
                                    require (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                    require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                    call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, this.address, (10^18 * stor7[address(msg.sender)] * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                        else:
                            if (stor5 * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                                if msg.value > (stor5 * arg4) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                                    call msg.sender with:
                                       value msg.value - (stor5 * arg4) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if not sub_eaeae92c[msg.sender]:
                                        revert with 0, 'Error settling query payment'
                                    require sub_13725147[stor14[msg.sender]] * basePrice
                                    require (10^18 * stor5 * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                    require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                    call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, this.address, (10^18 * stor5 * arg4) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
    stor0[msg.sender]++
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = msg.sender
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 192] = sha3(this.address, msg.sender, stor0[msg.sender])
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 224] = arg1
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 320] = arg4
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 352] = Mask(8, 248, stor6[msg.sender])
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 384] = stor7[msg.sender]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 256] = 256
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 416] = arg2.length
    if 0 >= arg2.length:
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 448] = arg3.length
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 480 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            emit LogN(msg.sender, sha3(this.address, msg.sender, stor0[msg.sender]), arg1, Array(len=arg2.length, data=mem[ceil32(arg2.length) + ceil32(arg3.length) + 448 len arg2.length + 32], Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256), arg2.length + 288, arg4, Mask(8, 248, stor6[msg.sender]), stor7[msg.sender]);
        else:
            mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 480] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 512 len arg3.length % 32]
            emit LogN(msg.sender, sha3(this.address, msg.sender, stor0[msg.sender]), arg1, Array(len=arg2.length, data=mem[ceil32(arg2.length) + ceil32(arg3.length) + 448 len arg2.length + 32], Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + arg2.length + 480 len floor32(arg3.length) + -ceil32(arg3.length) + 32]), arg2.length + 288, arg4, Mask(8, 248, stor6[msg.sender]), stor7[msg.sender]);
    else:
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 448] = mem[128]
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 480 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 448] = arg3.length
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 480 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            emit LogN(msg.sender, sha3(this.address, msg.sender, stor0[msg.sender]), arg1, Array(len=arg2.length, data=mem[128], mem[ceil32(arg2.length) + ceil32(arg3.length) + 480 len arg3.length + arg2.length]), arg2.length + 288, arg4, Mask(8, 248, stor6[msg.sender]), stor7[msg.sender]);
        else:
            mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 480] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 512 len arg3.length % 32]
            emit LogN(msg.sender, sha3(this.address, msg.sender, stor0[msg.sender]), arg1, Array(len=arg2.length, data=mem[128], mem[ceil32(arg2.length) + ceil32(arg3.length) + 480 len floor32(arg3.length) + arg2.length + 32]), arg2.length + 288, arg4, Mask(8, 248, stor6[msg.sender]), stor7[msg.sender]);
    return sha3(this.address, msg.sender, stor0[msg.sender])
}

function queryN(string arg1, bytes arg2) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    if stor2[address(msg.sender)]:
        if msg.value:
            if msg.value > 0:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if not sub_eaeae92c[msg.sender]:
                    revert with 0, 'Error settling query payment'
                require sub_13725147[stor14[msg.sender]] * basePrice
                require 0 / sub_13725147[stor14[msg.sender]] * basePrice > 0
                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, 0 / sub_13725147[stor14[msg.sender]] * basePrice
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
    else:
        if stor0[address(msg.sender)]:
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] = !(256^(-(arg1.length % 32) + 32) - 1) and call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] or 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 160] = Mask(8, 248, stor6[address(msg.sender)])
            if stor7[address(msg.sender)]:
                if (200000 * stor7[address(msg.sender)]) + price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] != msg.value:
                    if msg.value > (200000 * stor7[address(msg.sender)]) + price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]]:
                        call msg.sender with:
                           value msg.value - (200000 * stor7[address(msg.sender)]) - price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not sub_eaeae92c[msg.sender]:
                            revert with 0, 'Error settling query payment'
                        require sub_13725147[stor14[msg.sender]] * basePrice
                        require (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                        require ext_code.size(sub_eaeae92c[address(msg.sender)])
                        call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
            else:
                if (200000 * stor5) + price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] != msg.value:
                    if msg.value > (200000 * stor5) + price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]]:
                        call msg.sender with:
                           value msg.value - (200000 * stor5) - price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not sub_eaeae92c[msg.sender]:
                            revert with 0, 'Error settling query payment'
                        require sub_13725147[stor14[msg.sender]] * basePrice
                        require (200000 * 10^18 * stor5) + (10^18 * price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                        require ext_code.size(sub_eaeae92c[address(msg.sender)])
                        call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, (200000 * 10^18 * stor5) + (10^18 * price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
        else:
            if stor7[address(msg.sender)] > stor5:
                mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] = !(256^(-(arg1.length % 32) + 32) - 1) and call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] or 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160]
                mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 160] = Mask(8, 248, stor6[address(msg.sender)])
                if stor7[address(msg.sender)]:
                    if (200000 * stor7[address(msg.sender)]) + price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] != msg.value:
                        if msg.value > (200000 * stor7[address(msg.sender)]) + price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]]:
                            call msg.sender with:
                               value msg.value - (200000 * stor7[address(msg.sender)]) - price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    if (200000 * stor5) + price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] != msg.value:
                        if msg.value > (200000 * stor5) + price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]]:
                            call msg.sender with:
                               value msg.value - (200000 * stor5) - price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require (200000 * 10^18 * stor5) + (10^18 * price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, (200000 * 10^18 * stor5) + (10^18 * price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
            else:
                if not Mask(8, 248, sub_40292f55[tx.origin]):
                    if msg.value:
                        if msg.value > 0:
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require 0 / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, 0 / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] = !(256^(-(arg1.length % 32) + 32) - 1) and call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] or 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160]
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 160] = Mask(8, 248, stor6[address(msg.sender)])
                    if stor7[address(msg.sender)]:
                        if (200000 * stor7[address(msg.sender)]) + price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] != msg.value:
                            if msg.value > (200000 * stor7[address(msg.sender)]) + price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]]:
                                call msg.sender with:
                                   value msg.value - (200000 * stor7[address(msg.sender)]) - price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        if (200000 * stor5) + price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] != msg.value:
                            if msg.value > (200000 * stor5) + price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]]:
                                call msg.sender with:
                                   value msg.value - (200000 * stor5) - price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require (200000 * 10^18 * stor5) + (10^18 * price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, (200000 * 10^18 * stor5) + (10^18 * price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
    stor0[msg.sender]++
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = msg.sender
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = sha3(this.address, msg.sender, stor0[msg.sender])
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 320] = 200000
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 352] = Mask(8, 248, stor6[msg.sender])
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 384] = stor7[msg.sender]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 256] = 256
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 416] = arg1.length
    if 0 >= arg1.length:
        if not arg1.length % 32:
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 448] = arg2.length
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 480 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
            if not arg2.length % 32:
                emit LogN(address arg1, bytes32 arg2, uint256 arg3, string arg4, bytes arg5, uint256 arg6, bytes1 arg7, uint256 arg8):
                          msg.sender,
                          sha3(this.address, msg.sender, stor0[msg.sender]),
                          0,
                          256,
                          arg1.length + 288,
                          200000,
                          Mask(8, 248, stor6[msg.sender]),
                          stor7[msg.sender],
                          arg1.length,
                          mem[ceil32(arg1.length) + ceil32(arg2.length) + 448 len arg1.length + 32],
                          Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256,
            else:
                mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 480] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 512 len arg2.length % 32]
                emit LogN(address arg1, bytes32 arg2, uint256 arg3, string arg4, bytes arg5, uint256 arg6, bytes1 arg7, uint256 arg8):
                          msg.sender,
                          sha3(this.address, msg.sender, stor0[msg.sender]),
                          0,
                          256,
                          arg1.length + 288,
                          200000,
                          Mask(8, 248, stor6[msg.sender]),
                          stor7[msg.sender],
                          arg1.length,
                          mem[ceil32(arg1.length) + ceil32(arg2.length) + 448 len arg1.length + 32],
                          Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                          mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + arg1.length + 480 len floor32(arg2.length) + -ceil32(arg2.length) + 32],
        else:
            mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 448] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg1.length % 32) + 480 len arg1.length % 32]
            mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 512 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
            if not arg2.length % 32:
                emit LogN(address arg1, bytes32 arg2, uint256 arg3, string arg4, bytes arg5, uint256 arg6, bytes1 arg7, uint256 arg8):
                          msg.sender,
                          sha3(this.address, msg.sender, stor0[msg.sender]),
                          0,
                          256,
                          floor32(arg1.length) + 320,
                          200000,
                          Mask(8, 248, stor6[msg.sender]),
                          stor7[msg.sender],
                          arg1.length,
                          mem[ceil32(arg1.length) + ceil32(arg2.length) + 448 len floor32(arg1.length) + 32],
                          arg2.length,
                          Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256,
            else:
                mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 512] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 544 len arg2.length % 32]
                emit LogN(address arg1, bytes32 arg2, uint256 arg3, string arg4, bytes arg5, uint256 arg6, bytes1 arg7, uint256 arg8):
                          msg.sender,
                          sha3(this.address, msg.sender, stor0[msg.sender]),
                          0,
                          256,
                          floor32(arg1.length) + 320,
                          200000,
                          Mask(8, 248, stor6[msg.sender]),
                          stor7[msg.sender],
                          arg1.length,
                          mem[ceil32(arg1.length) + ceil32(arg2.length) + 448 len floor32(arg1.length) + 32],
                          arg2.length,
                          Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                          mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + floor32(arg1.length) + 512 len floor32(arg2.length) + -ceil32(arg2.length) + 32],
    else:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 448] = mem[128]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 480 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
        if not arg1.length % 32:
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 448] = arg2.length
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 480 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
            if not arg2.length % 32:
                emit LogN(address arg1, bytes32 arg2, uint256 arg3, string arg4, bytes arg5, uint256 arg6, bytes1 arg7, uint256 arg8):
                          msg.sender,
                          sha3(this.address, msg.sender, stor0[msg.sender]),
                          0,
                          256,
                          arg1.length + 288,
                          200000,
                          Mask(8, 248, stor6[msg.sender]),
                          stor7[msg.sender],
                          arg1.length,
                          mem[128],
                          mem[ceil32(arg1.length) + ceil32(arg2.length) + 480 len arg2.length + arg1.length],
            else:
                mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 480] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 512 len arg2.length % 32]
                emit LogN(address arg1, bytes32 arg2, uint256 arg3, string arg4, bytes arg5, uint256 arg6, bytes1 arg7, uint256 arg8):
                          msg.sender,
                          sha3(this.address, msg.sender, stor0[msg.sender]),
                          0,
                          256,
                          arg1.length + 288,
                          200000,
                          Mask(8, 248, stor6[msg.sender]),
                          stor7[msg.sender],
                          arg1.length,
                          mem[128],
                          mem[ceil32(arg1.length) + ceil32(arg2.length) + 480 len floor32(arg2.length) + arg1.length + 32],
        else:
            mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 448] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg1.length % 32) + 480 len arg1.length % 32]
            mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 480] = arg2.length
            mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 512 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
            if not arg2.length % 32:
                emit LogN(address arg1, bytes32 arg2, uint256 arg3, string arg4, bytes arg5, uint256 arg6, bytes1 arg7, uint256 arg8):
                          msg.sender,
                          sha3(this.address, msg.sender, stor0[msg.sender]),
                          0,
                          256,
                          floor32(arg1.length) + 320,
                          200000,
                          Mask(8, 248, stor6[msg.sender]),
                          stor7[msg.sender],
                          arg1.length,
                          mem[128],
                          mem[ceil32(arg1.length) + ceil32(arg2.length) + 480 len floor32(arg1.length) + 32],
                          Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256,
            else:
                mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 512] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 544 len arg2.length % 32]
                emit LogN(address arg1, bytes32 arg2, uint256 arg3, string arg4, bytes arg5, uint256 arg6, bytes1 arg7, uint256 arg8):
                          msg.sender,
                          sha3(this.address, msg.sender, stor0[msg.sender]),
                          0,
                          256,
                          floor32(arg1.length) + 320,
                          200000,
                          Mask(8, 248, stor6[msg.sender]),
                          stor7[msg.sender],
                          arg1.length,
                          mem[128],
                          mem[ceil32(arg1.length) + ceil32(arg2.length) + 480 len floor32(arg1.length) + 32],
                          Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                          mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + floor32(arg1.length) + 512 len floor32(arg2.length) + -ceil32(arg2.length) + 32],
    return sha3(this.address, msg.sender, stor0[msg.sender])
}

function queryN(uint256 arg1, string arg2, bytes arg3) payable {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    if stor2[address(msg.sender)]:
        if msg.value:
            if msg.value > 0:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if not sub_eaeae92c[msg.sender]:
                    revert with 0, 'Error settling query payment'
                require sub_13725147[stor14[msg.sender]] * basePrice
                require 0 / sub_13725147[stor14[msg.sender]] * basePrice > 0
                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, 0 / sub_13725147[stor14[msg.sender]] * basePrice
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
    else:
        if stor0[address(msg.sender)]:
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160] = !(256^(-(arg2.length % 32) + 32) - 1) and call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] or 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160]
            mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 160] = Mask(8, 248, stor6[address(msg.sender)])
            if stor7[address(msg.sender)]:
                if (200000 * stor7[address(msg.sender)]) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                    if msg.value > (200000 * stor7[address(msg.sender)]) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                        call msg.sender with:
                           value msg.value - (200000 * stor7[address(msg.sender)]) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not sub_eaeae92c[msg.sender]:
                            revert with 0, 'Error settling query payment'
                        require sub_13725147[stor14[msg.sender]] * basePrice
                        require (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                        require ext_code.size(sub_eaeae92c[address(msg.sender)])
                        call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
            else:
                if (200000 * stor5) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                    if msg.value > (200000 * stor5) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                        call msg.sender with:
                           value msg.value - (200000 * stor5) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not sub_eaeae92c[msg.sender]:
                            revert with 0, 'Error settling query payment'
                        require sub_13725147[stor14[msg.sender]] * basePrice
                        require (200000 * 10^18 * stor5) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                        require ext_code.size(sub_eaeae92c[address(msg.sender)])
                        call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, (200000 * 10^18 * stor5) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
        else:
            if stor7[address(msg.sender)] > stor5:
                mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160] = !(256^(-(arg2.length % 32) + 32) - 1) and call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] or 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160]
                mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 160] = Mask(8, 248, stor6[address(msg.sender)])
                if stor7[address(msg.sender)]:
                    if (200000 * stor7[address(msg.sender)]) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                        if msg.value > (200000 * stor7[address(msg.sender)]) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                            call msg.sender with:
                               value msg.value - (200000 * stor7[address(msg.sender)]) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    if (200000 * stor5) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                        if msg.value > (200000 * stor5) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                            call msg.sender with:
                               value msg.value - (200000 * stor5) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require (200000 * 10^18 * stor5) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, (200000 * 10^18 * stor5) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
            else:
                if not Mask(8, 248, sub_40292f55[tx.origin]):
                    if msg.value:
                        if msg.value > 0:
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require 0 / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, 0 / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160] = !(256^(-(arg2.length % 32) + 32) - 1) and call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] or 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160]
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 160] = Mask(8, 248, stor6[address(msg.sender)])
                    if stor7[address(msg.sender)]:
                        if (200000 * stor7[address(msg.sender)]) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                            if msg.value > (200000 * stor7[address(msg.sender)]) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                                call msg.sender with:
                                   value msg.value - (200000 * stor7[address(msg.sender)]) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        if (200000 * stor5) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] != msg.value:
                            if msg.value > (200000 * stor5) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]:
                                call msg.sender with:
                                   value msg.value - (200000 * stor5) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require (200000 * 10^18 * stor5) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, (200000 * 10^18 * stor5) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
    stor0[msg.sender]++
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = msg.sender
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 192] = sha3(this.address, msg.sender, stor0[msg.sender])
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 224] = arg1
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 320] = 200000
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 352] = Mask(8, 248, stor6[msg.sender])
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 384] = stor7[msg.sender]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 256] = 256
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 416] = arg2.length
    if 0 >= arg2.length:
        if not arg2.length % 32:
            mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 448] = arg3.length
            mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 480 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
            if not arg3.length % 32:
                emit LogN(address arg1, bytes32 arg2, uint256 arg3, string arg4, bytes arg5, uint256 arg6, bytes1 arg7, uint256 arg8):
                          msg.sender,
                          sha3(this.address, msg.sender, stor0[msg.sender]),
                          arg1,
                          256,
                          arg2.length + 288,
                          200000,
                          Mask(8, 248, stor6[msg.sender]),
                          stor7[msg.sender],
                          arg2.length,
                          mem[ceil32(arg2.length) + ceil32(arg3.length) + 448 len arg2.length + 32],
                          Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256,
            else:
                mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 480] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 512 len arg3.length % 32]
                emit LogN(address arg1, bytes32 arg2, uint256 arg3, string arg4, bytes arg5, uint256 arg6, bytes1 arg7, uint256 arg8):
                          msg.sender,
                          sha3(this.address, msg.sender, stor0[msg.sender]),
                          arg1,
                          256,
                          arg2.length + 288,
                          200000,
                          Mask(8, 248, stor6[msg.sender]),
                          stor7[msg.sender],
                          arg2.length,
                          mem[ceil32(arg2.length) + ceil32(arg3.length) + 448 len arg2.length + 32],
                          Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                          mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + arg2.length + 480 len floor32(arg3.length) + -ceil32(arg3.length) + 32],
        else:
            mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 448] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 480 len arg2.length % 32]
            mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 512 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
            if not arg3.length % 32:
                emit LogN(address arg1, bytes32 arg2, uint256 arg3, string arg4, bytes arg5, uint256 arg6, bytes1 arg7, uint256 arg8):
                          msg.sender,
                          sha3(this.address, msg.sender, stor0[msg.sender]),
                          arg1,
                          256,
                          floor32(arg2.length) + 320,
                          200000,
                          Mask(8, 248, stor6[msg.sender]),
                          stor7[msg.sender],
                          arg2.length,
                          mem[ceil32(arg2.length) + ceil32(arg3.length) + 448 len floor32(arg2.length) + 32],
                          arg3.length,
                          Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256,
            else:
                mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 512] = mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 544 len arg3.length % 32]
                emit LogN(address arg1, bytes32 arg2, uint256 arg3, string arg4, bytes arg5, uint256 arg6, bytes1 arg7, uint256 arg8):
                          msg.sender,
                          sha3(this.address, msg.sender, stor0[msg.sender]),
                          arg1,
                          256,
                          floor32(arg2.length) + 320,
                          200000,
                          Mask(8, 248, stor6[msg.sender]),
                          stor7[msg.sender],
                          arg2.length,
                          mem[ceil32(arg2.length) + ceil32(arg3.length) + 448 len floor32(arg2.length) + 32],
                          arg3.length,
                          Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                          mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + floor32(arg2.length) + 512 len floor32(arg3.length) + -ceil32(arg3.length) + 32],
    else:
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 448] = mem[128]
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 480 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
        if not arg2.length % 32:
            mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 448] = arg3.length
            mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 480 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
            if not arg3.length % 32:
                emit LogN(address arg1, bytes32 arg2, uint256 arg3, string arg4, bytes arg5, uint256 arg6, bytes1 arg7, uint256 arg8):
                          msg.sender,
                          sha3(this.address, msg.sender, stor0[msg.sender]),
                          arg1,
                          256,
                          arg2.length + 288,
                          200000,
                          Mask(8, 248, stor6[msg.sender]),
                          stor7[msg.sender],
                          arg2.length,
                          mem[128],
                          mem[ceil32(arg2.length) + ceil32(arg3.length) + 480 len arg3.length + arg2.length],
            else:
                mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 480] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 512 len arg3.length % 32]
                emit LogN(address arg1, bytes32 arg2, uint256 arg3, string arg4, bytes arg5, uint256 arg6, bytes1 arg7, uint256 arg8):
                          msg.sender,
                          sha3(this.address, msg.sender, stor0[msg.sender]),
                          arg1,
                          256,
                          arg2.length + 288,
                          200000,
                          Mask(8, 248, stor6[msg.sender]),
                          stor7[msg.sender],
                          arg2.length,
                          mem[128],
                          mem[ceil32(arg2.length) + ceil32(arg3.length) + 480 len floor32(arg3.length) + arg2.length + 32],
        else:
            mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 448] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 480 len arg2.length % 32]
            mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 480] = arg3.length
            mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 512 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
            if not arg3.length % 32:
                emit LogN(address arg1, bytes32 arg2, uint256 arg3, string arg4, bytes arg5, uint256 arg6, bytes1 arg7, uint256 arg8):
                          msg.sender,
                          sha3(this.address, msg.sender, stor0[msg.sender]),
                          arg1,
                          256,
                          floor32(arg2.length) + 320,
                          200000,
                          Mask(8, 248, stor6[msg.sender]),
                          stor7[msg.sender],
                          arg2.length,
                          mem[128],
                          mem[ceil32(arg2.length) + ceil32(arg3.length) + 480 len floor32(arg2.length) + 32],
                          Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256,
            else:
                mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 512] = mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 544 len arg3.length % 32]
                emit LogN(address arg1, bytes32 arg2, uint256 arg3, string arg4, bytes arg5, uint256 arg6, bytes1 arg7, uint256 arg8):
                          msg.sender,
                          sha3(this.address, msg.sender, stor0[msg.sender]),
                          arg1,
                          256,
                          floor32(arg2.length) + 320,
                          200000,
                          Mask(8, 248, stor6[msg.sender]),
                          stor7[msg.sender],
                          arg2.length,
                          mem[128],
                          mem[ceil32(arg2.length) + ceil32(arg3.length) + 480 len floor32(arg2.length) + 32],
                          Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                          mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + floor32(arg2.length) + 512 len floor32(arg3.length) + -ceil32(arg3.length) + 32],
    return sha3(this.address, msg.sender, stor0[msg.sender])
}

function sub_d636c790(?) payable {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = arg4.length
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 192 len arg4.length] = arg4[all]
    if stor2[address(msg.sender)]:
        if msg.value:
            if msg.value > 0:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if not sub_eaeae92c[msg.sender]:
                    revert with 0, 'Error settling query payment'
                require sub_13725147[stor14[msg.sender]] * basePrice
                require 0 / sub_13725147[stor14[msg.sender]] * basePrice > 0
                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, 0 / sub_13725147[stor14[msg.sender]] * basePrice
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
    else:
        if stor0[address(msg.sender)]:
            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192] = !(256^(-(arg2.length % 32) + 32) - 1) and call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] or 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192]
            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 192] = Mask(8, 248, stor6[address(msg.sender)])
            if stor7[address(msg.sender)]:
                if (stor7[address(msg.sender)] * arg5) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] != msg.value:
                    if msg.value > (stor7[address(msg.sender)] * arg5) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]:
                        call msg.sender with:
                           value msg.value - (stor7[address(msg.sender)] * arg5) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not sub_eaeae92c[msg.sender]:
                            revert with 0, 'Error settling query payment'
                        require sub_13725147[stor14[msg.sender]] * basePrice
                        require (10^18 * stor7[address(msg.sender)] * arg5) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                        require ext_code.size(sub_eaeae92c[address(msg.sender)])
                        call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, (10^18 * stor7[address(msg.sender)] * arg5) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
            else:
                if (stor5 * arg5) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] != msg.value:
                    if msg.value > (stor5 * arg5) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]:
                        call msg.sender with:
                           value msg.value - (stor5 * arg5) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not sub_eaeae92c[msg.sender]:
                            revert with 0, 'Error settling query payment'
                        require sub_13725147[stor14[msg.sender]] * basePrice
                        require (10^18 * stor5 * arg5) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                        require ext_code.size(sub_eaeae92c[address(msg.sender)])
                        call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, (10^18 * stor5 * arg5) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
        else:
            if arg5 > 200000:
                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192] = !(256^(-(arg2.length % 32) + 32) - 1) and call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] or 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192]
                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 192] = Mask(8, 248, stor6[address(msg.sender)])
                if stor7[address(msg.sender)]:
                    if (stor7[address(msg.sender)] * arg5) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] != msg.value:
                        if msg.value > (stor7[address(msg.sender)] * arg5) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]:
                            call msg.sender with:
                               value msg.value - (stor7[address(msg.sender)] * arg5) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require (10^18 * stor7[address(msg.sender)] * arg5) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, (10^18 * stor7[address(msg.sender)] * arg5) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    if (stor5 * arg5) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] != msg.value:
                        if msg.value > (stor5 * arg5) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]:
                            call msg.sender with:
                               value msg.value - (stor5 * arg5) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require (10^18 * stor5 * arg5) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, (10^18 * stor5 * arg5) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
            else:
                if stor7[address(msg.sender)] > stor5:
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192] = !(256^(-(arg2.length % 32) + 32) - 1) and call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] or 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192]
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 192] = Mask(8, 248, stor6[address(msg.sender)])
                    if stor7[address(msg.sender)]:
                        if (stor7[address(msg.sender)] * arg5) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] != msg.value:
                            if msg.value > (stor7[address(msg.sender)] * arg5) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]:
                                call msg.sender with:
                                   value msg.value - (stor7[address(msg.sender)] * arg5) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require (10^18 * stor7[address(msg.sender)] * arg5) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, (10^18 * stor7[address(msg.sender)] * arg5) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        if (stor5 * arg5) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] != msg.value:
                            if msg.value > (stor5 * arg5) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]:
                                call msg.sender with:
                                   value msg.value - (stor5 * arg5) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require (10^18 * stor5 * arg5) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, (10^18 * stor5 * arg5) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                else:
                    if not Mask(8, 248, sub_40292f55[tx.origin]):
                        if msg.value:
                            if msg.value > 0:
                                call msg.sender with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require 0 / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, 0 / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192] = !(256^(-(arg2.length % 32) + 32) - 1) and call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] or 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192]
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 192] = Mask(8, 248, stor6[address(msg.sender)])
                        if stor7[address(msg.sender)]:
                            if (stor7[address(msg.sender)] * arg5) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] != msg.value:
                                if msg.value > (stor7[address(msg.sender)] * arg5) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]:
                                    call msg.sender with:
                                       value msg.value - (stor7[address(msg.sender)] * arg5) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if not sub_eaeae92c[msg.sender]:
                                        revert with 0, 'Error settling query payment'
                                    require sub_13725147[stor14[msg.sender]] * basePrice
                                    require (10^18 * stor7[address(msg.sender)] * arg5) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                    require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                    call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, this.address, (10^18 * stor7[address(msg.sender)] * arg5) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                        else:
                            if (stor5 * arg5) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] != msg.value:
                                if msg.value > (stor5 * arg5) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]:
                                    call msg.sender with:
                                       value msg.value - (stor5 * arg5) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if not sub_eaeae92c[msg.sender]:
                                        revert with 0, 'Error settling query payment'
                                    require sub_13725147[stor14[msg.sender]] * basePrice
                                    require (10^18 * stor5 * arg5) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                    require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                    call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, this.address, (10^18 * stor5 * arg5) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
    stor0[msg.sender]++
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192] = msg.sender
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 512 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 512] = arg3.length
    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        mem[arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544] = arg4.length
        mem[arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
        if not arg4.length % 32:
            emit Log2(msg.sender, sha3(this.address, msg.sender, stor0[msg.sender]), arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 512 len arg4.length + arg3.length + arg2.length + -ceil32(arg2.length) + 64]), arg2.length + 320, arg3.length + arg2.length + 352, arg5, Mask(8, 248, stor6[msg.sender]), stor7[msg.sender]);
        else:
            mem[floor32(arg4.length) + arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = mem[floor32(arg4.length) + arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 608 len arg4.length % 32]
            emit Log2(msg.sender, sha3(this.address, msg.sender, stor0[msg.sender]), arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 512 len floor32(arg4.length) + arg3.length + arg2.length + -ceil32(arg2.length) + 96]), arg2.length + 320, arg3.length + arg2.length + 352, arg5, Mask(8, 248, stor6[msg.sender]), stor7[msg.sender]);
    else:
        mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 576 len arg3.length % 32]
        mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = arg4.length
        mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
        if not arg4.length % 32:
            emit Log2(msg.sender, sha3(this.address, msg.sender, stor0[msg.sender]), arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 512 len arg4.length + floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 96]), arg2.length + 320, floor32(arg3.length) + arg2.length + 384, arg5, Mask(8, 248, stor6[msg.sender]), stor7[msg.sender]);
        else:
            mem[floor32(arg4.length) + floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608] = mem[floor32(arg4.length) + floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 640 len arg4.length % 32]
            emit Log2(msg.sender, sha3(this.address, msg.sender, stor0[msg.sender]), arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 512 len floor32(arg4.length) + floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 128]), arg2.length + 320, floor32(arg3.length) + arg2.length + 384, arg5, Mask(8, 248, stor6[msg.sender]), stor7[msg.sender]);
    return sha3(this.address, msg.sender, stor0[msg.sender])
}

function query2(uint256 arg1, string arg2, string arg3, string arg4, uint256 arg5) payable {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = arg4.length
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 192 len arg4.length] = arg4[all]
    if stor2[address(msg.sender)]:
        if msg.value:
            if msg.value > 0:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if not sub_eaeae92c[msg.sender]:
                    revert with 0, 'Error settling query payment'
                require sub_13725147[stor14[msg.sender]] * basePrice
                require 0 / sub_13725147[stor14[msg.sender]] * basePrice > 0
                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, 0 / sub_13725147[stor14[msg.sender]] * basePrice
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
    else:
        if stor0[address(msg.sender)]:
            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192] = !(256^(-(arg2.length % 32) + 32) - 1) and call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] or 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192]
            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 192] = Mask(8, 248, stor6[address(msg.sender)])
            if stor7[address(msg.sender)]:
                if (stor7[address(msg.sender)] * arg5) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] != msg.value:
                    if msg.value > (stor7[address(msg.sender)] * arg5) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]:
                        call msg.sender with:
                           value msg.value - (stor7[address(msg.sender)] * arg5) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not sub_eaeae92c[msg.sender]:
                            revert with 0, 'Error settling query payment'
                        require sub_13725147[stor14[msg.sender]] * basePrice
                        require (10^18 * stor7[address(msg.sender)] * arg5) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                        require ext_code.size(sub_eaeae92c[address(msg.sender)])
                        call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, (10^18 * stor7[address(msg.sender)] * arg5) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
            else:
                if (stor5 * arg5) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] != msg.value:
                    if msg.value > (stor5 * arg5) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]:
                        call msg.sender with:
                           value msg.value - (stor5 * arg5) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not sub_eaeae92c[msg.sender]:
                            revert with 0, 'Error settling query payment'
                        require sub_13725147[stor14[msg.sender]] * basePrice
                        require (10^18 * stor5 * arg5) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                        require ext_code.size(sub_eaeae92c[address(msg.sender)])
                        call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, (10^18 * stor5 * arg5) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
        else:
            if arg5 > 200000:
                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192] = !(256^(-(arg2.length % 32) + 32) - 1) and call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] or 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192]
                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 192] = Mask(8, 248, stor6[address(msg.sender)])
                if stor7[address(msg.sender)]:
                    if (stor7[address(msg.sender)] * arg5) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] != msg.value:
                        if msg.value > (stor7[address(msg.sender)] * arg5) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]:
                            call msg.sender with:
                               value msg.value - (stor7[address(msg.sender)] * arg5) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require (10^18 * stor7[address(msg.sender)] * arg5) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, (10^18 * stor7[address(msg.sender)] * arg5) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    if (stor5 * arg5) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] != msg.value:
                        if msg.value > (stor5 * arg5) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]:
                            call msg.sender with:
                               value msg.value - (stor5 * arg5) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require (10^18 * stor5 * arg5) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, (10^18 * stor5 * arg5) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
            else:
                if stor7[address(msg.sender)] > stor5:
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192] = !(256^(-(arg2.length % 32) + 32) - 1) and call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] or 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192]
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 192] = Mask(8, 248, stor6[address(msg.sender)])
                    if stor7[address(msg.sender)]:
                        if (stor7[address(msg.sender)] * arg5) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] != msg.value:
                            if msg.value > (stor7[address(msg.sender)] * arg5) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]:
                                call msg.sender with:
                                   value msg.value - (stor7[address(msg.sender)] * arg5) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require (10^18 * stor7[address(msg.sender)] * arg5) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, (10^18 * stor7[address(msg.sender)] * arg5) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        if (stor5 * arg5) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] != msg.value:
                            if msg.value > (stor5 * arg5) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]:
                                call msg.sender with:
                                   value msg.value - (stor5 * arg5) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require (10^18 * stor5 * arg5) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, (10^18 * stor5 * arg5) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                else:
                    if not Mask(8, 248, sub_40292f55[tx.origin]):
                        if msg.value:
                            if msg.value > 0:
                                call msg.sender with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require 0 / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, 0 / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192] = !(256^(-(arg2.length % 32) + 32) - 1) and call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] or 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192]
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 192] = Mask(8, 248, stor6[address(msg.sender)])
                        if stor7[address(msg.sender)]:
                            if (stor7[address(msg.sender)] * arg5) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] != msg.value:
                                if msg.value > (stor7[address(msg.sender)] * arg5) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]:
                                    call msg.sender with:
                                       value msg.value - (stor7[address(msg.sender)] * arg5) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if not sub_eaeae92c[msg.sender]:
                                        revert with 0, 'Error settling query payment'
                                    require sub_13725147[stor14[msg.sender]] * basePrice
                                    require (10^18 * stor7[address(msg.sender)] * arg5) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                    require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                    call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, this.address, (10^18 * stor7[address(msg.sender)] * arg5) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                        else:
                            if (stor5 * arg5) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] != msg.value:
                                if msg.value > (stor5 * arg5) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]:
                                    call msg.sender with:
                                       value msg.value - (stor5 * arg5) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if not sub_eaeae92c[msg.sender]:
                                        revert with 0, 'Error settling query payment'
                                    require sub_13725147[stor14[msg.sender]] * basePrice
                                    require (10^18 * stor5 * arg5) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                    require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                    call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, this.address, (10^18 * stor5 * arg5) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
    stor0[msg.sender]++
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192] = msg.sender
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 512 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 512] = arg3.length
    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        mem[arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544] = arg4.length
        mem[arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
        if not arg4.length % 32:
            emit Log2(msg.sender, sha3(this.address, msg.sender, stor0[msg.sender]), arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 512 len arg4.length + arg3.length + arg2.length + -ceil32(arg2.length) + 64]), arg2.length + 320, arg3.length + arg2.length + 352, arg5, Mask(8, 248, stor6[msg.sender]), stor7[msg.sender]);
        else:
            mem[floor32(arg4.length) + arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = mem[floor32(arg4.length) + arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 608 len arg4.length % 32]
            emit Log2(msg.sender, sha3(this.address, msg.sender, stor0[msg.sender]), arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 512 len floor32(arg4.length) + arg3.length + arg2.length + -ceil32(arg2.length) + 96]), arg2.length + 320, arg3.length + arg2.length + 352, arg5, Mask(8, 248, stor6[msg.sender]), stor7[msg.sender]);
    else:
        mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 576 len arg3.length % 32]
        mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = arg4.length
        mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
        if not arg4.length % 32:
            emit Log2(msg.sender, sha3(this.address, msg.sender, stor0[msg.sender]), arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 512 len arg4.length + floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 96]), arg2.length + 320, floor32(arg3.length) + arg2.length + 384, arg5, Mask(8, 248, stor6[msg.sender]), stor7[msg.sender]);
        else:
            mem[floor32(arg4.length) + floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608] = mem[floor32(arg4.length) + floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 640 len arg4.length % 32]
            emit Log2(msg.sender, sha3(this.address, msg.sender, stor0[msg.sender]), arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 512 len floor32(arg4.length) + floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 128]), arg2.length + 320, floor32(arg3.length) + arg2.length + 384, arg5, Mask(8, 248, stor6[msg.sender]), stor7[msg.sender]);
    return sha3(this.address, msg.sender, stor0[msg.sender])
}

function query2_withGasLimit(uint256 arg1, string arg2, string arg3, string arg4, uint256 arg5) payable {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = arg4.length
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 192 len arg4.length] = arg4[all]
    if stor2[address(msg.sender)]:
        if msg.value:
            if msg.value > 0:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if not sub_eaeae92c[msg.sender]:
                    revert with 0, 'Error settling query payment'
                require sub_13725147[stor14[msg.sender]] * basePrice
                require 0 / sub_13725147[stor14[msg.sender]] * basePrice > 0
                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, 0 / sub_13725147[stor14[msg.sender]] * basePrice
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
    else:
        if stor0[address(msg.sender)]:
            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192] = !(256^(-(arg2.length % 32) + 32) - 1) and call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] or 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192]
            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 192] = Mask(8, 248, stor6[address(msg.sender)])
            if stor7[address(msg.sender)]:
                if (stor7[address(msg.sender)] * arg5) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] != msg.value:
                    if msg.value > (stor7[address(msg.sender)] * arg5) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]:
                        call msg.sender with:
                           value msg.value - (stor7[address(msg.sender)] * arg5) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not sub_eaeae92c[msg.sender]:
                            revert with 0, 'Error settling query payment'
                        require sub_13725147[stor14[msg.sender]] * basePrice
                        require (10^18 * stor7[address(msg.sender)] * arg5) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                        require ext_code.size(sub_eaeae92c[address(msg.sender)])
                        call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, (10^18 * stor7[address(msg.sender)] * arg5) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
            else:
                if (stor5 * arg5) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] != msg.value:
                    if msg.value > (stor5 * arg5) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]:
                        call msg.sender with:
                           value msg.value - (stor5 * arg5) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not sub_eaeae92c[msg.sender]:
                            revert with 0, 'Error settling query payment'
                        require sub_13725147[stor14[msg.sender]] * basePrice
                        require (10^18 * stor5 * arg5) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                        require ext_code.size(sub_eaeae92c[address(msg.sender)])
                        call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, (10^18 * stor5 * arg5) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
        else:
            if arg5 > 200000:
                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192] = !(256^(-(arg2.length % 32) + 32) - 1) and call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] or 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192]
                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 192] = Mask(8, 248, stor6[address(msg.sender)])
                if stor7[address(msg.sender)]:
                    if (stor7[address(msg.sender)] * arg5) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] != msg.value:
                        if msg.value > (stor7[address(msg.sender)] * arg5) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]:
                            call msg.sender with:
                               value msg.value - (stor7[address(msg.sender)] * arg5) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require (10^18 * stor7[address(msg.sender)] * arg5) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, (10^18 * stor7[address(msg.sender)] * arg5) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    if (stor5 * arg5) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] != msg.value:
                        if msg.value > (stor5 * arg5) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]:
                            call msg.sender with:
                               value msg.value - (stor5 * arg5) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require (10^18 * stor5 * arg5) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, (10^18 * stor5 * arg5) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
            else:
                if stor7[address(msg.sender)] > stor5:
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192] = !(256^(-(arg2.length % 32) + 32) - 1) and call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] or 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192]
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 192] = Mask(8, 248, stor6[address(msg.sender)])
                    if stor7[address(msg.sender)]:
                        if (stor7[address(msg.sender)] * arg5) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] != msg.value:
                            if msg.value > (stor7[address(msg.sender)] * arg5) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]:
                                call msg.sender with:
                                   value msg.value - (stor7[address(msg.sender)] * arg5) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require (10^18 * stor7[address(msg.sender)] * arg5) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, (10^18 * stor7[address(msg.sender)] * arg5) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        if (stor5 * arg5) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] != msg.value:
                            if msg.value > (stor5 * arg5) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]:
                                call msg.sender with:
                                   value msg.value - (stor5 * arg5) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require (10^18 * stor5 * arg5) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, (10^18 * stor5 * arg5) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                else:
                    if not Mask(8, 248, sub_40292f55[tx.origin]):
                        if msg.value:
                            if msg.value > 0:
                                call msg.sender with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require 0 / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, 0 / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192] = !(256^(-(arg2.length % 32) + 32) - 1) and call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] or 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192]
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 192] = Mask(8, 248, stor6[address(msg.sender)])
                        if stor7[address(msg.sender)]:
                            if (stor7[address(msg.sender)] * arg5) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] != msg.value:
                                if msg.value > (stor7[address(msg.sender)] * arg5) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]:
                                    call msg.sender with:
                                       value msg.value - (stor7[address(msg.sender)] * arg5) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if not sub_eaeae92c[msg.sender]:
                                        revert with 0, 'Error settling query payment'
                                    require sub_13725147[stor14[msg.sender]] * basePrice
                                    require (10^18 * stor7[address(msg.sender)] * arg5) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                    require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                    call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, this.address, (10^18 * stor7[address(msg.sender)] * arg5) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                        else:
                            if (stor5 * arg5) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] != msg.value:
                                if msg.value > (stor5 * arg5) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]:
                                    call msg.sender with:
                                       value msg.value - (stor5 * arg5) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if not sub_eaeae92c[msg.sender]:
                                        revert with 0, 'Error settling query payment'
                                    require sub_13725147[stor14[msg.sender]] * basePrice
                                    require (10^18 * stor5 * arg5) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                    require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                    call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, this.address, (10^18 * stor5 * arg5) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
    stor0[msg.sender]++
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192] = msg.sender
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 512 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 512] = arg3.length
    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        mem[arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544] = arg4.length
        mem[arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
        if not arg4.length % 32:
            emit Log2(msg.sender, sha3(this.address, msg.sender, stor0[msg.sender]), arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 512 len arg4.length + arg3.length + arg2.length + -ceil32(arg2.length) + 64]), arg2.length + 320, arg3.length + arg2.length + 352, arg5, Mask(8, 248, stor6[msg.sender]), stor7[msg.sender]);
        else:
            mem[floor32(arg4.length) + arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = mem[floor32(arg4.length) + arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 608 len arg4.length % 32]
            emit Log2(msg.sender, sha3(this.address, msg.sender, stor0[msg.sender]), arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 512 len floor32(arg4.length) + arg3.length + arg2.length + -ceil32(arg2.length) + 96]), arg2.length + 320, arg3.length + arg2.length + 352, arg5, Mask(8, 248, stor6[msg.sender]), stor7[msg.sender]);
    else:
        mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 576 len arg3.length % 32]
        mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = arg4.length
        mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
        if not arg4.length % 32:
            emit Log2(msg.sender, sha3(this.address, msg.sender, stor0[msg.sender]), arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 512 len arg4.length + floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 96]), arg2.length + 320, floor32(arg3.length) + arg2.length + 384, arg5, Mask(8, 248, stor6[msg.sender]), stor7[msg.sender]);
        else:
            mem[floor32(arg4.length) + floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608] = mem[floor32(arg4.length) + floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 640 len arg4.length % 32]
            emit Log2(msg.sender, sha3(this.address, msg.sender, stor0[msg.sender]), arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 512 len floor32(arg4.length) + floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 128]), arg2.length + 320, floor32(arg3.length) + arg2.length + 384, arg5, Mask(8, 248, stor6[msg.sender]), stor7[msg.sender]);
    return sha3(this.address, msg.sender, stor0[msg.sender])
}

function query2(string arg1, string arg2, string arg3) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = arg3.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len arg3.length] = arg3[all]
    if stor2[address(msg.sender)]:
        if msg.value:
            if msg.value > 0:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if not sub_eaeae92c[msg.sender]:
                    revert with 0, 'Error settling query payment'
                require sub_13725147[stor14[msg.sender]] * basePrice
                require 0 / sub_13725147[stor14[msg.sender]] * basePrice > 0
                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, 0 / sub_13725147[stor14[msg.sender]] * basePrice
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
    else:
        if stor0[address(msg.sender)]:
            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192] = !(256^(-(arg1.length % 32) + 32) - 1) and call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] or 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 192] = Mask(8, 248, stor6[address(msg.sender)])
            if stor7[address(msg.sender)]:
                if (200000 * stor7[address(msg.sender)]) + price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 1]] != msg.value:
                    if msg.value > (200000 * stor7[address(msg.sender)]) + price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 1]]:
                        call msg.sender with:
                           value msg.value - (200000 * stor7[address(msg.sender)]) - price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 1]] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not sub_eaeae92c[msg.sender]:
                            revert with 0, 'Error settling query payment'
                        require sub_13725147[stor14[msg.sender]] * basePrice
                        require (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                        require ext_code.size(sub_eaeae92c[address(msg.sender)])
                        call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
            else:
                if (200000 * stor5) + price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 1]] != msg.value:
                    if msg.value > (200000 * stor5) + price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 1]]:
                        call msg.sender with:
                           value msg.value - (200000 * stor5) - price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 1]] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not sub_eaeae92c[msg.sender]:
                            revert with 0, 'Error settling query payment'
                        require sub_13725147[stor14[msg.sender]] * basePrice
                        require (200000 * 10^18 * stor5) + (10^18 * price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                        require ext_code.size(sub_eaeae92c[address(msg.sender)])
                        call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, (200000 * 10^18 * stor5) + (10^18 * price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
        else:
            if stor7[address(msg.sender)] > stor5:
                mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192] = !(256^(-(arg1.length % 32) + 32) - 1) and call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] or 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192]
                mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 192] = Mask(8, 248, stor6[address(msg.sender)])
                if stor7[address(msg.sender)]:
                    if (200000 * stor7[address(msg.sender)]) + price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 1]] != msg.value:
                        if msg.value > (200000 * stor7[address(msg.sender)]) + price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 1]]:
                            call msg.sender with:
                               value msg.value - (200000 * stor7[address(msg.sender)]) - price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 1]] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    if (200000 * stor5) + price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 1]] != msg.value:
                        if msg.value > (200000 * stor5) + price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 1]]:
                            call msg.sender with:
                               value msg.value - (200000 * stor5) - price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 1]] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require (200000 * 10^18 * stor5) + (10^18 * price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, (200000 * 10^18 * stor5) + (10^18 * price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
            else:
                if not Mask(8, 248, sub_40292f55[tx.origin]):
                    if msg.value:
                        if msg.value > 0:
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require 0 / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, 0 / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192] = !(256^(-(arg1.length % 32) + 32) - 1) and call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] or 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192]
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 192] = Mask(8, 248, stor6[address(msg.sender)])
                    if stor7[address(msg.sender)]:
                        if (200000 * stor7[address(msg.sender)]) + price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 1]] != msg.value:
                            if msg.value > (200000 * stor7[address(msg.sender)]) + price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 1]]:
                                call msg.sender with:
                                   value msg.value - (200000 * stor7[address(msg.sender)]) - price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 1]] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        if (200000 * stor5) + price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 1]] != msg.value:
                            if msg.value > (200000 * stor5) + price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 1]]:
                                call msg.sender with:
                                   value msg.value - (200000 * stor5) - price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 1]] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require (200000 * 10^18 * stor5) + (10^18 * price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, (200000 * 10^18 * stor5) + (10^18 * price[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
    stor0[msg.sender]++
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192] = msg.sender
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 512 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 512] = arg2.length
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 544 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            mem[arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 544] = arg3.length
            mem[arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg3.length + 192 len ceil32(arg3.length) - arg3.length]
            if not arg3.length % 32:
                emit Log2(address arg1, bytes32 arg2, uint256 arg3, string arg4, string arg5, string arg6, uint256 arg7, bytes1 arg8, uint256 arg9):
                          msg.sender,
                          sha3(this.address, msg.sender, stor0[msg.sender]),
                          0,
                          288,
                          arg1.length + 320,
                          arg2.length + arg1.length + 352,
                          200000,
                          Mask(8, 248, stor6[msg.sender]),
                          stor7[msg.sender],
                          arg1.length,
                          Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                          mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + ceil32(arg3.length) + 512 len arg3.length + arg2.length + arg1.length + -ceil32(arg1.length) + 64],
            else:
                mem[floor32(arg3.length) + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576] = mem[floor32(arg3.length) + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 608 len arg3.length % 32]
                emit Log2(address arg1, bytes32 arg2, uint256 arg3, string arg4, string arg5, string arg6, uint256 arg7, bytes1 arg8, uint256 arg9):
                          msg.sender,
                          sha3(this.address, msg.sender, stor0[msg.sender]),
                          0,
                          288,
                          arg1.length + 320,
                          arg2.length + arg1.length + 352,
                          200000,
                          Mask(8, 248, stor6[msg.sender]),
                          stor7[msg.sender],
                          arg1.length,
                          Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                          mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + ceil32(arg3.length) + 512 len floor32(arg3.length) + arg2.length + arg1.length + -ceil32(arg1.length) + 96],
        else:
            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 544] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 576 len arg2.length % 32]
            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576] = arg3.length
            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 608 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg3.length + 192 len ceil32(arg3.length) - arg3.length]
            if not arg3.length % 32:
                emit Log2(address arg1, bytes32 arg2, uint256 arg3, string arg4, string arg5, string arg6, uint256 arg7, bytes1 arg8, uint256 arg9):
                          msg.sender,
                          sha3(this.address, msg.sender, stor0[msg.sender]),
                          0,
                          288,
                          arg1.length + 320,
                          floor32(arg2.length) + arg1.length + 384,
                          200000,
                          Mask(8, 248, stor6[msg.sender]),
                          stor7[msg.sender],
                          arg1.length,
                          Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                          mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + ceil32(arg3.length) + 512 len arg3.length + floor32(arg2.length) + arg1.length + -ceil32(arg1.length) + 96],
            else:
                mem[floor32(arg3.length) + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 608] = mem[floor32(arg3.length) + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 640 len arg3.length % 32]
                emit Log2(address arg1, bytes32 arg2, uint256 arg3, string arg4, string arg5, string arg6, uint256 arg7, bytes1 arg8, uint256 arg9):
                          msg.sender,
                          sha3(this.address, msg.sender, stor0[msg.sender]),
                          0,
                          288,
                          arg1.length + 320,
                          floor32(arg2.length) + arg1.length + 384,
                          200000,
                          Mask(8, 248, stor6[msg.sender]),
                          stor7[msg.sender],
                          arg1.length,
                          Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                          mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + ceil32(arg3.length) + 512 len floor32(arg3.length) + floor32(arg2.length) + arg1.length + -ceil32(arg1.length) + 128],
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 512] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg1.length % 32) + 544 len arg1.length % 32]
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 544] = arg2.length
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            mem[arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576] = arg3.length
            mem[arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 608 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg3.length + 192 len ceil32(arg3.length) - arg3.length]
            if not arg3.length % 32:
                emit Log2(address arg1, bytes32 arg2, uint256 arg3, string arg4, string arg5, string arg6, uint256 arg7, bytes1 arg8, uint256 arg9):
                          msg.sender,
                          sha3(this.address, msg.sender, stor0[msg.sender]),
                          0,
                          288,
                          floor32(arg1.length) + 352,
                          arg2.length + floor32(arg1.length) + 384,
                          200000,
                          Mask(8, 248, stor6[msg.sender]),
                          stor7[msg.sender],
                          arg1.length,
                          Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                          mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + ceil32(arg3.length) + 512 len arg3.length + arg2.length + floor32(arg1.length) + -ceil32(arg1.length) + 96],
            else:
                mem[floor32(arg3.length) + arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 608] = mem[floor32(arg3.length) + arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 640 len arg3.length % 32]
                emit Log2(address arg1, bytes32 arg2, uint256 arg3, string arg4, string arg5, string arg6, uint256 arg7, bytes1 arg8, uint256 arg9):
                          msg.sender,
                          sha3(this.address, msg.sender, stor0[msg.sender]),
                          0,
                          288,
                          floor32(arg1.length) + 352,
                          arg2.length + floor32(arg1.length) + 384,
                          200000,
                          Mask(8, 248, stor6[msg.sender]),
                          stor7[msg.sender],
                          arg1.length,
                          Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                          mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + ceil32(arg3.length) + 512 len floor32(arg3.length) + arg2.length + floor32(arg1.length) + -ceil32(arg1.length) + 128],
        else:
            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 608 len arg2.length % 32]
            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 608] = arg3.length
            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 640 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg3.length + 192 len ceil32(arg3.length) - arg3.length]
            if not arg3.length % 32:
                emit Log2(address arg1, bytes32 arg2, uint256 arg3, string arg4, string arg5, string arg6, uint256 arg7, bytes1 arg8, uint256 arg9):
                          msg.sender,
                          sha3(this.address, msg.sender, stor0[msg.sender]),
                          0,
                          288,
                          floor32(arg1.length) + 352,
                          floor32(arg2.length) + floor32(arg1.length) + 416,
                          200000,
                          Mask(8, 248, stor6[msg.sender]),
                          stor7[msg.sender],
                          arg1.length,
                          Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                          mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + ceil32(arg3.length) + 512 len arg3.length + floor32(arg2.length) + floor32(arg1.length) + -ceil32(arg1.length) + 128],
            else:
                mem[floor32(arg3.length) + floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 640] = mem[floor32(arg3.length) + floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 672 len arg3.length % 32]
                emit Log2(address arg1, bytes32 arg2, uint256 arg3, string arg4, string arg5, string arg6, uint256 arg7, bytes1 arg8, uint256 arg9):
                          msg.sender,
                          sha3(this.address, msg.sender, stor0[msg.sender]),
                          0,
                          288,
                          floor32(arg1.length) + 352,
                          floor32(arg2.length) + floor32(arg1.length) + 416,
                          200000,
                          Mask(8, 248, stor6[msg.sender]),
                          stor7[msg.sender],
                          arg1.length,
                          Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                          mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + ceil32(arg3.length) + 512 len floor32(arg3.length) + floor32(arg2.length) + floor32(arg1.length) + -ceil32(arg1.length) + 160],
    return sha3(this.address, msg.sender, stor0[msg.sender])
}

function query2(uint256 arg1, string arg2, string arg3, string arg4) payable {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = arg4.length
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 192 len arg4.length] = arg4[all]
    if stor2[address(msg.sender)]:
        if msg.value:
            if msg.value > 0:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if not sub_eaeae92c[msg.sender]:
                    revert with 0, 'Error settling query payment'
                require sub_13725147[stor14[msg.sender]] * basePrice
                require 0 / sub_13725147[stor14[msg.sender]] * basePrice > 0
                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, 0 / sub_13725147[stor14[msg.sender]] * basePrice
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
    else:
        if stor0[address(msg.sender)]:
            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192] = !(256^(-(arg2.length % 32) + 32) - 1) and call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] or 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192]
            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 192] = Mask(8, 248, stor6[address(msg.sender)])
            if stor7[address(msg.sender)]:
                if (200000 * stor7[address(msg.sender)]) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] != msg.value:
                    if msg.value > (200000 * stor7[address(msg.sender)]) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]:
                        call msg.sender with:
                           value msg.value - (200000 * stor7[address(msg.sender)]) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not sub_eaeae92c[msg.sender]:
                            revert with 0, 'Error settling query payment'
                        require sub_13725147[stor14[msg.sender]] * basePrice
                        require (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                        require ext_code.size(sub_eaeae92c[address(msg.sender)])
                        call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
            else:
                if (200000 * stor5) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] != msg.value:
                    if msg.value > (200000 * stor5) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]:
                        call msg.sender with:
                           value msg.value - (200000 * stor5) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not sub_eaeae92c[msg.sender]:
                            revert with 0, 'Error settling query payment'
                        require sub_13725147[stor14[msg.sender]] * basePrice
                        require (200000 * 10^18 * stor5) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                        require ext_code.size(sub_eaeae92c[address(msg.sender)])
                        call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, (200000 * 10^18 * stor5) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
        else:
            if stor7[address(msg.sender)] > stor5:
                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192] = !(256^(-(arg2.length % 32) + 32) - 1) and call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] or 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192]
                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 192] = Mask(8, 248, stor6[address(msg.sender)])
                if stor7[address(msg.sender)]:
                    if (200000 * stor7[address(msg.sender)]) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] != msg.value:
                        if msg.value > (200000 * stor7[address(msg.sender)]) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]:
                            call msg.sender with:
                               value msg.value - (200000 * stor7[address(msg.sender)]) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    if (200000 * stor5) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] != msg.value:
                        if msg.value > (200000 * stor5) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]:
                            call msg.sender with:
                               value msg.value - (200000 * stor5) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require (200000 * 10^18 * stor5) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, (200000 * 10^18 * stor5) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
            else:
                if not Mask(8, 248, sub_40292f55[tx.origin]):
                    if msg.value:
                        if msg.value > 0:
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_eaeae92c[msg.sender]:
                                revert with 0, 'Error settling query payment'
                            require sub_13725147[stor14[msg.sender]] * basePrice
                            require 0 / sub_13725147[stor14[msg.sender]] * basePrice > 0
                            require ext_code.size(sub_eaeae92c[address(msg.sender)])
                            call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, 0 / sub_13725147[stor14[msg.sender]] * basePrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192] = !(256^(-(arg2.length % 32) + 32) - 1) and call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] or 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192]
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg2.length + 192] = Mask(8, 248, stor6[address(msg.sender)])
                    if stor7[address(msg.sender)]:
                        if (200000 * stor7[address(msg.sender)]) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] != msg.value:
                            if msg.value > (200000 * stor7[address(msg.sender)]) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]:
                                call msg.sender with:
                                   value msg.value - (200000 * stor7[address(msg.sender)]) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, (200000 * 10^18 * stor7[address(msg.sender)]) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        if (200000 * stor5) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] != msg.value:
                            if msg.value > (200000 * stor5) + price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]:
                                call msg.sender with:
                                   value msg.value - (200000 * stor5) - price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_eaeae92c[msg.sender]:
                                    revert with 0, 'Error settling query payment'
                                require sub_13725147[stor14[msg.sender]] * basePrice
                                require (200000 * 10^18 * stor5) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice > 0
                                require ext_code.size(sub_eaeae92c[address(msg.sender)])
                                call sub_eaeae92c[address(msg.sender)].0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, (200000 * 10^18 * stor5) + (10^18 * price[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 1]]) / sub_13725147[stor14[msg.sender]] * basePrice
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
    stor0[msg.sender]++
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192] = msg.sender
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 512 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 512] = arg3.length
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            mem[arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544] = arg4.length
            mem[arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
            if not arg4.length % 32:
                emit Log2(address arg1, bytes32 arg2, uint256 arg3, string arg4, string arg5, string arg6, uint256 arg7, bytes1 arg8, uint256 arg9):
                          msg.sender,
                          sha3(this.address, msg.sender, stor0[msg.sender]),
                          arg1,
                          288,
                          arg2.length + 320,
                          arg3.length + arg2.length + 352,
                          200000,
                          Mask(8, 248, stor6[msg.sender]),
                          stor7[msg.sender],
                          arg2.length,
                          Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                          mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 512 len arg4.length + arg3.length + arg2.length + -ceil32(arg2.length) + 64],
            else:
                mem[floor32(arg4.length) + arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = mem[floor32(arg4.length) + arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 608 len arg4.length % 32]
                emit Log2(address arg1, bytes32 arg2, uint256 arg3, string arg4, string arg5, string arg6, uint256 arg7, bytes1 arg8, uint256 arg9):
                          msg.sender,
                          sha3(this.address, msg.sender, stor0[msg.sender]),
                          arg1,
                          288,
                          arg2.length + 320,
                          arg3.length + arg2.length + 352,
                          200000,
                          Mask(8, 248, stor6[msg.sender]),
                          stor7[msg.sender],
                          arg2.length,
                          Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                          mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 512 len floor32(arg4.length) + arg3.length + arg2.length + -ceil32(arg2.length) + 96],
        else:
            mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 576 len arg3.length % 32]
            mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = arg4.length
            mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
            if not arg4.length % 32:
                emit Log2(address arg1, bytes32 arg2, uint256 arg3, string arg4, string arg5, string arg6, uint256 arg7, bytes1 arg8, uint256 arg9):
                          msg.sender,
                          sha3(this.address, msg.sender, stor0[msg.sender]),
                          arg1,
                          288,
                          arg2.length + 320,
                          floor32(arg3.length) + arg2.length + 384,
                          200000,
                          Mask(8, 248, stor6[msg.sender]),
                          stor7[msg.sender],
                          arg2.length,
                          Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                          mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 512 len arg4.length + floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 96],
            else:
                mem[floor32(arg4.length) + floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608] = mem[floor32(arg4.length) + floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 640 len arg4.length % 32]
                emit Log2(address arg1, bytes32 arg2, uint256 arg3, string arg4, string arg5, string arg6, uint256 arg7, bytes1 arg8, uint256 arg9):
                          msg.sender,
                          sha3(this.address, msg.sender, stor0[msg.sender]),
                          arg1,
                          288,
                          arg2.length + 320,
                          floor32(arg3.length) + arg2.length + 384,
                          200000,
                          Mask(8, 248, stor6[msg.sender]),
                          stor7[msg.sender],
                          arg2.length,
                          Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                          mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 512 len floor32(arg4.length) + floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 128],
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 512] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg2.length % 32) + 544 len arg2.length % 32]
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 544] = arg3.length
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            mem[arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = arg4.length
            mem[arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
            if not arg4.length % 32:
                emit Log2(address arg1, bytes32 arg2, uint256 arg3, string arg4, string arg5, string arg6, uint256 arg7, bytes1 arg8, uint256 arg9):
                          msg.sender,
                          sha3(this.address, msg.sender, stor0[msg.sender]),
                          arg1,
                          288,
                          floor32(arg2.length) + 352,
                          arg3.length + floor32(arg2.length) + 384,
                          200000,
                          Mask(8, 248, stor6[msg.sender]),
                          stor7[msg.sender],
                          arg2.length,
                          Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                          mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 512 len arg4.length + arg3.length + floor32(arg2.length) + -ceil32(arg2.length) + 96],
            else:
                mem[floor32(arg4.length) + arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608] = mem[floor32(arg4.length) + arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 640 len arg4.length % 32]
                emit Log2(address arg1, bytes32 arg2, uint256 arg3, string arg4, string arg5, string arg6, uint256 arg7, bytes1 arg8, uint256 arg9):
                          msg.sender,
                          sha3(this.address, msg.sender, stor0[msg.sender]),
                          arg1,
                          288,
                          floor32(arg2.length) + 352,
                          arg3.length + floor32(arg2.length) + 384,
                          200000,
                          Mask(8, 248, stor6[msg.sender]),
                          stor7[msg.sender],
                          arg2.length,
                          Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                          mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 512 len floor32(arg4.length) + arg3.length + floor32(arg2.length) + -ceil32(arg2.length) + 128],
        else:
            mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 608 len arg3.length % 32]
            mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608] = arg4.length
            mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 640 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
            if not arg4.length % 32:
                emit Log2(address arg1, bytes32 arg2, uint256 arg3, string arg4, string arg5, string arg6, uint256 arg7, bytes1 arg8, uint256 arg9):
                          msg.sender,
                          sha3(this.address, msg.sender, stor0[msg.sender]),
                          arg1,
                          288,
                          floor32(arg2.length) + 352,
                          floor32(arg3.length) + floor32(arg2.length) + 416,
                          200000,
                          Mask(8, 248, stor6[msg.sender]),
                          stor7[msg.sender],
                          arg2.length,
                          Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                          mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 512 len arg4.length + floor32(arg3.length) + floor32(arg2.length) + -ceil32(arg2.length) + 128],
            else:
                mem[floor32(arg4.length) + floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 640] = mem[floor32(arg4.length) + floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 672 len arg4.length % 32]
                emit Log2(address arg1, bytes32 arg2, uint256 arg3, string arg4, string arg5, string arg6, uint256 arg7, bytes1 arg8, uint256 arg9):
                          msg.sender,
                          sha3(this.address, msg.sender, stor0[msg.sender]),
                          arg1,
                          288,
                          floor32(arg2.length) + 352,
                          floor32(arg3.length) + floor32(arg2.length) + 416,
                          200000,
                          Mask(8, 248, stor6[msg.sender]),
                          stor7[msg.sender],
                          arg2.length,
                          Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                          mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 512 len floor32(arg4.length) + floor32(arg3.length) + floor32(arg2.length) + -ceil32(arg2.length) + 160],
    return sha3(this.address, msg.sender, stor0[msg.sender])
}



}

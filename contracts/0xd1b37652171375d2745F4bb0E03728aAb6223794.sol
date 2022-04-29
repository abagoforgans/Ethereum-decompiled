contract main {


// =======================  Init code  ======================


address stor0;
uint8 stor1; offset 160
uint32 stor1; offset 168
address stor1;
array of uint256 stor3;
uint256 stor4;
address stor5;
uint256 stor6;

function _fallback() {
    stor0 = code.data[10352 len 20]
    address(stor1.field_0) = msg.sender
    uint8(stor1.field_160) = 1
    stor1.field_168 % 16777216 = 0
    stor3.length++
    if not stor3.length <= stor3.length + 1:
        idx = stor3.length + 1
        while stor3.length > idx:
            stor3[idx] = 0
            idx = idx + 1
            continue 
    stor3[stor3.length] = 0
    stor4 = 10^15
    stor6 = 1000
    create contract with 0 wei
                    code: code.data[9776 len 564], this.address
    require create.new_address
    stor5 = address(create.new_address)
    return code.data[437 len 9339]
}



// =====================  Runtime code  =====================


#
#  - receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4)
#
address sub_3951d06bAddress;
uint8 stor1; offset 192
uint32 sub_5f5d0655; offset 160
uint64 stor1; offset 192
address owner;
mapping of struct sub_5c3377a7;
array of uint256 sub_558eec3e;
uint256 stor4;
address stor5;
uint256 sub_66529e3f;

function frozen() {
    return bool(uint8(stor1.field_192))
}

function sub_3951d06b(?) {
    return sub_3951d06bAddress
}

function sub_558eec3e(?) {
    require arg1 < sub_558eec3e.length
    return sub_558eec3e[arg1]
}

function sub_5c3377a7(?) {
    return sub_5c3377a7[arg1 << 224].field_32
}

function sub_5f5d0655(?) {
    return sub_5f5d0655
}

function sub_66529e3f(?) {
    return sub_66529e3f
}

function offers(uint256 arg1) {
    return sub_5c3377a7[arg1].field_0, 
           sub_5c3377a7[arg1].field_0,
           sub_5c3377a7[arg1].field_0,
           sub_5c3377a7[arg1].field_0,
           sub_5c3377a7[arg1].field_96,
           sub_5c3377a7[arg1].field_0,
           sub_5c3377a7[arg1].field_0,
           sub_5c3377a7[arg1].field_0,
           sub_5c3377a7[arg1].field_256
}

function owner() {
    return owner
}

function sub_bec02acc(?) {
    return sub_558eec3e.length
}

function _fallback() payable {
    require owner == msg.sender
}

function sub_2290a3bb(?) {
    require owner == msg.sender
    stor4 = arg1
}

function sub_9a1f2a57(?) {
    require owner == msg.sender
    stor5 = arg1
}

function sub_0ba50baa(?) {
    require owner == msg.sender
    sub_66529e3f = arg1
}

function sub_fae034fa(?) {
    require owner == msg.sender
    sub_3951d06bAddress = arg1
}

function freeze(bool arg1) {
    require owner == msg.sender
    uint64(stor1.field_192) = uint64(arg1)
}

function setFrozen(bool arg1) {
    require owner == msg.sender
    uint64(stor1.field_192) = uint64(arg1)
}

function withdrawEther(uint256 arg1) {
    require owner == msg.sender
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_1a371932(?) {
    require ext_code.size(stor5)
    call stor5.0x740410dc with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_d04e62d4(?) {
    mem[96] = 0
    mem[128] = sub_558eec3e.length
    mem[64] = (32 * sub_558eec3e.length) + 160
    idx = 0
    while uint32(idx) < sub_558eec3e.length - 1:
        mem[0] = uint32(idx)
        mem[32] = 2
        require uint32(idx) < mem[128]
        mem[(32 * uint32(idx)) + 160] = sub_5c3377a7[idx << 224].field_32
        idx = idx + 1
        continue 
    mem[(32 * sub_558eec3e.length) + 160] = 32
    mem[(32 * sub_558eec3e.length) + 192] = mem[128]
    idx = 0
    s = 160
    t = mem[64] + 64
    while idx < mem[128]:
        mem[t] = mem[s + 28 len 4]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (32 * sub_558eec3e.length) + (32 * mem[128]) + -mem[64] + 224
}

function cancelOffer(uint256 arg1) {
    if owner != msg.sender:
        require sub_5c3377a7[arg1].field_256 == msg.sender
    require sub_5c3377a7[arg1].field_16
    require ext_code.size(sub_3951d06bAddress)
    call sub_3951d06bAddress.0xe1a52306 with:
         gas gas_remaining - 710 wei
        args sub_5c3377a7[arg1].field_16
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining - 710 wei
        args sub_5c3377a7[arg1].field_256, uint32(sub_5c3377a7[arg1].field_96 * sub_5c3377a7[arg1].field_64)
    require ext_call.success
    sub_5c3377a7[arg1].field_96 = 0
    sub_5c3377a7[arg1].field_128 = 0
    require sub_558eec3e.length - 1 < sub_558eec3e.length
    require sub_5c3377a7[arg1].field_128 < sub_558eec3e.length
    sub_558eec3e[stor2[arg1].field_128] = sub_558eec3e[sub_558eec3e.length]
    sub_558eec3e.length--
    if not sub_558eec3e.length <= sub_558eec3e.length - 1:
        idx = sub_558eec3e.length - 1
        while sub_558eec3e.length > idx:
            sub_558eec3e[idx] = 0
            idx = idx + 1
            continue 
    if sub_5c3377a7[arg1].field_128 != sub_558eec3e.length:
        require sub_5c3377a7[arg1].field_128 < sub_558eec3e.length
        sub_5c3377a7[stor3[sub_5c3377a7[arg1].field_128]].field_128 = sub_5c3377a7[arg1].field_128
    emit 0xb0478e49: arg1
    if eth.balance(msg.sender) < stor4:
        call msg.sender with:
           value stor4 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function sub_5dffa81e(?) {
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    mem[352] = 0
    mem[64] = 672
    mem[384] = 0
    mem[416] = 0
    mem[448] = 0
    mem[480] = 0
    mem[512] = 0
    mem[544] = 0
    mem[576] = 0
    mem[608] = 0
    mem[640] = 0
    s = 384
    idx = 1
    s = 96
    while idx < sub_558eec3e.length:
        mem[0] = sub_558eec3e[idx]
        mem[32] = 2
        _25 = mem[64]
        mem[64] = mem[64] + 288
        mem[_25] = sub_5c3377a7[stor3[idx]].field_0
        mem[_25 + 32] = sub_5c3377a7[stor3[idx]].field_16
        mem[_25 + 64] = sub_5c3377a7[stor3[idx]].field_32
        mem[_25 + 96] = sub_5c3377a7[stor3[idx]].field_64
        mem[_25 + 128] = sub_5c3377a7[stor3[idx]].field_96
        mem[_25 + 160] = sub_5c3377a7[stor3[idx]].field_128
        mem[_25 + 192] = sub_5c3377a7[stor3[idx]].field_160
        mem[_25 + 224] = sub_5c3377a7[stor3[idx]].field_192
        mem[_25 + 256] = sub_5c3377a7[stor3[idx]].field_256
        if sub_5c3377a7[stor3[idx]].field_16 != 1:
            s = _25
            idx = idx + 1
            s = s
            continue 
        require sub_5c3377a7[stor3[idx]].field_32
        require mem[s + 92 len 4]
        if uint32(mem[s + 124 len 4] / mem[s + 92 len 4]) >= uint32(sub_5c3377a7[stor3[idx]].field_0 / sub_5c3377a7[stor3[idx]].field_32):
            s = _25
            idx = idx + 1
            s = s
            continue 
        s = _25
        idx = idx + 1
        s = _25
        continue 
    mem[mem[64]] = mem[s + 30 len 2]
    mem[mem[64] + 32] = mem[s + 62 len 2]
    mem[mem[64] + 64] = mem[s + 92 len 4]
    mem[mem[64] + 96] = mem[s + 124 len 4]
    mem[mem[64] + 128] = mem[s + 156 len 4]
    mem[mem[64] + 160] = mem[s + 188 len 4]
    mem[mem[64] + 192] = mem[s + 220 len 4]
    mem[mem[64] + 224] = mem[s + 252 len 4]
    mem[mem[64] + 256] = mem[s + 268 len 20]
    return memory
      from mem[64]
       len 288
}

function sub_9f7eb464(?) {
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    mem[352] = 0
    mem[64] = 672
    mem[384] = 0
    mem[416] = 0
    mem[448] = 0
    mem[480] = 0
    mem[512] = 0
    mem[544] = 0
    mem[576] = 0
    mem[608] = 0
    mem[640] = 0
    s = 384
    idx = 1
    s = 96
    while idx < sub_558eec3e.length:
        mem[0] = sub_558eec3e[idx]
        mem[32] = 2
        _26 = mem[64]
        mem[64] = mem[64] + 288
        mem[_26] = sub_5c3377a7[stor3[idx]].field_0
        mem[_26 + 32] = sub_5c3377a7[stor3[idx]].field_16
        mem[_26 + 64] = sub_5c3377a7[stor3[idx]].field_32
        mem[_26 + 96] = sub_5c3377a7[stor3[idx]].field_64
        mem[_26 + 128] = sub_5c3377a7[stor3[idx]].field_96
        mem[_26 + 160] = sub_5c3377a7[stor3[idx]].field_128
        mem[_26 + 192] = sub_5c3377a7[stor3[idx]].field_160
        mem[_26 + 224] = sub_5c3377a7[stor3[idx]].field_192
        mem[_26 + 256] = sub_5c3377a7[stor3[idx]].field_256
        if mem[s + 92 len 4]:
            if sub_5c3377a7[stor3[idx]].field_16 != 1:
                s = _26
                idx = idx + 1
                s = s
                continue 
            require sub_5c3377a7[stor3[idx]].field_32
            require mem[s + 92 len 4]
            if uint32(mem[s + 124 len 4] / mem[s + 92 len 4]) <= uint32(sub_5c3377a7[stor3[idx]].field_0 / sub_5c3377a7[stor3[idx]].field_32):
                s = _26
                idx = idx + 1
                s = s
                continue 
        s = _26
        idx = idx + 1
        s = _26
        continue 
    mem[mem[64]] = mem[s + 30 len 2]
    mem[mem[64] + 32] = mem[s + 62 len 2]
    mem[mem[64] + 64] = mem[s + 92 len 4]
    mem[mem[64] + 96] = mem[s + 124 len 4]
    mem[mem[64] + 128] = mem[s + 156 len 4]
    mem[mem[64] + 160] = mem[s + 188 len 4]
    mem[mem[64] + 192] = mem[s + 220 len 4]
    mem[mem[64] + 224] = mem[s + 252 len 4]
    mem[mem[64] + 256] = mem[s + 268 len 20]
    return memory
      from mem[64]
       len 288
}

function getCurrentOffers() {
    mem[96] = 0
    mem[128] = sub_558eec3e.length - 1
    mem[64] = (32 * sub_558eec3e.length - 1) + 160
    if not sub_558eec3e.length - 1:
        idx = 1
        while idx < sub_558eec3e.length:
            mem[0] = sub_558eec3e[idx]
            mem[32] = 2
            _85 = mem[64]
            mem[64] = mem[64] + 288
            mem[_85] = sub_5c3377a7[stor3[idx]].field_0
            mem[_85 + 32] = sub_5c3377a7[stor3[idx]].field_16
            mem[_85 + 64] = sub_5c3377a7[stor3[idx]].field_32
            mem[_85 + 96] = sub_5c3377a7[stor3[idx]].field_64
            mem[_85 + 128] = sub_5c3377a7[stor3[idx]].field_96
            mem[_85 + 160] = sub_5c3377a7[stor3[idx]].field_128
            mem[_85 + 192] = sub_5c3377a7[stor3[idx]].field_160
            mem[_85 + 224] = sub_5c3377a7[stor3[idx]].field_192
            mem[_85 + 256] = sub_5c3377a7[stor3[idx]].field_256
            require idx - 1 < mem[128]
            mem[(32 * idx - 1) + 160] = _85
            idx = idx + 1
            continue 
        _82 = mem[64]
        mem[mem[64]] = 32
        _88 = mem[128]
        mem[mem[64] + 32] = mem[128]
        idx = 0
        s = 160
        t = mem[64] + 64
        while idx < _88:
            _148 = mem[s]
            mem[t] = mem[mem[s] + 30 len 2]
            mem[t + 32] = mem[_148 + 62 len 2]
            mem[t + 64] = mem[_148 + 92 len 4]
            mem[t + 96] = mem[_148 + 124 len 4]
            mem[t + 128] = mem[_148 + 156 len 4]
            mem[t + 160] = mem[_148 + 188 len 4]
            mem[t + 192] = mem[_148 + 220 len 4]
            mem[t + 224] = mem[_148 + 252 len 4]
            mem[t + 256] = mem[_148 + 268 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 288
            continue 
        return memory
          from mem[64]
           len _82 + (288 * _88) + -mem[64] + 64
    mem[64] = (32 * sub_558eec3e.length - 1) + 448
    mem[(32 * sub_558eec3e.length - 1) + 160] = 0
    mem[(32 * sub_558eec3e.length - 1) + 192] = 0
    mem[(32 * sub_558eec3e.length - 1) + 224] = 0
    mem[(32 * sub_558eec3e.length - 1) + 256] = 0
    mem[(32 * sub_558eec3e.length - 1) + 288] = 0
    mem[(32 * sub_558eec3e.length - 1) + 320] = 0
    mem[(32 * sub_558eec3e.length - 1) + 352] = 0
    mem[(32 * sub_558eec3e.length - 1) + 384] = 0
    mem[(32 * sub_558eec3e.length - 1) + 416] = 0
    mem[var12001] = (32 * sub_558eec3e.length - 1) + 160
    s = var12001
    idx = var12002
    while idx - 1:
        mem[64] = mem[64] + 288
        mem[(32 * sub_558eec3e.length - 1) + 160] = 0
        mem[(32 * sub_558eec3e.length - 1) + 192] = 0
        mem[(32 * sub_558eec3e.length - 1) + 224] = 0
        mem[(32 * sub_558eec3e.length - 1) + 256] = 0
        mem[(32 * sub_558eec3e.length - 1) + 288] = 0
        mem[(32 * sub_558eec3e.length - 1) + 320] = 0
        mem[(32 * sub_558eec3e.length - 1) + 352] = 0
        mem[(32 * sub_558eec3e.length - 1) + 384] = 0
        mem[(32 * sub_558eec3e.length - 1) + 416] = 0
        mem[s + 32] = (32 * sub_558eec3e.length - 1) + 160
        s = s + 32
        idx = idx - 1
        continue 
    idx = 1
    while idx < sub_558eec3e.length:
        mem[0] = sub_558eec3e[idx]
        mem[32] = 2
        _211 = mem[64]
        mem[64] = mem[64] + 288
        mem[_211] = sub_5c3377a7[stor3[idx]].field_0
        mem[_211 + 32] = sub_5c3377a7[stor3[idx]].field_16
        mem[_211 + 64] = sub_5c3377a7[stor3[idx]].field_32
        mem[_211 + 96] = sub_5c3377a7[stor3[idx]].field_64
        mem[_211 + 128] = sub_5c3377a7[stor3[idx]].field_96
        mem[_211 + 160] = sub_5c3377a7[stor3[idx]].field_128
        mem[_211 + 192] = sub_5c3377a7[stor3[idx]].field_160
        mem[_211 + 224] = sub_5c3377a7[stor3[idx]].field_192
        mem[_211 + 256] = sub_5c3377a7[stor3[idx]].field_256
        require idx - 1 < mem[128]
        mem[(32 * idx - 1) + 160] = _211
        idx = idx + 1
        continue 
    _208 = mem[64]
    mem[mem[64]] = 32
    _214 = mem[128]
    mem[mem[64] + 32] = mem[128]
    idx = 0
    s = 160
    t = mem[64] + 64
    while idx < _214:
        _238 = mem[s]
        mem[t] = mem[mem[s] + 30 len 2]
        mem[t + 32] = mem[_238 + 62 len 2]
        mem[t + 64] = mem[_238 + 92 len 4]
        mem[t + 96] = mem[_238 + 124 len 4]
        mem[t + 128] = mem[_238 + 156 len 4]
        mem[t + 160] = mem[_238 + 188 len 4]
        mem[t + 192] = mem[_238 + 220 len 4]
        mem[t + 224] = mem[_238 + 252 len 4]
        mem[t + 256] = mem[_238 + 268 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 288
        continue 
    return memory
      from mem[64]
       len _208 + (288 * _214) + -mem[64] + 64
}

function sub_24f47b9f(?) {
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    mem[352] = 0
    mem[384] = 0
    mem[416] = 0
    mem[448] = 0
    mem[480] = 0
    mem[512] = 0
    mem[544] = 0
    mem[576] = 0
    mem[608] = 0
    mem[640] = 0
    mem[672] = 0
    mem[736] = 0
    require ext_code.size(sub_3951d06bAddress)
    call sub_3951d06bAddress.getAssetCount() with:
         gas gas_remaining - 710 wei
    mem[704] = ext_call.return_data[0]
    require ext_call.success
    mem[768] = ext_call.return_data[0] + 1
    mem[64] = (32 * ext_call.return_data[0] + 1) + 800
    if not ext_call.return_data[0] + 1:
        s = 416
        s = 128
        idx = 1
        while idx < sub_558eec3e.length:
            mem[0] = sub_558eec3e[idx]
            mem[32] = 2
            _129 = mem[64]
            mem[64] = mem[64] + 288
            mem[_129] = sub_5c3377a7[stor3[idx]].field_0
            mem[_129 + 32] = sub_5c3377a7[stor3[idx]].field_16
            mem[_129 + 64] = sub_5c3377a7[stor3[idx]].field_32
            mem[_129 + 96] = sub_5c3377a7[stor3[idx]].field_64
            mem[_129 + 128] = sub_5c3377a7[stor3[idx]].field_96
            mem[_129 + 160] = sub_5c3377a7[stor3[idx]].field_128
            mem[_129 + 192] = sub_5c3377a7[stor3[idx]].field_160
            mem[_129 + 224] = sub_5c3377a7[stor3[idx]].field_192
            mem[_129 + 256] = sub_5c3377a7[stor3[idx]].field_256
            require sub_5c3377a7[stor3[idx]].field_16 < mem[768]
            _134 = mem[(32 * uint16(sub_5c3377a7[stor3[idx]].field_16)) + 800]
            if sub_5c3377a7[stor3[idx]].field_16 != 1:
                s = mem[(32 * uint16(sub_5c3377a7[stor3[idx]].field_16)) + 800]
                s = _129
                idx = idx + 1
                continue 
            require sub_5c3377a7[stor3[idx]].field_32
            require mem[mem[(32 * uint16(sub_5c3377a7[stor3[idx]].field_16)) + 800] + 92 len 4]
            if uint32(mem[mem[(32 * uint16(sub_5c3377a7[stor3[idx]].field_16)) + 800] + 124 len 4] / mem[mem[(32 * uint16(sub_5c3377a7[stor3[idx]].field_16)) + 800] + 92 len 4]) >= uint32(sub_5c3377a7[stor3[idx]].field_0 / sub_5c3377a7[stor3[idx]].field_0):
                s = mem[(32 * uint16(sub_5c3377a7[stor3[idx]].field_16)) + 800]
                s = _129
                idx = idx + 1
                continue 
            require sub_5c3377a7[stor3[idx]].field_16 < mem[768]
            mem[(32 * uint16(sub_5c3377a7[stor3[idx]].field_16)) + 800] = _129
            s = _134
            s = _129
            idx = idx + 1
            continue 
        _126 = mem[64]
        mem[mem[64]] = 32
        _143 = mem[768]
        mem[mem[64] + 32] = mem[768]
        idx = 0
        s = 800
        t = mem[64] + 64
        while idx < _143:
            _227 = mem[s]
            mem[t] = mem[mem[s] + 30 len 2]
            mem[t + 32] = mem[_227 + 62 len 2]
            mem[t + 64] = mem[_227 + 92 len 4]
            mem[t + 96] = mem[_227 + 124 len 4]
            mem[t + 128] = mem[_227 + 156 len 4]
            mem[t + 160] = mem[_227 + 188 len 4]
            mem[t + 192] = mem[_227 + 220 len 4]
            mem[t + 224] = mem[_227 + 252 len 4]
            mem[t + 256] = mem[_227 + 268 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 288
            continue 
        return memory
          from mem[64]
           len _126 + (288 * _143) + -mem[64] + 64
    mem[64] = (32 * ext_call.return_data[0] + 1) + 1088
    mem[(32 * ext_call.return_data[0] + 1) + 800] = 0
    mem[(32 * ext_call.return_data[0] + 1) + 832] = 0
    mem[(32 * ext_call.return_data[0] + 1) + 864] = 0
    mem[(32 * ext_call.return_data[0] + 1) + 896] = 0
    mem[(32 * ext_call.return_data[0] + 1) + 928] = 0
    mem[(32 * ext_call.return_data[0] + 1) + 960] = 0
    mem[(32 * ext_call.return_data[0] + 1) + 992] = 0
    mem[(32 * ext_call.return_data[0] + 1) + 1024] = 0
    mem[(32 * ext_call.return_data[0] + 1) + 1056] = 0
    mem[var18001] = (32 * ext_call.return_data[0] + 1) + 800
    s = var18001
    idx = var18002
    while idx - 1:
        mem[64] = mem[64] + 288
        mem[(32 * ext_call.return_data[0] + 1) + 800] = 0
        mem[(32 * ext_call.return_data[0] + 1) + 832] = 0
        mem[(32 * ext_call.return_data[0] + 1) + 864] = 0
        mem[(32 * ext_call.return_data[0] + 1) + 896] = 0
        mem[(32 * ext_call.return_data[0] + 1) + 928] = 0
        mem[(32 * ext_call.return_data[0] + 1) + 960] = 0
        mem[(32 * ext_call.return_data[0] + 1) + 992] = 0
        mem[(32 * ext_call.return_data[0] + 1) + 1024] = 0
        mem[(32 * ext_call.return_data[0] + 1) + 1056] = 0
        mem[s + 32] = (32 * ext_call.return_data[0] + 1) + 800
        s = s + 32
        idx = idx - 1
        continue 
    s = 416
    s = 128
    idx = 1
    while idx < sub_558eec3e.length:
        mem[0] = sub_558eec3e[idx]
        mem[32] = 2
        _309 = mem[64]
        mem[64] = mem[64] + 288
        mem[_309] = sub_5c3377a7[stor3[idx]].field_0
        mem[_309 + 32] = sub_5c3377a7[stor3[idx]].field_16
        mem[_309 + 64] = sub_5c3377a7[stor3[idx]].field_32
        mem[_309 + 96] = sub_5c3377a7[stor3[idx]].field_64
        mem[_309 + 128] = sub_5c3377a7[stor3[idx]].field_96
        mem[_309 + 160] = sub_5c3377a7[stor3[idx]].field_128
        mem[_309 + 192] = sub_5c3377a7[stor3[idx]].field_160
        mem[_309 + 224] = sub_5c3377a7[stor3[idx]].field_192
        mem[_309 + 256] = sub_5c3377a7[stor3[idx]].field_256
        require sub_5c3377a7[stor3[idx]].field_16 < mem[768]
        _314 = mem[(32 * uint16(sub_5c3377a7[stor3[idx]].field_16)) + 800]
        if sub_5c3377a7[stor3[idx]].field_16 != 1:
            s = mem[(32 * uint16(sub_5c3377a7[stor3[idx]].field_16)) + 800]
            s = _309
            idx = idx + 1
            continue 
        require sub_5c3377a7[stor3[idx]].field_32
        require mem[mem[(32 * uint16(sub_5c3377a7[stor3[idx]].field_16)) + 800] + 92 len 4]
        if uint32(mem[mem[(32 * uint16(sub_5c3377a7[stor3[idx]].field_16)) + 800] + 124 len 4] / mem[mem[(32 * uint16(sub_5c3377a7[stor3[idx]].field_16)) + 800] + 92 len 4]) >= uint32(sub_5c3377a7[stor3[idx]].field_0 / sub_5c3377a7[stor3[idx]].field_0):
            s = mem[(32 * uint16(sub_5c3377a7[stor3[idx]].field_16)) + 800]
            s = _309
            idx = idx + 1
            continue 
        require sub_5c3377a7[stor3[idx]].field_16 < mem[768]
        mem[(32 * uint16(sub_5c3377a7[stor3[idx]].field_16)) + 800] = _309
        s = _314
        s = _309
        idx = idx + 1
        continue 
    _306 = mem[64]
    mem[mem[64]] = 32
    _323 = mem[768]
    mem[mem[64] + 32] = mem[768]
    idx = 0
    s = 800
    t = mem[64] + 64
    while idx < _323:
        _353 = mem[s]
        mem[t] = mem[mem[s] + 30 len 2]
        mem[t + 32] = mem[_353 + 62 len 2]
        mem[t + 64] = mem[_353 + 92 len 4]
        mem[t + 96] = mem[_353 + 124 len 4]
        mem[t + 128] = mem[_353 + 156 len 4]
        mem[t + 160] = mem[_353 + 188 len 4]
        mem[t + 192] = mem[_353 + 220 len 4]
        mem[t + 224] = mem[_353 + 252 len 4]
        mem[t + 256] = mem[_353 + 268 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 288
        continue 
    return memory
      from mem[64]
       len _306 + (288 * _323) + -mem[64] + 64
}

function sub_38fc06d6(?) {
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    mem[352] = 0
    mem[384] = 0
    mem[416] = 0
    mem[448] = 0
    mem[480] = 0
    mem[512] = 0
    mem[544] = 0
    mem[576] = 0
    mem[608] = 0
    mem[640] = 0
    mem[672] = 0
    mem[736] = 0
    require ext_code.size(sub_3951d06bAddress)
    call sub_3951d06bAddress.getAssetCount() with:
         gas gas_remaining - 710 wei
    mem[704] = ext_call.return_data[0]
    require ext_call.success
    mem[768] = ext_call.return_data[0] + 1
    mem[64] = (32 * ext_call.return_data[0] + 1) + 800
    if not ext_call.return_data[0] + 1:
        s = 416
        s = 128
        idx = 1
        while idx < sub_558eec3e.length:
            mem[0] = sub_558eec3e[idx]
            mem[32] = 2
            _141 = mem[64]
            mem[64] = mem[64] + 288
            mem[_141] = sub_5c3377a7[stor3[idx]].field_0
            mem[_141 + 32] = sub_5c3377a7[stor3[idx]].field_16
            mem[_141 + 64] = sub_5c3377a7[stor3[idx]].field_32
            mem[_141 + 96] = sub_5c3377a7[stor3[idx]].field_64
            mem[_141 + 128] = sub_5c3377a7[stor3[idx]].field_96
            mem[_141 + 160] = sub_5c3377a7[stor3[idx]].field_128
            mem[_141 + 192] = sub_5c3377a7[stor3[idx]].field_160
            mem[_141 + 224] = sub_5c3377a7[stor3[idx]].field_192
            mem[_141 + 256] = sub_5c3377a7[stor3[idx]].field_256
            require sub_5c3377a7[stor3[idx]].field_16 < mem[768]
            _146 = mem[(32 * uint16(sub_5c3377a7[stor3[idx]].field_16)) + 800]
            if mem[mem[(32 * uint16(sub_5c3377a7[stor3[idx]].field_16)) + 800] + 92 len 4]:
                if sub_5c3377a7[stor3[idx]].field_0 != 1:
                    s = mem[(32 * uint16(sub_5c3377a7[stor3[idx]].field_16)) + 800]
                    s = _141
                    idx = idx + 1
                    continue 
                require sub_5c3377a7[stor3[idx]].field_64
                require mem[mem[(32 * uint16(sub_5c3377a7[stor3[idx]].field_16)) + 800] + 124 len 4]
                if uint32(mem[mem[(32 * uint16(sub_5c3377a7[stor3[idx]].field_16)) + 800] + 92 len 4] / mem[mem[(32 * uint16(sub_5c3377a7[stor3[idx]].field_16)) + 800] + 124 len 4]) <= uint32(sub_5c3377a7[stor3[idx]].field_0 / sub_5c3377a7[stor3[idx]].field_0):
                    s = mem[(32 * uint16(sub_5c3377a7[stor3[idx]].field_16)) + 800]
                    s = _141
                    idx = idx + 1
                    continue 
            require sub_5c3377a7[stor3[idx]].field_16 < mem[768]
            mem[(32 * uint16(sub_5c3377a7[stor3[idx]].field_16)) + 800] = _141
            s = _146
            s = _141
            idx = idx + 1
            continue 
        _138 = mem[64]
        mem[mem[64]] = 32
        _155 = mem[768]
        mem[mem[64] + 32] = mem[768]
        idx = 0
        s = 800
        t = mem[64] + 64
        while idx < _155:
            _251 = mem[s]
            mem[t] = mem[mem[s] + 30 len 2]
            mem[t + 32] = mem[_251 + 62 len 2]
            mem[t + 64] = mem[_251 + 92 len 4]
            mem[t + 96] = mem[_251 + 124 len 4]
            mem[t + 128] = mem[_251 + 156 len 4]
            mem[t + 160] = mem[_251 + 188 len 4]
            mem[t + 192] = mem[_251 + 220 len 4]
            mem[t + 224] = mem[_251 + 252 len 4]
            mem[t + 256] = mem[_251 + 268 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 288
            continue 
        return memory
          from mem[64]
           len _138 + (288 * _155) + -mem[64] + 64
    mem[64] = (32 * ext_call.return_data[0] + 1) + 1088
    mem[(32 * ext_call.return_data[0] + 1) + 800] = 0
    mem[(32 * ext_call.return_data[0] + 1) + 832] = 0
    mem[(32 * ext_call.return_data[0] + 1) + 864] = 0
    mem[(32 * ext_call.return_data[0] + 1) + 896] = 0
    mem[(32 * ext_call.return_data[0] + 1) + 928] = 0
    mem[(32 * ext_call.return_data[0] + 1) + 960] = 0
    mem[(32 * ext_call.return_data[0] + 1) + 992] = 0
    mem[(32 * ext_call.return_data[0] + 1) + 1024] = 0
    mem[(32 * ext_call.return_data[0] + 1) + 1056] = 0
    mem[var18001] = (32 * ext_call.return_data[0] + 1) + 800
    s = var18001
    idx = var18002
    while idx - 1:
        mem[64] = mem[64] + 288
        mem[(32 * ext_call.return_data[0] + 1) + 800] = 0
        mem[(32 * ext_call.return_data[0] + 1) + 832] = 0
        mem[(32 * ext_call.return_data[0] + 1) + 864] = 0
        mem[(32 * ext_call.return_data[0] + 1) + 896] = 0
        mem[(32 * ext_call.return_data[0] + 1) + 928] = 0
        mem[(32 * ext_call.return_data[0] + 1) + 960] = 0
        mem[(32 * ext_call.return_data[0] + 1) + 992] = 0
        mem[(32 * ext_call.return_data[0] + 1) + 1024] = 0
        mem[(32 * ext_call.return_data[0] + 1) + 1056] = 0
        mem[s + 32] = (32 * ext_call.return_data[0] + 1) + 800
        s = s + 32
        idx = idx - 1
        continue 
    s = 416
    s = 128
    idx = 1
    while idx < sub_558eec3e.length:
        mem[0] = sub_558eec3e[idx]
        mem[32] = 2
        _339 = mem[64]
        mem[64] = mem[64] + 288
        mem[_339] = sub_5c3377a7[stor3[idx]].field_0
        mem[_339 + 32] = sub_5c3377a7[stor3[idx]].field_16
        mem[_339 + 64] = sub_5c3377a7[stor3[idx]].field_32
        mem[_339 + 96] = sub_5c3377a7[stor3[idx]].field_64
        mem[_339 + 128] = sub_5c3377a7[stor3[idx]].field_96
        mem[_339 + 160] = sub_5c3377a7[stor3[idx]].field_128
        mem[_339 + 192] = sub_5c3377a7[stor3[idx]].field_160
        mem[_339 + 224] = sub_5c3377a7[stor3[idx]].field_192
        mem[_339 + 256] = sub_5c3377a7[stor3[idx]].field_256
        require sub_5c3377a7[stor3[idx]].field_16 < mem[768]
        _344 = mem[(32 * uint16(sub_5c3377a7[stor3[idx]].field_16)) + 800]
        if mem[mem[(32 * uint16(sub_5c3377a7[stor3[idx]].field_16)) + 800] + 92 len 4]:
            if sub_5c3377a7[stor3[idx]].field_0 != 1:
                s = mem[(32 * uint16(sub_5c3377a7[stor3[idx]].field_16)) + 800]
                s = _339
                idx = idx + 1
                continue 
            require sub_5c3377a7[stor3[idx]].field_64
            require mem[mem[(32 * uint16(sub_5c3377a7[stor3[idx]].field_16)) + 800] + 124 len 4]
            if uint32(mem[mem[(32 * uint16(sub_5c3377a7[stor3[idx]].field_16)) + 800] + 92 len 4] / mem[mem[(32 * uint16(sub_5c3377a7[stor3[idx]].field_16)) + 800] + 124 len 4]) <= uint32(sub_5c3377a7[stor3[idx]].field_0 / sub_5c3377a7[stor3[idx]].field_0):
                s = mem[(32 * uint16(sub_5c3377a7[stor3[idx]].field_16)) + 800]
                s = _339
                idx = idx + 1
                continue 
        require sub_5c3377a7[stor3[idx]].field_16 < mem[768]
        mem[(32 * uint16(sub_5c3377a7[stor3[idx]].field_16)) + 800] = _339
        s = _344
        s = _339
        idx = idx + 1
        continue 
    _336 = mem[64]
    mem[mem[64]] = 32
    _353 = mem[768]
    mem[mem[64] + 32] = mem[768]
    idx = 0
    s = 800
    t = mem[64] + 64
    while idx < _353:
        _389 = mem[s]
        mem[t] = mem[mem[s] + 30 len 2]
        mem[t + 32] = mem[_389 + 62 len 2]
        mem[t + 64] = mem[_389 + 92 len 4]
        mem[t + 96] = mem[_389 + 124 len 4]
        mem[t + 128] = mem[_389 + 156 len 4]
        mem[t + 160] = mem[_389 + 188 len 4]
        mem[t + 192] = mem[_389 + 220 len 4]
        mem[t + 224] = mem[_389 + 252 len 4]
        mem[t + 256] = mem[_389 + 268 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 288
        continue 
    return memory
      from mem[64]
       len _336 + (288 * _353) + -mem[64] + 64
}



}

contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint8 stor1;
uint256 sub_ae6664e0;
mapping of uint8 stor3;
mapping of uint8 stor4;
address stor6;
array of struct stor7;
uint8 stor8;

function sub_24bbce96(?) {
    return bool(stor8)
}

function sub_ae6664e0(?) {
    return sub_ae6664e0
}

function isOwner() {
    return (msg.sender == stor0)
}

function _fallback() payable {
    require not calldata.size
}

function sub_d486885a(?) {
    require msg.sender == stor0
    stor8 = 1
}

function addPeer(address arg1) {
    require msg.sender == stor0
    require not stor8
    require not stor1[address(arg1)]
    stor1[address(arg1)] = 1
    sub_ae6664e0++
    return (sub_ae6664e0 + 1)
}

function sub_9f1a156c(?) {
    if not arg1:
        return 1
    idx = 0
    while idx < stor7.length:
        mem[0] = 7
        if stor7[idx].field_0 != arg1:
            idx = idx + 1
            continue 
        return 1
    return 0
}

function addToken(address arg1) {
    require msg.sender == stor0
    idx = 0
    while idx < stor7.length:
        mem[0] = 7
        require stor7[idx].field_0 != arg1
        idx = idx + 1
        continue 
    stor7.length++
    stor7[stor7.length].field_0 = arg1
}

function getTokens() {
    if not stor7.length:
        mem[(32 * stor7.length) + 128] = 32
        mem[(32 * stor7.length) + 160] = stor7.length
        mem[(32 * stor7.length) + 192 len floor32(stor7.length)] = mem[128 len floor32(stor7.length)]
        return memory
          from (32 * stor7.length) + 128
           len (96 * stor7.length) + 64
    mem[128] = address(stor7.field_0)
    idx = 128
    s = 0
    while (32 * stor7.length) + 96 > idx:
        mem[idx + 32] = stor7[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor7.length) + 192 len floor32(stor7.length)] = mem[128 len floor32(stor7.length)]
    return Array(len=stor7.length, data=mem[128 len floor32(stor7.length)], mem[(32 * stor7.length) + floor32(stor7.length) + 192 len (32 * stor7.length) - floor32(stor7.length)]), 
}

function sub_eea29e3e(?) {
    mem[96] = arg5.length
    mem[128 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    mem[(32 * arg5.length) + 128] = arg6.length
    mem[(32 * arg5.length) + 160 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    mem[(32 * arg6.length) + (32 * arg5.length) + 160] = arg7.length
    mem[(32 * arg6.length) + (32 * arg5.length) + 192 len 32 * arg7.length] = call.data[arg7 + 36 len 32 * arg7.length]
    require stor8
    if not arg1:
        mem[(32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + 196] = arg8
        mem[(32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + 228] = arg3
        require ext_code.size(stor6)
        call stor6.0xa10cda99 with:
             gas gas_remaining wei
            args address(arg8), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require not stor3[arg4]
        require 1 <= sub_ae6664e0
        require arg5.length == arg6.length
        require arg6.length == arg7.length
        require sub_ae6664e0 - (sub_ae6664e0 - 1 / 3) <= arg7.length
        mem[0] = arg4
        mem[32] = 3
        stor3[arg4] = 1
        mem[(32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + 192] = arg7.length
        mem[64] = (64 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + 224
        if not arg7.length:
            idx = 0
            while idx < arg7.length:
                _269 = mem[64]
                mem[mem[64] + 32] = address(arg1)
                mem[mem[64] + 52] = arg2
                mem[mem[64] + 84] = address(arg3)
                mem[mem[64] + 104] = arg4
                mem[mem[64] + 136] = address(arg8)
                _270 = mem[64]
                mem[mem[64]] = 124
                mem[64] = mem[64] + 156
                _272 = mem[_270]
                t = _270 + 32
                u = mem[64]
                s = mem[_270]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[64] + floor32(mem[_270])] = mem[_270 + floor32(mem[_270]) + -(mem[_270] % 32) + 64 len mem[_270] % 32] or Mask(8 * -(mem[_270] % 32) + 32, -(8 * -(mem[_270] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_270])])
                _533 = sha3(mem[mem[64] len _272 + _269 + -mem[64] + 156])
                require idx < mem[96]
                _546 = mem[(32 * idx) + 128]
                require idx < mem[(32 * arg5.length) + 128]
                _569 = mem[(32 * idx) + (32 * arg5.length) + 160]
                require idx < mem[(32 * arg6.length) + (32 * arg5.length) + 160]
                _585 = mem[(32 * idx) + (32 * arg6.length) + (32 * arg5.length) + 192]
                _602 = mem[64]
                mem[mem[64] + 32] = '\x19Ethereum Signed Message:\n32'
                mem[mem[64] + 60] = _533
                _603 = mem[64]
                mem[mem[64]] = 60
                mem[64] = mem[64] + 92
                _605 = mem[_603]
                t = _603 + 32
                u = _602 + 92
                s = mem[_603]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_602 + floor32(mem[_603]) + 92] = 256^(-(mem[_603] % 32) + 32) - 1 and mem[_602 + floor32(mem[_603]) + 92] or mem[_603 + floor32(mem[_603]) + 32] and !(256^(-(mem[_603] % 32) + 32) - 1)
                _768 = sha3(mem[_602 + 92 len _605])
                mem[_602 + 92] = 0
                mem[64] = _602 + 124
                mem[_602 + 124] = _768
                mem[_602 + 156] = uint8(_546)
                mem[_602 + 188] = _569
                mem[_602 + 220] = _585
                signer = erecover(_768, _546 << 248, _569, _585) 
                mem[_602 + 92] = signer
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                require idx < mem[(32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + 192]
                mem[(32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + (32 * idx) + 224] = address(signer)
                require idx < mem[(32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + 192]
                mem[0] = address(signer)
                mem[32] = 1
                require 1 == bool(stor1[address(signer)])
                idx = idx + 1
                continue 
            idx = 0
            while idx < mem[(32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + 192]:
                require idx < mem[(32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + 192]
                if bool(stor4[mem[(32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + (32 * idx) + 236 len 20]]) != 1:
                    require idx < mem[(32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + 192]
                    mem[0] = mem[(32 * idx) + (32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + 236 len 20]
                    mem[32] = 4
                    stor4[mem[(32 * idx) + (32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + 236 len 20]] = 1
                    idx = idx + 1
                    continue 
                require var33002 < mem[(32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + 192]
                require var33002 < mem[(32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + 192]
                mem[0] = mem[(32 * var33002) + (32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + 236 len 20]
                mem[32] = 4
                stor4[mem[(32 * var33002) + (32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + 236 len 20]] = 0
                var33002 = var33002 + 1
                continue 
        else:
            mem[(32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + 224 len 32 * arg7.length] = code.data[3463 len 32 * arg7.length]
            idx = 0
            while idx < arg7.length:
                _273 = mem[64]
                mem[mem[64] + 32] = address(arg1)
                mem[mem[64] + 52] = arg2
                mem[mem[64] + 84] = address(arg3)
                mem[mem[64] + 104] = arg4
                mem[mem[64] + 136] = address(arg8)
                _274 = mem[64]
                mem[mem[64]] = 124
                mem[64] = mem[64] + 156
                _276 = mem[_274]
                t = _274 + 32
                u = _273 + 156
                s = mem[_274]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_273 + floor32(mem[_274]) + 156] = mem[_274 + -(mem[_274] % 32) + floor32(mem[_274]) + 64 len mem[_274] % 32] or Mask(8 * -(mem[_274] % 32) + 32, -(8 * -(mem[_274] % 32) + 32) + 256, mem[_273 + floor32(mem[_274]) + 156])
                _540 = sha3(mem[_273 + 156 len _276])
                require idx < mem[96]
                _551 = mem[(32 * idx) + 128]
                require idx < mem[(32 * arg5.length) + 128]
                _573 = mem[(32 * idx) + (32 * arg5.length) + 160]
                require idx < mem[(32 * arg6.length) + (32 * arg5.length) + 160]
                _590 = mem[(32 * idx) + (32 * arg6.length) + (32 * arg5.length) + 192]
                mem[_273 + 188] = '\x19Ethereum Signed Message:\n32'
                mem[_273 + 216] = _540
                mem[_273 + 156] = 60
                mem[64] = _273 + 248
                t = _273 + 188
                u = mem[64]
                s = mem[_273 + 156]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[64] + floor32(mem[_273 + 156])] = 256^(-(mem[_273 + 156] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_273 + 156])] or mem[_273 + floor32(mem[_273 + 156]) + 188] and !(256^(-(mem[_273 + 156] % 32) + 32) - 1)
                _775 = mem[64]
                _776 = sha3(mem[mem[64] len _273 + -mem[64] + 308])
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_775 + 32] = _776
                mem[_775 + 64] = uint8(_551)
                mem[_775 + 96] = _573
                mem[_775 + 128] = _590
                signer = erecover(_776, _551 << 248, _573, _590) 
                mem[_775] = signer
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                require idx < mem[(32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + 192]
                mem[(32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + (32 * idx) + 224] = address(signer)
                require idx < mem[(32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + 192]
                mem[0] = address(signer)
                mem[32] = 1
                require 1 == bool(stor1[address(signer)])
                idx = idx + 1
                continue 
            idx = 0
            while idx < mem[(32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + 192]:
                require idx < mem[(32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + 192]
                if bool(stor4[mem[(32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + (32 * idx) + 236 len 20]]) != 1:
                    require idx < mem[(32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + 192]
                    mem[0] = mem[(32 * idx) + (32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + 236 len 20]
                    mem[32] = 4
                    stor4[mem[(32 * idx) + (32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + 236 len 20]] = 1
                    idx = idx + 1
                    continue 
                require var34002 < mem[(32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + 192]
                require var34002 < mem[(32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + 192]
                mem[0] = mem[(32 * var34002) + (32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + 236 len 20]
                mem[32] = 4
                stor4[mem[(32 * var34002) + (32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + 236 len 20]] = 0
                var34002 = var34002 + 1
                continue 
    else:
        require 0 < stor7.length
        idx = 0
        while stor7[idx].field_0 != arg1:
            require idx + 1 < stor7.length
            mem[0] = 7
            idx = idx + 1
            continue 
        mem[(32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + 196] = arg8
        mem[(32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + 228] = arg3
        require ext_code.size(stor6)
        call stor6.0xa10cda99 with:
             gas gas_remaining wei
            args address(arg8), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require not stor3[arg4]
        require 1 <= sub_ae6664e0
        require arg5.length == arg6.length
        require arg6.length == arg7.length
        require sub_ae6664e0 - (sub_ae6664e0 - 1 / 3) <= arg7.length
        mem[0] = arg4
        mem[32] = 3
        stor3[arg4] = 1
        mem[(32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + 192] = arg7.length
        mem[64] = (64 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + 224
        if not arg7.length:
            idx = 0
            while idx < arg7.length:
                _521 = mem[64]
                mem[mem[64] + 32] = address(arg1)
                mem[mem[64] + 52] = arg2
                mem[mem[64] + 84] = address(arg3)
                mem[mem[64] + 104] = arg4
                mem[mem[64] + 136] = address(arg8)
                _522 = mem[64]
                mem[mem[64]] = 124
                mem[64] = mem[64] + 156
                _524 = mem[_522]
                t = _522 + 32
                u = mem[64]
                s = mem[_522]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[64] + floor32(mem[_522])] = mem[_522 + floor32(mem[_522]) + -(mem[_522] % 32) + 64 len mem[_522] % 32] or Mask(8 * -(mem[_522] % 32) + 32, -(8 * -(mem[_522] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_522])])
                _753 = sha3(mem[mem[64] len _524 + _521 + -mem[64] + 156])
                require idx < mem[96]
                _782 = mem[(32 * idx) + 128]
                require idx < mem[(32 * arg5.length) + 128]
                _803 = mem[(32 * idx) + (32 * arg5.length) + 160]
                require idx < mem[(32 * arg6.length) + (32 * arg5.length) + 160]
                _815 = mem[(32 * idx) + (32 * arg6.length) + (32 * arg5.length) + 192]
                _828 = mem[64]
                mem[mem[64] + 32] = '\x19Ethereum Signed Message:\n32'
                mem[mem[64] + 60] = _753
                _829 = mem[64]
                mem[mem[64]] = 60
                mem[64] = mem[64] + 92
                _831 = mem[_829]
                t = _829 + 32
                u = _828 + 92
                s = mem[_829]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_828 + floor32(mem[_829]) + 92] = 256^(-(mem[_829] % 32) + 32) - 1 and mem[_828 + floor32(mem[_829]) + 92] or mem[_829 + floor32(mem[_829]) + 32] and !(256^(-(mem[_829] % 32) + 32) - 1)
                _924 = sha3(mem[_828 + 92 len _831])
                mem[_828 + 92] = 0
                mem[64] = _828 + 124
                mem[_828 + 124] = _924
                mem[_828 + 156] = uint8(_782)
                mem[_828 + 188] = _803
                mem[_828 + 220] = _815
                signer = erecover(_924, _782 << 248, _803, _815) 
                mem[_828 + 92] = signer
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                require idx < mem[(32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + 192]
                mem[(32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + (32 * idx) + 224] = address(signer)
                require idx < mem[(32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + 192]
                mem[0] = address(signer)
                mem[32] = 1
                require 1 == bool(stor1[address(signer)])
                idx = idx + 1
                continue 
            idx = 0
            while idx < mem[(32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + 192]:
                require idx < mem[(32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + 192]
                if bool(stor4[mem[(32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + (32 * idx) + 236 len 20]]) != 1:
                    require idx < mem[(32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + 192]
                    mem[0] = mem[(32 * idx) + (32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + 236 len 20]
                    mem[32] = 4
                    stor4[mem[(32 * idx) + (32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + 236 len 20]] = 1
                    idx = idx + 1
                    continue 
                require var39002 < mem[(32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + 192]
                require var39002 < mem[(32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + 192]
                mem[0] = mem[(32 * var39002) + (32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + 236 len 20]
                mem[32] = 4
                stor4[mem[(32 * var39002) + (32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + 236 len 20]] = 0
                var39002 = var39002 + 1
                continue 
        else:
            mem[(32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + 224 len 32 * arg7.length] = code.data[3463 len 32 * arg7.length]
            idx = 0
            while idx < arg7.length:
                _525 = mem[64]
                mem[mem[64] + 32] = address(arg1)
                mem[mem[64] + 52] = arg2
                mem[mem[64] + 84] = address(arg3)
                mem[mem[64] + 104] = arg4
                mem[mem[64] + 136] = address(arg8)
                _526 = mem[64]
                mem[mem[64]] = 124
                mem[64] = mem[64] + 156
                _528 = mem[_526]
                t = _526 + 32
                u = _525 + 156
                s = mem[_526]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_525 + floor32(mem[_526]) + 156] = mem[_526 + -(mem[_526] % 32) + floor32(mem[_526]) + 64 len mem[_526] % 32] or Mask(8 * -(mem[_526] % 32) + 32, -(8 * -(mem[_526] % 32) + 32) + 256, mem[_525 + floor32(mem[_526]) + 156])
                _760 = sha3(mem[_525 + 156 len _528])
                require idx < mem[96]
                _787 = mem[(32 * idx) + 128]
                require idx < mem[(32 * arg5.length) + 128]
                _807 = mem[(32 * idx) + (32 * arg5.length) + 160]
                require idx < mem[(32 * arg6.length) + (32 * arg5.length) + 160]
                _820 = mem[(32 * idx) + (32 * arg6.length) + (32 * arg5.length) + 192]
                mem[_525 + 188] = '\x19Ethereum Signed Message:\n32'
                mem[_525 + 216] = _760
                mem[_525 + 156] = 60
                mem[64] = _525 + 248
                t = _525 + 188
                u = _525 + 248
                s = 60
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_525 + 280] = mem[_525 + 308 len 4] or 4294967296 * _760
                _932 = sha3(mem[_525 + 248 len 60])
                mem[64] = _525 + 280
                mem[_525 + 280] = _932
                mem[_525 + 312] = uint8(_787)
                mem[_525 + 344] = _807
                mem[_525 + 376] = _820
                signer = erecover(_932, _787 << 248, _807, _820) 
                mem[_525 + 248] = signer
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                require idx < mem[(32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + 192]
                mem[(32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + (32 * idx) + 224] = address(signer)
                require idx < mem[(32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + 192]
                mem[0] = address(signer)
                mem[32] = 1
                require 1 == bool(stor1[address(signer)])
                idx = idx + 1
                continue 
            idx = 0
            while idx < mem[(32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + 192]:
                require idx < mem[(32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + 192]
                if bool(stor4[mem[(32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + (32 * idx) + 236 len 20]]) != 1:
                    require idx < mem[(32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + 192]
                    mem[0] = mem[(32 * idx) + (32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + 236 len 20]
                    mem[32] = 4
                    stor4[mem[(32 * idx) + (32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + 236 len 20]] = 1
                    idx = idx + 1
                    continue 
                require var40002 < mem[(32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + 192]
                require var40002 < mem[(32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + 192]
                mem[0] = mem[(32 * var40002) + (32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + 236 len 20]
                mem[32] = 4
                stor4[mem[(32 * var40002) + (32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + 236 len 20]] = 0
                var40002 = var40002 + 1
                continue 
    idx = 0
    while idx < mem[(32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + 192]:
        require idx < mem[(32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + 192]
        mem[0] = mem[(32 * idx) + (32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + 236 len 20]
        mem[32] = 4
        stor4[mem[(32 * idx) + (32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + 236 len 20]] = 0
        idx = idx + 1
        continue 
    if not arg1:
        if arg2 > eth.balance(this.address):
            emit 0x33d1e030: 0, arg3
        else:
            call arg3 with:
               value arg2 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg2:
            emit 0x33d1e030: address(arg1), arg3
        else:
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg3), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
}



}

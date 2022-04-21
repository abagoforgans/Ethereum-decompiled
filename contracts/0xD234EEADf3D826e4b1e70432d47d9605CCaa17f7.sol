contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[49 len 4863]
}



// =====================  Runtime code  =====================


#
#  - sub_840d4c20(?)
#
address owner;
mapping of address referral;
mapping of struct stor2;
array of address stor3;
address stor4;

function getReferralAddress(address arg1) {
    return referral[address(arg1)]
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function sub_291bfe97(?) {
    require owner == msg.sender
    require arg1
    stor4 = arg1
    return 1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function addAffiliate(address arg1, address arg2) {
    require owner == msg.sender
    require not referral[address(arg1)]
    require arg2 != arg1
    referral[address(arg1)] = arg2
    return 1
}

function sub_1f0e33e3(?) {
    require owner == msg.sender
    require stor3.length
    require stor2[address(arg1)].field_512 < stor3.length
    require address(stor3[stor2[address(arg1)].field_512]) == arg1
    stor2[address(arg1)].field_0 = uint8(arg2)
}

function sub_2fbe39c1(?) {
    require owner == msg.sender
    require stor3.length
    require stor2[address(arg1)].field_512 < stor3.length
    require address(stor3[stor2[address(arg1)].field_512]) == arg1
    stor2[address(arg1)][4][arg2].field_520 = Mask(248, 0, arg3)
}

function sub_2996d265(?) {
    if not stor3.length:
        return 0
    require stor2[address(arg1)].field_512 < stor3.length
    if address(stor3[stor2[address(arg1)].field_512]) != arg1:
        return (address(stor3[stor2[address(arg1)].field_512]) == arg1)
    return not bool(stor2[address(arg1)].field_0)
}

function getPartnerBalance(address arg1) {
    require stor3.length
    require stor2[address(arg1)].field_512 < stor3.length
    require address(stor3[stor2[address(arg1)].field_512]) == arg1
    idx = 0
    s = 0
    t = 0
    while idx < stor2[address(arg1)].field_768:
        mem[0] = idx
        mem[32] = sha3(address(arg1), 2) + 4
        if stor2[address(arg1)][4][idx].field_520:
            idx = idx + 1
            s = s
            t = t
            continue 
        mem[0] = idx
        mem[32] = sha3(address(arg1), 2) + 4
        if bool(stor2[address(arg1)][4][idx].field_512) != 1:
            idx = idx + 1
            s = s
            t = t + stor2[address(arg1)][4][idx].field_0
            continue 
        mem[0] = idx
        mem[32] = sha3(address(arg1), 2) + 4
        idx = idx + 1
        s = stor2[address(arg1)][4][idx].field_0 + s
        t = t + stor2[address(arg1)][4][idx].field_0
        continue 
    return t, s
}

function getAvailableBalance(address arg1) {
    require stor3.length
    require stor2[address(arg1)].field_512 < stor3.length
    require address(stor3[stor2[address(arg1)].field_512]) == arg1
    idx = 0
    s = 0
    while idx < stor2[address(arg1)].field_768:
        mem[0] = idx
        mem[32] = sha3(address(arg1), 2) + 4
        if stor2[address(arg1)][4][idx].field_520:
            idx = idx + 1
            s = s
            continue 
        mem[0] = idx
        mem[32] = sha3(address(arg1), 2) + 4
        if stor2[address(arg1)][4][idx].field_512:
            idx = idx + 1
            s = s
            continue 
        mem[0] = idx
        mem[32] = sha3(address(arg1), 2) + 4
        if stor2[address(arg1)][4][idx].field_256 + (24 * 3600) >= block.timestamp:
            idx = idx + 1
            s = s
            continue 
        mem[0] = idx
        mem[32] = sha3(address(arg1), 2) + 4
        require stor2[address(arg1)][4][idx].field_0 + s >= s
        idx = idx + 1
        s = stor2[address(arg1)][4][idx].field_0 + s
        continue 
    return s
}

function sub_2d79f284(?) {
    require stor3.length
    require stor2[address(msg.sender)].field_512 < stor3.length
    require address(stor3[stor2[address(msg.sender)].field_512]) == msg.sender
    require not stor2[address(msg.sender)].field_0
    require stor3.length
    require stor2[address(msg.sender)].field_512 < stor3.length
    require address(stor3[stor2[address(msg.sender)].field_512]) == msg.sender
    idx = 0
    s = 0
    while idx < stor2[address(msg.sender)].field_768:
        mem[0] = idx
        mem[32] = sha3(address(msg.sender), 2) + 4
        if stor2[address(msg.sender)][4][idx].field_520:
            idx = idx + 1
            s = s
            continue 
        mem[0] = idx
        mem[32] = sha3(address(msg.sender), 2) + 4
        if stor2[address(msg.sender)][4][idx].field_512:
            idx = idx + 1
            s = s
            continue 
        mem[0] = idx
        mem[32] = sha3(address(msg.sender), 2) + 4
        if stor2[address(msg.sender)][4][idx].field_256 + (24 * 3600) >= block.timestamp:
            idx = idx + 1
            s = s
            continue 
        mem[0] = idx
        mem[32] = sha3(address(msg.sender), 2) + 4
        require stor2[address(msg.sender)][4][idx].field_0 + s >= s
        idx = idx + 1
        s = stor2[address(msg.sender)][4][idx].field_0 + s
        continue 
    require s > 0
    s = 0
    idx = 0
    while idx < stor2[address(msg.sender)].field_768:
        mem[0] = idx
        mem[32] = sha3(address(msg.sender), 2) + 4
        if stor2[address(msg.sender)][4][idx].field_520:
            s = s
            idx = idx + 1
            continue 
        mem[0] = idx
        mem[32] = sha3(address(msg.sender), 2) + 4
        if stor2[address(msg.sender)][4][idx].field_512:
            s = s
            idx = idx + 1
            continue 
        mem[0] = idx
        mem[32] = sha3(address(msg.sender), 2) + 4
        if stor2[address(msg.sender)][4][idx].field_256 + (24 * 3600) >= block.timestamp:
            s = s
            idx = idx + 1
            continue 
        mem[0] = idx
        mem[32] = sha3(address(msg.sender), 2) + 4
        stor2[address(msg.sender)][4][idx].field_512 = 1
        require stor2[address(msg.sender)][4][idx].field_0 + stor2[address(msg.sender)].field_256 >= stor2[address(msg.sender)].field_256
        stor2[address(msg.sender)].field_256 += stor2[address(msg.sender)][4][idx].field_0
        call msg.sender with:
           value stor2[address(msg.sender)][4][idx].field_0 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        mem[96] = stor2[address(msg.sender)][4][idx].field_0
        emit 0xfa097e48: stor2[address(msg.sender)][4][idx].field_0, msg.sender
        s = stor2[address(msg.sender)][4][idx].field_0
        idx = idx + 1
        continue 
}

function sub_b40f583b(?) payable {
    require stor4 == msg.sender
    require arg2
    require arg2 == referral[address(arg1)]
    require msg.value > 0
    if not stor3.length:
        stor2[address(arg2)].field_0 = 0
        stor3.length++
        if not stor3.length <= stor3.length + 1:
            idx = stor3.length + 1
            while stor3.length > idx:
                uint256(stor3[idx]) = 0
                idx = idx + 1
                continue 
        address(stor3[stor3.length]) = arg2
        stor2[address(arg2)].field_512 = stor3.length
        stor2[address(arg2)][4][stor2[address(arg2)].field_768].field_0 = msg.value
        stor2[address(arg2)][4][stor2[address(arg2)].field_768].field_256 = block.timestamp
        stor2[address(arg2)][4][stor2[address(arg2)].field_768].field_512 = 0
        stor2[address(arg2)][4][stor2[address(arg2)].field_768].field_520 = 0
        stor2[address(arg2)].field_768++
        if not stor2[address(arg2)].field_768 <= stor2[address(arg2)].field_768 + 1:
            idx = stor2[address(arg2)].field_768 + 1
            while stor2[address(arg2)].field_768 > idx:
                stor2[address(arg2)][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
    else:
        require stor2[address(arg2)].field_512 < stor3.length
        if address(stor3[stor2[address(arg2)].field_512]) == arg2:
            stor2[address(arg2)][4][stor2[address(arg2)].field_768].field_0 = msg.value
            stor2[address(arg2)][4][stor2[address(arg2)].field_768].field_256 = block.timestamp
            stor2[address(arg2)][4][stor2[address(arg2)].field_768].field_512 = 0
            stor2[address(arg2)][4][stor2[address(arg2)].field_768].field_520 = 0
            stor2[address(arg2)].field_768++
            if not stor2[address(arg2)].field_768 <= stor2[address(arg2)].field_768 + 1:
                idx = stor2[address(arg2)].field_768 + 1
                while stor2[address(arg2)].field_768 > idx:
                    stor2[address(arg2)][idx + 3].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            stor2[address(arg2)].field_0 = 0
            stor3.length++
            if not stor3.length <= stor3.length + 1:
                idx = stor3.length + 1
                while stor3.length > idx:
                    uint256(stor3[idx]) = 0
                    idx = idx + 1
                    continue 
            address(stor3[stor3.length]) = arg2
            stor2[address(arg2)].field_512 = stor3.length
            stor2[address(arg2)][4][stor2[address(arg2)].field_768].field_0 = msg.value
            stor2[address(arg2)][4][stor2[address(arg2)].field_768].field_256 = block.timestamp
            stor2[address(arg2)][4][stor2[address(arg2)].field_768].field_512 = 0
            stor2[address(arg2)][4][stor2[address(arg2)].field_768].field_520 = 0
            stor2[address(arg2)].field_768++
            if not stor2[address(arg2)].field_768 <= stor2[address(arg2)].field_768 + 1:
                idx = stor2[address(arg2)].field_768 + 1
                while stor2[address(arg2)].field_768 > idx:
                    stor2[address(arg2)][idx + 3].field_0 = 0
                    idx = idx + 1
                    continue 
    stor[stor2[address(arg2)].field_768 + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor2', 2)))].field_0 = stor2[address(arg2)].field_768
}

function sub_d553df58(?) {
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = stor3.length
    if 256 < (32 * stor3.length) + 256:
        mem[(32 * stor3.length) + 256] = stor3.length
        if 32 * stor3.length >= 64 * stor3.length:
            mem[(32 * stor3.length) + 288] = stor3.length
            if 32 * stor3.length < 64 * stor3.length:
                mem[(64 * stor3.length) + 320] = stor3.length
                idx = 0
                while idx < stor3.length:
                    require idx < stor3.length
                    mem[(32 * idx) + 256] = address(stor3[idx])
                    require idx < stor3.length
                    require idx < mem[(32 * stor3.length) + 256]
                    mem[(32 * stor3.length) + (32 * idx) + 288] = stor2[address(stor3[idx])].field_256
                    require idx < stor3.length
                    require idx < mem[(32 * stor3.length) + 288]
                    mem[(32 * stor3.length) + (32 * idx) + 320] = bool(stor2[address(stor3[idx])].field_0)
                    require idx < stor3.length
                    mem[0] = address(stor3[idx])
                    mem[32] = 2
                    require idx < mem[(64 * stor3.length) + 320]
                    mem[(64 * stor3.length) + (32 * idx) + 352] = stor2[address(stor3[idx])].field_768
                    idx = idx + 1
                    continue 
                mem[(98 * stor3.length) + 352] = 128
                mem[(98 * stor3.length) + 480] = stor3.length
                mem[(98 * stor3.length) + 512 len floor32(stor3.length)] = mem[256 len floor32(stor3.length)]
                mem[(98 * stor3.length) + 384] = (32 * stor3.length) + 160
                mem[(131 * stor3.length) + 512] = mem[(32 * stor3.length) + 256]
                mem[(131 * stor3.length) + 544 len floor32(mem[(32 * stor3.length) + 256])] = mem[(32 * stor3.length) + 288 len floor32(mem[(32 * stor3.length) + 256])]
                mem[(98 * stor3.length) + 416] = (32 * mem[(32 * stor3.length) + 256]) + (32 * stor3.length) + 192
                mem[(32 * mem[(32 * stor3.length) + 256]) + (131 * stor3.length) + 544] = mem[(32 * stor3.length) + 288]
                mem[(32 * mem[(32 * stor3.length) + 256]) + (131 * stor3.length) + 576 len floor32(mem[(32 * stor3.length) + 288])] = mem[(32 * stor3.length) + 320 len floor32(mem[(32 * stor3.length) + 288])]
                mem[(98 * stor3.length) + 448] = (32 * mem[(32 * stor3.length) + 288]) + (32 * mem[(32 * stor3.length) + 256]) + (32 * stor3.length) + 224
                mem[(32 * mem[(32 * stor3.length) + 288]) + (32 * mem[(32 * stor3.length) + 256]) + (131 * stor3.length) + 576] = mem[(64 * stor3.length) + 320]
                mem[(32 * mem[(32 * stor3.length) + 288]) + (32 * mem[(32 * stor3.length) + 256]) + (131 * stor3.length) + 608 len floor32(mem[(64 * stor3.length) + 320])] = mem[(64 * stor3.length) + 352 len floor32(mem[(64 * stor3.length) + 320])]
                return Array(len=stor3.length, data=mem[256 len floor32(stor3.length)], mem[(98 * stor3.length) + floor32(stor3.length) + 512 len (32 * mem[(32 * stor3.length) + 256]) + (33 * stor3.length) + -floor32(stor3.length) + 32], mem[(32 * stor3.length) + 288], mem[(131 * stor3.length) + (32 * mem[(32 * stor3.length) + 256]) + 576 len (32 * mem[(64 * stor3.length) + 320]) + (32 * mem[(32 * stor3.length) + 288]) + 32]), 
                       (32 * stor3.length) + 160,
                       (32 * mem[(32 * stor3.length) + 256]) + (32 * stor3.length) + 192,
                       (32 * mem[(32 * stor3.length) + 288]) + (32 * mem[(32 * stor3.length) + 256]) + (32 * stor3.length) + 224
            mem[(32 * stor3.length) + 320] = stor3.length
            idx = 0
            while idx < stor3.length:
                require idx < stor3.length
                mem[(32 * idx) + 256] = address(stor3[idx])
                require idx < stor3.length
                require idx < mem[(32 * stor3.length) + 256]
                mem[(32 * stor3.length) + (32 * idx) + 288] = stor2[address(stor3[idx])].field_256
                require idx < stor3.length
                require idx < mem[(32 * stor3.length) + 288]
                mem[(32 * stor3.length) + (32 * idx) + 320] = bool(stor2[address(stor3[idx])].field_0)
                require idx < stor3.length
                mem[0] = address(stor3[idx])
                mem[32] = 2
                require idx < mem[(32 * stor3.length) + 320]
                mem[(32 * stor3.length) + (32 * idx) + 352] = stor2[address(stor3[idx])].field_768
                idx = idx + 1
                continue 
            mem[(64 * stor3.length) + 352] = 128
            mem[(64 * stor3.length) + 480] = stor3.length
            mem[(64 * stor3.length) + 512 len floor32(stor3.length)] = mem[256 len floor32(stor3.length)]
            mem[(64 * stor3.length) + 384] = (32 * stor3.length) + 160
            mem[(98 * stor3.length) + 512] = mem[(32 * stor3.length) + 256]
            mem[(98 * stor3.length) + 544 len floor32(mem[(32 * stor3.length) + 256])] = mem[(32 * stor3.length) + 288 len floor32(mem[(32 * stor3.length) + 256])]
            mem[(64 * stor3.length) + 416] = (32 * mem[(32 * stor3.length) + 256]) + (32 * stor3.length) + 192
            mem[(32 * mem[(32 * stor3.length) + 256]) + (98 * stor3.length) + 544] = mem[(32 * stor3.length) + 288]
            mem[(32 * mem[(32 * stor3.length) + 256]) + (98 * stor3.length) + 576 len floor32(mem[(32 * stor3.length) + 288])] = mem[(32 * stor3.length) + 320 len floor32(mem[(32 * stor3.length) + 288])]
            mem[(64 * stor3.length) + 448] = (32 * mem[(32 * stor3.length) + 288]) + (32 * mem[(32 * stor3.length) + 256]) + (32 * stor3.length) + 224
            mem[(32 * mem[(32 * stor3.length) + 288]) + (32 * mem[(32 * stor3.length) + 256]) + (98 * stor3.length) + 576] = mem[(32 * stor3.length) + 320]
            mem[(32 * mem[(32 * stor3.length) + 288]) + (32 * mem[(32 * stor3.length) + 256]) + (98 * stor3.length) + 608 len floor32(mem[(32 * stor3.length) + 320])] = mem[(32 * stor3.length) + 352 len floor32(mem[(32 * stor3.length) + 320])]
            return memory
              from (64 * stor3.length) + 352
               len (32 * mem[(32 * stor3.length) + 320]) + (32 * mem[(32 * stor3.length) + 288]) + (32 * mem[(32 * stor3.length) + 256]) + (161 * stor3.length) + 256
        mem[(64 * stor3.length) + 288] = stor3.length
        mem[(64 * stor3.length) + 320] = stor3.length
        mem[64] = (98 * stor3.length) + 352
        idx = 0
        while idx < stor3.length:
            require idx < mem[224]
            mem[(32 * idx) + 256] = address(stor3[idx])
            require idx < stor3.length
            require idx < mem[(32 * stor3.length) + 256]
            mem[(32 * stor3.length) + (32 * idx) + 288] = stor2[address(stor3[idx])].field_256
            require idx < stor3.length
            require idx < mem[(64 * stor3.length) + 288]
            mem[(64 * stor3.length) + (32 * idx) + 320] = bool(stor2[address(stor3[idx])].field_0)
            require idx < stor3.length
            mem[0] = address(stor3[idx])
            mem[32] = 2
            require idx < mem[(64 * stor3.length) + 320]
            mem[(64 * stor3.length) + (32 * idx) + 352] = stor2[address(stor3[idx])].field_768
            idx = idx + 1
            continue 
        _502 = mem[64]
        mem[mem[64]] = 128
        mem[mem[64] + 128] = mem[224]
        _504 = mem[224]
        mem[mem[64] + 160 len floor32(mem[224])] = mem[256 len floor32(mem[224])]
        mem[mem[64] + 32] = (32 * mem[224]) + 160
        mem[(32 * _504) + mem[64] + 160] = mem[(32 * stor3.length) + 256]
        _878 = mem[(32 * stor3.length) + 256]
        mem[(32 * _504) + mem[64] + 192 len floor32(mem[(32 * stor3.length) + 256])] = mem[(32 * stor3.length) + 288 len floor32(mem[(32 * stor3.length) + 256])]
        mem[mem[64] + 64] = (32 * _878) + (32 * _504) + 192
        mem[(32 * _878) + (32 * _504) + _502 + 192] = mem[(64 * stor3.length) + 288]
        _1054 = mem[(64 * stor3.length) + 288]
        mem[(32 * _878) + (32 * _504) + _502 + 224 len floor32(mem[(64 * stor3.length) + 288])] = mem[(64 * stor3.length) + 320 len floor32(mem[(64 * stor3.length) + 288])]
        mem[_502 + 96] = (32 * _1054) + (32 * _878) + (32 * _504) + 224
        mem[(32 * _1054) + (32 * _878) + (32 * _504) + _502 + 224] = mem[(64 * stor3.length) + 320]
        _1182 = mem[(64 * stor3.length) + 320]
        mem[(32 * _1054) + (32 * _878) + (32 * _504) + _502 + 256 len floor32(mem[(64 * stor3.length) + 320])] = mem[(64 * stor3.length) + 352 len floor32(mem[(64 * stor3.length) + 320])]
        return memory
          from mem[64]
           len (32 * _1182) + (32 * _1054) + (32 * _878) + (32 * _504) + _502 + -mem[64] + 256
    mem[256] = stor3.length
    if 288 >= (32 * stor3.length) + 288:
        mem[288] = stor3.length
        if 320 < (32 * stor3.length) + 320:
            mem[(32 * stor3.length) + 320] = stor3.length
            idx = 0
            while idx < stor3.length:
                require idx < stor3.length
                mem[(32 * idx) + 256] = address(stor3[idx])
                require idx < stor3.length
                require idx < mem[256]
                mem[(32 * idx) + 288] = stor2[address(stor3[idx])].field_256
                require idx < stor3.length
                require idx < mem[288]
                mem[(32 * idx) + 320] = bool(stor2[address(stor3[idx])].field_0)
                require idx < stor3.length
                mem[0] = address(stor3[idx])
                mem[32] = 2
                require idx < mem[(32 * stor3.length) + 320]
                mem[(32 * stor3.length) + (32 * idx) + 352] = stor2[address(stor3[idx])].field_768
                idx = idx + 1
                continue 
            mem[(64 * stor3.length) + 352] = 128
            mem[(64 * stor3.length) + 480] = stor3.length
            mem[(64 * stor3.length) + 512 len floor32(stor3.length)] = mem[256 len floor32(stor3.length)]
            mem[(64 * stor3.length) + 384] = (32 * stor3.length) + 160
            mem[(98 * stor3.length) + 512] = mem[256]
            mem[(98 * stor3.length) + 544 len floor32(mem[256])] = mem[288 len floor32(mem[256])]
            mem[(64 * stor3.length) + 416] = (32 * mem[256]) + (32 * stor3.length) + 192
            mem[(32 * mem[256]) + (98 * stor3.length) + 544] = mem[288]
            mem[(32 * mem[256]) + (98 * stor3.length) + 576 len floor32(mem[288])] = mem[320 len floor32(mem[288])]
            mem[(64 * stor3.length) + 448] = (32 * mem[288]) + (32 * mem[256]) + (32 * stor3.length) + 224
            mem[(32 * mem[288]) + (32 * mem[256]) + (98 * stor3.length) + 576] = mem[(32 * stor3.length) + 320]
            mem[(32 * mem[288]) + (32 * mem[256]) + (98 * stor3.length) + 608 len floor32(mem[(32 * stor3.length) + 320])] = mem[(32 * stor3.length) + 352 len floor32(mem[(32 * stor3.length) + 320])]
            return memory
              from (64 * stor3.length) + 352
               len (32 * mem[(32 * stor3.length) + 320]) + (32 * mem[288]) + (32 * mem[256]) + (161 * stor3.length) + 256
        mem[320] = stor3.length
        idx = 0
        while idx < stor3.length:
            require idx < stor3.length
            mem[(32 * idx) + 256] = address(stor3[idx])
            require idx < stor3.length
            require idx < mem[256]
            mem[(32 * idx) + 288] = stor2[address(stor3[idx])].field_256
            require idx < stor3.length
            require idx < mem[288]
            mem[(32 * idx) + 320] = bool(stor2[address(stor3[idx])].field_0)
            require idx < stor3.length
            mem[0] = address(stor3[idx])
            mem[32] = 2
            require idx < mem[320]
            mem[(32 * idx) + 352] = stor2[address(stor3[idx])].field_768
            idx = idx + 1
            continue 
        mem[(32 * stor3.length) + 352] = 128
        mem[(32 * stor3.length) + 480] = stor3.length
        mem[(32 * stor3.length) + 512 len floor32(stor3.length)] = mem[256 len floor32(stor3.length)]
        mem[(32 * stor3.length) + 384] = (32 * stor3.length) + 160
        mem[(64 * stor3.length) + 512] = mem[256]
        mem[(64 * stor3.length) + 544 len floor32(mem[256])] = mem[288 len floor32(mem[256])]
        mem[(32 * stor3.length) + 416] = (32 * mem[256]) + (32 * stor3.length) + 192
        mem[(32 * mem[256]) + (64 * stor3.length) + 544] = mem[288]
        mem[(32 * mem[256]) + (64 * stor3.length) + 576 len floor32(mem[288])] = mem[320 len floor32(mem[288])]
        mem[(32 * stor3.length) + 448] = (32 * mem[288]) + (32 * mem[256]) + (32 * stor3.length) + 224
        mem[(32 * mem[288]) + (32 * mem[256]) + (64 * stor3.length) + 576] = mem[320]
        mem[(32 * mem[288]) + (32 * mem[256]) + (64 * stor3.length) + 608 len floor32(mem[320])] = mem[352 len floor32(mem[320])]
        return Array(len=stor3.length, data=mem[256 len floor32(stor3.length)], mem[(32 * stor3.length) + floor32(stor3.length) + 512 len (32 * stor3.length) + (32 * mem[320]) + (32 * mem[288]) + (32 * mem[256]) + -floor32(stor3.length) + 96]), 
               (32 * stor3.length) + 160,
               (32 * mem[256]) + (32 * stor3.length) + 192,
               (32 * mem[288]) + (32 * mem[256]) + (32 * stor3.length) + 224
    mem[(32 * stor3.length) + 288] = stor3.length
    if 32 * stor3.length >= 64 * stor3.length:
        mem[(32 * stor3.length) + 320] = stor3.length
        idx = 0
        while idx < stor3.length:
            require idx < stor3.length
            mem[(32 * idx) + 256] = address(stor3[idx])
            require idx < stor3.length
            require idx < mem[256]
            mem[(32 * idx) + 288] = stor2[address(stor3[idx])].field_256
            require idx < stor3.length
            require idx < mem[(32 * stor3.length) + 288]
            mem[(32 * stor3.length) + (32 * idx) + 320] = bool(stor2[address(stor3[idx])].field_0)
            require idx < stor3.length
            mem[0] = address(stor3[idx])
            mem[32] = 2
            require idx < mem[(32 * stor3.length) + 320]
            mem[(32 * stor3.length) + (32 * idx) + 352] = stor2[address(stor3[idx])].field_768
            idx = idx + 1
            continue 
        mem[(64 * stor3.length) + 352] = 128
        mem[(64 * stor3.length) + 480] = stor3.length
        mem[(64 * stor3.length) + 512 len floor32(stor3.length)] = mem[256 len floor32(stor3.length)]
        mem[(64 * stor3.length) + 384] = (32 * stor3.length) + 160
        mem[(98 * stor3.length) + 512] = mem[256]
        mem[(98 * stor3.length) + 544 len floor32(mem[256])] = mem[288 len floor32(mem[256])]
        mem[(64 * stor3.length) + 416] = (32 * mem[256]) + (32 * stor3.length) + 192
        mem[(32 * mem[256]) + (98 * stor3.length) + 544] = mem[(32 * stor3.length) + 288]
        mem[(32 * mem[256]) + (98 * stor3.length) + 576 len floor32(mem[(32 * stor3.length) + 288])] = mem[(32 * stor3.length) + 320 len floor32(mem[(32 * stor3.length) + 288])]
        mem[(64 * stor3.length) + 448] = (32 * mem[(32 * stor3.length) + 288]) + (32 * mem[256]) + (32 * stor3.length) + 224
        mem[(32 * mem[(32 * stor3.length) + 288]) + (32 * mem[256]) + (98 * stor3.length) + 576] = mem[(32 * stor3.length) + 320]
        mem[(32 * mem[(32 * stor3.length) + 288]) + (32 * mem[256]) + (98 * stor3.length) + 608 len floor32(mem[(32 * stor3.length) + 320])] = mem[(32 * stor3.length) + 352 len floor32(mem[(32 * stor3.length) + 320])]
        return memory
          from (64 * stor3.length) + 352
           len (32 * mem[(32 * stor3.length) + 320]) + (32 * mem[(32 * stor3.length) + 288]) + (32 * mem[256]) + (161 * stor3.length) + 256
    mem[(64 * stor3.length) + 320] = stor3.length
    mem[64] = (98 * stor3.length) + 352
    idx = 0
    while idx < stor3.length:
        require idx < mem[224]
        mem[(32 * idx) + 256] = address(stor3[idx])
        require idx < stor3.length
        require idx < mem[256]
        mem[(32 * idx) + 288] = stor2[address(stor3[idx])].field_256
        require idx < stor3.length
        require idx < mem[(32 * stor3.length) + 288]
        mem[(32 * stor3.length) + (32 * idx) + 320] = bool(stor2[address(stor3[idx])].field_0)
        require idx < stor3.length
        mem[0] = address(stor3[idx])
        mem[32] = 2
        require idx < mem[(64 * stor3.length) + 320]
        mem[(64 * stor3.length) + (32 * idx) + 352] = stor2[address(stor3[idx])].field_768
        idx = idx + 1
        continue 
    _514 = mem[64]
    mem[mem[64]] = 128
    mem[mem[64] + 128] = mem[224]
    _516 = mem[224]
    mem[mem[64] + 160 len floor32(mem[224])] = mem[256 len floor32(mem[224])]
    mem[mem[64] + 32] = (32 * mem[224]) + 160
    mem[(32 * _516) + mem[64] + 160] = mem[256]
    _887 = mem[256]
    mem[(32 * _516) + mem[64] + 192 len floor32(mem[256])] = mem[288 len floor32(mem[256])]
    mem[mem[64] + 64] = (32 * _887) + (32 * _516) + 192
    mem[(32 * _887) + (32 * _516) + _514 + 192] = mem[(32 * stor3.length) + 288]
    _1063 = mem[(32 * stor3.length) + 288]
    mem[(32 * _887) + (32 * _516) + _514 + 224 len floor32(mem[(32 * stor3.length) + 288])] = mem[(32 * stor3.length) + 320 len floor32(mem[(32 * stor3.length) + 288])]
    mem[_514 + 96] = (32 * _1063) + (32 * _887) + (32 * _516) + 224
    mem[(32 * _1063) + (32 * _887) + (32 * _516) + _514 + 224] = mem[(64 * stor3.length) + 320]
    _1191 = mem[(64 * stor3.length) + 320]
    mem[(32 * _1063) + (32 * _887) + (32 * _516) + _514 + 256 len floor32(mem[(64 * stor3.length) + 320])] = mem[(64 * stor3.length) + 352 len floor32(mem[(64 * stor3.length) + 320])]
    return memory
      from mem[64]
       len (32 * _1191) + (32 * _1063) + (32 * _887) + (32 * _516) + _514 + -mem[64] + 256
}



}

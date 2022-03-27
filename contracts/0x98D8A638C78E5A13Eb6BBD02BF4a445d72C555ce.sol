contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[61 len 11651]
}



// =====================  Runtime code  =====================


#
#  - sub_da54fcc4(?)
#
const getAdmin = 0


address stor0;
mapping of struct commission;
array of struct sub_5e8b360e;
array of struct stor3;
array of struct stor4;

function commission(uint256 arg1) {
    return commission[arg1].field_2048
}

function price(uint256 arg1) {
    return commission[arg1].field_512
}

function sub_364a314e(?) {
    return bool(commission[arg1].field_2464)
}

function getOffer(uint256 arg1) {
    return commission[arg1].field_0, 
           commission[arg1].field_256,
           commission[arg1].field_512,
           commission[arg1].field_768,
           commission[arg1].field_1024,
           commission[arg1].field_1280,
           commission[arg1].field_1536,
           bool(commission[arg1].field_1792),
           bool(commission[arg1].field_1800),
           bool(commission[arg1].field_1808),
           commission[arg1].field_2048,
           commission[arg1].field_2304
}

function sub_5e8b360e(?) {
    return sub_5e8b360e[arg1].field_0
}

function sub_78eec5d9(?) {
    return commission[arg1].field_768
}

function sub_7fcdc744(?) {
    return bool(commission[arg1].field_2472)
}

function sub_83b9d911(?) {
    return commission[arg1].field_256
}

function sub_cc6bee54(?) {
    return stor4.length
}

function sub_f19b8273(?) {
    return bool(commission[arg1].field_1792)
}

function sub_ffcf88fd(?) {
    require arg2 < sub_5e8b360e[arg1].field_0
    return sub_5e8b360e[arg1][arg2].field_0
}

function kill() {
    if stor0 == msg.sender:
        selfdestruct(stor0)
}

function _fallback() payable {
    revert 
}

function setAdmin(address arg1) {
    if stor0 == msg.sender:
        stor0 = arg1
}

function cost(uint256 arg1) {
    return ((commission[arg1].field_768 * commission[arg1].field_2048) + (commission[arg1].field_768 * commission[arg1].field_512))
}

function register() {
    if stor0 == msg.sender:
        require ext_code.size(code.data[11619 len 32])
        call code.data[11619 len 32].register(bytes32 rg1) with:
             gas gas_remaining - 50 wei
            args 'offerbook'
        require ext_call.success
}

function reject(uint256 arg1) {
    if commission[arg1].field_1280:
        if commission[arg1].field_1280 == msg.sender:
            commission[arg1].field_1800 = 1
            emit 0x129066a9: arg1, commission[arg1].field_768, 7, commission[arg1].field_1280, commission[arg1].field_1024
}

function sub_010cd68b(?) {
    if stor4.length:
        mem[160] = uint256(stor4.field_0)
        idx = 160
        s = 0
        while (32 * stor4.length) + 128 > idx:
            mem[idx + 32] = stor4[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=stor4.length, data=mem[160 len 32 * stor4.length])
}

function sub_c72196b9(?) {
    if sub_5e8b360e[arg1].field_0:
        mem[160] = sub_5e8b360e[arg1].field_0
        idx = 160
        s = 0
        while (32 * sub_5e8b360e[arg1].field_0) + 128 > idx:
            mem[idx + 32] = sub_5e8b360e[arg1][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=sub_5e8b360e[arg1].field_0, data=mem[160 len 32 * sub_5e8b360e[arg1].field_0])
}

function sub_3a7f8dc7(?) {
    if stor3[arg1][address(arg2)].field_0:
        mem[160] = stor3[arg1][address(arg2)].field_0
        idx = 160
        s = 0
        while (32 * stor3[arg1][address(arg2)].field_0) + 128 > idx:
            mem[idx + 32] = stor3[arg1][address(arg2)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=stor3[arg1][address(arg2)].field_0, data=mem[160 len 32 * stor3[arg1][address(arg2)].field_0])
}

function valid(uint256 arg1) {
    if commission[arg1].field_1024:
        if not commission[arg1].field_1808:
            if not commission[arg1].field_1792:
                if commission[arg1].field_1536 >= block.timestamp:
                    if commission[arg1].field_768 >= 1:
                        return 1
                    else:
                        return 0
                else:
                    return 0
            else:
                return 0
        else:
            return 0
    else:
        return 0
}

function sub_3bec747f(?) {
    if commission[arg1].field_1024:
        if not commission[arg1].field_1808:
            if not commission[arg1].field_1792:
                if commission[arg1].field_1536 >= block.timestamp:
                    if commission[arg1].field_768 >= 1:
                        return commission[arg1].field_768
                    else:
                        return 0
                else:
                    return 0
            else:
                return 0
        else:
            return 0
    else:
        return 0
}

function sub_ab4797cd(?) {
    s = 0
    idx = 0
    s = 0
    while idx < sub_5e8b360e[arg1].field_0:
        mem[0] = sub_5e8b360e[arg1][idx].field_0
        mem[32] = 1
        if commission[stor2[arg1][idx].field_0].field_1280:
            if commission[stor2[arg1][idx].field_0].field_1280 != msg.sender:
                s = sha3(sub_5e8b360e[arg1][idx].field_0, 1)
                idx = idx + 1
                s = s
                continue 
        s = sha3(sub_5e8b360e[arg1][idx].field_0, 1)
        idx = idx + 1
        s = s + commission[stor2[arg1][idx].field_0].field_768
        continue 
    return s
}

function sub_bd98583a(?) {
    idx = 0
    while idx < stor3[arg1][address(arg2)].field_0:
        mem[0] = stor3[arg1][address(arg2)][idx].field_0
        mem[32] = 1
        if commission[stor3[arg1][address(arg2)][idx].field_0].field_1024:
            if not commission[stor3[arg1][address(arg2)][idx].field_0].field_1808:
                if not commission[stor3[arg1][address(arg2)][idx].field_0].field_1792:
                    if commission[stor3[arg1][address(arg2)][idx].field_0].field_1536 >= block.timestamp:
                        if commission[stor3[arg1][address(arg2)][idx].field_0].field_768 >= 1:
                            require idx < stor3[arg1][address(arg2)].field_0
                            mem[0] = stor3[arg1][address(arg2)][idx].field_0
                            mem[32] = 1
        idx = idx + 1
        continue 
    return 0
}

function cancel(uint256 arg1) {
    if commission[arg1].field_1024:
        if commission[arg1].field_1024 == msg.sender:
            if not commission[arg1].field_1808:
                if not commission[arg1].field_1792:
                    if commission[arg1].field_1536 >= block.timestamp:
                        commission[arg1].field_1808 = 1
                        emit 0x1d3cd45a: commission[commission[arg1].field_0].field_256, commission[commission[arg1].field_0].field_512, commission[commission[arg1].field_0].field_768, commission[commission[arg1].field_0].field_1024, commission[commission[arg1].field_0].field_1280, commission[commission[arg1].field_0].field_1536, bool(commission[commission[arg1].field_0].field_1792), bool(commission[commission[arg1].field_0].field_1800), bool(commission[commission[arg1].field_0].field_1808), 13, commission[commission[arg1].field_0].field_0
        else:
            if stor0 == msg.sender:
                if not commission[arg1].field_1808:
                    if not commission[arg1].field_1792:
                        if commission[arg1].field_1536 >= block.timestamp:
                            commission[arg1].field_1808 = 1
                            emit 0x1d3cd45a: commission[commission[arg1].field_0].field_256, commission[commission[arg1].field_0].field_512, commission[commission[arg1].field_0].field_768, commission[commission[arg1].field_0].field_1024, commission[commission[arg1].field_0].field_1280, commission[commission[arg1].field_0].field_1536, bool(commission[commission[arg1].field_0].field_1792), bool(commission[commission[arg1].field_0].field_1800), bool(commission[commission[arg1].field_0].field_1808), 13, commission[commission[arg1].field_0].field_0
}

function sub_24f10dfc(?) {
    if commission[arg1].field_1024:
        if commission[arg1].field_1024 == msg.sender:
            if not commission[arg1].field_1808:
                if not commission[arg1].field_1792:
                    if commission[arg1].field_1536 >= block.timestamp:
                        commission[arg1].field_2472 = arg2
                        emit 0x1d3cd45a: commission[commission[arg1].field_0].field_256, commission[commission[arg1].field_0].field_512, commission[commission[arg1].field_0].field_768, commission[commission[arg1].field_0].field_1024, commission[commission[arg1].field_0].field_1280, commission[commission[arg1].field_0].field_1536, bool(commission[commission[arg1].field_0].field_1792), bool(commission[commission[arg1].field_0].field_1800), bool(commission[commission[arg1].field_0].field_1808), 13, commission[commission[arg1].field_0].field_0
        else:
            if stor0 == msg.sender:
                if not commission[arg1].field_1808:
                    if not commission[arg1].field_1792:
                        if commission[arg1].field_1536 >= block.timestamp:
                            commission[arg1].field_2472 = arg2
                            emit 0x1d3cd45a: commission[commission[arg1].field_0].field_256, commission[commission[arg1].field_0].field_512, commission[commission[arg1].field_0].field_768, commission[commission[arg1].field_0].field_1024, commission[commission[arg1].field_0].field_1280, commission[commission[arg1].field_0].field_1536, bool(commission[commission[arg1].field_0].field_1792), bool(commission[commission[arg1].field_0].field_1800), bool(commission[commission[arg1].field_0].field_1808), 13, commission[commission[arg1].field_0].field_0
}

function sub_6b16815f(?) {
    if commission[arg1].field_1024:
        if commission[arg1].field_1024 == msg.sender:
            if not commission[arg1].field_1808:
                if not commission[arg1].field_1792:
                    if commission[arg1].field_1536 >= block.timestamp:
                        commission[arg1].field_2464 = arg2
                        emit 0x1d3cd45a: commission[commission[arg1].field_0].field_256, commission[commission[arg1].field_0].field_512, commission[commission[arg1].field_0].field_768, commission[commission[arg1].field_0].field_1024, commission[commission[arg1].field_0].field_1280, commission[commission[arg1].field_0].field_1536, bool(commission[commission[arg1].field_0].field_1792), bool(commission[commission[arg1].field_0].field_1800), bool(commission[commission[arg1].field_0].field_1808), 13, commission[commission[arg1].field_0].field_0
        else:
            if stor0 == msg.sender:
                if not commission[arg1].field_1808:
                    if not commission[arg1].field_1792:
                        if commission[arg1].field_1536 >= block.timestamp:
                            commission[arg1].field_2464 = arg2
                            emit 0x1d3cd45a: commission[commission[arg1].field_0].field_256, commission[commission[arg1].field_0].field_512, commission[commission[arg1].field_0].field_768, commission[commission[arg1].field_0].field_1024, commission[commission[arg1].field_0].field_1280, commission[commission[arg1].field_0].field_1536, bool(commission[commission[arg1].field_0].field_1792), bool(commission[commission[arg1].field_0].field_1800), bool(commission[commission[arg1].field_0].field_1808), 13, commission[commission[arg1].field_0].field_0
}

function setPrice(uint256 arg1, uint256 arg2) {
    if commission[arg1].field_1024:
        if commission[arg1].field_1024 == msg.sender:
            if not commission[arg1].field_1808:
                if not commission[arg1].field_1792:
                    if commission[arg1].field_1536 >= block.timestamp:
                        if arg2 >= 0:
                            commission[arg1].field_512 = arg2
                            emit 0x1d3cd45a: commission[commission[arg1].field_0].field_256, commission[commission[arg1].field_0].field_512, commission[commission[arg1].field_0].field_768, commission[commission[arg1].field_0].field_1024, commission[commission[arg1].field_0].field_1280, commission[commission[arg1].field_0].field_1536, bool(commission[commission[arg1].field_0].field_1792), bool(commission[commission[arg1].field_0].field_1800), bool(commission[commission[arg1].field_0].field_1808), 13, commission[commission[arg1].field_0].field_0
        else:
            if stor0 == msg.sender:
                if not commission[arg1].field_1808:
                    if not commission[arg1].field_1792:
                        if commission[arg1].field_1536 >= block.timestamp:
                            if arg2 >= 0:
                                commission[arg1].field_512 = arg2
                                emit 0x1d3cd45a: commission[commission[arg1].field_0].field_256, commission[commission[arg1].field_0].field_512, commission[commission[arg1].field_0].field_768, commission[commission[arg1].field_0].field_1024, commission[commission[arg1].field_0].field_1280, commission[commission[arg1].field_0].field_1536, bool(commission[commission[arg1].field_0].field_1792), bool(commission[commission[arg1].field_0].field_1800), bool(commission[commission[arg1].field_0].field_1808), 13, commission[commission[arg1].field_0].field_0
}

function sub_8052f837(?) {
    if commission[arg1].field_1024:
        if commission[arg1].field_1024 == msg.sender:
            if not commission[arg1].field_1808:
                if not commission[arg1].field_1792:
                    if commission[arg1].field_1536 >= block.timestamp:
                        if arg2 >= 0:
                            if arg3:
                                commission[arg1].field_2048 = arg2
                                commission[arg1].field_2304 = arg3
                                emit 0x1d3cd45a: commission[commission[arg1].field_0].field_256, commission[commission[arg1].field_0].field_512, commission[commission[arg1].field_0].field_768, commission[commission[arg1].field_0].field_1024, commission[commission[arg1].field_0].field_1280, commission[commission[arg1].field_0].field_1536, bool(commission[commission[arg1].field_0].field_1792), bool(commission[commission[arg1].field_0].field_1800), bool(commission[commission[arg1].field_0].field_1808), 13, commission[commission[arg1].field_0].field_0
        else:
            if stor0 == msg.sender:
                if not commission[arg1].field_1808:
                    if not commission[arg1].field_1792:
                        if commission[arg1].field_1536 >= block.timestamp:
                            if arg2 >= 0:
                                if arg3:
                                    commission[arg1].field_2048 = arg2
                                    commission[arg1].field_2304 = arg3
                                    emit 0x1d3cd45a: commission[commission[arg1].field_0].field_256, commission[commission[arg1].field_0].field_512, commission[commission[arg1].field_0].field_768, commission[commission[arg1].field_0].field_1024, commission[commission[arg1].field_0].field_1280, commission[commission[arg1].field_0].field_1536, bool(commission[commission[arg1].field_0].field_1792), bool(commission[commission[arg1].field_0].field_1800), bool(commission[commission[arg1].field_0].field_1808), 13, commission[commission[arg1].field_0].field_0
}

function sub_dbe867f8(?) {
    if commission[arg1].field_1024:
        if commission[arg1].field_1024 == msg.sender:
            if not commission[arg1].field_1808:
                if not commission[arg1].field_1792:
                    if commission[arg1].field_1536 >= block.timestamp:
                        if arg2 >= 0:
                            if arg3 >= 0:
                                commission[arg1].field_512 = arg2
                                commission[arg1].field_2048 = arg3
                                emit 0x1d3cd45a: commission[commission[arg1].field_0].field_256, commission[commission[arg1].field_0].field_512, commission[commission[arg1].field_0].field_768, commission[commission[arg1].field_0].field_1024, commission[commission[arg1].field_0].field_1280, commission[commission[arg1].field_0].field_1536, bool(commission[commission[arg1].field_0].field_1792), bool(commission[commission[arg1].field_0].field_1800), bool(commission[commission[arg1].field_0].field_1808), 13, commission[commission[arg1].field_0].field_0
        else:
            if stor0 == msg.sender:
                if not commission[arg1].field_1808:
                    if not commission[arg1].field_1792:
                        if commission[arg1].field_1536 >= block.timestamp:
                            if arg2 >= 0:
                                if arg3 >= 0:
                                    commission[arg1].field_512 = arg2
                                    commission[arg1].field_2048 = arg3
                                    emit 0x1d3cd45a: commission[commission[arg1].field_0].field_256, commission[commission[arg1].field_0].field_512, commission[commission[arg1].field_0].field_768, commission[commission[arg1].field_0].field_1024, commission[commission[arg1].field_0].field_1280, commission[commission[arg1].field_0].field_1536, bool(commission[commission[arg1].field_0].field_1792), bool(commission[commission[arg1].field_0].field_1800), bool(commission[commission[arg1].field_0].field_1808), 13, commission[commission[arg1].field_0].field_0
}

function sub_14a7dec6(?) {
    require ext_code.size(address(code.data[11619 len 32]))
    call address(code.data[11619 len 32]).addressOf(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args 0x637573746f6469616e0000000000000000000000000000000000000000000000
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xb1eb7998 with:
         gas gas_remaining - 50 wei
        args arg1, tx.origin
    require ext_call.success
    if ext_call.return_data[0] < arg2:
        emit 0x565a29bc: arg1, 6, 3, tx.origin
    else:
        commission[stor4.length + 1].field_0 = stor4.length + 1
        commission[stor4.length + 1].field_256 = arg1
        commission[stor4.length + 1].field_512 = arg3
        commission[stor4.length + 1].field_768 = arg2
        commission[stor4.length + 1].field_1024 = tx.origin
        commission[stor4.length + 1].field_1280 = 0
        commission[stor4.length + 1].field_1536 = arg4
        commission[stor4.length + 1].field_1792 = 0
        commission[stor4.length + 1].field_1800 = 0
        commission[stor4.length + 1].field_2048 = arg5
        commission[stor4.length + 1].field_2304 = arg6
        commission[stor4.length + 1].field_2464 = arg7
        commission[stor4.length + 1].field_2472 = arg8
        stor4.length++
        if not stor4.length <= stor4.length + 1:
            idx = stor4.length + 1
            while stor4.length > idx:
                stor4[idx].field_0 = 0
                idx = idx + 1
                continue 
        stor4[stor4.length].field_0 = commission[stor4.length + 1].field_0
        sub_5e8b360e[stor1[stor4.length + 1].field_256].field_0++
        sub_5e8b360e[stor1[stor4.length + 1].field_256][sub_5e8b360e[stor1[stor4.length + 1].field_256].field_0].field_0 = commission[stor4.length + 1].field_0
        stor3[stor1[stor4.length + 1].field_256][stor1[stor4.length + 1].field_1024].field_0++
        stor3[stor1[stor4.length + 1].field_256][stor1[stor4.length + 1].field_1024][stor3[stor1[stor4.length + 1].field_256][stor1[stor4.length + 1].field_1024].field_0].field_0 = commission[stor4.length + 1].field_0
        emit 0x129066a9: commission[stor4.length + 1].field_0, arg2, 5, tx.origin, 0
        emit 0x1d3cd45a: commission[commission[stor4.length + 1].field_0].field_256, 0, commission[commission[stor4.length + 1].field_0].field_768, commission[commission[stor4.length + 1].field_0].field_1024, commission[commission[stor4.length + 1].field_0].field_1280, commission[commission[stor4.length + 1].field_0].field_1536, bool(commission[commission[stor4.length + 1].field_0].field_1792), bool(commission[commission[stor4.length + 1].field_0].field_1800), bool(commission[commission[stor4.length + 1].field_0].field_1808), 12, commission[commission[stor4.length + 1].field_0].field_0
}

function sub_3c481549(?) {
    require ext_code.size(address(code.data[11619 len 32]))
    call address(code.data[11619 len 32]).addressOf(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args 0x637573746f6469616e0000000000000000000000000000000000000000000000
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xb1eb7998 with:
         gas gas_remaining - 50 wei
        args arg1, tx.origin
    require ext_call.success
    if ext_call.return_data[0] < arg3:
        emit 0x565a29bc: arg1, 6, 3, tx.origin
    else:
        commission[stor4.length + 1].field_0 = stor4.length + 1
        commission[stor4.length + 1].field_256 = arg1
        commission[stor4.length + 1].field_512 = arg4
        commission[stor4.length + 1].field_768 = arg3
        commission[stor4.length + 1].field_1024 = tx.origin
        commission[stor4.length + 1].field_1280 = arg2
        commission[stor4.length + 1].field_1536 = arg5
        commission[stor4.length + 1].field_1792 = 0
        commission[stor4.length + 1].field_1800 = 0
        commission[stor4.length + 1].field_2048 = arg6
        commission[stor4.length + 1].field_2304 = arg7
        commission[stor4.length + 1].field_2464 = arg8
        commission[stor4.length + 1].field_2472 = arg9
        stor4.length++
        if not stor4.length <= stor4.length + 1:
            idx = stor4.length + 1
            while stor4.length > idx:
                stor4[idx].field_0 = 0
                idx = idx + 1
                continue 
        stor4[stor4.length].field_0 = commission[stor4.length + 1].field_0
        sub_5e8b360e[stor1[stor4.length + 1].field_256].field_0++
        sub_5e8b360e[stor1[stor4.length + 1].field_256][sub_5e8b360e[stor1[stor4.length + 1].field_256].field_0].field_0 = commission[stor4.length + 1].field_0
        stor3[stor1[stor4.length + 1].field_256][stor1[stor4.length + 1].field_1024].field_0++
        stor3[stor1[stor4.length + 1].field_256][stor1[stor4.length + 1].field_1024][stor3[stor1[stor4.length + 1].field_256][stor1[stor4.length + 1].field_1024].field_0].field_0 = commission[stor4.length + 1].field_0
        emit 0x129066a9: commission[stor4.length + 1].field_0, arg3, 5, tx.origin, arg2
        emit 0x1d3cd45a: commission[commission[stor4.length + 1].field_0].field_256, 0, commission[commission[stor4.length + 1].field_0].field_768, commission[commission[stor4.length + 1].field_0].field_1024, commission[commission[stor4.length + 1].field_0].field_1280, commission[commission[stor4.length + 1].field_0].field_1536, bool(commission[commission[stor4.length + 1].field_0].field_1792), bool(commission[commission[stor4.length + 1].field_0].field_1800), bool(commission[commission[stor4.length + 1].field_0].field_1808), 12, commission[commission[stor4.length + 1].field_0].field_0
}

function sub_0bc689ef(?) {
    mem[64] = 544
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
    idx = 0
    while idx < sub_5e8b360e[arg1].field_0:
        mem[0] = commission[stor2[arg1][idx].field_0].field_0
        mem[32] = 1
        if commission[commission[stor2[arg1][idx].field_0].field_0].field_1024:
            if not commission[commission[stor2[arg1][idx].field_0].field_0].field_1808:
                if not commission[commission[stor2[arg1][idx].field_0].field_0].field_1792:
                    if commission[commission[stor2[arg1][idx].field_0].field_0].field_1536 >= block.timestamp:
                        if commission[commission[stor2[arg1][idx].field_0].field_0].field_768 >= 1:
                            require idx < sub_5e8b360e[arg1].field_0
                            mem[0] = sub_5e8b360e[arg1][idx].field_0
                            mem[32] = 1
                            if not mem[236 len 20]:
                                _31 = mem[64]
                                mem[64] = mem[64] + 448
                                mem[_31] = commission[stor2[arg1][idx].field_0].field_0
                                mem[_31 + 32] = commission[stor2[arg1][idx].field_0].field_256
                                mem[_31 + 64] = commission[stor2[arg1][idx].field_0].field_512
                                mem[_31 + 96] = commission[stor2[arg1][idx].field_0].field_768
                                mem[_31 + 128] = commission[stor2[arg1][idx].field_0].field_1024
                                mem[_31 + 160] = commission[stor2[arg1][idx].field_0].field_1280
                                mem[_31 + 192] = commission[stor2[arg1][idx].field_0].field_1536
                                mem[_31 + 224] = bool(commission[stor2[arg1][idx].field_0].field_1792)
                                mem[_31 + 256] = bool(commission[stor2[arg1][idx].field_0].field_1800)
                                mem[_31 + 288] = bool(commission[stor2[arg1][idx].field_0].field_1808)
                                mem[_31 + 320] = commission[stor2[arg1][idx].field_0].field_2048
                                mem[_31 + 352] = commission[stor2[arg1][idx].field_0].field_2304
                                mem[_31 + 384] = bool(commission[stor2[arg1][idx].field_0].field_2464)
                                mem[_31 + 416] = bool(commission[stor2[arg1][idx].field_0].field_2472)
                            else:
                                if commission[stor2[arg1][idx].field_0].field_512 < mem[160]:
                                    require idx < sub_5e8b360e[arg1].field_0
                                    mem[0] = sub_5e8b360e[arg1][idx].field_0
                                    mem[32] = 1
                                    _34 = mem[64]
                                    mem[64] = mem[64] + 448
                                    mem[_34] = commission[stor2[arg1][idx].field_0].field_0
                                    mem[_34 + 32] = commission[stor2[arg1][idx].field_0].field_256
                                    mem[_34 + 64] = commission[stor2[arg1][idx].field_0].field_512
                                    mem[_34 + 96] = commission[stor2[arg1][idx].field_0].field_768
                                    mem[_34 + 128] = commission[stor2[arg1][idx].field_0].field_1024
                                    mem[_34 + 160] = commission[stor2[arg1][idx].field_0].field_1280
                                    mem[_34 + 192] = commission[stor2[arg1][idx].field_0].field_1536
                                    mem[_34 + 224] = bool(commission[stor2[arg1][idx].field_0].field_1792)
                                    mem[_34 + 256] = bool(commission[stor2[arg1][idx].field_0].field_1800)
                                    mem[_34 + 288] = bool(commission[stor2[arg1][idx].field_0].field_1808)
                                    mem[_34 + 320] = commission[stor2[arg1][idx].field_0].field_2048
                                    mem[_34 + 352] = commission[stor2[arg1][idx].field_0].field_2304
                                    mem[_34 + 384] = bool(commission[stor2[arg1][idx].field_0].field_2464)
                                    mem[_34 + 416] = bool(commission[stor2[arg1][idx].field_0].field_2472)
        idx = idx + 1
        continue 
    mem[mem[64]] = mem[96]
    return memory
      from mem[64]
       len 32
}

function sub_b741e9c7(?) {
    if commission[arg1].field_1024:
        if commission[arg1].field_1024 == msg.sender:
            if not commission[arg1].field_1808:
                if not commission[arg1].field_1792:
                    if commission[arg1].field_1536 >= block.timestamp:
                        if arg2 >= 0:
                            if arg2 <= commission[arg1].field_768:
                                commission[arg1].field_768 = arg2
                                emit 0x1d3cd45a: commission[commission[arg1].field_0].field_256, commission[commission[arg1].field_0].field_512, commission[commission[arg1].field_0].field_768, commission[commission[arg1].field_0].field_1024, commission[commission[arg1].field_0].field_1280, commission[commission[arg1].field_0].field_1536, bool(commission[commission[arg1].field_0].field_1792), bool(commission[commission[arg1].field_0].field_1800), bool(commission[commission[arg1].field_0].field_1808), 13, commission[commission[arg1].field_0].field_0
                            else:
                                require ext_code.size(address(code.data[11619 len 32]))
                                call address(code.data[11619 len 32]).addressOf(bytes32 rg1) with:
                                     gas gas_remaining - 50 wei
                                    args 0x637573746f6469616e0000000000000000000000000000000000000000000000
                                require ext_call.success
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xb1eb7998 with:
                                     gas gas_remaining - 50 wei
                                    args commission[arg1].field_256, commission[arg1].field_1024
                                require ext_call.success
                                if ext_call.return_data[0] >= arg2 - commission[arg1].field_768:
                                    commission[arg1].field_768 = arg2
                                    emit 0x1d3cd45a: commission[commission[arg1].field_0].field_256, 0, commission[commission[arg1].field_0].field_768, commission[commission[arg1].field_0].field_1024, commission[commission[arg1].field_0].field_1280, commission[commission[arg1].field_0].field_1536, bool(commission[commission[arg1].field_0].field_1792), bool(commission[commission[arg1].field_0].field_1800), bool(commission[commission[arg1].field_0].field_1808), 13, commission[commission[arg1].field_0].field_0
        else:
            if stor0 == msg.sender:
                if not commission[arg1].field_1808:
                    if not commission[arg1].field_1792:
                        if commission[arg1].field_1536 >= block.timestamp:
                            if arg2 >= 0:
                                if arg2 <= commission[arg1].field_768:
                                    commission[arg1].field_768 = arg2
                                    emit 0x1d3cd45a: commission[commission[arg1].field_0].field_256, commission[commission[arg1].field_0].field_512, commission[commission[arg1].field_0].field_768, commission[commission[arg1].field_0].field_1024, commission[commission[arg1].field_0].field_1280, commission[commission[arg1].field_0].field_1536, bool(commission[commission[arg1].field_0].field_1792), bool(commission[commission[arg1].field_0].field_1800), bool(commission[commission[arg1].field_0].field_1808), 13, commission[commission[arg1].field_0].field_0
                                else:
                                    require ext_code.size(address(code.data[11619 len 32]))
                                    call address(code.data[11619 len 32]).addressOf(bytes32 rg1) with:
                                         gas gas_remaining - 50 wei
                                        args 0x637573746f6469616e0000000000000000000000000000000000000000000000
                                    require ext_call.success
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xb1eb7998 with:
                                         gas gas_remaining - 50 wei
                                        args commission[arg1].field_256, commission[arg1].field_1024
                                    require ext_call.success
                                    if ext_call.return_data[0] >= arg2 - commission[arg1].field_768:
                                        commission[arg1].field_768 = arg2
                                        emit 0x1d3cd45a: commission[commission[arg1].field_0].field_256, 0, commission[commission[arg1].field_0].field_768, commission[commission[arg1].field_0].field_1024, commission[commission[arg1].field_0].field_1280, commission[commission[arg1].field_0].field_1536, bool(commission[commission[arg1].field_0].field_1792), bool(commission[commission[arg1].field_0].field_1800), bool(commission[commission[arg1].field_0].field_1808), 13, commission[commission[arg1].field_0].field_0
}

function sub_e1b56a7d(?) {
    if commission[arg1].field_1024:
        if commission[arg1].field_1024 == msg.sender:
            if not commission[arg1].field_1808:
                if not commission[arg1].field_1792:
                    if arg3 <= commission[arg1].field_768:
                        commission[arg1].field_768 = arg3
                        commission[arg1].field_512 = arg2
                        commission[arg1].field_1536 = arg4
                        emit 0x1d3cd45a: commission[commission[arg1].field_0].field_256, commission[commission[arg1].field_0].field_512, commission[commission[arg1].field_0].field_768, commission[commission[arg1].field_0].field_1024, commission[commission[arg1].field_0].field_1280, commission[commission[arg1].field_0].field_1536, bool(commission[commission[arg1].field_0].field_1792), bool(commission[commission[arg1].field_0].field_1800), bool(commission[commission[arg1].field_0].field_1808), 13, commission[commission[arg1].field_0].field_0
                    else:
                        require ext_code.size(address(code.data[11619 len 32]))
                        call address(code.data[11619 len 32]).addressOf(bytes32 rg1) with:
                             gas gas_remaining - 50 wei
                            args 0x637573746f6469616e0000000000000000000000000000000000000000000000
                        require ext_call.success
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xb1eb7998 with:
                             gas gas_remaining - 50 wei
                            args commission[arg1].field_256, commission[arg1].field_1024
                        require ext_call.success
                        if ext_call.return_data[0] >= arg3 - commission[arg1].field_768:
                            commission[arg1].field_768 = arg3
                            commission[arg1].field_512 = arg2
                            commission[arg1].field_1536 = arg4
                            emit 0x1d3cd45a: commission[commission[arg1].field_0].field_256, 0, commission[commission[arg1].field_0].field_768, commission[commission[arg1].field_0].field_1024, commission[commission[arg1].field_0].field_1280, commission[commission[arg1].field_0].field_1536, bool(commission[commission[arg1].field_0].field_1792), bool(commission[commission[arg1].field_0].field_1800), bool(commission[commission[arg1].field_0].field_1808), 13, commission[commission[arg1].field_0].field_0
        else:
            if stor0 == msg.sender:
                if not commission[arg1].field_1808:
                    if not commission[arg1].field_1792:
                        if arg3 <= commission[arg1].field_768:
                            commission[arg1].field_768 = arg3
                            commission[arg1].field_512 = arg2
                            commission[arg1].field_1536 = arg4
                            emit 0x1d3cd45a: commission[commission[arg1].field_0].field_256, commission[commission[arg1].field_0].field_512, commission[commission[arg1].field_0].field_768, commission[commission[arg1].field_0].field_1024, commission[commission[arg1].field_0].field_1280, commission[commission[arg1].field_0].field_1536, bool(commission[commission[arg1].field_0].field_1792), bool(commission[commission[arg1].field_0].field_1800), bool(commission[commission[arg1].field_0].field_1808), 13, commission[commission[arg1].field_0].field_0
                        else:
                            require ext_code.size(address(code.data[11619 len 32]))
                            call address(code.data[11619 len 32]).addressOf(bytes32 rg1) with:
                                 gas gas_remaining - 50 wei
                                args 0x637573746f6469616e0000000000000000000000000000000000000000000000
                            require ext_call.success
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xb1eb7998 with:
                                 gas gas_remaining - 50 wei
                                args commission[arg1].field_256, commission[arg1].field_1024
                            require ext_call.success
                            if ext_call.return_data[0] >= arg3 - commission[arg1].field_768:
                                commission[arg1].field_768 = arg3
                                commission[arg1].field_512 = arg2
                                commission[arg1].field_1536 = arg4
                                emit 0x1d3cd45a: commission[commission[arg1].field_0].field_256, 0, commission[commission[arg1].field_0].field_768, commission[commission[arg1].field_0].field_1024, commission[commission[arg1].field_0].field_1280, commission[commission[arg1].field_0].field_1536, bool(commission[commission[arg1].field_0].field_1792), bool(commission[commission[arg1].field_0].field_1800), bool(commission[commission[arg1].field_0].field_1808), 13, commission[commission[arg1].field_0].field_0
}

function sub_5d8cb9fa(?) {
    mem[64] = 544
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
    idx = 0
    while idx < sub_5e8b360e[arg1].field_0:
        mem[0] = commission[stor2[arg1][idx].field_0].field_0
        mem[32] = 1
        if commission[commission[stor2[arg1][idx].field_0].field_0].field_1024:
            if not commission[commission[stor2[arg1][idx].field_0].field_0].field_1808:
                if not commission[commission[stor2[arg1][idx].field_0].field_0].field_1792:
                    if commission[commission[stor2[arg1][idx].field_0].field_0].field_1536 >= block.timestamp:
                        if commission[commission[stor2[arg1][idx].field_0].field_0].field_768 >= 1:
                            require idx < sub_5e8b360e[arg1].field_0
                            mem[0] = sub_5e8b360e[arg1][idx].field_0
                            mem[32] = 1
                            if not mem[236 len 20]:
                                _33 = mem[64]
                                mem[64] = mem[64] + 448
                                mem[_33] = commission[stor2[arg1][idx].field_0].field_0
                                mem[_33 + 32] = commission[stor2[arg1][idx].field_0].field_256
                                mem[_33 + 64] = commission[stor2[arg1][idx].field_0].field_512
                                mem[_33 + 96] = commission[stor2[arg1][idx].field_0].field_768
                                mem[_33 + 128] = commission[stor2[arg1][idx].field_0].field_1024
                                mem[_33 + 160] = commission[stor2[arg1][idx].field_0].field_1280
                                mem[_33 + 192] = commission[stor2[arg1][idx].field_0].field_1536
                                mem[_33 + 224] = bool(commission[stor2[arg1][idx].field_0].field_1792)
                                mem[_33 + 256] = bool(commission[stor2[arg1][idx].field_0].field_1800)
                                mem[_33 + 288] = bool(commission[stor2[arg1][idx].field_0].field_1808)
                                mem[_33 + 320] = commission[stor2[arg1][idx].field_0].field_2048
                                mem[_33 + 352] = commission[stor2[arg1][idx].field_0].field_2304
                                mem[_33 + 384] = bool(commission[stor2[arg1][idx].field_0].field_2464)
                                mem[_33 + 416] = bool(commission[stor2[arg1][idx].field_0].field_2472)
                            else:
                                if commission[stor2[arg1][idx].field_0].field_512 < mem[160]:
                                    require idx < sub_5e8b360e[arg1].field_0
                                    mem[0] = sub_5e8b360e[arg1][idx].field_0
                                    mem[32] = 1
                                    _36 = mem[64]
                                    mem[64] = mem[64] + 448
                                    mem[_36] = commission[stor2[arg1][idx].field_0].field_0
                                    mem[_36 + 32] = commission[stor2[arg1][idx].field_0].field_256
                                    mem[_36 + 64] = commission[stor2[arg1][idx].field_0].field_512
                                    mem[_36 + 96] = commission[stor2[arg1][idx].field_0].field_768
                                    mem[_36 + 128] = commission[stor2[arg1][idx].field_0].field_1024
                                    mem[_36 + 160] = commission[stor2[arg1][idx].field_0].field_1280
                                    mem[_36 + 192] = commission[stor2[arg1][idx].field_0].field_1536
                                    mem[_36 + 224] = bool(commission[stor2[arg1][idx].field_0].field_1792)
                                    mem[_36 + 256] = bool(commission[stor2[arg1][idx].field_0].field_1800)
                                    mem[_36 + 288] = bool(commission[stor2[arg1][idx].field_0].field_1808)
                                    mem[_36 + 320] = commission[stor2[arg1][idx].field_0].field_2048
                                    mem[_36 + 352] = commission[stor2[arg1][idx].field_0].field_2304
                                    mem[_36 + 384] = bool(commission[stor2[arg1][idx].field_0].field_2464)
                                    mem[_36 + 416] = bool(commission[stor2[arg1][idx].field_0].field_2472)
        idx = idx + 1
        continue 
    mem[0] = mem[96]
    mem[32] = 1
    mem[mem[64]] = commission[mem[96]].field_0
    mem[mem[64] + 32] = commission[mem[0]].field_256
    mem[mem[64] + 64] = commission[mem[0]].field_512
    mem[mem[64] + 96] = commission[mem[0]].field_768
    return mem[mem[64] len 64], 
           commission[mem[0]].field_512,
           commission[mem[0]].field_768,
           commission[mem[0]].field_1024,
           commission[mem[0]].field_1280,
           commission[mem[0]].field_1536,
           bool(commission[mem[0]].field_1792),
           bool(commission[mem[0]].field_1800),
           bool(commission[mem[0]].field_1808)
}

function sub_8b68b88c(?) {
    require ext_code.size(address(code.data[11619 len 32]))
    call address(code.data[11619 len 32]).addressOf(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args 0x626f6e6400000000000000000000000000000000000000000000000000000000
    require ext_call.success
    if ext_call.return_data[12 len 20] == msg.sender:
        require ext_code.size(address(code.data[11619 len 32]))
        call address(code.data[11619 len 32]).addressOf(bytes32 rg1) with:
             gas gas_remaining - 50 wei
            args 0x637573746f6469616e0000000000000000000000000000000000000000000000
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xb1eb7998 with:
             gas gas_remaining - 50 wei
            args arg1, tx.origin
        require ext_call.success
        if ext_call.return_data[0] < arg2:
            emit 0x565a29bc: arg1, 6, 3, tx.origin
        else:
            commission[stor4.length + 1].field_0 = stor4.length + 1
            commission[stor4.length + 1].field_256 = arg1
            commission[stor4.length + 1].field_512 = arg3
            commission[stor4.length + 1].field_768 = arg2
            commission[stor4.length + 1].field_1024 = tx.origin
            commission[stor4.length + 1].field_1280 = 0
            commission[stor4.length + 1].field_1536 = arg4
            commission[stor4.length + 1].field_1792 = 0
            commission[stor4.length + 1].field_1800 = 0
            commission[stor4.length + 1].field_2048 = arg5
            commission[stor4.length + 1].field_2304 = arg6
            commission[stor4.length + 1].field_2464 = arg7
            commission[stor4.length + 1].field_2472 = arg8
            stor4.length++
            if not stor4.length <= stor4.length + 1:
                idx = stor4.length + 1
                while stor4.length > idx:
                    stor4[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            stor4[stor4.length].field_0 = commission[stor4.length + 1].field_0
            sub_5e8b360e[stor1[stor4.length + 1].field_256].field_0++
            sub_5e8b360e[stor1[stor4.length + 1].field_256][sub_5e8b360e[stor1[stor4.length + 1].field_256].field_0].field_0 = commission[stor4.length + 1].field_0
            stor3[stor1[stor4.length + 1].field_256][stor1[stor4.length + 1].field_1024].field_0++
            stor3[stor1[stor4.length + 1].field_256][stor1[stor4.length + 1].field_1024][stor3[stor1[stor4.length + 1].field_256][stor1[stor4.length + 1].field_1024].field_0].field_0 = commission[stor4.length + 1].field_0
            emit 0x129066a9: commission[stor4.length + 1].field_0, arg2, 5, tx.origin, 0
            emit 0x1d3cd45a: commission[commission[stor4.length + 1].field_0].field_256, 0, commission[commission[stor4.length + 1].field_0].field_768, commission[commission[stor4.length + 1].field_0].field_1024, commission[commission[stor4.length + 1].field_0].field_1280, commission[commission[stor4.length + 1].field_0].field_1536, bool(commission[commission[stor4.length + 1].field_0].field_1792), bool(commission[commission[stor4.length + 1].field_0].field_1800), bool(commission[commission[stor4.length + 1].field_0].field_1808), 12, commission[commission[stor4.length + 1].field_0].field_0
    else:
        if stor0 == msg.sender:
            require ext_code.size(address(code.data[11619 len 32]))
            call address(code.data[11619 len 32]).addressOf(bytes32 rg1) with:
                 gas gas_remaining - 50 wei
                args 0x637573746f6469616e0000000000000000000000000000000000000000000000
            require ext_call.success
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xb1eb7998 with:
                 gas gas_remaining - 50 wei
                args arg1, tx.origin
            require ext_call.success
            if ext_call.return_data[0] < arg2:
                emit 0x565a29bc: arg1, 6, 3, tx.origin
            else:
                commission[stor4.length + 1].field_0 = stor4.length + 1
                commission[stor4.length + 1].field_256 = arg1
                commission[stor4.length + 1].field_512 = arg3
                commission[stor4.length + 1].field_768 = arg2
                commission[stor4.length + 1].field_1024 = tx.origin
                commission[stor4.length + 1].field_1280 = 0
                commission[stor4.length + 1].field_1536 = arg4
                commission[stor4.length + 1].field_1792 = 0
                commission[stor4.length + 1].field_1800 = 0
                commission[stor4.length + 1].field_2048 = arg5
                commission[stor4.length + 1].field_2304 = arg6
                commission[stor4.length + 1].field_2464 = arg7
                commission[stor4.length + 1].field_2472 = arg8
                stor4.length++
                if not stor4.length <= stor4.length + 1:
                    idx = stor4.length + 1
                    while stor4.length > idx:
                        stor4[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                stor4[stor4.length].field_0 = commission[stor4.length + 1].field_0
                sub_5e8b360e[stor1[stor4.length + 1].field_256].field_0++
                sub_5e8b360e[stor1[stor4.length + 1].field_256][sub_5e8b360e[stor1[stor4.length + 1].field_256].field_0].field_0 = commission[stor4.length + 1].field_0
                stor3[stor1[stor4.length + 1].field_256][stor1[stor4.length + 1].field_1024].field_0++
                stor3[stor1[stor4.length + 1].field_256][stor1[stor4.length + 1].field_1024][stor3[stor1[stor4.length + 1].field_256][stor1[stor4.length + 1].field_1024].field_0].field_0 = commission[stor4.length + 1].field_0
                emit 0x129066a9: commission[stor4.length + 1].field_0, arg2, 5, tx.origin, 0
                emit 0x1d3cd45a: commission[commission[stor4.length + 1].field_0].field_256, 0, commission[commission[stor4.length + 1].field_0].field_768, commission[commission[stor4.length + 1].field_0].field_1024, commission[commission[stor4.length + 1].field_0].field_1280, commission[commission[stor4.length + 1].field_0].field_1536, bool(commission[commission[stor4.length + 1].field_0].field_1792), bool(commission[commission[stor4.length + 1].field_0].field_1800), bool(commission[commission[stor4.length + 1].field_0].field_1808), 12, commission[commission[stor4.length + 1].field_0].field_0
}

function sub_0dd4b27e(?) {
    require ext_code.size(address(code.data[11619 len 32]))
    call address(code.data[11619 len 32]).addressOf(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args 0x626f6e6400000000000000000000000000000000000000000000000000000000
    require ext_call.success
    if ext_call.return_data[12 len 20] == msg.sender:
        require ext_code.size(address(code.data[11619 len 32]))
        call address(code.data[11619 len 32]).addressOf(bytes32 rg1) with:
             gas gas_remaining - 50 wei
            args 0x637573746f6469616e0000000000000000000000000000000000000000000000
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xb1eb7998 with:
             gas gas_remaining - 50 wei
            args arg1, tx.origin
        require ext_call.success
        if ext_call.return_data[0] < arg3:
            emit 0x565a29bc: arg1, 6, 3, tx.origin
        else:
            commission[stor4.length + 1].field_0 = stor4.length + 1
            commission[stor4.length + 1].field_256 = arg1
            commission[stor4.length + 1].field_512 = arg4
            commission[stor4.length + 1].field_768 = arg3
            commission[stor4.length + 1].field_1024 = tx.origin
            commission[stor4.length + 1].field_1280 = arg2
            commission[stor4.length + 1].field_1536 = arg5
            commission[stor4.length + 1].field_1792 = 0
            commission[stor4.length + 1].field_1800 = 0
            commission[stor4.length + 1].field_2048 = arg6
            commission[stor4.length + 1].field_2304 = arg7
            commission[stor4.length + 1].field_2464 = arg8
            commission[stor4.length + 1].field_2472 = arg9
            stor4.length++
            if not stor4.length <= stor4.length + 1:
                idx = stor4.length + 1
                while stor4.length > idx:
                    stor4[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            stor4[stor4.length].field_0 = commission[stor4.length + 1].field_0
            sub_5e8b360e[stor1[stor4.length + 1].field_256].field_0++
            sub_5e8b360e[stor1[stor4.length + 1].field_256][sub_5e8b360e[stor1[stor4.length + 1].field_256].field_0].field_0 = commission[stor4.length + 1].field_0
            stor3[stor1[stor4.length + 1].field_256][stor1[stor4.length + 1].field_1024].field_0++
            stor3[stor1[stor4.length + 1].field_256][stor1[stor4.length + 1].field_1024][stor3[stor1[stor4.length + 1].field_256][stor1[stor4.length + 1].field_1024].field_0].field_0 = commission[stor4.length + 1].field_0
            emit 0x129066a9: commission[stor4.length + 1].field_0, arg3, 5, tx.origin, arg2
            emit 0x1d3cd45a: commission[commission[stor4.length + 1].field_0].field_256, 0, commission[commission[stor4.length + 1].field_0].field_768, commission[commission[stor4.length + 1].field_0].field_1024, commission[commission[stor4.length + 1].field_0].field_1280, commission[commission[stor4.length + 1].field_0].field_1536, bool(commission[commission[stor4.length + 1].field_0].field_1792), bool(commission[commission[stor4.length + 1].field_0].field_1800), bool(commission[commission[stor4.length + 1].field_0].field_1808), 12, commission[commission[stor4.length + 1].field_0].field_0
    else:
        if stor0 == msg.sender:
            require ext_code.size(address(code.data[11619 len 32]))
            call address(code.data[11619 len 32]).addressOf(bytes32 rg1) with:
                 gas gas_remaining - 50 wei
                args 0x637573746f6469616e0000000000000000000000000000000000000000000000
            require ext_call.success
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xb1eb7998 with:
                 gas gas_remaining - 50 wei
                args arg1, tx.origin
            require ext_call.success
            if ext_call.return_data[0] < arg3:
                emit 0x565a29bc: arg1, 6, 3, tx.origin
            else:
                commission[stor4.length + 1].field_0 = stor4.length + 1
                commission[stor4.length + 1].field_256 = arg1
                commission[stor4.length + 1].field_512 = arg4
                commission[stor4.length + 1].field_768 = arg3
                commission[stor4.length + 1].field_1024 = tx.origin
                commission[stor4.length + 1].field_1280 = arg2
                commission[stor4.length + 1].field_1536 = arg5
                commission[stor4.length + 1].field_1792 = 0
                commission[stor4.length + 1].field_1800 = 0
                commission[stor4.length + 1].field_2048 = arg6
                commission[stor4.length + 1].field_2304 = arg7
                commission[stor4.length + 1].field_2464 = arg8
                commission[stor4.length + 1].field_2472 = arg9
                stor4.length++
                if not stor4.length <= stor4.length + 1:
                    idx = stor4.length + 1
                    while stor4.length > idx:
                        stor4[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                stor4[stor4.length].field_0 = commission[stor4.length + 1].field_0
                sub_5e8b360e[stor1[stor4.length + 1].field_256].field_0++
                sub_5e8b360e[stor1[stor4.length + 1].field_256][sub_5e8b360e[stor1[stor4.length + 1].field_256].field_0].field_0 = commission[stor4.length + 1].field_0
                stor3[stor1[stor4.length + 1].field_256][stor1[stor4.length + 1].field_1024].field_0++
                stor3[stor1[stor4.length + 1].field_256][stor1[stor4.length + 1].field_1024][stor3[stor1[stor4.length + 1].field_256][stor1[stor4.length + 1].field_1024].field_0].field_0 = commission[stor4.length + 1].field_0
                emit 0x129066a9: commission[stor4.length + 1].field_0, arg3, 5, tx.origin, arg2
                emit 0x1d3cd45a: commission[commission[stor4.length + 1].field_0].field_256, 0, commission[commission[stor4.length + 1].field_0].field_768, commission[commission[stor4.length + 1].field_0].field_1024, commission[commission[stor4.length + 1].field_0].field_1280, commission[commission[stor4.length + 1].field_0].field_1536, bool(commission[commission[stor4.length + 1].field_0].field_1792), bool(commission[commission[stor4.length + 1].field_0].field_1800), bool(commission[commission[stor4.length + 1].field_0].field_1808), 12, commission[commission[stor4.length + 1].field_0].field_0
}

function acceptOffer(uint256 arg1) payable {
    if msg.sender != msg.sender:
        if stor0 != msg.sender:
            require ext_code.size(address(code.data[11619 len 32]))
            call address(code.data[11619 len 32]).addressOf(bytes32 rg1) with:
                 gas gas_remaining - 50 wei
                args 0x626f6e6400000000000000000000000000000000000000000000000000000000
            require ext_call.success
            if ext_call.return_data[12 len 20] != msg.sender:
                emit 0x565a29bc: commission[arg1].field_0, 11, 14, msg.sender
                return 0
    if not commission[commission[arg1].field_0].field_1536:
        emit 0x565a29bc: commission[arg1].field_0, 11, 3, msg.sender
        return 0
    if commission[commission[arg1].field_0].field_1280:
        if commission[commission[arg1].field_0].field_1280 != msg.sender:
            emit 0x565a29bc: commission[arg1].field_0, 7, 3, msg.sender
            if 1 == bool(commission[commission[arg1].field_0].field_1792):
                emit 0x565a29bc: commission[arg1].field_0, 8, 3, msg.sender
            else:
                if 1 == bool(commission[commission[arg1].field_0].field_1800):
                    emit 0x565a29bc: commission[arg1].field_0, 8, 3, msg.sender
            if commission[commission[arg1].field_0].field_1536 < block.timestamp:
                emit 0x565a29bc: commission[arg1].field_0, 9, 3, msg.sender
            if not commission[commission[arg1].field_0].field_2472:
                require ext_code.size(address(code.data[11619 len 32]))
                call address(code.data[11619 len 32]).addressOf(bytes32 rg1) with:
                     gas gas_remaining - 50 wei
                    args 'stabletoken'
                require ext_call.success
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).getBalance(address rg1) with:
                     gas gas_remaining - 50 wei
                    args msg.sender
                require ext_call.success
                if ext_call.return_data[0] < 0:
                    emit 0x565a29bc: commission[arg1].field_0, 4, 3, msg.sender
                    return 0
                else:
                    return 0
            else:
                return 0
    if 1 == bool(commission[commission[arg1].field_0].field_1792):
        emit 0x565a29bc: commission[arg1].field_0, 8, 3, msg.sender
        if commission[commission[arg1].field_0].field_1536 < block.timestamp:
            emit 0x565a29bc: commission[arg1].field_0, 9, 3, msg.sender
        if not commission[commission[arg1].field_0].field_2472:
            require ext_code.size(address(code.data[11619 len 32]))
            call address(code.data[11619 len 32]).addressOf(bytes32 rg1) with:
                 gas gas_remaining - 50 wei
                args 'stabletoken'
            require ext_call.success
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).getBalance(address rg1) with:
                 gas gas_remaining - 50 wei
                args msg.sender
            require ext_call.success
            if ext_call.return_data[0] < 0:
                emit 0x565a29bc: commission[arg1].field_0, 4, 3, msg.sender
                return 0
            else:
                return 0
        else:
            return 0
    if 1 == bool(commission[commission[arg1].field_0].field_1800):
        emit 0x565a29bc: commission[arg1].field_0, 8, 3, msg.sender
        if commission[commission[arg1].field_0].field_1536 < block.timestamp:
            emit 0x565a29bc: commission[arg1].field_0, 9, 3, msg.sender
        if not commission[commission[arg1].field_0].field_2472:
            require ext_code.size(address(code.data[11619 len 32]))
            call address(code.data[11619 len 32]).addressOf(bytes32 rg1) with:
                 gas gas_remaining - 50 wei
                args 'stabletoken'
            require ext_call.success
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).getBalance(address rg1) with:
                 gas gas_remaining - 50 wei
                args msg.sender
            require ext_call.success
            if ext_call.return_data[0] < 0:
                emit 0x565a29bc: commission[arg1].field_0, 4, 3, msg.sender
                return 0
            else:
                return 0
        else:
            return 0
    if commission[commission[arg1].field_0].field_1536 < block.timestamp:
        emit 0x565a29bc: commission[arg1].field_0, 9, 3, msg.sender
        if not commission[commission[arg1].field_0].field_2472:
            require ext_code.size(address(code.data[11619 len 32]))
            call address(code.data[11619 len 32]).addressOf(bytes32 rg1) with:
                 gas gas_remaining - 50 wei
                args 'stabletoken'
            require ext_call.success
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).getBalance(address rg1) with:
                 gas gas_remaining - 50 wei
                args msg.sender
            require ext_call.success
            if ext_call.return_data[0] < 0:
                emit 0x565a29bc: commission[arg1].field_0, 4, 3, msg.sender
                return 0
            else:
                return 0
        else:
            return 0
    if commission[commission[arg1].field_0].field_2472:
        if msg.value < 0:
            return 0
    else:
        require ext_code.size(address(code.data[11619 len 32]))
        call address(code.data[11619 len 32]).addressOf(bytes32 rg1) with:
             gas gas_remaining - 50 wei
            args 'stabletoken'
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).getBalance(address rg1) with:
             gas gas_remaining - 50 wei
            args msg.sender
        require ext_call.success
        if ext_call.return_data[0] < 0:
            emit 0x565a29bc: commission[arg1].field_0, 4, 3, msg.sender
            return 0
    require ext_code.size(address(code.data[11619 len 32]))
    call address(code.data[11619 len 32]).addressOf(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args 0x626f6e6400000000000000000000000000000000000000000000000000000000
    require ext_call.success
    require ext_code.size(code.data[11619 len 32])
    call code.data[11619 len 32].addressOf(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args 0x637573746f6469616e0000000000000000000000000000000000000000000000
    require ext_call.success
    if 0 > commission[arg1].field_768:
        return 0
    if not commission[arg1].field_2472:
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x308f16da with:
             gas gas_remaining - 50 wei
            args 0, 0, commission[arg1].field_2304, msg.sender, 0, commission[arg1].field_2048, bool(commission[arg1].field_2472)
        require ext_call.success
    else:
        if not commission[arg1].field_2304:
            call commission[arg1].field_1024 with:
                 gas 2300 wei
            require ext_call.success
        else:
            call commission[arg1].field_2304 with:
                 gas 2300 wei
            require ext_call.success
            call commission[arg1].field_1024 with:
                 gas 2300 wei
        if msg.value > commission[arg1].field_768 * commission[arg1].field_512:
            call msg.sender with:
               value msg.value - (commission[arg1].field_2048 * commission[arg1].field_768) - (commission[arg1].field_768 * commission[arg1].field_512) wei
                 gas 2300 * is_zero(value) wei
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xedc43db5 with:
         gas gas_remaining - 50 wei
        args 0, 0, commission[arg1].field_1024, msg.sender, 0, commission[arg1].field_512, bool(commission[arg1].field_2472)
    require ext_call.success
    require ext_call.return_data[0]
    if commission[arg1].field_2464:
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x391465cb with:
             gas gas_remaining - 50 wei
            args commission[arg1].field_256, commission[arg1].field_1024
        require ext_call.success
        if ext_call.return_data[0]:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x7954e911 with:
                 gas gas_remaining - 50 wei
                args commission[arg1].field_256, commission[arg1].field_1024, 0
            require ext_call.success
    if not commission[arg1].field_768:
        commission[arg1].field_1792 = 1
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x5168fe58 with:
         gas gas_remaining - 50 wei
        args commission[arg1].field_256, commission[arg1].field_512
    require ext_call.success
    emit 0x129066a9: commission[arg1].field_0, 0, 6, commission[arg1].field_1024, msg.sender
    emit 0x1d3cd45a: commission[commission[arg1].field_0].field_256, 0, commission[commission[arg1].field_0].field_768, commission[commission[arg1].field_0].field_1024, commission[commission[arg1].field_0].field_1280, commission[commission[arg1].field_0].field_1536, bool(commission[commission[arg1].field_0].field_1792), bool(commission[commission[arg1].field_0].field_1800), bool(commission[commission[arg1].field_0].field_1808), 13, commission[commission[arg1].field_0].field_0
    return bool(ext_call.return_data[0])
}

function sub_ff534a34(?) payable {
    require ext_code.size(address(code.data[11619 len 32]))
    call address(code.data[11619 len 32]).addressOf(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args 0x626f6e6400000000000000000000000000000000000000000000000000000000
    require ext_call.success
    if ext_call.return_data[12 len 20] != msg.sender:
        if stor0 != msg.sender:
            return 0
    if arg2 != msg.sender:
        if stor0 != msg.sender:
            require ext_code.size(address(code.data[11619 len 32]))
            call address(code.data[11619 len 32]).addressOf(bytes32 rg1) with:
                 gas gas_remaining - 50 wei
                args 0x626f6e6400000000000000000000000000000000000000000000000000000000
            require ext_call.success
            if ext_call.return_data[12 len 20] != msg.sender:
                emit 0x565a29bc: commission[arg1].field_0, 11, 14, arg2
                return 0
    if not commission[commission[arg1].field_0].field_1536:
        emit 0x565a29bc: commission[arg1].field_0, 11, 3, arg2
        return 0
    if commission[commission[arg1].field_0].field_1280:
        if commission[commission[arg1].field_0].field_1280 != arg2:
            emit 0x565a29bc: commission[arg1].field_0, 7, 3, arg2
            if 1 == bool(commission[commission[arg1].field_0].field_1792):
                emit 0x565a29bc: commission[arg1].field_0, 8, 3, arg2
            else:
                if 1 == bool(commission[commission[arg1].field_0].field_1800):
                    emit 0x565a29bc: commission[arg1].field_0, 8, 3, arg2
            if commission[commission[arg1].field_0].field_1536 < block.timestamp:
                emit 0x565a29bc: commission[arg1].field_0, 9, 3, arg2
            if not commission[commission[arg1].field_0].field_2472:
                require ext_code.size(address(code.data[11619 len 32]))
                call address(code.data[11619 len 32]).addressOf(bytes32 rg1) with:
                     gas gas_remaining - 50 wei
                    args 'stabletoken'
                require ext_call.success
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).getBalance(address rg1) with:
                     gas gas_remaining - 50 wei
                    args arg2
                require ext_call.success
                if ext_call.return_data[0] < 0:
                    emit 0x565a29bc: commission[arg1].field_0, 4, 3, arg2
                    return 0
                else:
                    return 0
            else:
                return 0
    if 1 == bool(commission[commission[arg1].field_0].field_1792):
        emit 0x565a29bc: commission[arg1].field_0, 8, 3, arg2
        if commission[commission[arg1].field_0].field_1536 < block.timestamp:
            emit 0x565a29bc: commission[arg1].field_0, 9, 3, arg2
        if not commission[commission[arg1].field_0].field_2472:
            require ext_code.size(address(code.data[11619 len 32]))
            call address(code.data[11619 len 32]).addressOf(bytes32 rg1) with:
                 gas gas_remaining - 50 wei
                args 'stabletoken'
            require ext_call.success
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).getBalance(address rg1) with:
                 gas gas_remaining - 50 wei
                args arg2
            require ext_call.success
            if ext_call.return_data[0] < 0:
                emit 0x565a29bc: commission[arg1].field_0, 4, 3, arg2
                return 0
            else:
                return 0
        else:
            return 0
    if 1 == bool(commission[commission[arg1].field_0].field_1800):
        emit 0x565a29bc: commission[arg1].field_0, 8, 3, arg2
        if commission[commission[arg1].field_0].field_1536 < block.timestamp:
            emit 0x565a29bc: commission[arg1].field_0, 9, 3, arg2
        if not commission[commission[arg1].field_0].field_2472:
            require ext_code.size(address(code.data[11619 len 32]))
            call address(code.data[11619 len 32]).addressOf(bytes32 rg1) with:
                 gas gas_remaining - 50 wei
                args 'stabletoken'
            require ext_call.success
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).getBalance(address rg1) with:
                 gas gas_remaining - 50 wei
                args arg2
            require ext_call.success
            if ext_call.return_data[0] < 0:
                emit 0x565a29bc: commission[arg1].field_0, 4, 3, arg2
                return 0
            else:
                return 0
        else:
            return 0
    if commission[commission[arg1].field_0].field_1536 < block.timestamp:
        emit 0x565a29bc: commission[arg1].field_0, 9, 3, arg2
        if not commission[commission[arg1].field_0].field_2472:
            require ext_code.size(address(code.data[11619 len 32]))
            call address(code.data[11619 len 32]).addressOf(bytes32 rg1) with:
                 gas gas_remaining - 50 wei
                args 'stabletoken'
            require ext_call.success
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).getBalance(address rg1) with:
                 gas gas_remaining - 50 wei
                args arg2
            require ext_call.success
            if ext_call.return_data[0] < 0:
                emit 0x565a29bc: commission[arg1].field_0, 4, 3, arg2
                return 0
            else:
                return 0
        else:
            return 0
    if commission[commission[arg1].field_0].field_2472:
        if msg.value < 0:
            return 0
    else:
        require ext_code.size(address(code.data[11619 len 32]))
        call address(code.data[11619 len 32]).addressOf(bytes32 rg1) with:
             gas gas_remaining - 50 wei
            args 'stabletoken'
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).getBalance(address rg1) with:
             gas gas_remaining - 50 wei
            args arg2
        require ext_call.success
        if ext_call.return_data[0] < 0:
            emit 0x565a29bc: commission[arg1].field_0, 4, 3, arg2
            return 0
    require ext_code.size(address(code.data[11619 len 32]))
    call address(code.data[11619 len 32]).addressOf(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args 0x626f6e6400000000000000000000000000000000000000000000000000000000
    require ext_call.success
    require ext_code.size(code.data[11619 len 32])
    call code.data[11619 len 32].addressOf(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args 0x637573746f6469616e0000000000000000000000000000000000000000000000
    require ext_call.success
    if 0 > commission[arg1].field_768:
        return 0
    if not commission[arg1].field_2472:
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x308f16da with:
             gas gas_remaining - 50 wei
            args 0, 0, commission[arg1].field_2304, address(arg2), 0, commission[arg1].field_2048, bool(commission[arg1].field_2472)
        require ext_call.success
    else:
        if not commission[arg1].field_2304:
            call commission[arg1].field_1024 with:
                 gas 2300 wei
            require ext_call.success
        else:
            call commission[arg1].field_2304 with:
                 gas 2300 wei
            require ext_call.success
            call commission[arg1].field_1024 with:
                 gas 2300 wei
        if msg.value > commission[arg1].field_768 * commission[arg1].field_512:
            call msg.sender with:
               value msg.value - (commission[arg1].field_2048 * commission[arg1].field_768) - (commission[arg1].field_768 * commission[arg1].field_512) wei
                 gas 2300 * is_zero(value) wei
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xedc43db5 with:
         gas gas_remaining - 50 wei
        args 0, 0, commission[arg1].field_1024, address(arg2), 0, commission[arg1].field_512, bool(commission[arg1].field_2472)
    require ext_call.success
    require ext_call.return_data[0]
    if commission[arg1].field_2464:
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x391465cb with:
             gas gas_remaining - 50 wei
            args commission[arg1].field_256, commission[arg1].field_1024
        require ext_call.success
        if ext_call.return_data[0]:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x7954e911 with:
                 gas gas_remaining - 50 wei
                args commission[arg1].field_256, commission[arg1].field_1024, 0
            require ext_call.success
    if not commission[arg1].field_768:
        commission[arg1].field_1792 = 1
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x5168fe58 with:
         gas gas_remaining - 50 wei
        args commission[arg1].field_256, commission[arg1].field_512
    require ext_call.success
    emit 0x129066a9: commission[arg1].field_0, 0, 6, commission[arg1].field_1024, arg2
    emit 0x1d3cd45a: commission[commission[arg1].field_0].field_256, 0, commission[commission[arg1].field_0].field_768, commission[commission[arg1].field_0].field_1024, commission[commission[arg1].field_0].field_1280, commission[commission[arg1].field_0].field_1536, bool(commission[commission[arg1].field_0].field_1792), bool(commission[commission[arg1].field_0].field_1800), bool(commission[commission[arg1].field_0].field_1808), 13, commission[commission[arg1].field_0].field_0
    return bool(ext_call.return_data[0])
}



}

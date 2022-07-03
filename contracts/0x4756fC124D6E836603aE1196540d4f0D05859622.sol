contract main {




// =====================  Runtime code  =====================


const sub_013d3be1(?) = 0

const sub_270b5674(?) = 4

const sub_4086ec11(?) = 1

const sub_8452e715(?) = 3

const sub_855c4827(?) = 2

const sub_9ba6e9c4(?) = 'StockenOfflineDeal'

const sub_b16ed258(?) = 0

const sub_d8b005f6(?) = 2

const sub_ee37bfb7(?) = 1

const sub_ee6e6338(?) = '1.1.1'


address platformAddress;
mapping of struct stor1;
mapping of struct sub_eacca72b;

function platform() {
    return platformAddress
}

function sub_eacca72b(?) {
    return sub_eacca72b[arg1][arg2].field_0, sub_eacca72b[arg1][arg2].field_256, sub_eacca72b[arg1][arg2].field_512
}

function _fallback() payable {
    revert
}

function sub_7fed2437(?) {
    require ext_code.size(platformAddress)
    call platformAddress.0xbc81ce6d with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[31 len 1]
}

function sub_873717c7(?) {
    if stor1[arg1].field_256 != msg.sender:
        if stor1[arg1].field_512 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only buyer and seller can add Transactions'
    require stor1[arg1].field_2560 <= 2
    if stor1[arg1].field_2560 != 2:
        revert with 0, 'deal should be completed'
    sub_eacca72b[arg1][stor1[arg1].field_2304].field_0 = arg2
    sub_eacca72b[arg1][stor1[arg1].field_2304].field_256 = arg3
    sub_eacca72b[arg1][stor1[arg1].field_2304].field_512 = arg4
    stor1[arg1].field_2304++
}

function sub_73a4415c(?) {
    mem[96 len 96] = code.data[6306 len 96]
    mem[192 len 160] = code.data[6306 len 160]
    mem[32] = 1
    require stor1[arg1].field_2560 <= 2
    mem[352] = stor1[arg1].field_0
    idx = 352
    s = 0
    while 448 > idx + 32:
        mem[idx + 32] = stor1[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[448] = stor1[arg1].field_768
    idx = 448
    s = 3
    while 608 > idx + 32:
        mem[idx + 32] = stor1[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor1[arg1][8].length) + 640
    mem[608] = stor1[arg1][8].length
    mem[0] = sha3(arg1, 1) + 8
    mem[640] = stor1[arg1][8].field_0
    idx = 640
    s = 0
    while stor1[arg1][8].length + 608 > idx:
        mem[idx + 32] = stor1[arg1][s + 8].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor1[arg1][8].length) + 640 len 96] = stor1[arg1].field_0, mem[384 len 64]
    mem[ceil32(stor1[arg1][8].length) + 736 len 160] = stor1[arg1].field_768, mem[480 len 128]
    mem[ceil32(stor1[arg1][8].length) + 928] = stor1[arg1].field_2304
    mem[ceil32(stor1[arg1][8].length) + 960] = stor1[arg1].field_2560
    mem[ceil32(stor1[arg1][8].length) + 896] = 352
    mem[ceil32(stor1[arg1][8].length) + 992] = stor1[arg1][8].length
    mem[ceil32(stor1[arg1][8].length) + 1024 len ceil32(stor1[arg1][8].length)] = mem[640 len ceil32(stor1[arg1][8].length)]
    if not stor1[arg1][8].length % 32:
        return mem[384 len 64] >> 512, 
               stor1[arg1].field_768,
               mem[480 len 128],
               352,
               stor1[arg1].field_2304,
               stor1[arg1].field_2560,
               stor1[arg1][8].length,
               mem[640 len stor1[arg1][8].length]
    mem[floor32(stor1[arg1][8].length) + ceil32(stor1[arg1][8].length) + 1024] = mem[floor32(stor1[arg1][8].length) + ceil32(stor1[arg1][8].length) + -stor1[arg1][8].length % 32 + 1056 len stor1[arg1][8].length % 32]
    return mem[384 len 64] >> 512, 
           stor1[arg1].field_768,
           mem[480 len 128],
           352,
           stor1[arg1].field_2304,
           stor1[arg1].field_2560,
           stor1[arg1][8].length,
           mem[640 len ceil32(stor1[arg1][8].length)],
           mem[(2 * ceil32(stor1[arg1][8].length)) + 1024 len floor32(stor1[arg1][8].length) + -ceil32(stor1[arg1][8].length) + 32]
}

function sub_dedaed8c(?) {
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[64] = (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192
    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = arg4.length
    mem[(32 * arg3.length) + (32 * arg2.length) + 192 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    if msg.sender == stor1[arg1].field_256:
        mem[0] = arg1
        mem[32] = 1
        require stor1[arg1].field_2560 <= 2
        if stor1[arg1].field_2560 != 2:
            revert with 0, 'deal should be completed'
        if arg2.length != arg3.length:
            revert with 0, 'arrays should have equal size'
        if arg3.length != arg4.length:
            revert with 0, 'arrays should have equal size'
        idx = 0
        while idx < arg2.length:
            _58 = mem[64]
            mem[64] = mem[64] + 96
            require idx < mem[96]
            mem[_58] = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg2.length) + 128]
            mem[_58 + 32] = mem[(32 * idx) + (32 * arg2.length) + 191 len 1]
            require idx < mem[(32 * arg3.length) + (32 * arg2.length) + 160]
            mem[_58 + 64] = mem[(32 * idx) + (32 * arg3.length) + (32 * arg2.length) + 192]
            mem[0] = stor1[arg1].field_2304
            mem[32] = sha3(arg1, 2)
            sub_eacca72b[arg1][stor1[arg1].field_2304].field_0 = mem[_58]
            sub_eacca72b[arg1][stor1[arg1].field_2304].field_256 = mem[_58 + 63 len 1]
            sub_eacca72b[arg1][stor1[arg1].field_2304].field_512 = mem[_58 + 64]
            mem[0] = arg1
            mem[32] = 1
            stor1[arg1].field_2304++
            idx = idx + 1
            continue 
    else:
        if stor1[arg1].field_512 != msg.sender:
            revert with 0, 'Only buyer and seller can add Transactions'
        mem[0] = arg1
        mem[32] = 1
        require stor1[arg1].field_2560 <= 2
        if stor1[arg1].field_2560 != 2:
            revert with 0, 'deal should be completed'
        if arg2.length != arg3.length:
            revert with 0, 'arrays should have equal size'
        if arg3.length != arg4.length:
            revert with 0, 'arrays should have equal size'
        idx = 0
        while idx < arg2.length:
            _60 = mem[64]
            mem[64] = mem[64] + 96
            require idx < mem[96]
            mem[_60] = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg2.length) + 128]
            mem[_60 + 32] = mem[(32 * idx) + (32 * arg2.length) + 191 len 1]
            require idx < mem[(32 * arg3.length) + (32 * arg2.length) + 160]
            mem[_60 + 64] = mem[(32 * idx) + (32 * arg3.length) + (32 * arg2.length) + 192]
            mem[0] = stor1[arg1].field_2304
            mem[32] = sha3(arg1, 2)
            sub_eacca72b[arg1][stor1[arg1].field_2304].field_0 = mem[_60]
            sub_eacca72b[arg1][stor1[arg1].field_2304].field_256 = mem[_60 + 63 len 1]
            sub_eacca72b[arg1][stor1[arg1].field_2304].field_512 = mem[_60 + 64]
            mem[0] = arg1
            mem[32] = 1
            stor1[arg1].field_2304++
            idx = idx + 1
            continue 
}

function sub_fafad854(?) {
    mem[96 len 96] = call.data[4 len 96]
    mem[192 len 160] = call.data[100 len 160]
    mem[352] = arg1.length
    mem[384 len arg1.length] = arg1[all]
    require ext_code.size(address(call.data[4]))
    call address(call.data[4]).0xdfb5eabd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(platformAddress)
    call platformAddress.0xbc81ce6d with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[31 len 1] != uint8(ext_call.return_data[0]):
        revert with 0, 'stocken not in current platform'
    if stor1[call.data[100]].field_0:
        mem[ceil32(arg1.length) + 384] = stor1[call.data[100]][8].length
        mem[ceil32(arg1.length) + 416] = stor1[call.data[100]][8].field_0
        idx = ceil32(arg1.length) + 416
        s = 0
        while ceil32(arg1.length) + stor1[call.data[100]][8].length + 384 > idx:
            mem[idx + 32] = stor1[call.data[100]][s + 8].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if stor1[call.data[100]][8].length != arg1.length:
            revert with 0, 'wrong currency name'
        idx = 0
        while idx < stor1[call.data[100]][8].length:
            require idx < arg1.length
            require idx < stor1[call.data[100]][8].length
            if Mask(8, 248, mem[ceil32(arg1.length) + idx + 416]) != Mask(8, 248, mem[idx + 384]):
                revert with 0, 'wrong currency name'
            idx = idx + 1
            continue 
        require stor1[call.data[100]].field_2560 <= 2
        if stor1[call.data[100]].field_2560:
            revert with 0, 'wrong agreement'
        if stor1[call.data[100]].field_0 != call.data[16 len 20]:
            revert with 0, 'different stocken address'
        if stor1[call.data[100]].field_256 != call.data[48 len 20]:
            revert with 0, 'different seller address'
        if stor1[call.data[100]].field_512 != call.data[80 len 20]:
            revert with 0, 'different buyer address'
        if call.data[132] != stor1[call.data[100]].field_1024:
            revert with 0, 'different stocken amount'
        if call.data[164] != stor1[call.data[100]].field_1280:
            revert with 0, 'different purchase amount'
        if call.data[196] != stor1[call.data[100]].field_1536:
            revert with 0, 'different time of completed deal'
        if call.data[228] != stor1[call.data[100]].field_1792:
            revert with 0, 'different agreement hash'
        stor1[call.data[100]].field_2560 = 2
    else:
        mem[ceil32(arg1.length) + 384] = 96
        mem[ceil32(arg1.length) + 416] = 192
        mem[ceil32(arg1.length) + 448] = 352
        mem[ceil32(arg1.length) + 480] = 0
        mem[ceil32(arg1.length) + 512] = 1
        s = 0
        idx = 96
        while 192 > idx:
            stor1[call.data[100]][s].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 3
        while 3 > idx:
            stor1[call.data[100]][idx].field_0 = 0
            idx = idx + 1
            continue 
        s = 3
        idx = 192
        while 352 > idx:
            stor1[call.data[100]][s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 8
        while 8 > idx:
            stor1[call.data[100]][idx].field_0 = 0
            idx = idx + 1
            continue 
        stor1[call.data[100]].field_2048 = (2 * arg1.length) + 1
        if arg1.length <= 0:
            idx = 0
            while stor1[call.data[100]][8].length + 31 / 32 > idx:
                stor1[call.data[100]][idx + 8].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor1[call.data[100]][8].field_0 = mem[384]
            s = 1
            idx = 416
            while arg1.length + 384 > idx:
                stor1[call.data[100]][s + 8].field_0 = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = (Mask(251, 0, arg1.length - 1) >> 5) + 1
            while stor1[call.data[100]][8].length + 31 / 32 > idx:
                stor1[call.data[100]][idx + 8].field_0 = 0
                idx = idx + 1
                continue 
        stor1[call.data[100]].field_2304 = 0
        stor1[call.data[100]].field_2560 = 1
}

function sub_f5faecd1(?) {
    mem[96 len 96] = call.data[4 len 96]
    mem[192 len 160] = call.data[100 len 160]
    mem[352] = arg1.length
    mem[384 len arg1.length] = arg1[all]
    require ext_code.size(address(call.data[4]))
    call address(call.data[4]).0xdfb5eabd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(platformAddress)
    call platformAddress.0xbc81ce6d with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[31 len 1] != uint8(ext_call.return_data[0]):
        revert with 0, 'stocken not in current platform'
    if stor1[call.data[100]].field_0:
        mem[ceil32(arg1.length) + 384] = stor1[call.data[100]][8].length
        mem[ceil32(arg1.length) + 416] = stor1[call.data[100]][8].field_0
        idx = ceil32(arg1.length) + 416
        s = 0
        while ceil32(arg1.length) + stor1[call.data[100]][8].length + 384 > idx:
            mem[idx + 32] = stor1[call.data[100]][s + 8].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if stor1[call.data[100]][8].length != arg1.length:
            revert with 0, 'wrong currency name'
        idx = 0
        while idx < stor1[call.data[100]][8].length:
            require idx < arg1.length
            require idx < stor1[call.data[100]][8].length
            if Mask(8, 248, mem[ceil32(arg1.length) + idx + 416]) != Mask(8, 248, mem[idx + 384]):
                revert with 0, 'wrong currency name'
            idx = idx + 1
            continue 
        require stor1[call.data[100]].field_2560 <= 2
        if stor1[call.data[100]].field_2560 != 1:
            revert with 0, 'wrong agreement'
        if stor1[call.data[100]].field_0 != call.data[16 len 20]:
            revert with 0, 'different stocken address'
        if stor1[call.data[100]].field_256 != call.data[48 len 20]:
            revert with 0, 'different seller address'
        if stor1[call.data[100]].field_512 != call.data[80 len 20]:
            revert with 0, 'different buyer address'
        if call.data[132] != stor1[call.data[100]].field_1024:
            revert with 0, 'different stocken amount'
        if call.data[164] != stor1[call.data[100]].field_1280:
            revert with 0, 'different purchase amount'
        if call.data[196] != stor1[call.data[100]].field_1536:
            revert with 0, 'different time of completed deal'
        if call.data[228] != stor1[call.data[100]].field_1792:
            revert with 0, 'different agreement hash'
        stor1[call.data[100]].field_2560 = 2
    else:
        mem[ceil32(arg1.length) + 384] = 96
        mem[ceil32(arg1.length) + 416] = 192
        mem[ceil32(arg1.length) + 448] = 352
        mem[ceil32(arg1.length) + 480] = 0
        mem[ceil32(arg1.length) + 512] = 0
        s = 0
        idx = 96
        while 192 > idx:
            stor1[call.data[100]][s].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 3
        while 3 > idx:
            stor1[call.data[100]][idx].field_0 = 0
            idx = idx + 1
            continue 
        s = 3
        idx = 192
        while 352 > idx:
            stor1[call.data[100]][s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 8
        while 8 > idx:
            stor1[call.data[100]][idx].field_0 = 0
            idx = idx + 1
            continue 
        stor1[call.data[100]].field_2048 = (2 * arg1.length) + 1
        if arg1.length <= 0:
            idx = 0
            while stor1[call.data[100]][8].length + 31 / 32 > idx:
                stor1[call.data[100]][idx + 8].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor1[call.data[100]][8].field_0 = mem[384]
            s = 1
            idx = 416
            while arg1.length + 384 > idx:
                stor1[call.data[100]][s + 8].field_0 = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = (Mask(251, 0, arg1.length - 1) >> 5) + 1
            while stor1[call.data[100]][8].length + 31 / 32 > idx:
                stor1[call.data[100]][idx + 8].field_0 = 0
                idx = idx + 1
                continue 
        stor1[call.data[100]].field_2304 = 0
        stor1[call.data[100]].field_2560 = 0
        stor1[call.data[100]].field_2816 = 0
}



}

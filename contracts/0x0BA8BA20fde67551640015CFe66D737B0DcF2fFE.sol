contract main {




// =====================  Runtime code  =====================


const sub_013d3be1(?) = 0

const sub_270b5674(?) = 4

const sub_8452e715(?) = 3

const sub_855c4827(?) = 2

const sub_877ac6cb(?) = 2

const sub_8d872868(?) = 1

const sub_9ba6e9c4(?) = 'StockenHTLC'

const sub_b16ed258(?) = 0

const sub_ee37bfb7(?) = 1

const sub_ee6e6338(?) = '1.1.1'


address stor0;
mapping of struct sub_100789a2;

function sub_100789a2(?) {
    mem[128] = sub_100789a2[arg1][8].field_0
    idx = 128
    s = 0
    while sub_100789a2[arg1][8].length + 96 > idx:
        mem[idx + 32] = sub_100789a2[arg1][s + 8].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if sub_100789a2[arg1].field_2816 <= 3:
        return Array(len=sub_100789a2[arg1][8].length, data=mem[128 len sub_100789a2[arg1][8].length]), 
               sub_100789a2[arg1].field_2304,
               sub_100789a2[arg1].field_2560,
               sub_100789a2[arg1].field_2816
    revert
}

function _fallback() payable {
    revert
}

function hash(uint256 arg1) {
    mem[128 len 1024] = code.data[7186 len 1024]
    idx = 0
    while idx < 32:
        require 2^(8 * -idx + 31)
        require idx < 32
        mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('div', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 31, ('mul', -1, ('var', 0))))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('div', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 31, ('mul', -1, ('var', 0))))))), 0) - 256
        idx = idx + 1
        continue 
    hash = sha256hash(mem[128]) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < 32:
        require idx < 32
        mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', 'hash')), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('var', 'hash')), 0)), ('var', 0)), 0) + 256, 0) << (('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', 'hash')), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('var', 'hash')), 0)), ('var', 0)), 0) - 256
        idx = idx + 1
        continue 
    hash = sha256hash(mem[128]) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return hash
}

function sub_a21732dd(?) {
    if not sub_100789a2[arg1].field_256:
        revert with 0, 'wrong id'
    mem[128 len 1024] = code.data[7186 len 1024]
    idx = 0
    while idx < 32:
        require 2^(8 * -idx + 31)
        require idx < 32
        mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('div', ('param', 'arg2'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 31, ('mul', -1, ('var', 0))))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('div', ('param', 'arg2'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 31, ('mul', -1, ('var', 0))))))), 0) - 256
        idx = idx + 1
        continue 
    hash = sha256hash(mem[128]) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < 32:
        require idx < 32
        mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', 'hash')), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('var', 'hash')), 0)), ('var', 0)), 0) + 256, 0) << (('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', 'hash')), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('var', 'hash')), 0)), ('var', 0)), 0) - 256
        idx = idx + 1
        continue 
    hash = sha256hash(mem[128]) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if hash != sub_100789a2[arg1].field_2304:
        revert with 0, 'wrong preimage'
    if sub_100789a2[arg1].field_256 != msg.sender:
        revert with 0, 'only sender can reclaim'
    require sub_100789a2[arg1].field_2816 <= 3
    if sub_100789a2[arg1].field_2816 != 2:
        require sub_100789a2[arg1].field_2816 <= 3
        if sub_100789a2[arg1].field_2816:
            revert with 0, 'wrong state'
    if block.timestamp < sub_100789a2[arg1].field_1536:
        revert with 0, 'too early'
    sub_100789a2[arg1].field_2816 = 3
    if not sub_100789a2[arg1].field_0:
        call sub_100789a2[arg1].field_256 with:
           value sub_100789a2[arg1].field_1024 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(sub_100789a2[arg1].field_0)
        call sub_100789a2[arg1].field_0.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_100789a2[arg1].field_256, sub_100789a2[arg1].field_1024
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    emit Reclaimed(sub_100789a2[arg1].field_256, sub_100789a2[arg1].field_1024);
}

function sub_8b3dceda(?) {
    if not sub_100789a2[arg1].field_256:
        revert with 0, 'wrong id'
    mem[128 len 1024] = code.data[7186 len 1024]
    idx = 0
    while idx < 32:
        require 2^(8 * -idx + 31)
        require idx < 32
        mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('div', ('param', 'arg2'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 31, ('mul', -1, ('var', 0))))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('div', ('param', 'arg2'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 31, ('mul', -1, ('var', 0))))))), 0) - 256
        idx = idx + 1
        continue 
    hash = sha256hash(mem[128]) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < 32:
        require idx < 32
        mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', 'hash')), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('var', 'hash')), 0)), ('var', 0)), 0) + 256, 0) << (('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', 'hash')), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('var', 'hash')), 0)), ('var', 0)), 0) - 256
        idx = idx + 1
        continue 
    hash = sha256hash(mem[128]) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if hash != sub_100789a2[arg1].field_2304:
        revert with 0, 'wrong preimage'
    if sub_100789a2[arg1].field_512 != msg.sender:
        revert with 0, 'only for recipient'
    require sub_100789a2[arg1].field_2816 <= 3
    if sub_100789a2[arg1].field_2816:
        revert with 0, 'only for INITIATED state'
    if block.timestamp > sub_100789a2[arg1].field_1536:
        sub_100789a2[arg1].field_2816 = 2
        emit 0x4f250de3: sub_100789a2[arg1].field_256, sub_100789a2[arg1].field_512, sub_100789a2[arg1].field_1024
    else:
        sub_100789a2[arg1].field_2816 = 1
        if not sub_100789a2[arg1].field_0:
            call msg.sender with:
               value sub_100789a2[arg1].field_1024 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(sub_100789a2[arg1].field_0)
            call sub_100789a2[arg1].field_0.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, sub_100789a2[arg1].field_1024
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        sub_100789a2[arg1].field_2560 = arg2
        emit 0x825fdbc0: sub_100789a2[arg1].field_256, sub_100789a2[arg1].field_512, sub_100789a2[arg1].field_1024, arg2
}

function sub_90a501ec(?) {
    mem[96 len 96] = code.data[7186 len 96]
    mem[192 len 160] = code.data[7186 len 160]
    mem[32] = 1
    mem[352] = sub_100789a2[arg1].field_0
    idx = 352
    s = 0
    while 448 > idx + 32:
        mem[idx + 32] = sub_100789a2[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[448] = sub_100789a2[arg1].field_768
    idx = 448
    s = 3
    while 608 > idx + 32:
        mem[idx + 32] = sub_100789a2[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(sub_100789a2[arg1][8].length) + 640
    mem[608] = sub_100789a2[arg1][8].length
    mem[0] = sha3(arg1, 1) + 8
    mem[640] = sub_100789a2[arg1][8].field_0
    idx = 640
    s = 0
    while sub_100789a2[arg1][8].length + 608 > idx:
        mem[idx + 32] = sub_100789a2[arg1][s + 8].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(sub_100789a2[arg1][8].length) + 640 len 96] = sub_100789a2[arg1].field_0, mem[384 len 64]
    mem[ceil32(sub_100789a2[arg1][8].length) + 736 len 160] = sub_100789a2[arg1].field_768, mem[480 len 128]
    mem[ceil32(sub_100789a2[arg1][8].length) + 928] = sub_100789a2[arg1].field_2304
    mem[ceil32(sub_100789a2[arg1][8].length) + 960] = sub_100789a2[arg1].field_2560
    require sub_100789a2[arg1].field_2816 <= 3
    mem[ceil32(sub_100789a2[arg1][8].length) + 992] = sub_100789a2[arg1].field_2816
    mem[ceil32(sub_100789a2[arg1][8].length) + 896] = 384
    mem[ceil32(sub_100789a2[arg1][8].length) + 1024] = sub_100789a2[arg1][8].length
    mem[ceil32(sub_100789a2[arg1][8].length) + 1056 len ceil32(sub_100789a2[arg1][8].length)] = mem[640 len ceil32(sub_100789a2[arg1][8].length)]
    if not sub_100789a2[arg1][8].length % 32:
        return mem[384 len 64] >> 512, 
               sub_100789a2[arg1].field_768,
               mem[480 len 128],
               384,
               sub_100789a2[arg1].field_2304,
               sub_100789a2[arg1].field_2560,
               sub_100789a2[arg1].field_2816,
               sub_100789a2[arg1][8].length,
               mem[640 len sub_100789a2[arg1][8].length]
    mem[floor32(sub_100789a2[arg1][8].length) + ceil32(sub_100789a2[arg1][8].length) + 1056] = mem[floor32(sub_100789a2[arg1][8].length) + ceil32(sub_100789a2[arg1][8].length) + -sub_100789a2[arg1][8].length % 32 + 1088 len sub_100789a2[arg1][8].length % 32]
    return mem[384 len 64] >> 512, 
           sub_100789a2[arg1].field_768,
           mem[480 len 128],
           384,
           sub_100789a2[arg1].field_2304,
           sub_100789a2[arg1].field_2560,
           sub_100789a2[arg1].field_2816,
           sub_100789a2[arg1][8].length,
           mem[640 len ceil32(sub_100789a2[arg1][8].length)],
           mem[(2 * ceil32(sub_100789a2[arg1][8].length)) + 1056 len floor32(sub_100789a2[arg1][8].length) + -ceil32(sub_100789a2[arg1][8].length) + 32]
}

function sub_8d3fe0c2(?) payable {
    mem[96 len 96] = call.data[4 len 96]
    mem[192 len 160] = call.data[100 len 160]
    mem[352] = arg1.length
    mem[384 len arg1.length] = arg1[all]
    if not address(call.data[36]):
        revert with 0, 'sender should be non-zero address'
    if address(call.data[4]):
        revert with 0, 'no stocken address for this type of htlc'
    if call.data[132] != msg.value:
        revert with 0, 'sent wei should be equal to _amount'
    mem[ceil32(arg1.length) + 384] = 96
    mem[ceil32(arg1.length) + 416] = 192
    mem[ceil32(arg1.length) + 448] = 352
    mem[ceil32(arg1.length) + 480] = arg2
    mem[ceil32(arg1.length) + 512] = 0
    mem[ceil32(arg1.length) + 544] = 0
    s = 0
    idx = 96
    while 192 > idx:
        sub_100789a2[call.data[100]][s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 3
    while 3 > idx:
        sub_100789a2[call.data[100]][idx].field_0 = 0
        idx = idx + 1
        continue 
    s = 3
    idx = 192
    while 352 > idx:
        sub_100789a2[call.data[100]][s].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 8
    while 8 > idx:
        sub_100789a2[call.data[100]][idx].field_0 = 0
        idx = idx + 1
        continue 
    sub_100789a2[call.data[100]].field_2048 = (2 * arg1.length) + 1
    if arg1.length <= 0:
        idx = 0
        while sub_100789a2[call.data[100]][8].length + 31 / 32 > idx:
            sub_100789a2[call.data[100]][idx + 8].field_0 = 0
            idx = idx + 1
            continue 
    else:
        sub_100789a2[call.data[100]][8].field_0 = mem[384]
        s = 1
        idx = 416
        while arg1.length + 384 > idx:
            sub_100789a2[call.data[100]][s + 8].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = (Mask(251, 0, arg1.length - 1) >> 5) + 1
        while sub_100789a2[call.data[100]][8].length + 31 / 32 > idx:
            sub_100789a2[call.data[100]][idx + 8].field_0 = 0
            idx = idx + 1
            continue 
    sub_100789a2[call.data[100]].field_2304 = arg2
    sub_100789a2[call.data[100]].field_2560 = 0
    sub_100789a2[call.data[100]].field_2816 = 0
    sub_100789a2[call.data[100]].field_3072 = 0
    mem[ceil32(arg1.length) + 928 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 384 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        emit 0x2f1119e9: call.data[4 len 96], call.data[100 len 160], 320, arg2, arg1.length, Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 384 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + 928] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 960 len arg1.length % 32]
        emit 0x2f1119e9: call.data[4 len 96], call.data[100 len 160], 320, arg2, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 384 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 928 len floor32(arg1.length) + -ceil32(arg1.length) + 32]
}

function sub_d23bff87(?) {
    mem[96 len 96] = call.data[4 len 96]
    mem[192 len 160] = call.data[100 len 160]
    mem[352] = arg1.length
    mem[384 len arg1.length] = arg1[all]
    if not address(call.data[36]):
        revert with 0, 'sender should be non-zero address'
    if address(call.data[4]) != msg.sender:
        revert with 0, 'method should be called only by Stocken'
    require ext_code.size(stor0)
    call stor0.0xbc81ce6d with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    call stor0.0xf213401e with:
         gas gas_remaining wei
        args ext_call.return_data[0] << 248, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x6b36bb4 with:
         gas gas_remaining wei
        args address(call.data[4])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'wrong direct call'
    require ext_code.size(address(call.data[4]))
    call address(call.data[4]).transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(call.data[36]), this.address, call.data[132]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(arg1.length) + 384] = 96
    mem[ceil32(arg1.length) + 416] = 192
    mem[ceil32(arg1.length) + 448] = 352
    mem[ceil32(arg1.length) + 480] = arg2
    mem[ceil32(arg1.length) + 512] = 0
    mem[ceil32(arg1.length) + 544] = 0
    s = 0
    idx = 96
    while 192 > idx:
        sub_100789a2[call.data[100]][s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 3
    while 3 > idx:
        sub_100789a2[call.data[100]][idx].field_0 = 0
        idx = idx + 1
        continue 
    s = 3
    idx = 192
    while 352 > idx:
        sub_100789a2[call.data[100]][s].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 8
    while 8 > idx:
        sub_100789a2[call.data[100]][idx].field_0 = 0
        idx = idx + 1
        continue 
    sub_100789a2[call.data[100]].field_2048 = (2 * arg1.length) + 1
    if arg1.length <= 0:
        idx = 0
        while sub_100789a2[call.data[100]][8].length + 31 / 32 > idx:
            sub_100789a2[call.data[100]][idx + 8].field_0 = 0
            idx = idx + 1
            continue 
    else:
        sub_100789a2[call.data[100]][8].field_0 = mem[384]
        s = 1
        idx = 416
        while arg1.length + 384 > idx:
            sub_100789a2[call.data[100]][s + 8].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = (Mask(251, 0, arg1.length - 1) >> 5) + 1
        while sub_100789a2[call.data[100]][8].length + 31 / 32 > idx:
            sub_100789a2[call.data[100]][idx + 8].field_0 = 0
            idx = idx + 1
            continue 
    sub_100789a2[call.data[100]].field_2304 = arg2
    sub_100789a2[call.data[100]].field_2560 = 0
    sub_100789a2[call.data[100]].field_2816 = 0
    sub_100789a2[call.data[100]].field_3072 = 0
    mem[ceil32(arg1.length) + 928 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 384 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        emit 0x2f1119e9: call.data[4 len 96], call.data[100 len 160], 320, arg2, arg1.length, Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 384 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + 928] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 960 len arg1.length % 32]
        emit 0x2f1119e9: call.data[4 len 96], call.data[100 len 160], 320, arg2, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 384 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 928 len floor32(arg1.length) + -ceil32(arg1.length) + 32]
}



}

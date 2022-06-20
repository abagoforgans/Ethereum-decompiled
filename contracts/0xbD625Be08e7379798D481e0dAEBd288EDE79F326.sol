contract main {




// =====================  Runtime code  =====================


address sub_58fb58d8Address;
uint256 sub_dd840951;
uint256 sub_9b458bd3;
uint256 sub_33d47a5b;
uint256 sub_78463323;
mapping of struct stor5;
mapping of uint256 sub_ccc8efcc;
array of uint256 stor15;

function sub_0b543372(?) {
    return sub_33d47a5b
}

function sub_33d47a5b(?) {
    return sub_33d47a5b
}

function sub_58fb58d8(?) {
    return sub_58fb58d8Address
}

function sub_5b1c48cb(?) {
    return sub_78463323
}

function sub_5ea431b2(?) {
    return sub_dd840951
}

function sub_668b0daf(?) {
    return sub_9b458bd3
}

function sub_78463323(?) {
    return sub_78463323
}

function sub_9b458bd3(?) {
    return sub_9b458bd3
}

function sub_ccc8efcc(?) {
    require calldata.size - 4 >= 32
    return sub_ccc8efcc[address(arg1)]
}

function sub_dd840951(?) {
    return sub_dd840951
}

function _fallback() payable {
    revert
}

function sub_876148ac(?) {
    require calldata.size - 4 >= 32
    if sub_58fb58d8Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only allow contract owner to operate!'
    sub_33d47a5b = arg1
}

function SetRoundPeriod(uint256 arg1) {
    require calldata.size - 4 >= 32
    if sub_58fb58d8Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only allow contract owner to operate!'
    sub_78463323 = arg1
}

function sub_8a427002(?) {
    require calldata.size - 4 >= 32
    if sub_58fb58d8Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only allow contract owner to operate!'
    if arg1 >= 10000:
        revert with 0, 'Cannot exceed profit UNIT!'
    sub_9b458bd3 = arg1
}

function sub_b076650a(?) {
    require calldata.size - 4 >= 64
    require arg1 > 0
    require arg2 > 0
    if stor5[arg1][18][arg2].field_2304:
        mem[128] = stor5[arg1][18][arg2][9].field_0
        idx = 128
        s = 0
        while (32 * stor5[arg1][18][arg2].field_2304) + 96 > idx:
            mem[idx + 32] = stor5[arg1][18][arg2][s + 9].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * stor5[arg1][18][arg2].field_2304) + 384 len floor32(stor5[arg1][18][arg2].field_2304)] = mem[128 len floor32(stor5[arg1][18][arg2].field_2304)]
    return stor5[arg1][18][arg2].field_0, 
           stor5[arg1][18][arg2].field_512,
           stor5[arg1][18][arg2].field_1024,
           stor5[arg1][18][arg2].field_1536,
           stor5[arg1][18][arg2].field_1792,
           bool(stor5[arg1][18][arg2].field_2048),
           Array(len=stor5[arg1][18][arg2].field_2304, data=mem[128 len floor32(stor5[arg1][18][arg2].field_2304)], mem[(32 * stor5[arg1][18][arg2].field_2304) + floor32(stor5[arg1][18][arg2].field_2304) + 384 len (32 * stor5[arg1][18][arg2].field_2304) - floor32(stor5[arg1][18][arg2].field_2304)])
}

function sub_c2ee9822(?) payable {
    require calldata.size - 4 >= 96
    if sub_58fb58d8Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only allow contract owner to operate!'
    require arg2 > 0
    require arg3
    if arg2 > sub_ccc8efcc[address(arg1)]:
        revert with 0, 'Withdraw profit over money!'
    if not arg1:
        if eth.balance(this.address) < arg2:
            revert with 0, 'Not enough ether :(!'
    else:
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg2:
            revert with 0, 'Not enough token :(!'
    require arg2 <= sub_ccc8efcc[address(arg1)]
    sub_ccc8efcc[address(arg1)] -= arg2
    if not arg1:
        call arg3 with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg3), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function Withdraw(uint256 arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 > 0
    if stor5[arg1].field_0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only allow room owner to withdraw money!'
    if arg2 > stor5[arg1].field_4352 - stor5[arg1].field_4096:
        revert with 0, 'Withdraw over money!'
    if stor5[arg1].field_4352 > 0:
        if not stor5[arg1].field_256:
            if eth.balance(this.address) < arg2:
                revert with 0, 'Not enough ether :(!'
        else:
            require ext_code.size(stor5[arg1].field_256)
            staticcall stor5[arg1].field_256.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < arg2:
                revert with 0, 'Not enough token :(!'
        require arg2 <= stor5[arg1].field_4352
        stor5[arg1].field_4352 -= arg2
        if not stor5[arg1].field_256:
            call arg3 with:
               value arg2 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(stor5[arg1].field_256)
            call stor5[arg1].field_256.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg3), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    emit 0xe492f03a: arg1, arg2, stor5[arg1].field_4352
}

function sub_ef072079(?) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + 128] = 0
    require arg1 > 0
    if arg2:
        if block.number + sub_33d47a5b > arg2:
            revert with 0, 'startBlock is too small!'
    if not arg3 % 16:
        revert with 0, 'Invalid type!'
    if not stor5[arg1].field_3328:
        revert with 0, 'The room is not actived!'
    idx = 0
    s = 1
    t = 1
    u = 0
    while uint8(idx) < 3:
        if not uint8(arg3 % 16 and 2^uint8(idx)):
            idx = idx + 1
            s = s
            t = t
            u = u
            continue 
        if arg4.length < sub_78463323 + (u * sub_78463323):
            revert with 0, 'Missing bet values!'
        require uint8(idx) < 4
        s = 0
        t = 0
        v = 0
        while uint8(s) < sub_78463323:
            require (u * sub_78463323) + uint8(s) < arg4.length
            require stor5[arg1][uint8(idx)].field_1280
            require t + (mem[(32 * (u * sub_78463323) + uint8(s)) + 128] * stor5[arg1][uint8(idx)].field_2304 / stor5[arg1][uint8(idx)].field_1280) >= t
            require (u * sub_78463323) + uint8(s) < arg4.length
            require v + mem[(32 * (u * sub_78463323) + uint8(s)) + 128] >= v
            s = s + 1
            t = t + (mem[(32 * (u * sub_78463323) + uint8(s)) + 128] * stor5[arg1][uint8(idx)].field_2304 / stor5[arg1][uint8(idx)].field_1280)
            v = v + mem[(32 * (u * sub_78463323) + uint8(s)) + 128]
            continue 
        if t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None > stor5[arg1].field_4352:
            revert with 0, 'Cannot bet over compensate!'
        idx = idx + 1
        s = stor5[arg1][uint8(idx)].field_2304
        t = stor5[arg1][uint8(idx)].field_1280
        u = u + 1
        continue 
    if arg4.length < u * sub_78463323:
        revert with 0, 'Missing bet values!'
    if Mask(1, 3, arg3) == 8:
        if arg4.length > u * sub_78463323:
            require u * sub_78463323 < arg4.length
            if arg4.length <= (u * sub_78463323) + 1:
                revert with 0, 'betTailInfo format wrong!'
            s = 0
            t = (u * sub_78463323) + 1
            while s < mem[(32 * u * sub_78463323) + 128]:
                require t < arg4.length
                require t + 1 < arg4.length
                if arg4.length < t + (2 * mem[(32 * t + 1) + 128]) + 2:
                    revert with 0, 'betTailInfo format wrong!'
                if mem[(32 * t) + 128] < 0:
                    revert with 0, 'betTail block num must between [0-9]!'
                if mem[(32 * t) + 128] > sub_78463323 - 1:
                    revert with 0, 'betTail block num must between [0-9]!'
                u = 0
                v = 0
                w = t + 2
                x = 0
                while u < mem[(32 * t + 1) + 128]:
                    require w + 1 < arg4.length
                    require stor5[arg1].field_2048
                    require v + (mem[(32 * w + 1) + 128] * stor5[arg1].field_3072 / stor5[arg1].field_2048) >= v
                    require x + mem[(32 * w + 1) + 128] >= x
                    u = u + 1
                    v = v + (mem[(32 * w + 1) + 128] * stor5[arg1].field_3072 / stor5[arg1].field_2048)
                    w = w + 2
                    x = x + mem[(32 * w + 1) + 128]
                    continue 
                s = s + 1
                t = w
                continue 
    revert with 0, 'Must bet something!'
}

function Deposit(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 > 0
    require arg2 > 0
    if stor5[arg1].field_256:
        require ext_code.size(stor5[arg1].field_256)
        staticcall stor5[arg1].field_256.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            require return_data.size >= 32
            if arg2 > ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot above current token holdings!'
            else:
                require ext_code.size(stor5[arg1].field_256)
                staticcall stor5[arg1].field_256.0xdd62ed3e with:
                        gas gas_remaining wei
                       args msg.sender, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] < arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Must approve locked tokens before.'
                        else:
                            require stor5[arg1].field_4352 + arg2 >= stor5[arg1].field_4352
                            stor5[arg1].field_4352 += arg2
                            if not stor5[arg1].field_256:
                                emit 0x1ca60682: arg1, arg2, stor5[arg1].field_4352
                            else:
                                require ext_code.size(stor5[arg1].field_256)
                                call stor5[arg1].field_256.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    emit 0x1ca60682: arg1, arg2, stor5[arg1].field_4352
                    else:
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            if ext_call.return_data[0] < arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Must approve locked tokens before.'
                            else:
                                require stor5[arg1].field_4352 + arg2 >= stor5[arg1].field_4352
                                stor5[arg1].field_4352 += arg2
                                if not stor5[arg1].field_256:
                                    emit 0x1ca60682: arg1, arg2, stor5[arg1].field_4352
                                else:
                                    require ext_code.size(stor5[arg1].field_256)
                                    call stor5[arg1].field_256.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        emit 0x1ca60682: arg1, arg2, stor5[arg1].field_4352
                        else:
                            if ext_call.return_data[0] < arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Must approve locked tokens before.'
                            else:
                                require stor5[arg1].field_4352 + arg2 >= stor5[arg1].field_4352
                                stor5[arg1].field_4352 += arg2
                                if not stor5[arg1].field_256:
                                    emit 0x1ca60682: arg1, arg2, stor5[arg1].field_4352
                                else:
                                    require ext_code.size(stor5[arg1].field_256)
                                    call stor5[arg1].field_256.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        emit 0x1ca60682: arg1, arg2, stor5[arg1].field_4352
    else:
        if arg2 > msg.value:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot above current ether holdings!'
        else:
            require stor5[arg1].field_4352 + arg2 >= stor5[arg1].field_4352
            stor5[arg1].field_4352 += arg2
            if not stor5[arg1].field_256:
                emit 0x1ca60682: arg1, arg2, stor5[arg1].field_4352
            else:
                require ext_code.size(stor5[arg1].field_256)
                call stor5[arg1].field_256.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    emit 0x1ca60682: arg1, arg2, stor5[arg1].field_4352
}

function sub_3c3419e6(?) {
    require calldata.size - 4 >= 32
    mem[96 len 128] = code.data[16667 len 128]
    mem[224 len 128] = code.data[16667 len 128]
    require arg1 > 0
    mem[32] = 5
    mem[352] = stor5[arg1][2].length
    mem[384] = stor5[arg1][2].field_0
    idx = 384
    s = 0
    while stor5[arg1][2].length + 352 > idx:
        mem[idx + 32] = stor5[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor5[arg1][2].length) + 384] = stor5[arg1][3].length
    mem[0] = sha3(arg1, 5) + 3
    mem[ceil32(stor5[arg1][2].length) + 416] = stor5[arg1][3].field_0
    idx = ceil32(stor5[arg1][2].length) + 416
    s = 0
    while ceil32(stor5[arg1][2].length) + stor5[arg1][3].length + 384 > idx:
        mem[idx + 32] = stor5[arg1][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor5[arg1][2].length) + ceil32(stor5[arg1][3].length) + 416] = stor5[arg1].field_1280
    idx = ceil32(stor5[arg1][2].length) + ceil32(stor5[arg1][3].length) + 416
    s = 5
    while ceil32(stor5[arg1][2].length) + ceil32(stor5[arg1][3].length) + 544 > idx + 32:
        mem[idx + 32] = stor5[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor5[arg1][2].length) + ceil32(stor5[arg1][3].length) + 672
    mem[ceil32(stor5[arg1][2].length) + ceil32(stor5[arg1][3].length) + 544] = stor5[arg1].field_2304
    idx = ceil32(stor5[arg1][2].length) + ceil32(stor5[arg1][3].length) + 544
    s = 9
    while ceil32(stor5[arg1][2].length) + ceil32(stor5[arg1][3].length) + 672 > idx + 32:
        mem[idx + 32] = stor5[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor5[arg1][2].length) + ceil32(stor5[arg1][3].length) + 672] = stor5[arg1].field_0
    mem[ceil32(stor5[arg1][2].length) + ceil32(stor5[arg1][3].length) + 704] = stor5[arg1].field_256
    mem[ceil32(stor5[arg1][2].length) + ceil32(stor5[arg1][3].length) + 800 len 128] = stor5[arg1].field_1280, mem[ceil32(stor5[arg1][2].length) + ceil32(stor5[arg1][3].length) + 448 len 96]
    mem[ceil32(stor5[arg1][2].length) + ceil32(stor5[arg1][3].length) + 928 len 128] = stor5[arg1].field_2304, mem[ceil32(stor5[arg1][2].length) + ceil32(stor5[arg1][3].length) + 576 len 96]
    mem[ceil32(stor5[arg1][2].length) + ceil32(stor5[arg1][3].length) + 1056] = bool(stor5[arg1].field_3328)
    mem[ceil32(stor5[arg1][2].length) + ceil32(stor5[arg1][3].length) + 1088] = stor5[arg1].field_3584
    mem[ceil32(stor5[arg1][2].length) + ceil32(stor5[arg1][3].length) + 1120] = stor5[arg1].field_3840
    mem[ceil32(stor5[arg1][2].length) + ceil32(stor5[arg1][3].length) + 1152] = stor5[arg1].field_4096
    mem[ceil32(stor5[arg1][2].length) + ceil32(stor5[arg1][3].length) + 1184] = stor5[arg1].field_4352
    mem[ceil32(stor5[arg1][2].length) + ceil32(stor5[arg1][3].length) + 736] = 544
    mem[ceil32(stor5[arg1][2].length) + ceil32(stor5[arg1][3].length) + 1216] = stor5[arg1][2].length
    mem[ceil32(stor5[arg1][2].length) + ceil32(stor5[arg1][3].length) + 1248 len ceil32(stor5[arg1][2].length)] = mem[384 len ceil32(stor5[arg1][2].length)]
    if not stor5[arg1][2].length % 32:
        mem[stor5[arg1][2].length + ceil32(stor5[arg1][2].length) + ceil32(stor5[arg1][3].length) + 1248] = stor5[arg1][3].length
        mem[stor5[arg1][2].length + ceil32(stor5[arg1][2].length) + ceil32(stor5[arg1][3].length) + 1280 len ceil32(stor5[arg1][3].length)] = mem[ceil32(stor5[arg1][2].length) + 416 len ceil32(stor5[arg1][3].length)]
        if not stor5[arg1][3].length % 32:
            return stor5[arg1].field_0, 
                   stor5[arg1].field_256,
                   544,
                   stor5[arg1][2].length + 576,
                   mem[ceil32(stor5[arg1][2].length) + ceil32(stor5[arg1][3].length) + 448 len 96] >> 768,
                   stor5[arg1].field_2304,
                   mem[ceil32(stor5[arg1][2].length) + ceil32(stor5[arg1][3].length) + 576 len 96],
                   bool(stor5[arg1].field_3328),
                   stor5[arg1].field_3584,
                   stor5[arg1].field_3840,
                   stor5[arg1].field_4096,
                   stor5[arg1].field_4352,
                   stor5[arg1][2].length,
                   mem[384 len ceil32(stor5[arg1][2].length)],
                   mem[(2 * ceil32(stor5[arg1][2].length)) + ceil32(stor5[arg1][3].length) + 1248 len stor5[arg1][3].length + stor5[arg1][2].length + -ceil32(stor5[arg1][2].length) + 32]
        mem[floor32(stor5[arg1][3].length) + stor5[arg1][2].length + ceil32(stor5[arg1][2].length) + ceil32(stor5[arg1][3].length) + 1280] = mem[floor32(stor5[arg1][3].length) + stor5[arg1][2].length + ceil32(stor5[arg1][2].length) + ceil32(stor5[arg1][3].length) + -stor5[arg1][3].length % 32 + 1312 len stor5[arg1][3].length % 32]
        return stor5[arg1].field_0, 
               stor5[arg1].field_256,
               544,
               stor5[arg1][2].length + 576,
               mem[ceil32(stor5[arg1][2].length) + ceil32(stor5[arg1][3].length) + 448 len 96] >> 768,
               stor5[arg1].field_2304,
               mem[ceil32(stor5[arg1][2].length) + ceil32(stor5[arg1][3].length) + 576 len 96],
               bool(stor5[arg1].field_3328),
               stor5[arg1].field_3584,
               stor5[arg1].field_3840,
               stor5[arg1].field_4096,
               stor5[arg1].field_4352,
               stor5[arg1][2].length,
               mem[384 len ceil32(stor5[arg1][2].length)],
               mem[(2 * ceil32(stor5[arg1][2].length)) + ceil32(stor5[arg1][3].length) + 1248 len floor32(stor5[arg1][3].length) + stor5[arg1][2].length + -ceil32(stor5[arg1][2].length) + 64]
    mem[floor32(stor5[arg1][2].length) + ceil32(stor5[arg1][2].length) + ceil32(stor5[arg1][3].length) + 1248] = mem[floor32(stor5[arg1][2].length) + ceil32(stor5[arg1][2].length) + ceil32(stor5[arg1][3].length) + -stor5[arg1][2].length % 32 + 1280 len stor5[arg1][2].length % 32]
    mem[floor32(stor5[arg1][2].length) + ceil32(stor5[arg1][2].length) + ceil32(stor5[arg1][3].length) + 1312 len ceil32(stor5[arg1][3].length)] = mem[ceil32(stor5[arg1][2].length) + 416 len ceil32(stor5[arg1][3].length)]
    if not stor5[arg1][3].length % 32:
        return stor5[arg1].field_0, 
               stor5[arg1].field_256,
               544,
               floor32(stor5[arg1][2].length) + 608,
               mem[ceil32(stor5[arg1][2].length) + ceil32(stor5[arg1][3].length) + 448 len 96] >> 768,
               stor5[arg1].field_2304,
               mem[ceil32(stor5[arg1][2].length) + ceil32(stor5[arg1][3].length) + 576 len 96],
               bool(stor5[arg1].field_3328),
               stor5[arg1].field_3584,
               stor5[arg1].field_3840,
               stor5[arg1].field_4096,
               stor5[arg1].field_4352,
               stor5[arg1][2].length,
               mem[384 len ceil32(stor5[arg1][2].length)],
               mem[(2 * ceil32(stor5[arg1][2].length)) + ceil32(stor5[arg1][3].length) + 1248 len floor32(stor5[arg1][2].length) + -ceil32(stor5[arg1][2].length) + 32],
               stor5[arg1][3].length,
               mem[ceil32(stor5[arg1][2].length) + 416 len stor5[arg1][3].length]
    mem[floor32(stor5[arg1][3].length) + floor32(stor5[arg1][2].length) + ceil32(stor5[arg1][2].length) + ceil32(stor5[arg1][3].length) + 1312] = mem[floor32(stor5[arg1][3].length) + floor32(stor5[arg1][2].length) + ceil32(stor5[arg1][2].length) + ceil32(stor5[arg1][3].length) + -stor5[arg1][3].length % 32 + 1344 len stor5[arg1][3].length % 32]
    return stor5[arg1].field_0, 
           stor5[arg1].field_256,
           544,
           floor32(stor5[arg1][2].length) + 608,
           mem[ceil32(stor5[arg1][2].length) + ceil32(stor5[arg1][3].length) + 448 len 96] >> 768,
           stor5[arg1].field_2304,
           mem[ceil32(stor5[arg1][2].length) + ceil32(stor5[arg1][3].length) + 576 len 96],
           bool(stor5[arg1].field_3328),
           stor5[arg1].field_3584,
           stor5[arg1].field_3840,
           stor5[arg1].field_4096,
           stor5[arg1].field_4352,
           stor5[arg1][2].length,
           mem[384 len ceil32(stor5[arg1][2].length)],
           mem[(2 * ceil32(stor5[arg1][2].length)) + ceil32(stor5[arg1][3].length) + 1248 len floor32(stor5[arg1][2].length) + -ceil32(stor5[arg1][2].length) + 32],
           stor5[arg1][3].length,
           mem[ceil32(stor5[arg1][2].length) + 416 len ceil32(stor5[arg1][3].length)],
           mem[ceil32(stor5[arg1][2].length) + (2 * ceil32(stor5[arg1][3].length)) + floor32(stor5[arg1][2].length) + 1312 len floor32(stor5[arg1][3].length) + -ceil32(stor5[arg1][3].length) + 32]
}

function sub_34e4aa49(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, 'wrong roomId!'
    mem[0] = arg1
    mem[32] = 5
    if not stor5[arg1].field_3328:
        revert with 0, 'The room is not actived!'
    idx = stor15[sha3(mem[0 len 64])] + 1
    while idx <= stor5[arg1].field_3584:
        require stor5[arg1][18][idx].field_512 + sub_78463323 >= stor5[arg1][18][idx].field_512
        if block.number <= stor5[arg1][18][idx].field_512 + sub_78463323:
        require arg1 > 0
        require idx > 0
        mem[0] = idx
        mem[32] = sha3(arg1, 5) + 18
        if stor5[arg1][18][idx].field_2048:
            revert with 0, 'The bet order is already closed!'
        require stor5[arg1][18][idx].field_512 + -sub_78463323 + 256 >= stor5[arg1][18][idx].field_512
        if block.number > stor5[arg1][18][idx].field_512 + -sub_78463323 + 256:
            if not stor5[arg1].field_256:
                if eth.balance(this.address) < stor5[arg1][18][idx].field_1024:
                    revert with 0, 'Not enough ether :(!'
            else:
                require ext_code.size(stor5[arg1].field_256)
                staticcall stor5[arg1].field_256.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < stor5[arg1][18][idx].field_1024:
                    revert with 0, 'Not enough token :(!'
            stor5[arg1][18][idx].field_2048 = 1
            require stor5[arg1][18][idx].field_1280 <= stor5[arg1].field_4096
            stor5[arg1].field_4096 -= stor5[arg1][18][idx].field_1280
            stor5[arg1].field_3840 = stor5[arg1][18][idx].field_768
            if not stor5[arg1].field_256:
                call stor5[arg1][18][idx].field_0 with:
                   value stor5[arg1][18][idx].field_1024 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                require ext_code.size(stor5[arg1].field_256)
                call stor5[arg1].field_256.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor5[arg1][18][idx].field_0, stor5[arg1][18][idx].field_1024
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
            mem[mem[64]] = stor5[arg1][18][idx].field_256
            mem[mem[64] + 32] = stor5[arg1][18][idx].field_768
            mem[mem[64] + 64] = block.number
            mem[mem[64] + 96] = stor5[arg1][18][idx].field_512
            emit 0x84842e1c: stor5[arg1][18][idx].field_256, stor5[arg1][18][idx].field_768, block.number, stor5[arg1][18][idx].field_512
        else:
            s = 0
            while uint8(s) < sub_78463323:
                if block.hash(stor5[arg1][18][idx].field_512 + uint8(s)) % 16 < 10:
                    if stor5[arg1][18][idx].field_1792 != 1:
                        if Mask(1, 1, stor5[arg1][18][idx].field_1792) != 2:
                            if Mask(1, 2, stor5[arg1][18][idx].field_1792) == 4:
                                require uint8(s) < stor5[arg1][18][idx].field_2304
                                mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                if stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + uint8(s)].field_0 > 0:
                                    if block.hash(stor5[arg1][18][idx].field_512 + uint8(s)) % 16 >= 10:
                                        require uint8(s) < stor5[arg1][18][idx].field_2304
                                        mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                        require stor5[arg1].field_1792
                                        require stor5[arg1][18][idx].field_1536 + (stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + uint8(s)].field_0 * stor5[arg1].field_2816 / stor5[arg1].field_1792) >= stor5[arg1][18][idx].field_1536
                                        stor5[arg1][18][idx].field_1536 += stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + uint8(s)].field_0 * stor5[arg1].field_2816 / stor5[arg1].field_1792
                        else:
                            require uint8(s) < stor5[arg1][18][idx].field_2304
                            mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                            if stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + uint8(s)].field_0 > 0:
                                if bool(block.hash(stor5[arg1][18][idx].field_512 + uint8(s))) != 1:
                                    require uint8(s) < stor5[arg1][18][idx].field_2304
                                    mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                    require stor5[arg1].field_1536
                                    require stor5[arg1][18][idx].field_1536 + (stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + uint8(s)].field_0 * stor5[arg1].field_2560 / stor5[arg1].field_1536) >= stor5[arg1][18][idx].field_1536
                                    stor5[arg1][18][idx].field_1536 += stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + uint8(s)].field_0 * stor5[arg1].field_2560 / stor5[arg1].field_1536
                            if Mask(1, 2, stor5[arg1][18][idx].field_1792) == 4:
                                require sub_78463323 + uint8(s) < stor5[arg1][18][idx].field_2304
                                mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                if stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + stor4 + uint8(s)].field_0 > 0:
                                    if block.hash(stor5[arg1][18][idx].field_512 + uint8(s)) % 16 >= 10:
                                        require sub_78463323 + uint8(s) < stor5[arg1][18][idx].field_2304
                                        mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                        require stor5[arg1].field_1792
                                        require stor5[arg1][18][idx].field_1536 + (stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + stor4 + uint8(s)].field_0 * stor5[arg1].field_2816 / stor5[arg1].field_1792) >= stor5[arg1][18][idx].field_1536
                                        stor5[arg1][18][idx].field_1536 += stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + stor4 + uint8(s)].field_0 * stor5[arg1].field_2816 / stor5[arg1].field_1792
                    else:
                        require uint8(s) < stor5[arg1][18][idx].field_2304
                        mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                        if stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + uint8(s)].field_0 > 0:
                            if bool(block.hash(stor5[arg1][18][idx].field_512 + uint8(s))) == 1:
                                require uint8(s) < stor5[arg1][18][idx].field_2304
                                mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                require stor5[arg1].field_1280
                                require stor5[arg1][18][idx].field_1536 + (stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + uint8(s)].field_0 * stor5[arg1].field_2304 / stor5[arg1].field_1280) >= stor5[arg1][18][idx].field_1536
                                stor5[arg1][18][idx].field_1536 += stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + uint8(s)].field_0 * stor5[arg1].field_2304 / stor5[arg1].field_1280
                        if Mask(1, 1, stor5[arg1][18][idx].field_1792) != 2:
                            if Mask(1, 2, stor5[arg1][18][idx].field_1792) == 4:
                                require sub_78463323 + uint8(s) < stor5[arg1][18][idx].field_2304
                                mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                if stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + stor4 + uint8(s)].field_0 > 0:
                                    if block.hash(stor5[arg1][18][idx].field_512 + uint8(s)) % 16 >= 10:
                                        require sub_78463323 + uint8(s) < stor5[arg1][18][idx].field_2304
                                        mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                        require stor5[arg1].field_1792
                                        require stor5[arg1][18][idx].field_1536 + (stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + stor4 + uint8(s)].field_0 * stor5[arg1].field_2816 / stor5[arg1].field_1792) >= stor5[arg1][18][idx].field_1536
                                        stor5[arg1][18][idx].field_1536 += stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + stor4 + uint8(s)].field_0 * stor5[arg1].field_2816 / stor5[arg1].field_1792
                        else:
                            require sub_78463323 + uint8(s) < stor5[arg1][18][idx].field_2304
                            mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                            if stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + stor4 + uint8(s)].field_0 > 0:
                                if bool(block.hash(stor5[arg1][18][idx].field_512 + uint8(s))) != 1:
                                    require sub_78463323 + uint8(s) < stor5[arg1][18][idx].field_2304
                                    mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                    require stor5[arg1].field_1536
                                    require stor5[arg1][18][idx].field_1536 + (stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + stor4 + uint8(s)].field_0 * stor5[arg1].field_2560 / stor5[arg1].field_1536) >= stor5[arg1][18][idx].field_1536
                                    stor5[arg1][18][idx].field_1536 += stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + stor4 + uint8(s)].field_0 * stor5[arg1].field_2560 / stor5[arg1].field_1536
                            if Mask(1, 2, stor5[arg1][18][idx].field_1792) == 4:
                                require (2 * sub_78463323) + uint8(s) < stor5[arg1][18][idx].field_2304
                                mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                if stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + (2 * stor4) + uint8(s)].field_0 > 0:
                                    if block.hash(stor5[arg1][18][idx].field_512 + uint8(s)) % 16 >= 10:
                                        require (2 * sub_78463323) + uint8(s) < stor5[arg1][18][idx].field_2304
                                        mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                        require stor5[arg1].field_1792
                                        require stor5[arg1][18][idx].field_1536 + (stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + (2 * stor4) + uint8(s)].field_0 * stor5[arg1].field_2816 / stor5[arg1].field_1792) >= stor5[arg1][18][idx].field_1536
                                        stor5[arg1][18][idx].field_1536 += stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + (2 * stor4) + uint8(s)].field_0 * stor5[arg1].field_2816 / stor5[arg1].field_1792
                else:
                    if block.hash(stor5[arg1][18][idx].field_512 + uint8(s)) % 16 <= 15:
                        if stor5[arg1][18][idx].field_1792 != 1:
                            if Mask(1, 1, stor5[arg1][18][idx].field_1792) != 2:
                                if Mask(1, 2, stor5[arg1][18][idx].field_1792) == 4:
                                    require uint8(s) < stor5[arg1][18][idx].field_2304
                                    mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                    if stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + uint8(s)].field_0 > 0:
                                        if block.hash(stor5[arg1][18][idx].field_512 + uint8(s)) % 16 <= 15:
                                            require uint8(s) < stor5[arg1][18][idx].field_2304
                                            mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                            require stor5[arg1].field_1792
                                            require stor5[arg1][18][idx].field_1536 + (stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + uint8(s)].field_0 * stor5[arg1].field_2816 / stor5[arg1].field_1792) >= stor5[arg1][18][idx].field_1536
                                            stor5[arg1][18][idx].field_1536 += stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + uint8(s)].field_0 * stor5[arg1].field_2816 / stor5[arg1].field_1792
                            else:
                                require uint8(s) < stor5[arg1][18][idx].field_2304
                                mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                if stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + uint8(s)].field_0 > 0:
                                    if block.hash(stor5[arg1][18][idx].field_512 + uint8(s)) % 16 > 15:
                                        require uint8(s) < stor5[arg1][18][idx].field_2304
                                        mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                        require stor5[arg1].field_1536
                                        require stor5[arg1][18][idx].field_1536 + (stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + uint8(s)].field_0 * stor5[arg1].field_2560 / stor5[arg1].field_1536) >= stor5[arg1][18][idx].field_1536
                                        stor5[arg1][18][idx].field_1536 += stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + uint8(s)].field_0 * stor5[arg1].field_2560 / stor5[arg1].field_1536
                                if Mask(1, 2, stor5[arg1][18][idx].field_1792) == 4:
                                    require sub_78463323 + uint8(s) < stor5[arg1][18][idx].field_2304
                                    mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                    if stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + stor4 + uint8(s)].field_0 > 0:
                                        if block.hash(stor5[arg1][18][idx].field_512 + uint8(s)) % 16 <= 15:
                                            require sub_78463323 + uint8(s) < stor5[arg1][18][idx].field_2304
                                            mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                            require stor5[arg1].field_1792
                                            require stor5[arg1][18][idx].field_1536 + (stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + stor4 + uint8(s)].field_0 * stor5[arg1].field_2816 / stor5[arg1].field_1792) >= stor5[arg1][18][idx].field_1536
                                            stor5[arg1][18][idx].field_1536 += stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + stor4 + uint8(s)].field_0 * stor5[arg1].field_2816 / stor5[arg1].field_1792
                        else:
                            require uint8(s) < stor5[arg1][18][idx].field_2304
                            mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                            if stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + uint8(s)].field_0 > 0:
                                if block.hash(stor5[arg1][18][idx].field_512 + uint8(s)) % 16 > 15:
                                    require uint8(s) < stor5[arg1][18][idx].field_2304
                                    mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                    require stor5[arg1].field_1280
                                    require stor5[arg1][18][idx].field_1536 + (stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + uint8(s)].field_0 * stor5[arg1].field_2304 / stor5[arg1].field_1280) >= stor5[arg1][18][idx].field_1536
                                    stor5[arg1][18][idx].field_1536 += stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + uint8(s)].field_0 * stor5[arg1].field_2304 / stor5[arg1].field_1280
                            if Mask(1, 1, stor5[arg1][18][idx].field_1792) != 2:
                                if Mask(1, 2, stor5[arg1][18][idx].field_1792) == 4:
                                    require sub_78463323 + uint8(s) < stor5[arg1][18][idx].field_2304
                                    mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                    if stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + stor4 + uint8(s)].field_0 > 0:
                                        if block.hash(stor5[arg1][18][idx].field_512 + uint8(s)) % 16 <= 15:
                                            require sub_78463323 + uint8(s) < stor5[arg1][18][idx].field_2304
                                            mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                            require stor5[arg1].field_1792
                                            require stor5[arg1][18][idx].field_1536 + (stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + stor4 + uint8(s)].field_0 * stor5[arg1].field_2816 / stor5[arg1].field_1792) >= stor5[arg1][18][idx].field_1536
                                            stor5[arg1][18][idx].field_1536 += stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + stor4 + uint8(s)].field_0 * stor5[arg1].field_2816 / stor5[arg1].field_1792
                            else:
                                require sub_78463323 + uint8(s) < stor5[arg1][18][idx].field_2304
                                mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                if stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + stor4 + uint8(s)].field_0 > 0:
                                    if block.hash(stor5[arg1][18][idx].field_512 + uint8(s)) % 16 > 15:
                                        require sub_78463323 + uint8(s) < stor5[arg1][18][idx].field_2304
                                        mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                        require stor5[arg1].field_1536
                                        require stor5[arg1][18][idx].field_1536 + (stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + stor4 + uint8(s)].field_0 * stor5[arg1].field_2560 / stor5[arg1].field_1536) >= stor5[arg1][18][idx].field_1536
                                        stor5[arg1][18][idx].field_1536 += stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + stor4 + uint8(s)].field_0 * stor5[arg1].field_2560 / stor5[arg1].field_1536
                                if Mask(1, 2, stor5[arg1][18][idx].field_1792) == 4:
                                    require (2 * sub_78463323) + uint8(s) < stor5[arg1][18][idx].field_2304
                                    mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                    if stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + (2 * stor4) + uint8(s)].field_0 > 0:
                                        if block.hash(stor5[arg1][18][idx].field_512 + uint8(s)) % 16 <= 15:
                                            require (2 * sub_78463323) + uint8(s) < stor5[arg1][18][idx].field_2304
                                            mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                            require stor5[arg1].field_1792
                                            require stor5[arg1][18][idx].field_1536 + (stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + (2 * stor4) + uint8(s)].field_0 * stor5[arg1].field_2816 / stor5[arg1].field_1792) >= stor5[arg1][18][idx].field_1536
                                            stor5[arg1][18][idx].field_1536 += stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + (2 * stor4) + uint8(s)].field_0 * stor5[arg1].field_2816 / stor5[arg1].field_1792
                    else:
                        if stor5[arg1][18][idx].field_1792 != 1:
                            if Mask(1, 1, stor5[arg1][18][idx].field_1792) != 2:
                                if Mask(1, 2, stor5[arg1][18][idx].field_1792) == 4:
                                    require uint8(s) < stor5[arg1][18][idx].field_2304
                                    mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                    if stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + uint8(s)].field_0 > 0:
                                        if block.hash(stor5[arg1][18][idx].field_512 + uint8(s)) % 16 <= 15:
                                            require uint8(s) < stor5[arg1][18][idx].field_2304
                                            mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                            require stor5[arg1].field_1792
                                            require stor5[arg1][18][idx].field_1536 + (stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + uint8(s)].field_0 * stor5[arg1].field_2816 / stor5[arg1].field_1792) >= stor5[arg1][18][idx].field_1536
                                            stor5[arg1][18][idx].field_1536 += stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + uint8(s)].field_0 * stor5[arg1].field_2816 / stor5[arg1].field_1792
                            else:
                                require uint8(s) < stor5[arg1][18][idx].field_2304
                                mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                if stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + uint8(s)].field_0 > 0:
                                    if bool(block.hash(stor5[arg1][18][idx].field_512 + uint8(s))) != 1:
                                        require uint8(s) < stor5[arg1][18][idx].field_2304
                                        mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                        require stor5[arg1].field_1536
                                        require stor5[arg1][18][idx].field_1536 + (stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + uint8(s)].field_0 * stor5[arg1].field_2560 / stor5[arg1].field_1536) >= stor5[arg1][18][idx].field_1536
                                        stor5[arg1][18][idx].field_1536 += stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + uint8(s)].field_0 * stor5[arg1].field_2560 / stor5[arg1].field_1536
                                if Mask(1, 2, stor5[arg1][18][idx].field_1792) == 4:
                                    require sub_78463323 + uint8(s) < stor5[arg1][18][idx].field_2304
                                    mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                    if stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + stor4 + uint8(s)].field_0 > 0:
                                        if block.hash(stor5[arg1][18][idx].field_512 + uint8(s)) % 16 <= 15:
                                            require sub_78463323 + uint8(s) < stor5[arg1][18][idx].field_2304
                                            mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                            require stor5[arg1].field_1792
                                            require stor5[arg1][18][idx].field_1536 + (stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + stor4 + uint8(s)].field_0 * stor5[arg1].field_2816 / stor5[arg1].field_1792) >= stor5[arg1][18][idx].field_1536
                                            stor5[arg1][18][idx].field_1536 += stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + stor4 + uint8(s)].field_0 * stor5[arg1].field_2816 / stor5[arg1].field_1792
                        else:
                            require uint8(s) < stor5[arg1][18][idx].field_2304
                            mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                            if stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + uint8(s)].field_0 > 0:
                                if bool(block.hash(stor5[arg1][18][idx].field_512 + uint8(s))) == 1:
                                    require uint8(s) < stor5[arg1][18][idx].field_2304
                                    mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                    require stor5[arg1].field_1280
                                    require stor5[arg1][18][idx].field_1536 + (stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + uint8(s)].field_0 * stor5[arg1].field_2304 / stor5[arg1].field_1280) >= stor5[arg1][18][idx].field_1536
                                    stor5[arg1][18][idx].field_1536 += stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + uint8(s)].field_0 * stor5[arg1].field_2304 / stor5[arg1].field_1280
                            if Mask(1, 1, stor5[arg1][18][idx].field_1792) != 2:
                                if Mask(1, 2, stor5[arg1][18][idx].field_1792) == 4:
                                    require sub_78463323 + uint8(s) < stor5[arg1][18][idx].field_2304
                                    mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                    if stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + stor4 + uint8(s)].field_0 > 0:
                                        if block.hash(stor5[arg1][18][idx].field_512 + uint8(s)) % 16 <= 15:
                                            require sub_78463323 + uint8(s) < stor5[arg1][18][idx].field_2304
                                            mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                            require stor5[arg1].field_1792
                                            require stor5[arg1][18][idx].field_1536 + (stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + stor4 + uint8(s)].field_0 * stor5[arg1].field_2816 / stor5[arg1].field_1792) >= stor5[arg1][18][idx].field_1536
                                            stor5[arg1][18][idx].field_1536 += stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + stor4 + uint8(s)].field_0 * stor5[arg1].field_2816 / stor5[arg1].field_1792
                            else:
                                require sub_78463323 + uint8(s) < stor5[arg1][18][idx].field_2304
                                mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                if stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + stor4 + uint8(s)].field_0 > 0:
                                    if bool(block.hash(stor5[arg1][18][idx].field_512 + uint8(s))) != 1:
                                        require sub_78463323 + uint8(s) < stor5[arg1][18][idx].field_2304
                                        mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                        require stor5[arg1].field_1536
                                        require stor5[arg1][18][idx].field_1536 + (stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + stor4 + uint8(s)].field_0 * stor5[arg1].field_2560 / stor5[arg1].field_1536) >= stor5[arg1][18][idx].field_1536
                                        stor5[arg1][18][idx].field_1536 += stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + stor4 + uint8(s)].field_0 * stor5[arg1].field_2560 / stor5[arg1].field_1536
                                if Mask(1, 2, stor5[arg1][18][idx].field_1792) == 4:
                                    require (2 * sub_78463323) + uint8(s) < stor5[arg1][18][idx].field_2304
                                    mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                    if stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + (2 * stor4) + uint8(s)].field_0 > 0:
                                        if block.hash(stor5[arg1][18][idx].field_512 + uint8(s)) % 16 <= 15:
                                            require (2 * sub_78463323) + uint8(s) < stor5[arg1][18][idx].field_2304
                                            mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                            require stor5[arg1].field_1792
                                            require stor5[arg1][18][idx].field_1536 + (stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + (2 * stor4) + uint8(s)].field_0 * stor5[arg1].field_2816 / stor5[arg1].field_1792) >= stor5[arg1][18][idx].field_1536
                                            stor5[arg1][18][idx].field_1536 += stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + (2 * stor4) + uint8(s)].field_0 * stor5[arg1].field_2816 / stor5[arg1].field_1792
                s = s + 1
                continue 
            s = 0
            t = 0
            while uint8(s) < 3:
                if not uint8(stor5[arg1][18][idx].field_1792 and 2^uint8(s)):
                    s = s + 1
                    t = t
                    continue 
                s = s + 1
                t = t + 1
                continue 
            if Mask(1, 3, stor5[arg1][18][idx].field_1792) == 8:
                require t * sub_78463323 < stor5[arg1][18][idx].field_2304
                s = 0
                u = (t * sub_78463323) + 1
                while s < stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + (t * stor4)].field_0:
                    require u < stor5[arg1][18][idx].field_2304
                    require u + 1 < stor5[arg1][18][idx].field_2304
                    mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                    t = 0
                    v = u + 2
                    while t < stor5[arg1][18][idx][u + 9].field_256:
                        require v < stor5[arg1][18][idx].field_2304
                        mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                        if stor5[arg1][18][idx][v + 9].field_0 == block.hash(stor5[arg1][18][idx].field_512 + stor5[arg1][18][idx][u + 9].field_0) % 16:
                            require v + 1 < stor5[arg1][18][idx].field_2304
                            mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                            require stor5[arg1].field_2048
                            require stor5[arg1][18][idx].field_1536 + (stor5[arg1][18][idx][v + 9].field_256 * stor5[arg1].field_3072 / stor5[arg1].field_2048) >= stor5[arg1][18][idx].field_1536
                            stor5[arg1][18][idx].field_1536 += stor5[arg1][18][idx][v + 9].field_256 * stor5[arg1].field_3072 / stor5[arg1].field_2048
                        t = t + 1
                        v = v + 2
                        continue 
                    s = s + 1
                    u = v
                    continue 
            if stor5[arg1][18][idx].field_1536 > 0:
                if not stor5[arg1].field_256:
                    if eth.balance(this.address) < stor5[arg1][18][idx].field_1536:
                        revert with 0, 'Not enough ether :(!'
                else:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor5[arg1].field_256)
                    staticcall stor5[arg1].field_256.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < stor5[arg1][18][idx].field_1536:
                        revert with 0, 'Not enough token :(!'
            stor5[arg1][18][idx].field_2048 = 1
            require stor5[arg1][18][idx].field_1280 <= stor5[arg1].field_4096
            stor5[arg1].field_4096 -= stor5[arg1][18][idx].field_1280
            stor5[arg1].field_3840 = stor5[arg1][18][idx].field_768
            require sub_ccc8efcc[stor5[arg1].field_256] + (stor5[arg1][18][idx].field_1024 * sub_9b458bd3 / 10000) >= sub_ccc8efcc[stor5[arg1].field_256]
            mem[0] = stor5[arg1].field_256
            mem[32] = 6
            sub_ccc8efcc[stor5[arg1].field_256] += stor5[arg1][18][idx].field_1024 * sub_9b458bd3 / 10000
            require stor5[arg1].field_4352 + stor5[arg1][18][idx].field_1024 - (stor5[arg1][18][idx].field_1024 * sub_9b458bd3 / 10000) >= stor5[arg1].field_4352
            stor5[arg1].field_4352 = stor5[arg1].field_4352 + stor5[arg1][18][idx].field_1024 - (stor5[arg1][18][idx].field_1024 * sub_9b458bd3 / 10000)
            require stor5[arg1][18][idx].field_1536 <= stor5[arg1].field_4352
            stor5[arg1].field_4352 -= stor5[arg1][18][idx].field_1536
            if stor5[arg1][18][idx].field_1536 > 0:
                if not stor5[arg1].field_256:
                    call stor5[arg1][18][idx].field_0 with:
                       value stor5[arg1][18][idx].field_1536 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    require ext_code.size(stor5[arg1].field_256)
                    call stor5[arg1].field_256.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor5[arg1][18][idx].field_0, stor5[arg1][18][idx].field_1536
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                mem[mem[64]] = arg1
                mem[mem[64] + 32] = idx
                mem[mem[64] + 64] = stor5[arg1][18][idx].field_1536
                emit 0xc6463bc3: arg1, idx, stor5[arg1][18][idx].field_1536
        idx = idx + 1
        continue 
}

function sub_1d424ea1(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 > 0
    if stor5[arg1].field_0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only allow room owner to withdraw money!'
    if arg1 <= 0:
        revert with 0, 'wrong roomId!'
    mem[0] = arg1
    mem[32] = 5
    if not stor5[arg1].field_3328:
        revert with 0, 'The room is not actived!'
    idx = stor15[sha3(mem[0 len 64])] + 1
    while idx <= stor5[arg1].field_3584:
        require stor5[arg1][18][idx].field_512 + sub_78463323 >= stor5[arg1][18][idx].field_512
        if block.number <= stor5[arg1][18][idx].field_512 + sub_78463323:
            if stor5[arg1].field_3840 != stor5[arg1].field_3584:
                return 0
            if stor5[arg1].field_4352 > 0:
                if not stor5[arg1].field_256:
                    if eth.balance(this.address) < stor5[arg1].field_4352:
                        revert with 0, 'Not enough ether :(!'
                else:
                    require ext_code.size(stor5[arg1].field_256)
                    staticcall stor5[arg1].field_256.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < stor5[arg1].field_4352:
                        revert with 0, 'Not enough token :(!'
                stor5[arg1].field_4352 = 0
                if not stor5[arg1].field_256:
                    call stor5[arg1].field_0 with:
                       value stor5[arg1].field_4352 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    require ext_code.size(stor5[arg1].field_256)
                    call stor5[arg1].field_256.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor5[arg1].field_0, stor5[arg1].field_4352
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
            stor5[arg1].field_3328 = 0
            emit 0x67acaceb: arg1
            return 1
        require arg1 > 0
        require idx > 0
        mem[0] = idx
        mem[32] = sha3(arg1, 5) + 18
        if stor5[arg1][18][idx].field_2048:
            revert with 0, 'The bet order is already closed!'
        require stor5[arg1][18][idx].field_512 + -sub_78463323 + 256 >= stor5[arg1][18][idx].field_512
        if block.number > stor5[arg1][18][idx].field_512 + -sub_78463323 + 256:
            if not stor5[arg1].field_256:
                if eth.balance(this.address) < stor5[arg1][18][idx].field_1024:
                    revert with 0, 'Not enough ether :(!'
            else:
                require ext_code.size(stor5[arg1].field_256)
                staticcall stor5[arg1].field_256.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < stor5[arg1][18][idx].field_1024:
                    revert with 0, 'Not enough token :(!'
            stor5[arg1][18][idx].field_2048 = 1
            require stor5[arg1][18][idx].field_1280 <= stor5[arg1].field_4096
            stor5[arg1].field_4096 -= stor5[arg1][18][idx].field_1280
            stor5[arg1].field_3840 = stor5[arg1][18][idx].field_768
            if not stor5[arg1].field_256:
                call stor5[arg1][18][idx].field_0 with:
                   value stor5[arg1][18][idx].field_1024 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                require ext_code.size(stor5[arg1].field_256)
                call stor5[arg1].field_256.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor5[arg1][18][idx].field_0, stor5[arg1][18][idx].field_1024
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
            mem[mem[64]] = stor5[arg1][18][idx].field_256
            mem[mem[64] + 32] = stor5[arg1][18][idx].field_768
            mem[mem[64] + 64] = block.number
            mem[mem[64] + 96] = stor5[arg1][18][idx].field_512
            emit 0x84842e1c: stor5[arg1][18][idx].field_256, stor5[arg1][18][idx].field_768, block.number, stor5[arg1][18][idx].field_512
        else:
            s = 0
            while uint8(s) < sub_78463323:
                if block.hash(stor5[arg1][18][idx].field_512 + uint8(s)) % 16 < 10:
                    if stor5[arg1][18][idx].field_1792 != 1:
                        if Mask(1, 1, stor5[arg1][18][idx].field_1792) != 2:
                            if Mask(1, 2, stor5[arg1][18][idx].field_1792) == 4:
                                require uint8(s) < stor5[arg1][18][idx].field_2304
                                mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                if stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + uint8(s)].field_0 > 0:
                                    if block.hash(stor5[arg1][18][idx].field_512 + uint8(s)) % 16 >= 10:
                                        require uint8(s) < stor5[arg1][18][idx].field_2304
                                        mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                        require stor5[arg1].field_1792
                                        require stor5[arg1][18][idx].field_1536 + (stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + uint8(s)].field_0 * stor5[arg1].field_2816 / stor5[arg1].field_1792) >= stor5[arg1][18][idx].field_1536
                                        stor5[arg1][18][idx].field_1536 += stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + uint8(s)].field_0 * stor5[arg1].field_2816 / stor5[arg1].field_1792
                        else:
                            require uint8(s) < stor5[arg1][18][idx].field_2304
                            mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                            if stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + uint8(s)].field_0 > 0:
                                if bool(block.hash(stor5[arg1][18][idx].field_512 + uint8(s))) != 1:
                                    require uint8(s) < stor5[arg1][18][idx].field_2304
                                    mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                    require stor5[arg1].field_1536
                                    require stor5[arg1][18][idx].field_1536 + (stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + uint8(s)].field_0 * stor5[arg1].field_2560 / stor5[arg1].field_1536) >= stor5[arg1][18][idx].field_1536
                                    stor5[arg1][18][idx].field_1536 += stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + uint8(s)].field_0 * stor5[arg1].field_2560 / stor5[arg1].field_1536
                            if Mask(1, 2, stor5[arg1][18][idx].field_1792) == 4:
                                require sub_78463323 + uint8(s) < stor5[arg1][18][idx].field_2304
                                mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                if stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + stor4 + uint8(s)].field_0 > 0:
                                    if block.hash(stor5[arg1][18][idx].field_512 + uint8(s)) % 16 >= 10:
                                        require sub_78463323 + uint8(s) < stor5[arg1][18][idx].field_2304
                                        mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                        require stor5[arg1].field_1792
                                        require stor5[arg1][18][idx].field_1536 + (stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + stor4 + uint8(s)].field_0 * stor5[arg1].field_2816 / stor5[arg1].field_1792) >= stor5[arg1][18][idx].field_1536
                                        stor5[arg1][18][idx].field_1536 += stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + stor4 + uint8(s)].field_0 * stor5[arg1].field_2816 / stor5[arg1].field_1792
                    else:
                        require uint8(s) < stor5[arg1][18][idx].field_2304
                        mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                        if stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + uint8(s)].field_0 > 0:
                            if bool(block.hash(stor5[arg1][18][idx].field_512 + uint8(s))) == 1:
                                require uint8(s) < stor5[arg1][18][idx].field_2304
                                mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                require stor5[arg1].field_1280
                                require stor5[arg1][18][idx].field_1536 + (stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + uint8(s)].field_0 * stor5[arg1].field_2304 / stor5[arg1].field_1280) >= stor5[arg1][18][idx].field_1536
                                stor5[arg1][18][idx].field_1536 += stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + uint8(s)].field_0 * stor5[arg1].field_2304 / stor5[arg1].field_1280
                        if Mask(1, 1, stor5[arg1][18][idx].field_1792) != 2:
                            if Mask(1, 2, stor5[arg1][18][idx].field_1792) == 4:
                                require sub_78463323 + uint8(s) < stor5[arg1][18][idx].field_2304
                                mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                if stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + stor4 + uint8(s)].field_0 > 0:
                                    if block.hash(stor5[arg1][18][idx].field_512 + uint8(s)) % 16 >= 10:
                                        require sub_78463323 + uint8(s) < stor5[arg1][18][idx].field_2304
                                        mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                        require stor5[arg1].field_1792
                                        require stor5[arg1][18][idx].field_1536 + (stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + stor4 + uint8(s)].field_0 * stor5[arg1].field_2816 / stor5[arg1].field_1792) >= stor5[arg1][18][idx].field_1536
                                        stor5[arg1][18][idx].field_1536 += stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + stor4 + uint8(s)].field_0 * stor5[arg1].field_2816 / stor5[arg1].field_1792
                        else:
                            require sub_78463323 + uint8(s) < stor5[arg1][18][idx].field_2304
                            mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                            if stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + stor4 + uint8(s)].field_0 > 0:
                                if bool(block.hash(stor5[arg1][18][idx].field_512 + uint8(s))) != 1:
                                    require sub_78463323 + uint8(s) < stor5[arg1][18][idx].field_2304
                                    mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                    require stor5[arg1].field_1536
                                    require stor5[arg1][18][idx].field_1536 + (stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + stor4 + uint8(s)].field_0 * stor5[arg1].field_2560 / stor5[arg1].field_1536) >= stor5[arg1][18][idx].field_1536
                                    stor5[arg1][18][idx].field_1536 += stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + stor4 + uint8(s)].field_0 * stor5[arg1].field_2560 / stor5[arg1].field_1536
                            if Mask(1, 2, stor5[arg1][18][idx].field_1792) == 4:
                                require (2 * sub_78463323) + uint8(s) < stor5[arg1][18][idx].field_2304
                                mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                if stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + (2 * stor4) + uint8(s)].field_0 > 0:
                                    if block.hash(stor5[arg1][18][idx].field_512 + uint8(s)) % 16 >= 10:
                                        require (2 * sub_78463323) + uint8(s) < stor5[arg1][18][idx].field_2304
                                        mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                        require stor5[arg1].field_1792
                                        require stor5[arg1][18][idx].field_1536 + (stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + (2 * stor4) + uint8(s)].field_0 * stor5[arg1].field_2816 / stor5[arg1].field_1792) >= stor5[arg1][18][idx].field_1536
                                        stor5[arg1][18][idx].field_1536 += stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + (2 * stor4) + uint8(s)].field_0 * stor5[arg1].field_2816 / stor5[arg1].field_1792
                else:
                    if block.hash(stor5[arg1][18][idx].field_512 + uint8(s)) % 16 <= 15:
                        if stor5[arg1][18][idx].field_1792 != 1:
                            if Mask(1, 1, stor5[arg1][18][idx].field_1792) != 2:
                                if Mask(1, 2, stor5[arg1][18][idx].field_1792) == 4:
                                    require uint8(s) < stor5[arg1][18][idx].field_2304
                                    mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                    if stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + uint8(s)].field_0 > 0:
                                        if block.hash(stor5[arg1][18][idx].field_512 + uint8(s)) % 16 <= 15:
                                            require uint8(s) < stor5[arg1][18][idx].field_2304
                                            mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                            require stor5[arg1].field_1792
                                            require stor5[arg1][18][idx].field_1536 + (stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + uint8(s)].field_0 * stor5[arg1].field_2816 / stor5[arg1].field_1792) >= stor5[arg1][18][idx].field_1536
                                            stor5[arg1][18][idx].field_1536 += stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + uint8(s)].field_0 * stor5[arg1].field_2816 / stor5[arg1].field_1792
                            else:
                                require uint8(s) < stor5[arg1][18][idx].field_2304
                                mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                if stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + uint8(s)].field_0 > 0:
                                    if block.hash(stor5[arg1][18][idx].field_512 + uint8(s)) % 16 > 15:
                                        require uint8(s) < stor5[arg1][18][idx].field_2304
                                        mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                        require stor5[arg1].field_1536
                                        require stor5[arg1][18][idx].field_1536 + (stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + uint8(s)].field_0 * stor5[arg1].field_2560 / stor5[arg1].field_1536) >= stor5[arg1][18][idx].field_1536
                                        stor5[arg1][18][idx].field_1536 += stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + uint8(s)].field_0 * stor5[arg1].field_2560 / stor5[arg1].field_1536
                                if Mask(1, 2, stor5[arg1][18][idx].field_1792) == 4:
                                    require sub_78463323 + uint8(s) < stor5[arg1][18][idx].field_2304
                                    mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                    if stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + stor4 + uint8(s)].field_0 > 0:
                                        if block.hash(stor5[arg1][18][idx].field_512 + uint8(s)) % 16 <= 15:
                                            require sub_78463323 + uint8(s) < stor5[arg1][18][idx].field_2304
                                            mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                            require stor5[arg1].field_1792
                                            require stor5[arg1][18][idx].field_1536 + (stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + stor4 + uint8(s)].field_0 * stor5[arg1].field_2816 / stor5[arg1].field_1792) >= stor5[arg1][18][idx].field_1536
                                            stor5[arg1][18][idx].field_1536 += stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + stor4 + uint8(s)].field_0 * stor5[arg1].field_2816 / stor5[arg1].field_1792
                        else:
                            require uint8(s) < stor5[arg1][18][idx].field_2304
                            mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                            if stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + uint8(s)].field_0 > 0:
                                if block.hash(stor5[arg1][18][idx].field_512 + uint8(s)) % 16 > 15:
                                    require uint8(s) < stor5[arg1][18][idx].field_2304
                                    mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                    require stor5[arg1].field_1280
                                    require stor5[arg1][18][idx].field_1536 + (stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + uint8(s)].field_0 * stor5[arg1].field_2304 / stor5[arg1].field_1280) >= stor5[arg1][18][idx].field_1536
                                    stor5[arg1][18][idx].field_1536 += stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + uint8(s)].field_0 * stor5[arg1].field_2304 / stor5[arg1].field_1280
                            if Mask(1, 1, stor5[arg1][18][idx].field_1792) != 2:
                                if Mask(1, 2, stor5[arg1][18][idx].field_1792) == 4:
                                    require sub_78463323 + uint8(s) < stor5[arg1][18][idx].field_2304
                                    mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                    if stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + stor4 + uint8(s)].field_0 > 0:
                                        if block.hash(stor5[arg1][18][idx].field_512 + uint8(s)) % 16 <= 15:
                                            require sub_78463323 + uint8(s) < stor5[arg1][18][idx].field_2304
                                            mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                            require stor5[arg1].field_1792
                                            require stor5[arg1][18][idx].field_1536 + (stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + stor4 + uint8(s)].field_0 * stor5[arg1].field_2816 / stor5[arg1].field_1792) >= stor5[arg1][18][idx].field_1536
                                            stor5[arg1][18][idx].field_1536 += stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + stor4 + uint8(s)].field_0 * stor5[arg1].field_2816 / stor5[arg1].field_1792
                            else:
                                require sub_78463323 + uint8(s) < stor5[arg1][18][idx].field_2304
                                mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                if stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + stor4 + uint8(s)].field_0 > 0:
                                    if block.hash(stor5[arg1][18][idx].field_512 + uint8(s)) % 16 > 15:
                                        require sub_78463323 + uint8(s) < stor5[arg1][18][idx].field_2304
                                        mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                        require stor5[arg1].field_1536
                                        require stor5[arg1][18][idx].field_1536 + (stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + stor4 + uint8(s)].field_0 * stor5[arg1].field_2560 / stor5[arg1].field_1536) >= stor5[arg1][18][idx].field_1536
                                        stor5[arg1][18][idx].field_1536 += stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + stor4 + uint8(s)].field_0 * stor5[arg1].field_2560 / stor5[arg1].field_1536
                                if Mask(1, 2, stor5[arg1][18][idx].field_1792) == 4:
                                    require (2 * sub_78463323) + uint8(s) < stor5[arg1][18][idx].field_2304
                                    mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                    if stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + (2 * stor4) + uint8(s)].field_0 > 0:
                                        if block.hash(stor5[arg1][18][idx].field_512 + uint8(s)) % 16 <= 15:
                                            require (2 * sub_78463323) + uint8(s) < stor5[arg1][18][idx].field_2304
                                            mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                            require stor5[arg1].field_1792
                                            require stor5[arg1][18][idx].field_1536 + (stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + (2 * stor4) + uint8(s)].field_0 * stor5[arg1].field_2816 / stor5[arg1].field_1792) >= stor5[arg1][18][idx].field_1536
                                            stor5[arg1][18][idx].field_1536 += stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + (2 * stor4) + uint8(s)].field_0 * stor5[arg1].field_2816 / stor5[arg1].field_1792
                    else:
                        if stor5[arg1][18][idx].field_1792 != 1:
                            if Mask(1, 1, stor5[arg1][18][idx].field_1792) != 2:
                                if Mask(1, 2, stor5[arg1][18][idx].field_1792) == 4:
                                    require uint8(s) < stor5[arg1][18][idx].field_2304
                                    mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                    if stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + uint8(s)].field_0 > 0:
                                        if block.hash(stor5[arg1][18][idx].field_512 + uint8(s)) % 16 <= 15:
                                            require uint8(s) < stor5[arg1][18][idx].field_2304
                                            mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                            require stor5[arg1].field_1792
                                            require stor5[arg1][18][idx].field_1536 + (stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + uint8(s)].field_0 * stor5[arg1].field_2816 / stor5[arg1].field_1792) >= stor5[arg1][18][idx].field_1536
                                            stor5[arg1][18][idx].field_1536 += stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + uint8(s)].field_0 * stor5[arg1].field_2816 / stor5[arg1].field_1792
                            else:
                                require uint8(s) < stor5[arg1][18][idx].field_2304
                                mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                if stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + uint8(s)].field_0 > 0:
                                    if bool(block.hash(stor5[arg1][18][idx].field_512 + uint8(s))) != 1:
                                        require uint8(s) < stor5[arg1][18][idx].field_2304
                                        mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                        require stor5[arg1].field_1536
                                        require stor5[arg1][18][idx].field_1536 + (stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + uint8(s)].field_0 * stor5[arg1].field_2560 / stor5[arg1].field_1536) >= stor5[arg1][18][idx].field_1536
                                        stor5[arg1][18][idx].field_1536 += stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + uint8(s)].field_0 * stor5[arg1].field_2560 / stor5[arg1].field_1536
                                if Mask(1, 2, stor5[arg1][18][idx].field_1792) == 4:
                                    require sub_78463323 + uint8(s) < stor5[arg1][18][idx].field_2304
                                    mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                    if stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + stor4 + uint8(s)].field_0 > 0:
                                        if block.hash(stor5[arg1][18][idx].field_512 + uint8(s)) % 16 <= 15:
                                            require sub_78463323 + uint8(s) < stor5[arg1][18][idx].field_2304
                                            mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                            require stor5[arg1].field_1792
                                            require stor5[arg1][18][idx].field_1536 + (stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + stor4 + uint8(s)].field_0 * stor5[arg1].field_2816 / stor5[arg1].field_1792) >= stor5[arg1][18][idx].field_1536
                                            stor5[arg1][18][idx].field_1536 += stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + stor4 + uint8(s)].field_0 * stor5[arg1].field_2816 / stor5[arg1].field_1792
                        else:
                            require uint8(s) < stor5[arg1][18][idx].field_2304
                            mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                            if stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + uint8(s)].field_0 > 0:
                                if bool(block.hash(stor5[arg1][18][idx].field_512 + uint8(s))) == 1:
                                    require uint8(s) < stor5[arg1][18][idx].field_2304
                                    mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                    require stor5[arg1].field_1280
                                    require stor5[arg1][18][idx].field_1536 + (stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + uint8(s)].field_0 * stor5[arg1].field_2304 / stor5[arg1].field_1280) >= stor5[arg1][18][idx].field_1536
                                    stor5[arg1][18][idx].field_1536 += stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + uint8(s)].field_0 * stor5[arg1].field_2304 / stor5[arg1].field_1280
                            if Mask(1, 1, stor5[arg1][18][idx].field_1792) != 2:
                                if Mask(1, 2, stor5[arg1][18][idx].field_1792) == 4:
                                    require sub_78463323 + uint8(s) < stor5[arg1][18][idx].field_2304
                                    mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                    if stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + stor4 + uint8(s)].field_0 > 0:
                                        if block.hash(stor5[arg1][18][idx].field_512 + uint8(s)) % 16 <= 15:
                                            require sub_78463323 + uint8(s) < stor5[arg1][18][idx].field_2304
                                            mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                            require stor5[arg1].field_1792
                                            require stor5[arg1][18][idx].field_1536 + (stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + stor4 + uint8(s)].field_0 * stor5[arg1].field_2816 / stor5[arg1].field_1792) >= stor5[arg1][18][idx].field_1536
                                            stor5[arg1][18][idx].field_1536 += stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + stor4 + uint8(s)].field_0 * stor5[arg1].field_2816 / stor5[arg1].field_1792
                            else:
                                require sub_78463323 + uint8(s) < stor5[arg1][18][idx].field_2304
                                mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                if stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + stor4 + uint8(s)].field_0 > 0:
                                    if bool(block.hash(stor5[arg1][18][idx].field_512 + uint8(s))) != 1:
                                        require sub_78463323 + uint8(s) < stor5[arg1][18][idx].field_2304
                                        mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                        require stor5[arg1].field_1536
                                        require stor5[arg1][18][idx].field_1536 + (stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + stor4 + uint8(s)].field_0 * stor5[arg1].field_2560 / stor5[arg1].field_1536) >= stor5[arg1][18][idx].field_1536
                                        stor5[arg1][18][idx].field_1536 += stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + stor4 + uint8(s)].field_0 * stor5[arg1].field_2560 / stor5[arg1].field_1536
                                if Mask(1, 2, stor5[arg1][18][idx].field_1792) == 4:
                                    require (2 * sub_78463323) + uint8(s) < stor5[arg1][18][idx].field_2304
                                    mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                    if stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + (2 * stor4) + uint8(s)].field_0 > 0:
                                        if block.hash(stor5[arg1][18][idx].field_512 + uint8(s)) % 16 <= 15:
                                            require (2 * sub_78463323) + uint8(s) < stor5[arg1][18][idx].field_2304
                                            mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                                            require stor5[arg1].field_1792
                                            require stor5[arg1][18][idx].field_1536 + (stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + (2 * stor4) + uint8(s)].field_0 * stor5[arg1].field_2816 / stor5[arg1].field_1792) >= stor5[arg1][18][idx].field_1536
                                            stor5[arg1][18][idx].field_1536 += stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + (2 * stor4) + uint8(s)].field_0 * stor5[arg1].field_2816 / stor5[arg1].field_1792
                s = s + 1
                continue 
            s = 0
            t = 0
            while uint8(s) < 3:
                if not uint8(stor5[arg1][18][idx].field_1792 and 2^uint8(s)):
                    s = s + 1
                    t = t
                    continue 
                s = s + 1
                t = t + 1
                continue 
            if Mask(1, 3, stor5[arg1][18][idx].field_1792) == 8:
                require t * sub_78463323 < stor5[arg1][18][idx].field_2304
                s = 0
                u = (t * sub_78463323) + 1
                while s < stor[('array', 9, ('map', ('var', 0), ('array', 18, ('map', ('param', 'arg1'), ('name', 'stor5', 5))))) + (t * stor4)].field_0:
                    require u < stor5[arg1][18][idx].field_2304
                    require u + 1 < stor5[arg1][18][idx].field_2304
                    mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                    t = 0
                    v = u + 2
                    while t < stor5[arg1][18][idx][u + 9].field_256:
                        require v < stor5[arg1][18][idx].field_2304
                        mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                        if stor5[arg1][18][idx][v + 9].field_0 == block.hash(stor5[arg1][18][idx].field_512 + stor5[arg1][18][idx][u + 9].field_0) % 16:
                            require v + 1 < stor5[arg1][18][idx].field_2304
                            mem[0] = sha3(idx, sha3(arg1, 5) + 18) + 9
                            require stor5[arg1].field_2048
                            require stor5[arg1][18][idx].field_1536 + (stor5[arg1][18][idx][v + 9].field_256 * stor5[arg1].field_3072 / stor5[arg1].field_2048) >= stor5[arg1][18][idx].field_1536
                            stor5[arg1][18][idx].field_1536 += stor5[arg1][18][idx][v + 9].field_256 * stor5[arg1].field_3072 / stor5[arg1].field_2048
                        t = t + 1
                        v = v + 2
                        continue 
                    s = s + 1
                    u = v
                    continue 
            if stor5[arg1][18][idx].field_1536 > 0:
                if not stor5[arg1].field_256:
                    if eth.balance(this.address) < stor5[arg1][18][idx].field_1536:
                        revert with 0, 'Not enough ether :(!'
                else:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor5[arg1].field_256)
                    staticcall stor5[arg1].field_256.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < stor5[arg1][18][idx].field_1536:
                        revert with 0, 'Not enough token :(!'
            stor5[arg1][18][idx].field_2048 = 1
            require stor5[arg1][18][idx].field_1280 <= stor5[arg1].field_4096
            stor5[arg1].field_4096 -= stor5[arg1][18][idx].field_1280
            stor5[arg1].field_3840 = stor5[arg1][18][idx].field_768
            require sub_ccc8efcc[stor5[arg1].field_256] + (stor5[arg1][18][idx].field_1024 * sub_9b458bd3 / 10000) >= sub_ccc8efcc[stor5[arg1].field_256]
            mem[0] = stor5[arg1].field_256
            mem[32] = 6
            sub_ccc8efcc[stor5[arg1].field_256] += stor5[arg1][18][idx].field_1024 * sub_9b458bd3 / 10000
            require stor5[arg1].field_4352 + stor5[arg1][18][idx].field_1024 - (stor5[arg1][18][idx].field_1024 * sub_9b458bd3 / 10000) >= stor5[arg1].field_4352
            stor5[arg1].field_4352 = stor5[arg1].field_4352 + stor5[arg1][18][idx].field_1024 - (stor5[arg1][18][idx].field_1024 * sub_9b458bd3 / 10000)
            require stor5[arg1][18][idx].field_1536 <= stor5[arg1].field_4352
            stor5[arg1].field_4352 -= stor5[arg1][18][idx].field_1536
            if stor5[arg1][18][idx].field_1536 > 0:
                if not stor5[arg1].field_256:
                    call stor5[arg1][18][idx].field_0 with:
                       value stor5[arg1][18][idx].field_1536 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    require ext_code.size(stor5[arg1].field_256)
                    call stor5[arg1].field_256.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor5[arg1][18][idx].field_0, stor5[arg1][18][idx].field_1536
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                mem[mem[64]] = arg1
                mem[mem[64] + 32] = idx
                mem[mem[64] + 64] = stor5[arg1][18][idx].field_1536
                emit 0xc6463bc3: arg1, idx, stor5[arg1][18][idx].field_1536
        idx = idx + 1
        continue 
    if stor5[arg1].field_3840 != stor5[arg1].field_3584:
        return 0
    if stor5[arg1].field_4352 > 0:
        if not stor5[arg1].field_256:
            if eth.balance(this.address) < stor5[arg1].field_4352:
                revert with 0, 'Not enough ether :(!'
        else:
            require ext_code.size(stor5[arg1].field_256)
            staticcall stor5[arg1].field_256.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < stor5[arg1].field_4352:
                revert with 0, 'Not enough token :(!'
        stor5[arg1].field_4352 = 0
        if not stor5[arg1].field_256:
            call stor5[arg1].field_0 with:
               value stor5[arg1].field_4352 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(stor5[arg1].field_256)
            call stor5[arg1].field_256.0xa9059cbb with:
                 gas gas_remaining wei
                args stor5[arg1].field_0, stor5[arg1].field_4352
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    stor5[arg1].field_3328 = 0
    emit 0x67acaceb: arg1
    return 1
}

function sub_c2aaf028(?) payable {
    require calldata.size - 4 >= 384
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(arg2.length) + 128] = arg4.length
    mem[ceil32(arg2.length) + 160 len arg4.length] = arg4[all]
    mem[ceil32(arg2.length) + arg4.length + 160] = 0
    mem[ceil32(arg2.length) + ceil32(arg4.length) + 160 len 128] = call.data[132 len 128]
    mem[ceil32(arg2.length) + ceil32(arg4.length) + 288 len 128] = call.data[260 len 128]
    mem[ceil32(arg2.length) + ceil32(arg4.length) + 416] = 0
    require arg3 > 0
    idx = 0
    while idx < 4:
        require mem[(32 * idx) + ceil32(arg2.length) + ceil32(arg4.length) + 160] > 0
        require idx < 4
        require mem[(32 * idx) + ceil32(arg2.length) + ceil32(arg4.length) + 160] <= mem[(32 * idx) + ceil32(arg2.length) + ceil32(arg4.length) + 288]
        idx = idx + 1
        continue 
    if arg1:
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            require return_data.size >= 32
            if arg3 > ext_call.return_data[0]:
                revert with 0, 'Cannot above current token holdings!'
            else:
                require ext_code.size(arg1)
                staticcall arg1.0xdd62ed3e with:
                        gas gas_remaining wei
                       args msg.sender, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] < arg3:
                            revert with 0, 'Must approve locked tokens before.'
                        else:
                            require sub_dd840951 + 1 >= sub_dd840951
                            sub_dd840951++
                            mem[ceil32(arg2.length) + ceil32(arg4.length) + 992 len 128] = code.data[16667 len 128]
                            mem[64] = ceil32(arg2.length) + ceil32(arg4.length) + 1248
                            mem[ceil32(arg2.length) + ceil32(arg4.length) + 1120 len 128] = code.data[16667 len 128]
                            mem[ceil32(arg2.length) + ceil32(arg4.length) + 416] = msg.sender
                            mem[ceil32(arg2.length) + ceil32(arg4.length) + 544] = sub_dd840951
                            mem[ceil32(arg2.length) + ceil32(arg4.length) + 480] = 96
                            mem[ceil32(arg2.length) + ceil32(arg4.length) + 448] = arg1
                            mem[ceil32(arg2.length) + ceil32(arg4.length) + 512] = ceil32(arg2.length) + 128
                            mem[ceil32(arg2.length) + ceil32(arg4.length) + 576] = ceil32(arg2.length) + ceil32(arg4.length) + 160
                            mem[ceil32(arg2.length) + ceil32(arg4.length) + 608] = ceil32(arg2.length) + ceil32(arg4.length) + 288
                            mem[ceil32(arg2.length) + ceil32(arg4.length) + 736] = 0
                            mem[ceil32(arg2.length) + ceil32(arg4.length) + 768] = arg3
                            mem[ceil32(arg2.length) + ceil32(arg4.length) + 640] = 1
                            mem[ceil32(arg2.length) + ceil32(arg4.length) + 672] = 0
                            mem[ceil32(arg2.length) + ceil32(arg4.length) + 704] = 0
                            mem[32] = 5
                            stor5[stor1].field_0 = msg.sender
                            stor5[stor1].field_256 = arg1
                            stor5[stor1][2][].field_0 = Array(len=arg2.length, data=arg2[all])
                            mem[0] = sha3(sub_dd840951, 5) + 3
                            stor5[stor1][3][].field_0 = Array(len=Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)], data=mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])
                            stor5[stor1].field_1024 = sub_dd840951
                            s = 5
                            idx = ceil32(arg2.length) + ceil32(arg4.length) + 160
                            while ceil32(arg2.length) + ceil32(arg4.length) + 288 > idx:
                                stor5[stor1][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 9
                            while 9 > idx:
                                stor5[stor1][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            s = 9
                            idx = ceil32(arg2.length) + ceil32(arg4.length) + 288
                            while ceil32(arg2.length) + ceil32(arg4.length) + 416 > idx:
                                stor5[stor1][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 13
                            while 13 > idx:
                                stor5[stor1][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            stor5[stor1].field_3328 = 1
                            stor5[stor1].field_3584 = 0
                            stor5[stor1].field_3840 = 0
                            stor5[stor1].field_4096 = 0
                            stor5[stor1].field_4352 = arg3
                            if not arg1:
                                mem[ceil32(arg2.length) + ceil32(arg4.length) + 1248] = msg.sender
                                mem[ceil32(arg2.length) + ceil32(arg4.length) + 1280] = arg1
                                mem[ceil32(arg2.length) + ceil32(arg4.length) + 1376] = sub_dd840951
                                mem[ceil32(arg2.length) + ceil32(arg4.length) + 1408] = arg3
                                mem[ceil32(arg2.length) + ceil32(arg4.length) + 1312] = 192
                                mem[ceil32(arg2.length) + ceil32(arg4.length) + 1440] = arg2.length
                                mem[ceil32(arg2.length) + ceil32(arg4.length) + 1472 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                                if not arg2.length % 32:
                                    mem[ceil32(arg2.length) + ceil32(arg4.length) + 1344] = arg2.length + 224
                                    mem[arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + 1472] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                                    mem[arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + 1504 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
                                    if not Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32:
                                        emit 0xa0f40cac: mem[ceil32(arg2.length) + ceil32(arg4.length) + 1248 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + arg2.length + 256]
                                        return sub_dd840951
                                    else:
                                        mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + 1504] = mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 1536 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32]
                                        emit 0xa0f40cac: mem[ceil32(arg2.length) + ceil32(arg4.length) + 1248 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + 288]
                                        return sub_dd840951
                                else:
                                    mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + 1472] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + -(arg2.length % 32) + 1504 len arg2.length % 32]
                                    mem[ceil32(arg2.length) + ceil32(arg4.length) + 1344] = floor32(arg2.length) + 256
                                    mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + 1504] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                                    mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + 1536 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
                                    if not Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32:
                                        emit 0xa0f40cac: mem[ceil32(arg2.length) + ceil32(arg4.length) + 1248 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + floor32(arg2.length) + 288]
                                        return sub_dd840951
                                    else:
                                        mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + 1536] = mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 1568 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32]
                                        emit 0xa0f40cac: mem[ceil32(arg2.length) + ceil32(arg4.length) + 1248 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + floor32(arg2.length) + 320]
                                        return sub_dd840951
                            else:
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    mem[ceil32(arg2.length) + ceil32(arg4.length) + 1248] = msg.sender
                                    mem[ceil32(arg2.length) + ceil32(arg4.length) + 1280] = arg1
                                    mem[ceil32(arg2.length) + ceil32(arg4.length) + 1376] = sub_dd840951
                                    mem[ceil32(arg2.length) + ceil32(arg4.length) + 1408] = arg3
                                    mem[ceil32(arg2.length) + ceil32(arg4.length) + 1312] = 192
                                    mem[ceil32(arg2.length) + ceil32(arg4.length) + 1440] = arg2.length
                                    mem[ceil32(arg2.length) + ceil32(arg4.length) + 1472 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                                    if not arg2.length % 32:
                                        mem[ceil32(arg2.length) + ceil32(arg4.length) + 1344] = arg2.length + 224
                                        mem[arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + 1472] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                                        mem[arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + 1504 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
                                        if not Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32:
                                            emit 0xa0f40cac: mem[ceil32(arg2.length) + ceil32(arg4.length) + 1248 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + arg2.length + 256]
                                            return sub_dd840951
                                        else:
                                            mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + 1504] = mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 1536 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32]
                                            emit 0xa0f40cac: mem[ceil32(arg2.length) + ceil32(arg4.length) + 1248 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + 288]
                                            return sub_dd840951
                                    else:
                                        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + 1472] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + -(arg2.length % 32) + 1504 len arg2.length % 32]
                                        mem[ceil32(arg2.length) + ceil32(arg4.length) + 1344] = floor32(arg2.length) + 256
                                        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + 1504] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                                        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + 1536 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
                                        if not Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32:
                                            emit 0xa0f40cac: mem[ceil32(arg2.length) + ceil32(arg4.length) + 1248 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + floor32(arg2.length) + 288]
                                            return sub_dd840951
                                        else:
                                            mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + 1536] = mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 1568 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32]
                                            emit 0xa0f40cac: mem[ceil32(arg2.length) + ceil32(arg4.length) + 1248 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + floor32(arg2.length) + 320]
                                            return sub_dd840951
                    else:
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            if ext_call.return_data[0] < arg3:
                                revert with 0, 'Must approve locked tokens before.'
                            else:
                                require sub_dd840951 + 1 >= sub_dd840951
                                sub_dd840951++
                                mem[ceil32(arg2.length) + ceil32(arg4.length) + 992 len 128] = code.data[16667 len 128]
                                mem[64] = ceil32(arg2.length) + ceil32(arg4.length) + 1248
                                mem[ceil32(arg2.length) + ceil32(arg4.length) + 1120 len 128] = code.data[16667 len 128]
                                mem[ceil32(arg2.length) + ceil32(arg4.length) + 416] = msg.sender
                                mem[ceil32(arg2.length) + ceil32(arg4.length) + 544] = sub_dd840951
                                mem[ceil32(arg2.length) + ceil32(arg4.length) + 480] = 96
                                mem[ceil32(arg2.length) + ceil32(arg4.length) + 448] = arg1
                                mem[ceil32(arg2.length) + ceil32(arg4.length) + 512] = ceil32(arg2.length) + 128
                                mem[ceil32(arg2.length) + ceil32(arg4.length) + 576] = ceil32(arg2.length) + ceil32(arg4.length) + 160
                                mem[ceil32(arg2.length) + ceil32(arg4.length) + 608] = ceil32(arg2.length) + ceil32(arg4.length) + 288
                                mem[ceil32(arg2.length) + ceil32(arg4.length) + 736] = 0
                                mem[ceil32(arg2.length) + ceil32(arg4.length) + 768] = arg3
                                mem[ceil32(arg2.length) + ceil32(arg4.length) + 640] = 1
                                mem[ceil32(arg2.length) + ceil32(arg4.length) + 672] = 0
                                mem[ceil32(arg2.length) + ceil32(arg4.length) + 704] = 0
                                mem[32] = 5
                                stor5[stor1].field_0 = msg.sender
                                stor5[stor1].field_256 = arg1
                                stor5[stor1][2][].field_0 = Array(len=arg2.length, data=arg2[all])
                                mem[0] = sha3(sub_dd840951, 5) + 3
                                stor5[stor1][3][].field_0 = Array(len=Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)], data=mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])
                                stor5[stor1].field_1024 = sub_dd840951
                                s = 5
                                idx = ceil32(arg2.length) + ceil32(arg4.length) + 160
                                while ceil32(arg2.length) + ceil32(arg4.length) + 288 > idx:
                                    stor5[stor1][s].field_0 = mem[idx]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = 9
                                while 9 > idx:
                                    stor5[stor1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                                s = 9
                                idx = ceil32(arg2.length) + ceil32(arg4.length) + 288
                                while ceil32(arg2.length) + ceil32(arg4.length) + 416 > idx:
                                    stor5[stor1][s].field_0 = mem[idx]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = 13
                                while 13 > idx:
                                    stor5[stor1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                                stor5[stor1].field_3328 = 1
                                stor5[stor1].field_3584 = 0
                                stor5[stor1].field_3840 = 0
                                stor5[stor1].field_4096 = 0
                                stor5[stor1].field_4352 = arg3
                                if not arg1:
                                    mem[ceil32(arg2.length) + ceil32(arg4.length) + 1248] = msg.sender
                                    mem[ceil32(arg2.length) + ceil32(arg4.length) + 1280] = arg1
                                    mem[ceil32(arg2.length) + ceil32(arg4.length) + 1376] = sub_dd840951
                                    mem[ceil32(arg2.length) + ceil32(arg4.length) + 1408] = arg3
                                    mem[ceil32(arg2.length) + ceil32(arg4.length) + 1312] = 192
                                    mem[ceil32(arg2.length) + ceil32(arg4.length) + 1440] = arg2.length
                                    mem[ceil32(arg2.length) + ceil32(arg4.length) + 1472 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                                    if not arg2.length % 32:
                                        mem[ceil32(arg2.length) + ceil32(arg4.length) + 1344] = arg2.length + 224
                                        mem[arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + 1472] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                                        mem[arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + 1504 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
                                        if not Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32:
                                            emit 0xa0f40cac: mem[ceil32(arg2.length) + ceil32(arg4.length) + 1248 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + arg2.length + 256]
                                            return sub_dd840951
                                        else:
                                            mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + 1504] = mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 1536 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32]
                                            emit 0xa0f40cac: mem[ceil32(arg2.length) + ceil32(arg4.length) + 1248 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + 288]
                                            return sub_dd840951
                                    else:
                                        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + 1472] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + -(arg2.length % 32) + 1504 len arg2.length % 32]
                                        mem[ceil32(arg2.length) + ceil32(arg4.length) + 1344] = floor32(arg2.length) + 256
                                        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + 1504] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                                        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + 1536 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
                                        if not Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32:
                                            emit 0xa0f40cac: mem[ceil32(arg2.length) + ceil32(arg4.length) + 1248 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + floor32(arg2.length) + 288]
                                            return sub_dd840951
                                        else:
                                            mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + 1536] = mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 1568 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32]
                                            emit 0xa0f40cac: mem[ceil32(arg2.length) + ceil32(arg4.length) + 1248 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + floor32(arg2.length) + 320]
                                            return sub_dd840951
                                else:
                                    require ext_code.size(arg1)
                                    call arg1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        mem[ceil32(arg2.length) + ceil32(arg4.length) + 1248] = msg.sender
                                        mem[ceil32(arg2.length) + ceil32(arg4.length) + 1280] = arg1
                                        mem[ceil32(arg2.length) + ceil32(arg4.length) + 1376] = sub_dd840951
                                        mem[ceil32(arg2.length) + ceil32(arg4.length) + 1408] = arg3
                                        mem[ceil32(arg2.length) + ceil32(arg4.length) + 1312] = 192
                                        mem[ceil32(arg2.length) + ceil32(arg4.length) + 1440] = arg2.length
                                        mem[ceil32(arg2.length) + ceil32(arg4.length) + 1472 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                                        if not arg2.length % 32:
                                            mem[ceil32(arg2.length) + ceil32(arg4.length) + 1344] = arg2.length + 224
                                            mem[arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + 1472] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                                            mem[arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + 1504 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
                                            if not Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32:
                                                emit 0xa0f40cac: mem[ceil32(arg2.length) + ceil32(arg4.length) + 1248 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + arg2.length + 256]
                                                return sub_dd840951
                                            else:
                                                mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + 1504] = mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 1536 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32]
                                                emit 0xa0f40cac: mem[ceil32(arg2.length) + ceil32(arg4.length) + 1248 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + 288]
                                                return sub_dd840951
                                        else:
                                            mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + 1472] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + -(arg2.length % 32) + 1504 len arg2.length % 32]
                                            mem[ceil32(arg2.length) + ceil32(arg4.length) + 1344] = floor32(arg2.length) + 256
                                            mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + 1504] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                                            mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + 1536 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
                                            if not Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32:
                                                emit 0xa0f40cac: mem[ceil32(arg2.length) + ceil32(arg4.length) + 1248 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + floor32(arg2.length) + 288]
                                                return sub_dd840951
                                            else:
                                                mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + 1536] = mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 1568 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32]
                                                emit 0xa0f40cac: mem[ceil32(arg2.length) + ceil32(arg4.length) + 1248 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + floor32(arg2.length) + 320]
                                                return sub_dd840951
                        else:
                            if ext_call.return_data[0] < arg3:
                                revert with 0, 'Must approve locked tokens before.'
                            else:
                                require sub_dd840951 + 1 >= sub_dd840951
                                sub_dd840951++
                                mem[ceil32(arg2.length) + ceil32(arg4.length) + 992 len 128] = code.data[16667 len 128]
                                mem[64] = ceil32(arg2.length) + ceil32(arg4.length) + 1248
                                mem[ceil32(arg2.length) + ceil32(arg4.length) + 1120 len 128] = code.data[16667 len 128]
                                mem[ceil32(arg2.length) + ceil32(arg4.length) + 416] = msg.sender
                                mem[ceil32(arg2.length) + ceil32(arg4.length) + 544] = sub_dd840951
                                mem[ceil32(arg2.length) + ceil32(arg4.length) + 480] = 96
                                mem[ceil32(arg2.length) + ceil32(arg4.length) + 448] = arg1
                                mem[ceil32(arg2.length) + ceil32(arg4.length) + 512] = ceil32(arg2.length) + 128
                                mem[ceil32(arg2.length) + ceil32(arg4.length) + 576] = ceil32(arg2.length) + ceil32(arg4.length) + 160
                                mem[ceil32(arg2.length) + ceil32(arg4.length) + 608] = ceil32(arg2.length) + ceil32(arg4.length) + 288
                                mem[ceil32(arg2.length) + ceil32(arg4.length) + 736] = 0
                                mem[ceil32(arg2.length) + ceil32(arg4.length) + 768] = arg3
                                mem[ceil32(arg2.length) + ceil32(arg4.length) + 640] = 1
                                mem[ceil32(arg2.length) + ceil32(arg4.length) + 672] = 0
                                mem[ceil32(arg2.length) + ceil32(arg4.length) + 704] = 0
                                mem[32] = 5
                                stor5[stor1].field_0 = msg.sender
                                stor5[stor1].field_256 = arg1
                                stor5[stor1][2][].field_0 = Array(len=arg2.length, data=arg2[all])
                                mem[0] = sha3(sub_dd840951, 5) + 3
                                stor5[stor1][3][].field_0 = Array(len=Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)], data=mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])
                                stor5[stor1].field_1024 = sub_dd840951
                                s = 5
                                idx = ceil32(arg2.length) + ceil32(arg4.length) + 160
                                while ceil32(arg2.length) + ceil32(arg4.length) + 288 > idx:
                                    stor5[stor1][s].field_0 = mem[idx]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = 9
                                while 9 > idx:
                                    stor5[stor1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                                s = 9
                                idx = ceil32(arg2.length) + ceil32(arg4.length) + 288
                                while ceil32(arg2.length) + ceil32(arg4.length) + 416 > idx:
                                    stor5[stor1][s].field_0 = mem[idx]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = 13
                                while 13 > idx:
                                    stor5[stor1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                                stor5[stor1].field_3328 = 1
                                stor5[stor1].field_3584 = 0
                                stor5[stor1].field_3840 = 0
                                stor5[stor1].field_4096 = 0
                                stor5[stor1].field_4352 = arg3
                                if not arg1:
                                    mem[ceil32(arg2.length) + ceil32(arg4.length) + 1248] = msg.sender
                                    mem[ceil32(arg2.length) + ceil32(arg4.length) + 1280] = arg1
                                    mem[ceil32(arg2.length) + ceil32(arg4.length) + 1376] = sub_dd840951
                                    mem[ceil32(arg2.length) + ceil32(arg4.length) + 1408] = arg3
                                    mem[ceil32(arg2.length) + ceil32(arg4.length) + 1312] = 192
                                    mem[ceil32(arg2.length) + ceil32(arg4.length) + 1440] = arg2.length
                                    mem[ceil32(arg2.length) + ceil32(arg4.length) + 1472 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                                    if not arg2.length % 32:
                                        mem[ceil32(arg2.length) + ceil32(arg4.length) + 1344] = arg2.length + 224
                                        mem[arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + 1472] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                                        mem[arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + 1504 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
                                        if not Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32:
                                            emit 0xa0f40cac: mem[ceil32(arg2.length) + ceil32(arg4.length) + 1248 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + arg2.length + 256]
                                            return sub_dd840951
                                        else:
                                            mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + 1504] = mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 1536 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32]
                                            emit 0xa0f40cac: mem[ceil32(arg2.length) + ceil32(arg4.length) + 1248 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + 288]
                                            return sub_dd840951
                                    else:
                                        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + 1472] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + -(arg2.length % 32) + 1504 len arg2.length % 32]
                                        mem[ceil32(arg2.length) + ceil32(arg4.length) + 1344] = floor32(arg2.length) + 256
                                        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + 1504] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                                        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + 1536 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
                                        if not Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32:
                                            emit 0xa0f40cac: mem[ceil32(arg2.length) + ceil32(arg4.length) + 1248 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + floor32(arg2.length) + 288]
                                            return sub_dd840951
                                        else:
                                            mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + 1536] = mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 1568 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32]
                                            emit 0xa0f40cac: mem[ceil32(arg2.length) + ceil32(arg4.length) + 1248 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + floor32(arg2.length) + 320]
                                            return sub_dd840951
                                else:
                                    require ext_code.size(arg1)
                                    call arg1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        mem[ceil32(arg2.length) + ceil32(arg4.length) + 1248] = msg.sender
                                        mem[ceil32(arg2.length) + ceil32(arg4.length) + 1280] = arg1
                                        mem[ceil32(arg2.length) + ceil32(arg4.length) + 1376] = sub_dd840951
                                        mem[ceil32(arg2.length) + ceil32(arg4.length) + 1408] = arg3
                                        mem[ceil32(arg2.length) + ceil32(arg4.length) + 1312] = 192
                                        mem[ceil32(arg2.length) + ceil32(arg4.length) + 1440] = arg2.length
                                        mem[ceil32(arg2.length) + ceil32(arg4.length) + 1472 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                                        if not arg2.length % 32:
                                            mem[ceil32(arg2.length) + ceil32(arg4.length) + 1344] = arg2.length + 224
                                            mem[arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + 1472] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                                            mem[arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + 1504 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
                                            if not Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32:
                                                emit 0xa0f40cac: mem[ceil32(arg2.length) + ceil32(arg4.length) + 1248 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + arg2.length + 256]
                                                return sub_dd840951
                                            else:
                                                mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + 1504] = mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 1536 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32]
                                                emit 0xa0f40cac: mem[ceil32(arg2.length) + ceil32(arg4.length) + 1248 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + 288]
                                                return sub_dd840951
                                        else:
                                            mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + 1472] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + -(arg2.length % 32) + 1504 len arg2.length % 32]
                                            mem[ceil32(arg2.length) + ceil32(arg4.length) + 1344] = floor32(arg2.length) + 256
                                            mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + 1504] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                                            mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + 1536 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
                                            if not Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32:
                                                emit 0xa0f40cac: mem[ceil32(arg2.length) + ceil32(arg4.length) + 1248 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + floor32(arg2.length) + 288]
                                                return sub_dd840951
                                            else:
                                                mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + 1536] = mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 1568 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32]
                                                emit 0xa0f40cac: mem[ceil32(arg2.length) + ceil32(arg4.length) + 1248 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + floor32(arg2.length) + 320]
                                                return sub_dd840951
    else:
        if arg3 > msg.value:
            revert with 0, 'Cannot above current ether holdings!'
        else:
            require sub_dd840951 + 1 >= sub_dd840951
            sub_dd840951++
            mem[ceil32(arg2.length) + ceil32(arg4.length) + 992 len 128] = code.data[16667 len 128]
            mem[64] = ceil32(arg2.length) + ceil32(arg4.length) + 1248
            mem[ceil32(arg2.length) + ceil32(arg4.length) + 1120 len 128] = code.data[16667 len 128]
            mem[ceil32(arg2.length) + ceil32(arg4.length) + 416] = msg.sender
            mem[ceil32(arg2.length) + ceil32(arg4.length) + 544] = sub_dd840951
            mem[ceil32(arg2.length) + ceil32(arg4.length) + 480] = 96
            mem[ceil32(arg2.length) + ceil32(arg4.length) + 448] = arg1
            mem[ceil32(arg2.length) + ceil32(arg4.length) + 512] = ceil32(arg2.length) + 128
            mem[ceil32(arg2.length) + ceil32(arg4.length) + 576] = ceil32(arg2.length) + ceil32(arg4.length) + 160
            mem[ceil32(arg2.length) + ceil32(arg4.length) + 608] = ceil32(arg2.length) + ceil32(arg4.length) + 288
            mem[ceil32(arg2.length) + ceil32(arg4.length) + 736] = 0
            mem[ceil32(arg2.length) + ceil32(arg4.length) + 768] = arg3
            mem[ceil32(arg2.length) + ceil32(arg4.length) + 640] = 1
            mem[ceil32(arg2.length) + ceil32(arg4.length) + 672] = 0
            mem[ceil32(arg2.length) + ceil32(arg4.length) + 704] = 0
            mem[32] = 5
            stor5[stor1].field_0 = msg.sender
            stor5[stor1].field_256 = arg1
            stor5[stor1][2][].field_0 = Array(len=arg2.length, data=arg2[all])
            mem[0] = sha3(sub_dd840951, 5) + 3
            stor5[stor1][3][].field_0 = Array(len=Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)], data=mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])
            stor5[stor1].field_1024 = sub_dd840951
            s = 5
            idx = ceil32(arg2.length) + ceil32(arg4.length) + 160
            while ceil32(arg2.length) + ceil32(arg4.length) + 288 > idx:
                stor5[stor1][s].field_0 = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = 9
            while 9 > idx:
                stor5[stor1][idx].field_0 = 0
                idx = idx + 1
                continue 
            s = 9
            idx = ceil32(arg2.length) + ceil32(arg4.length) + 288
            while ceil32(arg2.length) + ceil32(arg4.length) + 416 > idx:
                stor5[stor1][s].field_0 = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = 13
            while 13 > idx:
                stor5[stor1][idx].field_0 = 0
                idx = idx + 1
                continue 
            stor5[stor1].field_3328 = 1
            stor5[stor1].field_3584 = 0
            stor5[stor1].field_3840 = 0
            stor5[stor1].field_4096 = 0
            stor5[stor1].field_4352 = arg3
            if not arg1:
                mem[ceil32(arg2.length) + ceil32(arg4.length) + 1248] = msg.sender
                mem[ceil32(arg2.length) + ceil32(arg4.length) + 1280] = arg1
                mem[ceil32(arg2.length) + ceil32(arg4.length) + 1376] = sub_dd840951
                mem[ceil32(arg2.length) + ceil32(arg4.length) + 1408] = arg3
                mem[ceil32(arg2.length) + ceil32(arg4.length) + 1312] = 192
                mem[ceil32(arg2.length) + ceil32(arg4.length) + 1440] = arg2.length
                mem[ceil32(arg2.length) + ceil32(arg4.length) + 1472 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                if not arg2.length % 32:
                    mem[ceil32(arg2.length) + ceil32(arg4.length) + 1344] = arg2.length + 224
                    mem[arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + 1472] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                    mem[arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + 1504 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
                    if not Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32:
                        emit 0xa0f40cac: mem[ceil32(arg2.length) + ceil32(arg4.length) + 1248 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + arg2.length + 256]
                        return sub_dd840951
                    else:
                        mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + 1504] = mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 1536 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32]
                        emit 0xa0f40cac: mem[ceil32(arg2.length) + ceil32(arg4.length) + 1248 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + 288]
                        return sub_dd840951
                else:
                    mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + 1472] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + -(arg2.length % 32) + 1504 len arg2.length % 32]
                    mem[ceil32(arg2.length) + ceil32(arg4.length) + 1344] = floor32(arg2.length) + 256
                    mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + 1504] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                    mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + 1536 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
                    if not Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32:
                        emit 0xa0f40cac: mem[ceil32(arg2.length) + ceil32(arg4.length) + 1248 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + floor32(arg2.length) + 288]
                        return sub_dd840951
                    else:
                        mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + 1536] = mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 1568 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32]
                        emit 0xa0f40cac: mem[ceil32(arg2.length) + ceil32(arg4.length) + 1248 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + floor32(arg2.length) + 320]
                        return sub_dd840951
            else:
                require ext_code.size(arg1)
                call arg1.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    mem[ceil32(arg2.length) + ceil32(arg4.length) + 1248] = msg.sender
                    mem[ceil32(arg2.length) + ceil32(arg4.length) + 1280] = arg1
                    mem[ceil32(arg2.length) + ceil32(arg4.length) + 1376] = sub_dd840951
                    mem[ceil32(arg2.length) + ceil32(arg4.length) + 1408] = arg3
                    mem[ceil32(arg2.length) + ceil32(arg4.length) + 1312] = 192
                    mem[ceil32(arg2.length) + ceil32(arg4.length) + 1440] = arg2.length
                    mem[ceil32(arg2.length) + ceil32(arg4.length) + 1472 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                    if not arg2.length % 32:
                        mem[ceil32(arg2.length) + ceil32(arg4.length) + 1344] = arg2.length + 224
                        mem[arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + 1472] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                        mem[arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + 1504 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
                        if not Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32:
                            emit 0xa0f40cac: mem[ceil32(arg2.length) + ceil32(arg4.length) + 1248 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + arg2.length + 256]
                            return sub_dd840951
                        else:
                            mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + 1504] = mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 1536 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32]
                            emit 0xa0f40cac: mem[ceil32(arg2.length) + ceil32(arg4.length) + 1248 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + 288]
                            return sub_dd840951
                    else:
                        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + 1472] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + -(arg2.length % 32) + 1504 len arg2.length % 32]
                        mem[ceil32(arg2.length) + ceil32(arg4.length) + 1344] = floor32(arg2.length) + 256
                        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + 1504] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + 1536 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
                        if not Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32:
                            emit 0xa0f40cac: mem[ceil32(arg2.length) + ceil32(arg4.length) + 1248 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + floor32(arg2.length) + 288]
                            return sub_dd840951
                        else:
                            mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + 1536] = mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 1568 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32]
                            emit 0xa0f40cac: mem[ceil32(arg2.length) + ceil32(arg4.length) + 1248 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + floor32(arg2.length) + 320]
                            return sub_dd840951
}



}

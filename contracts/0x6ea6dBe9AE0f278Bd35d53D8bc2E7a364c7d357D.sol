contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


mapping of struct stor0;
array of uint8 stor1;
array of uint8 stor2;
uint256 sub_d960e8de;
uint256 stor4;
uint256 stor5;
uint8 storADA5;

function JACKPOT() {
    return stor2.length
}

function sub_d960e8de(?) {
    return sub_d960e8de
}

function games(uint256 arg1) {
    require calldata.size - 4 >= 32
    return stor0[arg1].field_0, stor0[arg1].field_512, stor0[arg1].field_768, uint8(stor0[arg1].field_1024)
}

function getGameInfo(uint256 arg1) {
    require calldata.size - 4 >= 32
    idx = 704
    s = 0
    while 864 > idx + 32:
        mem[idx + 32] = stor1[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    mem[992] = mem[767 len 1]
    mem[1024] = mem[799 len 1]
    mem[1056] = mem[831 len 1]
    mem[1088] = mem[863 len 1]
    return stor0[arg1].field_0, 
           stor0[arg1].field_768,
           stor0[arg1].field_512,
           uint8(stor0[arg1].field_256),
           mem[992 len 128],
           uint8(stor0[arg1].field_1024)
}

function sub_96ff55d9(?) {
    require calldata.size - 4 >= 64
    idx = 704
    s = 0
    while 864 > idx + 32:
        mem[idx + 32] = stor2[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    mem[992] = mem[767 len 1]
    mem[1024] = mem[799 len 1]
    mem[1056] = mem[831 len 1]
    mem[1088] = mem[863 len 1]
    return address(stor0[arg1][5][arg2].field_0), 
           stor0[arg1][5][arg2].field_256,
           uint8(stor0[arg1][5][arg2].field_768),
           uint8(stor0[arg1][5][arg2].field_512),
           mem[992 len 128],
           stor0[arg1][5][arg2].field_1024
}

function _fallback() payable {
    if 0x531d3bd0400ae601f26b335efbd787415aa5cb81 == msg.sender:
        if msg.value > 0:
            stor2.length += msg.value
            stor4 += msg.value
            emit 0x601efe55: (msg.value + stor2.length)
        else:
            if stor4 > 0:
                if stor2.length > 2 * stor4:
                    if stor2.length <= stor4:
                        call 0x531d3bd0400ae601f26b335efbd787415aa5cb81 with:
                           value stor2.length wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        stor4 = 0
                        stor2.length = 0
                    else:
                        call 0x531d3bd0400ae601f26b335efbd787415aa5cb81 with:
                           value stor4 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        stor2.length -= stor4
                        stor4 = 0
                    emit 0x601efe55: stor2.length
                else:
                    if block.timestamp - stor1.length > 4200 * 24 * 3600:
                        if stor2.length <= stor4:
                            call 0x531d3bd0400ae601f26b335efbd787415aa5cb81 with:
                               value stor2.length wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            stor4 = 0
                            stor2.length = 0
                        else:
                            call 0x531d3bd0400ae601f26b335efbd787415aa5cb81 with:
                               value stor4 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            stor2.length -= stor4
                            stor4 = 0
                        emit 0x601efe55: stor2.length
    else:
        if msg.sender != 0x203bf6b46508ed917c085f50f194f36b0a62eb02:
            if sub_d960e8de <= 0:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if uint8(stor0[stor3].field_1024) != 1:
                    call msg.sender with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if msg.value == 10^16:
                        stor5 += 12 * 10^14
                        stor0[stor3].field_768 += 88 * 10^14
                        emit 0xe2a6acbc: stor0[stor3].field_768
                        mem[416 len 160] = code.data[6871 len 160]
                        if calldata.size == 5:
                            idx = 0
                            while uint8(idx) < calldata.size:
                                require uint8(idx) < 5
                                mem[(32 * uint8(idx)) + 416] = Mask(8, 248, cd[uint8(idx)]) >> 248
                                idx = idx + 1
                                continue 
                            idx = 0
                            while uint8(idx) < 5:
                                if mem[(32 * uint8(idx)) + 447 len 1] >= 1:
                                    require uint8(idx) < 5
                                    if mem[(32 * uint8(idx)) + 447 len 1] <= 36:
                                        idx = idx + 1
                                        continue 
                            idx = 0
                            while uint8(idx) < 4:
                                s = idx + 1
                                while uint8(s) < 5:
                                    require uint8(idx) < 5
                                    if mem[(32 * uint8(idx)) + 447 len 1] != mem[(32 * uint8(s)) + 447 len 1]:
                                        s = s + 1
                                        continue 
                                idx = idx + 1
                                continue 
                            mem[576 len 160] = code.data[6871 len 160]
                            idx = 0
                            s = 0
                            while uint8(idx) < 4:
                                t = 0
                                u = s
                                while t < -uint8(idx) + 4:
                                    require t + 1 < 5
                                    require t < 5
                                    if mem[(32 * t) + 447 len 1] <= mem[(32 * t + 1) + 447 len 1]:
                                        t = t + 1
                                        u = u
                                        continue 
                                    require t < 5
                                    _185 = mem[(32 * t) + 416]
                                    require t + 1 < 5
                                    require t < 5
                                    mem[(32 * t) + 416] = mem[(32 * t + 1) + 447 len 1]
                                    require t + 1 < 5
                                    mem[(32 * t + 1) + 416] = uint8(_185)
                                    t = t + 1
                                    u = _185
                                    continue 
                                idx = idx + 1
                                s = u
                                continue 
                            stor0[stor3].field_512++
                            stor0[stor3][5][stor0[stor3].field_512].field_0 = msg.sender or Mask(96, 160, stor0[stor3][5][stor0[stor3].field_512].field_0)
                            stor0[stor3][5][stor0[stor3].field_512].field_256 = stor0[stor3].field_512
                            s = 0
                            idx = 416
                            while 576 > idx:
                                stor0[stor3][5][stor0[stor3].field_512].field_512 = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and stor0[stor3][5][stor0[stor3].field_512].field_512
                                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                idx = idx + 32
                                continue 
                            idx = 5
                            s = sha3(stor0[stor3].field_512, sha3(sub_d960e8de, 0) + 5) + 2
                            while idx:
                                stor[s] = !(255 * 256^idx) and stor[s]
                                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                s = (idx + 1 / 32) + s
                                continue 
                            idx = (-3 * None + 3 / 32) + (None * None + 3 / 32) + 2
                            while 3 > idx:
                                uint8(stor0[stor3][5][stor0[stor3].field_512][idx].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint8(stor0[stor3][5][stor0[stor3].field_512].field_768) = 0
                            mem[832] = mem[447 len 1]
                            mem[864] = mem[479 len 1]
                            mem[896] = mem[511 len 1]
                            mem[928] = mem[543 len 1]
                            mem[960] = mem[575 len 1]
                            emit 0x90f48102: sub_d960e8de, stor0[stor3].field_512, msg.sender, mem[832 len 160]
                    else:
                        if msg.value < 10^16:
                            if msg.value:
                                require msg.value
                                require 12 * msg.value / msg.value == 12
                            stor5 += 12 * msg.value / 100
                            if msg.value:
                                require msg.value
                                require 88 * msg.value / msg.value == 88
                            stor0[stor3].field_768 += 88 * msg.value / 100
                            emit 0xe2a6acbc: stor0[stor3].field_768
                        else:
                            require 10^16 <= msg.value
                            call msg.sender with:
                               value msg.value - 10^16 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            stor5 += 12 * 10^14
                            stor0[stor3].field_768 += 88 * 10^14
                            emit 0xe2a6acbc: stor0[stor3].field_768
                            mem[416 len 160] = code.data[6871 len 160]
                            if calldata.size == 5:
                                idx = 0
                                while uint8(idx) < calldata.size:
                                    require uint8(idx) < 5
                                    mem[(32 * uint8(idx)) + 416] = Mask(8, 248, cd[uint8(idx)]) >> 248
                                    idx = idx + 1
                                    continue 
                                idx = 0
                                while uint8(idx) < 5:
                                    if mem[(32 * uint8(idx)) + 447 len 1] >= 1:
                                        require uint8(idx) < 5
                                        if mem[(32 * uint8(idx)) + 447 len 1] <= 36:
                                            idx = idx + 1
                                            continue 
                                idx = 0
                                while uint8(idx) < 4:
                                    s = idx + 1
                                    while uint8(s) < 5:
                                        require uint8(idx) < 5
                                        if mem[(32 * uint8(idx)) + 447 len 1] != mem[(32 * uint8(s)) + 447 len 1]:
                                            s = s + 1
                                            continue 
                                    idx = idx + 1
                                    continue 
                                mem[576 len 160] = code.data[6871 len 160]
                                idx = 0
                                s = 0
                                while uint8(idx) < 4:
                                    t = 0
                                    u = s
                                    while t < -uint8(idx) + 4:
                                        require t + 1 < 5
                                        require t < 5
                                        if mem[(32 * t) + 447 len 1] <= mem[(32 * t + 1) + 447 len 1]:
                                            t = t + 1
                                            u = u
                                            continue 
                                        require t < 5
                                        _184 = mem[(32 * t) + 416]
                                        require t + 1 < 5
                                        require t < 5
                                        mem[(32 * t) + 416] = mem[(32 * t + 1) + 447 len 1]
                                        require t + 1 < 5
                                        mem[(32 * t + 1) + 416] = uint8(_184)
                                        t = t + 1
                                        u = _184
                                        continue 
                                    idx = idx + 1
                                    s = u
                                    continue 
                                stor0[stor3].field_512++
                                stor0[stor3][5][stor0[stor3].field_512].field_0 = msg.sender or Mask(96, 160, stor0[stor3][5][stor0[stor3].field_512].field_0)
                                stor0[stor3][5][stor0[stor3].field_512].field_256 = stor0[stor3].field_512
                                s = 0
                                idx = 416
                                while 576 > idx:
                                    stor0[stor3][5][stor0[stor3].field_512].field_512 = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and stor0[stor3][5][stor0[stor3].field_512].field_512
                                    s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                    idx = idx + 32
                                    continue 
                                idx = 5
                                s = sha3(stor0[stor3].field_512, sha3(sub_d960e8de, 0) + 5) + 2
                                while idx:
                                    stor[s] = !(255 * 256^idx) and stor[s]
                                    idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                    s = (idx + 1 / 32) + s
                                    continue 
                                idx = (-3 * None + 3 / 32) + (None * None + 3 / 32) + 2
                                while 3 > idx:
                                    uint8(stor0[stor3][5][stor0[stor3].field_512][idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint8(stor0[stor3][5][stor0[stor3].field_512].field_768) = 0
                                mem[832] = mem[447 len 1]
                                mem[864] = mem[479 len 1]
                                mem[896] = mem[511 len 1]
                                mem[928] = mem[543 len 1]
                                mem[960] = mem[575 len 1]
                                emit 0x90f48102: sub_d960e8de, stor0[stor3].field_512, msg.sender, mem[832 len 160]
        else:
            if 0 == sub_d960e8de:
                sub_d960e8de = 1
                stor0[1].field_0 = block.timestamp
                storADA5 = 1
                stor1.length = block.timestamp
            else:
                if uint8((block.timestamp / 24 * 3600) + 4 % 7) != 3:
                    uint8(stor0[stor3].field_1024) = 1
                else:
                    if uint8(block.timestamp / 60 / 60 % 24) != 16:
                        uint8(stor0[stor3].field_1024) = 1
                    else:
                        if 1 == uint8(stor0[stor3].field_1024):
                            idx = 0
                            while uint8(idx) < 5:
                                mem[0] = sub_d960e8de
                                mem[32] = 0
                                stor0[stor3][uint8(idx) / 32].field_256 = uint8((block.hash(block.number + -(2 * idx % 128) - 1) % 36) + 1) * 256^(idx % 32) or !(255 * 256^(idx % 32)) and stor0[stor3][uint8(idx) / 32].field_256
                                idx = idx + 1
                                continue 
                            mem[96] = uint8(stor0[stor3].field_256)
                            idx = 96
                            s = 0
                            while 256 > idx + 32:
                                mem[idx + 32] = stor1[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                                idx = idx + 32
                                s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                                continue 
                            mem[256 len 160] = code.data[6871 len 160]
                            idx = 0
                            s = 0
                            while uint8(idx) < 4:
                                t = 0
                                u = s
                                while t < -uint8(idx) + 4:
                                    require t + 1 < 5
                                    require t < 5
                                    if mem[(32 * t) + 127 len 1] <= mem[(32 * t + 1) + 127 len 1]:
                                        t = t + 1
                                        u = u
                                        continue 
                                    require t < 5
                                    _126 = mem[(32 * t) + 96]
                                    require t + 1 < 5
                                    require t < 5
                                    mem[(32 * t) + 96] = mem[(32 * t + 1) + 127 len 1]
                                    require t + 1 < 5
                                    mem[(32 * t + 1) + 96] = uint8(_126)
                                    t = t + 1
                                    u = _126
                                    continue 
                                idx = idx + 1
                                s = u
                                continue 
                            s = 0
                            idx = 96
                            while 256 > idx:
                                stor0[stor3].field_256 = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and stor0[stor3].field_256
                                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                idx = idx + 32
                                continue 
                            idx = 5
                            s = sha3(sub_d960e8de, 0) + 1
                            while idx:
                                stor[s] = !(255 * 256^idx) and stor[s]
                                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                s = (idx + 1 / 32) + s
                                continue 
                            idx = (-3 * None + 3 / 32) + (None * None + 3 / 32) + 1
                            while 2 > idx:
                                uint8(stor0[stor3][idx].field_0) = 0
                                idx = idx + 1
                                continue 
                            idx = 0
                            while uint8(idx) < 4:
                                s = idx + 1
                                while uint8(s) < 5:
                                    mem[0] = sub_d960e8de
                                    mem[32] = 0
                                    require uint8(idx) < 5
                                    if stor(('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor0', 0)) + (Mask(3, 5, idx) >> 5) + 1)[uint8(idx)] == stor(('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor0', 0)) + (Mask(3, 5, s) >> 5) + 1)[uint8(s)]:
                                        mem[0] = sub_d960e8de
                                        mem[32] = 0
                                        require uint8(s) < 5
                                        stor0[stor3][uint8(s) / 32].field_256 = uint8(stor((Mask(3, 5, s) >> 5) + ('map', ('stor', 256, 0, ('name', 'stor3', 3)), ('name', 'stor0', 0)) + 1)[uint8(s)] + 1) * 256^(s % 32) or stor0[stor3][uint8(s) / 32].field_256 and !(255 * 256^(s % 32))
                                    s = s + 1
                                    continue 
                                idx = idx + 1
                                continue 
                            mem[416 len 160] = code.data[6871 len 160]
                            mem[64] = 736
                            mem[576] = uint8(stor0[stor3].field_256)
                            idx = 576
                            s = 0
                            while 736 > idx + 32:
                                mem[idx + 32] = stor1[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                                idx = idx + 32
                                s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                                continue 
                            mem[736] = sub_d960e8de
                            mem[768] = uint8(stor0[stor3].field_256)
                            mem[800] = mem[639 len 1]
                            mem[832] = mem[671 len 1]
                            mem[864] = mem[703 len 1]
                            mem[896] = mem[735 len 1]
                            emit 0xb8590059: sub_d960e8de, uint8(stor0[stor3].field_256), mem[608] << 248, mem[640] << 248, mem[672] << 248, mem[735 len 1]
                            if stor0[stor3].field_512 > 0:
                                mem[0] = sub_d960e8de
                                mem[32] = 0
                                idx = 1
                                s = 0
                                t = 0
                                u = 0
                                v = 0
                                w = 0
                                while idx <= stor0[stor3].field_512:
                                    mem[0] = sub_d960e8de
                                    _391 = mem[64]
                                    mem[64] = mem[64] + 160
                                    mem[_391] = uint8(stor0[stor3].field_256)
                                    w = _391
                                    x = 0
                                    while _391 + 160 > w + 32:
                                        mem[0] = sub_d960e8de
                                        mem[32] = 0
                                        mem[w + 32] = stor1[-(0.03125 / x + 1) + x + (-1 * 0.03125 / x + 1 * x) + 1]
                                        w = w + 32
                                        x = -(x + 1 / 32) + x + (-1 * x + 1 / 32 * x) + 1
                                        continue 
                                    mem[0] = idx
                                    mem[32] = sha3(sub_d960e8de, 0) + 5
                                    _3127 = mem[64]
                                    mem[64] = mem[64] + 160
                                    mem[_3127] = uint8(stor0[stor3][5][idx].field_512)
                                    w = _3127
                                    x = 0
                                    while _3127 + 160 > w + 32:
                                        mem[0] = sub_d960e8de
                                        mem[32] = 0
                                        mem[w + 32] = stor2[-(0.03125 / x + 1) + x + (-1 * 0.03125 / x + 1 * x) + 1]
                                        w = w + 32
                                        x = -(x + 1 / 32) + x + (-1 * x + 1 / 32 * x) + 1
                                        continue 
                                    w = 0
                                    x = 0
                                    while uint8(w) < 5:
                                        idx = 0
                                        while uint8(idx) < 5:
                                            mem[0] = sub_d960e8de
                                            mem[32] = 0
                                            if mem[(32 * uint8(idx)) + _391 + 31 len 1] != mem[(32 * uint8(idx)) + _3127 + 31 len 1]:
                                                idx = idx + 1
                                                continue 
                                            idx = idx + 1
                                            x = x + 1
                                            continue 
                                        mem[0] = sub_d960e8de
                                        mem[32] = 0
                                        idx = idx + 1
                                        x = x
                                        continue 
                                    uint8(stor0[stor3][5][idx].field_768) = uint8(x)
                                    mem[0] = sub_d960e8de
                                    mem[32] = 0
                                    if uint8(x) != 5:
                                        if uint8(x) != 4:
                                            if uint8(x) != 3:
                                                if uint8(x) != 2:
                                                    idx = idx + 1
                                                    s = s
                                                    t = t
                                                    u = u
                                                    v = v
                                                    w = x
                                                    continue 
                                                idx = idx + 1
                                                s = s + 1
                                                t = t
                                                u = u
                                                v = v
                                                w = x
                                                continue 
                                            if uint8(x) != 2:
                                                idx = idx + 1
                                                s = s
                                                t = t + 1
                                                u = u
                                                v = v
                                                w = x
                                                continue 
                                            idx = idx + 1
                                            s = s + 1
                                            t = t + 1
                                            u = u
                                            v = v
                                            w = x
                                            continue 
                                        if uint8(x) != 3:
                                            if uint8(x) != 2:
                                                idx = idx + 1
                                                s = s
                                                t = t
                                                u = u + 1
                                                v = v
                                                w = x
                                                continue 
                                            idx = idx + 1
                                            s = s + 1
                                            t = t
                                            u = u + 1
                                            v = v
                                            w = x
                                            continue 
                                        if uint8(x) != 2:
                                            idx = idx + 1
                                            s = s
                                            t = t + 1
                                            u = u + 1
                                            v = v
                                            w = x
                                            continue 
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 1
                                        u = u + 1
                                        v = v
                                        w = x
                                        continue 
                                    if uint8(x) != 4:
                                        if uint8(x) != 3:
                                            if uint8(x) != 2:
                                                idx = idx + 1
                                                s = s
                                                t = t
                                                u = u
                                                v = v + 1
                                                w = x
                                                continue 
                                            idx = idx + 1
                                            s = s + 1
                                            t = t
                                            u = u
                                            v = v + 1
                                            w = x
                                            continue 
                                        if uint8(x) != 2:
                                            idx = idx + 1
                                            s = s
                                            t = t + 1
                                            u = u
                                            v = v + 1
                                            w = x
                                            continue 
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 1
                                        u = u
                                        v = v + 1
                                        w = x
                                        continue 
                                    if uint8(x) != 3:
                                        if uint8(x) != 2:
                                            idx = idx + 1
                                            s = s
                                            t = t
                                            u = u + 1
                                            v = v + 1
                                            w = x
                                            continue 
                                        idx = idx + 1
                                        s = s + 1
                                        t = t
                                        u = u + 1
                                        v = v + 1
                                        w = x
                                        continue 
                                    if uint8(x) != 2:
                                        idx = idx + 1
                                        s = s
                                        t = t + 1
                                        u = u + 1
                                        v = v + 1
                                        w = x
                                        continue 
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 1
                                    u = u + 1
                                    v = v + 1
                                    w = x
                                    continue 
                                stor2.length += 15 * stor0[stor3].field_768 / 100
                                if not u:
                                    stor2.length += 35 * stor0[stor3].field_768 / 100
                                if not t:
                                    stor2.length += 30 * stor0[stor3].field_768 / 100
                                if not s:
                                    stor2.length += 20 * stor0[stor3].field_768 / 100
                                idx = 1
                                while idx <= stor0[stor3].field_512:
                                    if uint8(stor0[stor3][5][idx].field_768) == 5:
                                        require v
                                        stor0[stor3][5][idx].field_1024 = stor2.length / v
                                        mem[0] = idx
                                        call address(stor0[stor3][5][idx].field_0) with:
                                           value stor0[stor3][5][idx].field_1024 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[32] = sha3(sub_d960e8de, 0) + 5
                                        mem[mem[64]] = sub_d960e8de
                                        mem[mem[64] + 32] = stor0[stor3][5][idx].field_256
                                        mem[mem[64] + 64] = stor0[stor3][5][idx].field_1024
                                        mem[mem[64] + 96] = 5
                                        emit 0xfedfbb10: sub_d960e8de, stor0[stor3][5][idx].field_256, stor0[stor3][5][idx].field_1024, 5
                                    if 4 == uint8(stor0[stor3][5][idx].field_768):
                                        require u
                                        stor0[stor3][5][idx].field_1024 = 35 * stor0[stor3].field_768 / 100 / u
                                        mem[0] = idx
                                        call address(stor0[stor3][5][idx].field_0) with:
                                           value stor0[stor3][5][idx].field_1024 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[32] = sha3(sub_d960e8de, 0) + 5
                                        mem[mem[64]] = sub_d960e8de
                                        mem[mem[64] + 32] = stor0[stor3][5][idx].field_256
                                        mem[mem[64] + 64] = stor0[stor3][5][idx].field_1024
                                        mem[mem[64] + 96] = 4
                                        emit 0xfedfbb10: sub_d960e8de, stor0[stor3][5][idx].field_256, stor0[stor3][5][idx].field_1024, 4
                                    if uint8(stor0[stor3][5][idx].field_768) == 3:
                                        require t
                                        stor0[stor3][5][idx].field_1024 = 30 * stor0[stor3].field_768 / 100 / t
                                        mem[0] = idx
                                        call address(stor0[stor3][5][idx].field_0) with:
                                           value stor0[stor3][5][idx].field_1024 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[32] = sha3(sub_d960e8de, 0) + 5
                                        mem[mem[64]] = sub_d960e8de
                                        mem[mem[64] + 32] = stor0[stor3][5][idx].field_256
                                        mem[mem[64] + 64] = stor0[stor3][5][idx].field_1024
                                        mem[mem[64] + 96] = 3
                                        emit 0xfedfbb10: sub_d960e8de, stor0[stor3][5][idx].field_256, stor0[stor3][5][idx].field_1024, 3
                                    if 2 == uint8(stor0[stor3][5][idx].field_768):
                                        require s
                                        stor0[stor3][5][idx].field_1024 = 20 * stor0[stor3].field_768 / 100 / s
                                        mem[0] = idx
                                        call address(stor0[stor3][5][idx].field_0) with:
                                           value stor0[stor3][5][idx].field_1024 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[32] = sha3(sub_d960e8de, 0) + 5
                                        mem[mem[64]] = sub_d960e8de
                                        mem[mem[64] + 32] = stor0[stor3][5][idx].field_256
                                        mem[mem[64] + 64] = stor0[stor3][5][idx].field_1024
                                        mem[mem[64] + 96] = 2
                                        emit 0xfedfbb10: sub_d960e8de, stor0[stor3][5][idx].field_256, stor0[stor3][5][idx].field_1024, 2
                                    if 1 == uint8(stor0[stor3][5][idx].field_768):
                                        mem[32] = sha3(sub_d960e8de, 0) + 5
                                        mem[mem[64]] = sub_d960e8de
                                        mem[mem[64] + 32] = stor0[stor3][5][idx].field_256
                                        mem[mem[64] + 64] = stor0[stor3][5][idx].field_1024
                                        mem[mem[64] + 96] = 1
                                        emit 0xfedfbb10: sub_d960e8de, stor0[stor3][5][idx].field_256, stor0[stor3][5][idx].field_1024, 1
                                    mem[0] = sub_d960e8de
                                    mem[32] = 0
                                    idx = idx + 1
                                    continue 
                                if v:
                                    stor2.length = 0
                                    stor4 = 0
                            emit 0x601efe55: stor2.length
                            sub_d960e8de++
                            stor0[stor3 + 1].field_0 = block.timestamp
                            uint8(stor0[stor3].field_1024) = 0
                            emit NewGame(sub_d960e8de);
                            call 0xcd66911b6f38faaf5bfee427b3ceb7d18dd09f78 with:
                               value stor5 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            stor5 = 0
}



}

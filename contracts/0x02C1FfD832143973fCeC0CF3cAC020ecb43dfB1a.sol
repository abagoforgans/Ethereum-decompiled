contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


mapping of struct stor0;
array of uint8 stor1;
array of uint8 stor2;
uint256 sub_d960e8de;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint8 storADA5;

function JACKPOT() {
    return stor2.length
}

function sub_d960e8de(?) {
    return sub_d960e8de
}

function games(uint256 arg1) {
    require calldata.size - 4 >= 32
    return uint256(stor0[arg1].field_0), 
           uint256(stor0[arg1].field_512),
           uint256(stor0[arg1].field_768),
           uint256(stor0[arg1].field_1024),
           uint256(stor0[arg1].field_1280),
           uint256(stor0[arg1].field_1536),
           uint256(stor0[arg1].field_1792),
           uint8(stor0[arg1].field_2048)
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
    mem[960] = mem[767 len 1]
    mem[992] = mem[799 len 1]
    mem[1024] = mem[831 len 1]
    mem[1056] = mem[863 len 1]
    return address(stor0[arg1][9][arg2].field_0), 
           uint256(stor0[arg1][9][arg2].field_256),
           uint8(stor0[arg1][9][arg2].field_512),
           mem[960 len 128],
           uint256(stor0[arg1][9][arg2].field_768),
           uint8(stor0[arg1][9][arg2].field_1024)
}

function getGameInfo(uint256 arg1) {
    require calldata.size - 4 >= 32
    idx = 960
    s = 0
    while 1120 > idx + 32:
        mem[idx + 32] = stor1[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    mem[1216] = mem[1023 len 1]
    mem[1248] = mem[1055 len 1]
    mem[1280] = mem[1087 len 1]
    mem[1312] = mem[1119 len 1]
    return uint256(stor0[arg1].field_768), 
           uint256(stor0[arg1].field_512),
           uint8(stor0[arg1].field_256),
           mem[1216 len 128],
           uint8(stor0[arg1].field_2048),
           uint256(stor0[arg1].field_1024),
           uint256(stor0[arg1].field_1280),
           uint256(stor0[arg1].field_1536),
           uint256(stor0[arg1].field_1792)
}

function _fallback() payable {
    mem[64] = 96
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
            if not msg.value:
                mem[0] = sub_d960e8de
                mem[32] = 0
                if 1 == uint8(stor0[stor3].field_2048):
                    if stor6 <= 0:
                        idx = 1
                        while idx <= sub_d960e8de:
                            _388 = mem[64]
                            mem[64] = mem[64] + 416
                            mem[_388] = 0
                            _390 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_390 len 160] = code.data[6880 len 160]
                            mem[_388 + 32] = _390
                            mem[_388 + 64] = 0
                            mem[_388 + 96] = 0
                            mem[_388 + 128] = 0
                            mem[_388 + 160] = 0
                            mem[_388 + 192] = 0
                            mem[_388 + 224] = 0
                            mem[_388 + 256] = 0
                            mem[0] = idx
                            mem[32] = 0
                            _400 = mem[64]
                            mem[64] = mem[64] + 288
                            mem[_400] = uint256(stor0[idx].field_0)
                            _401 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_401] = uint8(stor0[idx].field_256)
                            s = _401
                            t = 0
                            while _401 + 160 > s + 32:
                                mem[s + 32] = stor1[-(0.03125 / t + 1) + t + (-1 * 0.03125 / t + 1 * t) + 1]
                                s = s + 32
                                t = -(t + 1 / 32) + t + (-1 * t + 1 / 32 * t) + 1
                                continue 
                            mem[_400 + 32] = _401
                            mem[_400 + 64] = uint256(stor0[idx].field_512)
                            mem[_400 + 96] = uint256(stor0[idx].field_768)
                            mem[_400 + 128] = uint256(stor0[idx].field_1024)
                            mem[_400 + 160] = uint256(stor0[idx].field_1280)
                            mem[_400 + 192] = uint256(stor0[idx].field_1536)
                            mem[_400 + 224] = uint256(stor0[idx].field_1792)
                            mem[_400 + 256] = uint8(stor0[idx].field_2048)
                            if uint8(stor0[idx].field_256):
                                s = 1
                                while s <= uint256(stor0[idx].field_512):
                                    _751 = mem[64]
                                    mem[64] = mem[64] + 288
                                    mem[_751] = 0
                                    mem[_751 + 32] = 0
                                    _758 = mem[64]
                                    mem[64] = mem[64] + 160
                                    mem[_758 len 160] = code.data[6880 len 160]
                                    mem[_751 + 64] = _758
                                    mem[_751 + 96] = 0
                                    mem[_751 + 128] = 0
                                    mem[0] = s
                                    mem[32] = sha3(idx, 0) + 9
                                    _782 = mem[64]
                                    mem[64] = mem[64] + 160
                                    mem[_782] = address(stor0[idx][9][s].field_0)
                                    mem[_782 + 32] = uint256(stor0[idx][9][s].field_256)
                                    _783 = mem[64]
                                    mem[64] = mem[64] + 160
                                    mem[_783] = uint8(stor0[idx][9][s].field_512)
                                    t = _783
                                    u = 0
                                    while _783 + 160 > t + 32:
                                        mem[t + 32] = stor2[-(0.03125 / u + 1) + u + (-1 * 0.03125 / u + 1 * u) + 1]
                                        t = t + 32
                                        u = -(u + 1 / 32) + u + (-1 * u + 1 / 32 * u) + 1
                                        continue 
                                    mem[_782 + 64] = _783
                                    mem[_782 + 96] = uint256(stor0[idx][9][s].field_768)
                                    mem[_782 + 128] = uint8(stor0[idx][9][s].field_1024)
                                    if uint8(stor0[idx][9][s].field_1024) != 1:
                                        t = 0
                                        u = 0
                                        while uint8(t) < 5:
                                            idx = 0
                                            while uint8(idx) < 5:
                                                if mem[(32 * uint8(idx)) + mem[_400 + 32] + 31 len 1] != mem[(32 * uint8(idx)) + _783 + 31 len 1]:
                                                    idx = idx + 1
                                                    continue 
                                                idx = idx + 1
                                                u = u + 1
                                                continue 
                                            idx = idx + 1
                                            u = u
                                            continue 
                                        if 2 == uint8(u):
                                            uint256(stor0[idx][9][s].field_768) = mem[_400 + 128]
                                        if 3 == uint8(u):
                                            uint256(stor0[idx][9][s].field_768) = mem[_400 + 160]
                                        if 4 == uint8(u):
                                            uint256(stor0[idx][9][s].field_768) = mem[_400 + 192]
                                        if 5 == uint8(u):
                                            uint256(stor0[idx][9][s].field_768) = mem[_400 + 224]
                                        mem[0] = s
                                        mem[32] = sha3(idx, 0) + 9
                                        uint8(stor0[idx][9][s].field_1024) = 1
                                        mem[mem[64]] = idx
                                        mem[mem[64] + 32] = s
                                        mem[mem[64] + 64] = uint256(stor0[idx][9][s].field_768)
                                        mem[mem[64] + 96] = 1
                                        emit 0x2919b493: idx, s, uint256(stor0[idx][9][s].field_768), 1
                                    s = s + 1
                                    continue 
                            idx = idx + 1
                            continue 
            else:
                if sub_d960e8de <= 0:
                    call msg.sender with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if uint8(stor0[stor3].field_2048) != 1:
                        call msg.sender with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if stor6:
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if uint8((block.timestamp / 24 * 3600) + 4 % 7) != 4:
                                if msg.value == 10^16:
                                    mem[96 len 160] = code.data[6880 len 160]
                                    stor5 += 15 * 10^14
                                    mem[32] = 0
                                    uint256(stor0[stor3].field_768) += 85 * 10^14
                                    mem[0] = sub_d960e8de
                                    emit 0xe2a6acbc: uint256(stor0[stor3].field_768)
                                    mem[256 len 160] = code.data[6880 len 160]
                                    mem[64] = 576
                                    mem[416 len 160] = code.data[6880 len 160]
                                    if calldata.size == 5:
                                        idx = 0
                                        while uint8(idx) < calldata.size:
                                            require uint8(idx) < 5
                                            mem[(32 * uint8(idx)) + 416] = Mask(8, 248, cd[uint8(idx)]) >> 248
                                            idx = idx + 1
                                            continue 
                                        idx = 0
                                        while uint8(idx) < 5:
                                            if mem[(32 * uint8(idx)) + 447 len 1] < 1:
                                                idx = 0
                                                while uint8(idx) < 5:
                                                    mem[(32 * uint8(idx)) + 416] = uint8((block.timestamp + block.hash(block.number + -(2 * idx % 128) - 1) % 36) + 1)
                                                    idx = idx + 1
                                                    continue 
                                                idx = 0
                                                while uint8(idx) < 4:
                                                    s = idx + 1
                                                    while uint8(s) < 5:
                                                        require uint8(idx) < 5
                                                        if mem[(32 * uint8(idx)) + 447 len 1] == mem[(32 * uint8(s)) + 447 len 1]:
                                                            require uint8(s) < 5
                                                            mem[(32 * uint8(s)) + 416] = uint8(mem[(32 * uint8(s)) + 416] + 1)
                                                        s = s + 1
                                                        continue 
                                                    idx = idx + 1
                                                    continue 
                                                mem[576 len 160] = code.data[6880 len 160]
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
                                                        _3336 = mem[(32 * t) + 416]
                                                        require t + 1 < 5
                                                        require t < 5
                                                        mem[(32 * t) + 416] = mem[(32 * t + 1) + 447 len 1]
                                                        require t + 1 < 5
                                                        mem[(32 * t + 1) + 416] = uint8(_3336)
                                                        t = t + 1
                                                        u = _3336
                                                        continue 
                                                    idx = idx + 1
                                                    s = u
                                                    continue 
                                            else:
                                                require uint8(idx) < 5
                                                if mem[(32 * uint8(idx)) + 447 len 1] <= 36:
                                                    idx = idx + 1
                                                    continue 
                                                idx = 0
                                                while uint8(idx) < 5:
                                                    mem[(32 * uint8(idx)) + 416] = uint8((block.timestamp + block.hash(block.number + -(2 * idx % 128) - 1) % 36) + 1)
                                                    idx = idx + 1
                                                    continue 
                                                idx = 0
                                                while uint8(idx) < 4:
                                                    s = idx + 1
                                                    while uint8(s) < 5:
                                                        require uint8(idx) < 5
                                                        if mem[(32 * uint8(idx)) + 447 len 1] == mem[(32 * uint8(s)) + 447 len 1]:
                                                            require uint8(s) < 5
                                                            mem[(32 * uint8(s)) + 416] = uint8(mem[(32 * uint8(s)) + 416] + 1)
                                                        s = s + 1
                                                        continue 
                                                    idx = idx + 1
                                                    continue 
                                                mem[576 len 160] = code.data[6880 len 160]
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
                                                        _3337 = mem[(32 * t) + 416]
                                                        require t + 1 < 5
                                                        require t < 5
                                                        mem[(32 * t) + 416] = mem[(32 * t + 1) + 447 len 1]
                                                        require t + 1 < 5
                                                        mem[(32 * t + 1) + 416] = uint8(_3337)
                                                        t = t + 1
                                                        u = _3337
                                                        continue 
                                                    idx = idx + 1
                                                    s = u
                                                    continue 
                                            uint256(stor0[stor3].field_512)++
                                            uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_0) = msg.sender or Mask(96, 160, uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_0))
                                            uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_256) = uint256(stor0[stor3].field_512)
                                            s = 0
                                            idx = 416
                                            while 576 > idx:
                                                uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_512) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_512)
                                                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                                idx = idx + 32
                                                continue 
                                            idx = 5
                                            s = sha3(uint256(stor0[stor3].field_512), sha3(sub_d960e8de, 0) + 9) + 2
                                            while idx:
                                                uint256(stor[s]) = !(255 * 256^idx) and uint256(stor[s])
                                                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                                s = (idx + 1 / 32) + s
                                                continue 
                                            idx = sha3(uint256(stor0[stor3].field_512), sha3(sub_d960e8de, 0) + 9) + (-3 * None + 3 / 32) + (None * None + 3 / 32) + 2
                                            while sha3(uint256(stor0[stor3].field_512), sha3(sub_d960e8de, 0) + 9) + 3 > idx:
                                                uint8(stor[idx]) = 0
                                                idx = idx + 1
                                                continue 
                                            mem[832] = mem[447 len 1]
                                            mem[864] = mem[479 len 1]
                                            mem[896] = mem[511 len 1]
                                            mem[928] = mem[543 len 1]
                                            mem[960] = mem[575 len 1]
                                            emit 0x90f48102: sub_d960e8de, uint256(stor0[stor3].field_512), msg.sender, mem[832 len 160]
                                        idx = 0
                                        while uint8(idx) < 4:
                                            s = idx + 1
                                            while uint8(s) < 5:
                                                require uint8(idx) < 5
                                                if mem[(32 * uint8(idx)) + 447 len 1] != mem[(32 * uint8(s)) + 447 len 1]:
                                                    s = s + 1
                                                    continue 
                                                idx = 0
                                                while uint8(idx) < 5:
                                                    mem[(32 * uint8(idx)) + 416] = uint8((block.timestamp + block.hash(block.number + -(2 * idx % 128) - 1) % 36) + 1)
                                                    idx = idx + 1
                                                    continue 
                                                idx = 0
                                                while uint8(idx) < 4:
                                                    s = idx + 1
                                                    while uint8(s) < 5:
                                                        require uint8(idx) < 5
                                                        if mem[(32 * uint8(idx)) + 447 len 1] == mem[(32 * uint8(s)) + 447 len 1]:
                                                            require uint8(s) < 5
                                                            mem[(32 * uint8(s)) + 416] = uint8(mem[(32 * uint8(s)) + 416] + 1)
                                                        s = s + 1
                                                        continue 
                                                    idx = idx + 1
                                                    continue 
                                                mem[576 len 160] = code.data[6880 len 160]
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
                                                        _4155 = mem[(32 * t) + 416]
                                                        require t + 1 < 5
                                                        require t < 5
                                                        mem[(32 * t) + 416] = mem[(32 * t + 1) + 447 len 1]
                                                        require t + 1 < 5
                                                        mem[(32 * t + 1) + 416] = uint8(_4155)
                                                        t = t + 1
                                                        u = _4155
                                                        continue 
                                                    idx = idx + 1
                                                    s = u
                                                    continue 
                                                uint256(stor0[stor3].field_512)++
                                                uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_0) = msg.sender or Mask(96, 160, uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_0))
                                                uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_256) = uint256(stor0[stor3].field_512)
                                                s = 0
                                                idx = 416
                                                while 576 > idx:
                                                    uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_512) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_512)
                                                    s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                                    idx = idx + 32
                                                    continue 
                                                idx = 5
                                                s = sha3(uint256(stor0[stor3].field_512), sha3(sub_d960e8de, 0) + 9) + 2
                                                while idx:
                                                    uint256(stor[s]) = !(255 * 256^idx) and uint256(stor[s])
                                                    idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                                    s = (idx + 1 / 32) + s
                                                    continue 
                                                idx = sha3(uint256(stor0[stor3].field_512), sha3(sub_d960e8de, 0) + 9) + (-3 * None + 3 / 32) + (None * None + 3 / 32) + 2
                                                while sha3(uint256(stor0[stor3].field_512), sha3(sub_d960e8de, 0) + 9) + 3 > idx:
                                                    uint8(stor[idx]) = 0
                                                    idx = idx + 1
                                                    continue 
                                                emit 0x90f48102: sub_d960e8de, uint256(stor0[stor3].field_512), msg.sender, mem[416] << 248, mem[448] << 248, mem[480] << 248, mem[512] << 248, mem[575 len 1]
                                            idx = idx + 1
                                            continue 
                                        mem[576 len 160] = code.data[6880 len 160]
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
                                                _2760 = mem[(32 * t) + 416]
                                                require t + 1 < 5
                                                require t < 5
                                                mem[(32 * t) + 416] = mem[(32 * t + 1) + 447 len 1]
                                                require t + 1 < 5
                                                mem[(32 * t + 1) + 416] = uint8(_2760)
                                                t = t + 1
                                                u = _2760
                                                continue 
                                            idx = idx + 1
                                            s = u
                                            continue 
                                        uint256(stor0[stor3].field_512)++
                                        uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_0) = msg.sender or Mask(96, 160, uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_0))
                                        uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_256) = uint256(stor0[stor3].field_512)
                                        s = 0
                                        idx = 416
                                        while 576 > idx:
                                            uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_512) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_512)
                                            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                            idx = idx + 32
                                            continue 
                                        idx = 5
                                        s = sha3(uint256(stor0[stor3].field_512), sha3(sub_d960e8de, 0) + 9) + 2
                                        while idx:
                                            uint256(stor[s]) = !(255 * 256^idx) and uint256(stor[s])
                                            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                            s = (idx + 1 / 32) + s
                                            continue 
                                        idx = (-3 * None + 3 / 32) + (None * None + 3 / 32) + 2
                                        while 3 > idx:
                                            uint8(stor0[stor3][9][uint256(stor0[stor3].field_512)][idx].field_0) = 0
                                            idx = idx + 1
                                            continue 
                                        emit 0x90f48102: sub_d960e8de, uint256(stor0[stor3].field_512), msg.sender, mem[416] << 248, mem[448] << 248, mem[480] << 248, mem[512] << 248, mem[575 len 1]
                                    else:
                                        idx = 0
                                        while uint8(idx) < 5:
                                            mem[(32 * uint8(idx)) + 416] = uint8((block.timestamp + block.hash(block.number + -(2 * idx % 128) - 1) % 36) + 1)
                                            idx = idx + 1
                                            continue 
                                        idx = 0
                                        while uint8(idx) < 4:
                                            s = idx + 1
                                            while uint8(s) < 5:
                                                require uint8(idx) < 5
                                                if mem[(32 * uint8(idx)) + 447 len 1] == mem[(32 * uint8(s)) + 447 len 1]:
                                                    require uint8(s) < 5
                                                    mem[(32 * uint8(s)) + 416] = uint8(mem[(32 * uint8(s)) + 416] + 1)
                                                s = s + 1
                                                continue 
                                            idx = idx + 1
                                            continue 
                                        mem[576 len 160] = code.data[6880 len 160]
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
                                                _2210 = mem[(32 * t) + 416]
                                                require t + 1 < 5
                                                require t < 5
                                                mem[(32 * t) + 416] = mem[(32 * t + 1) + 447 len 1]
                                                require t + 1 < 5
                                                mem[(32 * t + 1) + 416] = uint8(_2210)
                                                t = t + 1
                                                u = _2210
                                                continue 
                                            idx = idx + 1
                                            s = u
                                            continue 
                                        uint256(stor0[stor3].field_512)++
                                        uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_0) = msg.sender or Mask(96, 160, uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_0))
                                        uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_256) = uint256(stor0[stor3].field_512)
                                        s = 0
                                        idx = 416
                                        while 576 > idx:
                                            uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_512) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_512)
                                            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                            idx = idx + 32
                                            continue 
                                        idx = 5
                                        s = sha3(uint256(stor0[stor3].field_512), sha3(sub_d960e8de, 0) + 9) + 2
                                        while idx:
                                            uint256(stor[s]) = !(255 * 256^idx) and uint256(stor[s])
                                            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                            s = (idx + 1 / 32) + s
                                            continue 
                                        idx = (-3 * None + 3 / 32) + (None * None + 3 / 32) + 2
                                        while 3 > idx:
                                            uint8(stor0[stor3][9][uint256(stor0[stor3].field_512)][idx].field_0) = 0
                                            idx = idx + 1
                                            continue 
                                        mem[832] = mem[447 len 1]
                                        mem[864] = mem[479 len 1]
                                        mem[896] = mem[511 len 1]
                                        mem[928] = mem[543 len 1]
                                        mem[960] = mem[575 len 1]
                                        emit 0x90f48102: sub_d960e8de, uint256(stor0[stor3].field_512), msg.sender, mem[832 len 160]
                                else:
                                    if msg.value < 10^16:
                                        if msg.value:
                                            require msg.value
                                            require 15 * msg.value / msg.value == 15
                                        stor5 += 15 * msg.value / 100
                                        if msg.value:
                                            require msg.value
                                            require 85 * msg.value / msg.value == 85
                                        uint256(stor0[stor3].field_768) += 85 * msg.value / 100
                                        emit 0xe2a6acbc: uint256(stor0[stor3].field_768)
                                    else:
                                        require 10^16 <= msg.value
                                        call msg.sender with:
                                           value msg.value - 10^16 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[96 len 160] = code.data[6880 len 160]
                                        stor5 += 15 * 10^14
                                        mem[32] = 0
                                        uint256(stor0[stor3].field_768) += 85 * 10^14
                                        mem[0] = sub_d960e8de
                                        emit 0xe2a6acbc: uint256(stor0[stor3].field_768)
                                        mem[256 len 160] = code.data[6880 len 160]
                                        mem[64] = 576
                                        mem[416 len 160] = code.data[6880 len 160]
                                        if calldata.size == 5:
                                            idx = 0
                                            while uint8(idx) < calldata.size:
                                                require uint8(idx) < 5
                                                mem[(32 * uint8(idx)) + 416] = Mask(8, 248, cd[uint8(idx)]) >> 248
                                                idx = idx + 1
                                                continue 
                                            idx = 0
                                            while uint8(idx) < 5:
                                                if mem[(32 * uint8(idx)) + 447 len 1] < 1:
                                                    idx = 0
                                                    while uint8(idx) < 5:
                                                        mem[(32 * uint8(idx)) + 416] = uint8((block.timestamp + block.hash(block.number + -(2 * idx % 128) - 1) % 36) + 1)
                                                        idx = idx + 1
                                                        continue 
                                                    idx = 0
                                                    while uint8(idx) < 4:
                                                        s = idx + 1
                                                        while uint8(s) < 5:
                                                            require uint8(idx) < 5
                                                            if mem[(32 * uint8(idx)) + 447 len 1] == mem[(32 * uint8(s)) + 447 len 1]:
                                                                require uint8(s) < 5
                                                                mem[(32 * uint8(s)) + 416] = uint8(mem[(32 * uint8(s)) + 416] + 1)
                                                            s = s + 1
                                                            continue 
                                                        idx = idx + 1
                                                        continue 
                                                    mem[576 len 160] = code.data[6880 len 160]
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
                                                            _3333 = mem[(32 * t) + 416]
                                                            require t + 1 < 5
                                                            require t < 5
                                                            mem[(32 * t) + 416] = mem[(32 * t + 1) + 447 len 1]
                                                            require t + 1 < 5
                                                            mem[(32 * t + 1) + 416] = uint8(_3333)
                                                            t = t + 1
                                                            u = _3333
                                                            continue 
                                                        idx = idx + 1
                                                        s = u
                                                        continue 
                                                else:
                                                    require uint8(idx) < 5
                                                    if mem[(32 * uint8(idx)) + 447 len 1] <= 36:
                                                        idx = idx + 1
                                                        continue 
                                                    idx = 0
                                                    while uint8(idx) < 5:
                                                        mem[(32 * uint8(idx)) + 416] = uint8((block.timestamp + block.hash(block.number + -(2 * idx % 128) - 1) % 36) + 1)
                                                        idx = idx + 1
                                                        continue 
                                                    idx = 0
                                                    while uint8(idx) < 4:
                                                        s = idx + 1
                                                        while uint8(s) < 5:
                                                            require uint8(idx) < 5
                                                            if mem[(32 * uint8(idx)) + 447 len 1] == mem[(32 * uint8(s)) + 447 len 1]:
                                                                require uint8(s) < 5
                                                                mem[(32 * uint8(s)) + 416] = uint8(mem[(32 * uint8(s)) + 416] + 1)
                                                            s = s + 1
                                                            continue 
                                                        idx = idx + 1
                                                        continue 
                                                    mem[576 len 160] = code.data[6880 len 160]
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
                                                            _3334 = mem[(32 * t) + 416]
                                                            require t + 1 < 5
                                                            require t < 5
                                                            mem[(32 * t) + 416] = mem[(32 * t + 1) + 447 len 1]
                                                            require t + 1 < 5
                                                            mem[(32 * t + 1) + 416] = uint8(_3334)
                                                            t = t + 1
                                                            u = _3334
                                                            continue 
                                                        idx = idx + 1
                                                        s = u
                                                        continue 
                                                uint256(stor0[stor3].field_512)++
                                                uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_0) = msg.sender or Mask(96, 160, uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_0))
                                                uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_256) = uint256(stor0[stor3].field_512)
                                                s = 0
                                                idx = 416
                                                while 576 > idx:
                                                    uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_512) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_512)
                                                    s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                                    idx = idx + 32
                                                    continue 
                                                idx = 5
                                                s = sha3(uint256(stor0[stor3].field_512), sha3(sub_d960e8de, 0) + 9) + 2
                                                while idx:
                                                    uint256(stor[s]) = !(255 * 256^idx) and uint256(stor[s])
                                                    idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                                    s = (idx + 1 / 32) + s
                                                    continue 
                                                idx = sha3(uint256(stor0[stor3].field_512), sha3(sub_d960e8de, 0) + 9) + (-3 * None + 3 / 32) + (None * None + 3 / 32) + 2
                                                while sha3(uint256(stor0[stor3].field_512), sha3(sub_d960e8de, 0) + 9) + 3 > idx:
                                                    uint8(stor[idx]) = 0
                                                    idx = idx + 1
                                                    continue 
                                                mem[832] = mem[447 len 1]
                                                mem[864] = mem[479 len 1]
                                                mem[896] = mem[511 len 1]
                                                mem[928] = mem[543 len 1]
                                                mem[960] = mem[575 len 1]
                                                emit 0x90f48102: sub_d960e8de, uint256(stor0[stor3].field_512), msg.sender, mem[832 len 160]
                                            idx = 0
                                            while uint8(idx) < 4:
                                                s = idx + 1
                                                while uint8(s) < 5:
                                                    require uint8(idx) < 5
                                                    if mem[(32 * uint8(idx)) + 447 len 1] != mem[(32 * uint8(s)) + 447 len 1]:
                                                        s = s + 1
                                                        continue 
                                                    idx = 0
                                                    while uint8(idx) < 5:
                                                        mem[(32 * uint8(idx)) + 416] = uint8((block.timestamp + block.hash(block.number + -(2 * idx % 128) - 1) % 36) + 1)
                                                        idx = idx + 1
                                                        continue 
                                                    idx = 0
                                                    while uint8(idx) < 4:
                                                        s = idx + 1
                                                        while uint8(s) < 5:
                                                            require uint8(idx) < 5
                                                            if mem[(32 * uint8(idx)) + 447 len 1] == mem[(32 * uint8(s)) + 447 len 1]:
                                                                require uint8(s) < 5
                                                                mem[(32 * uint8(s)) + 416] = uint8(mem[(32 * uint8(s)) + 416] + 1)
                                                            s = s + 1
                                                            continue 
                                                        idx = idx + 1
                                                        continue 
                                                    mem[576 len 160] = code.data[6880 len 160]
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
                                                            _4154 = mem[(32 * t) + 416]
                                                            require t + 1 < 5
                                                            require t < 5
                                                            mem[(32 * t) + 416] = mem[(32 * t + 1) + 447 len 1]
                                                            require t + 1 < 5
                                                            mem[(32 * t + 1) + 416] = uint8(_4154)
                                                            t = t + 1
                                                            u = _4154
                                                            continue 
                                                        idx = idx + 1
                                                        s = u
                                                        continue 
                                                    uint256(stor0[stor3].field_512)++
                                                    uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_0) = msg.sender or Mask(96, 160, uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_0))
                                                    uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_256) = uint256(stor0[stor3].field_512)
                                                    s = 0
                                                    idx = 416
                                                    while 576 > idx:
                                                        uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_512) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_512)
                                                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                                        idx = idx + 32
                                                        continue 
                                                    idx = 5
                                                    s = sha3(uint256(stor0[stor3].field_512), sha3(sub_d960e8de, 0) + 9) + 2
                                                    while idx:
                                                        uint256(stor[s]) = !(255 * 256^idx) and uint256(stor[s])
                                                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                                        s = (idx + 1 / 32) + s
                                                        continue 
                                                    idx = sha3(uint256(stor0[stor3].field_512), sha3(sub_d960e8de, 0) + 9) + (-3 * None + 3 / 32) + (None * None + 3 / 32) + 2
                                                    while sha3(uint256(stor0[stor3].field_512), sha3(sub_d960e8de, 0) + 9) + 3 > idx:
                                                        uint8(stor[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                    emit 0x90f48102: sub_d960e8de, uint256(stor0[stor3].field_512), msg.sender, mem[416] << 248, mem[448] << 248, mem[480] << 248, mem[512] << 248, mem[575 len 1]
                                                idx = idx + 1
                                                continue 
                                            mem[576 len 160] = code.data[6880 len 160]
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
                                                    _2756 = mem[(32 * t) + 416]
                                                    require t + 1 < 5
                                                    require t < 5
                                                    mem[(32 * t) + 416] = mem[(32 * t + 1) + 447 len 1]
                                                    require t + 1 < 5
                                                    mem[(32 * t + 1) + 416] = uint8(_2756)
                                                    t = t + 1
                                                    u = _2756
                                                    continue 
                                                idx = idx + 1
                                                s = u
                                                continue 
                                            uint256(stor0[stor3].field_512)++
                                            uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_0) = msg.sender or Mask(96, 160, uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_0))
                                            uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_256) = uint256(stor0[stor3].field_512)
                                            s = 0
                                            idx = 416
                                            while 576 > idx:
                                                uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_512) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_512)
                                                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                                idx = idx + 32
                                                continue 
                                            idx = 5
                                            s = sha3(uint256(stor0[stor3].field_512), sha3(sub_d960e8de, 0) + 9) + 2
                                            while idx:
                                                uint256(stor[s]) = !(255 * 256^idx) and uint256(stor[s])
                                                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                                s = (idx + 1 / 32) + s
                                                continue 
                                            idx = (-3 * None + 3 / 32) + (None * None + 3 / 32) + 2
                                            while 3 > idx:
                                                uint8(stor0[stor3][9][uint256(stor0[stor3].field_512)][idx].field_0) = 0
                                                idx = idx + 1
                                                continue 
                                            emit 0x90f48102: sub_d960e8de, uint256(stor0[stor3].field_512), msg.sender, mem[416] << 248, mem[448] << 248, mem[480] << 248, mem[512] << 248, mem[575 len 1]
                                        else:
                                            idx = 0
                                            while uint8(idx) < 5:
                                                mem[(32 * uint8(idx)) + 416] = uint8((block.timestamp + block.hash(block.number + -(2 * idx % 128) - 1) % 36) + 1)
                                                idx = idx + 1
                                                continue 
                                            idx = 0
                                            while uint8(idx) < 4:
                                                s = idx + 1
                                                while uint8(s) < 5:
                                                    require uint8(idx) < 5
                                                    if mem[(32 * uint8(idx)) + 447 len 1] == mem[(32 * uint8(s)) + 447 len 1]:
                                                        require uint8(s) < 5
                                                        mem[(32 * uint8(s)) + 416] = uint8(mem[(32 * uint8(s)) + 416] + 1)
                                                    s = s + 1
                                                    continue 
                                                idx = idx + 1
                                                continue 
                                            mem[576 len 160] = code.data[6880 len 160]
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
                                                    _2204 = mem[(32 * t) + 416]
                                                    require t + 1 < 5
                                                    require t < 5
                                                    mem[(32 * t) + 416] = mem[(32 * t + 1) + 447 len 1]
                                                    require t + 1 < 5
                                                    mem[(32 * t + 1) + 416] = uint8(_2204)
                                                    t = t + 1
                                                    u = _2204
                                                    continue 
                                                idx = idx + 1
                                                s = u
                                                continue 
                                            uint256(stor0[stor3].field_512)++
                                            uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_0) = msg.sender or Mask(96, 160, uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_0))
                                            uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_256) = uint256(stor0[stor3].field_512)
                                            s = 0
                                            idx = 416
                                            while 576 > idx:
                                                uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_512) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_512)
                                                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                                idx = idx + 32
                                                continue 
                                            idx = 5
                                            s = sha3(uint256(stor0[stor3].field_512), sha3(sub_d960e8de, 0) + 9) + 2
                                            while idx:
                                                uint256(stor[s]) = !(255 * 256^idx) and uint256(stor[s])
                                                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                                s = (idx + 1 / 32) + s
                                                continue 
                                            idx = (-3 * None + 3 / 32) + (None * None + 3 / 32) + 2
                                            while 3 > idx:
                                                uint8(stor0[stor3][9][uint256(stor0[stor3].field_512)][idx].field_0) = 0
                                                idx = idx + 1
                                                continue 
                                            mem[832] = mem[447 len 1]
                                            mem[864] = mem[479 len 1]
                                            mem[896] = mem[511 len 1]
                                            mem[928] = mem[543 len 1]
                                            mem[960] = mem[575 len 1]
                                            emit 0x90f48102: sub_d960e8de, uint256(stor0[stor3].field_512), msg.sender, mem[832 len 160]
                            else:
                                if uint8(block.timestamp / 60 / 60 % 24) < 10:
                                    if msg.value == 10^16:
                                        mem[96 len 160] = code.data[6880 len 160]
                                        stor5 += 15 * 10^14
                                        mem[32] = 0
                                        uint256(stor0[stor3].field_768) += 85 * 10^14
                                        mem[0] = sub_d960e8de
                                        emit 0xe2a6acbc: uint256(stor0[stor3].field_768)
                                        mem[256 len 160] = code.data[6880 len 160]
                                        mem[64] = 576
                                        mem[416 len 160] = code.data[6880 len 160]
                                        if calldata.size == 5:
                                            idx = 0
                                            while uint8(idx) < calldata.size:
                                                require uint8(idx) < 5
                                                mem[(32 * uint8(idx)) + 416] = Mask(8, 248, cd[uint8(idx)]) >> 248
                                                idx = idx + 1
                                                continue 
                                            idx = 0
                                            while uint8(idx) < 5:
                                                if mem[(32 * uint8(idx)) + 447 len 1] < 1:
                                                    idx = 0
                                                    while uint8(idx) < 5:
                                                        mem[(32 * uint8(idx)) + 416] = uint8((block.timestamp + block.hash(block.number + -(2 * idx % 128) - 1) % 36) + 1)
                                                        idx = idx + 1
                                                        continue 
                                                    idx = 0
                                                    while uint8(idx) < 4:
                                                        s = idx + 1
                                                        while uint8(s) < 5:
                                                            require uint8(idx) < 5
                                                            if mem[(32 * uint8(idx)) + 447 len 1] == mem[(32 * uint8(s)) + 447 len 1]:
                                                                require uint8(s) < 5
                                                                mem[(32 * uint8(s)) + 416] = uint8(mem[(32 * uint8(s)) + 416] + 1)
                                                            s = s + 1
                                                            continue 
                                                        idx = idx + 1
                                                        continue 
                                                    mem[576 len 160] = code.data[6880 len 160]
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
                                                            _3342 = mem[(32 * t) + 416]
                                                            require t + 1 < 5
                                                            require t < 5
                                                            mem[(32 * t) + 416] = mem[(32 * t + 1) + 447 len 1]
                                                            require t + 1 < 5
                                                            mem[(32 * t + 1) + 416] = uint8(_3342)
                                                            t = t + 1
                                                            u = _3342
                                                            continue 
                                                        idx = idx + 1
                                                        s = u
                                                        continue 
                                                else:
                                                    require uint8(idx) < 5
                                                    if mem[(32 * uint8(idx)) + 447 len 1] <= 36:
                                                        idx = idx + 1
                                                        continue 
                                                    idx = 0
                                                    while uint8(idx) < 5:
                                                        mem[(32 * uint8(idx)) + 416] = uint8((block.timestamp + block.hash(block.number + -(2 * idx % 128) - 1) % 36) + 1)
                                                        idx = idx + 1
                                                        continue 
                                                    idx = 0
                                                    while uint8(idx) < 4:
                                                        s = idx + 1
                                                        while uint8(s) < 5:
                                                            require uint8(idx) < 5
                                                            if mem[(32 * uint8(idx)) + 447 len 1] == mem[(32 * uint8(s)) + 447 len 1]:
                                                                require uint8(s) < 5
                                                                mem[(32 * uint8(s)) + 416] = uint8(mem[(32 * uint8(s)) + 416] + 1)
                                                            s = s + 1
                                                            continue 
                                                        idx = idx + 1
                                                        continue 
                                                    mem[576 len 160] = code.data[6880 len 160]
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
                                                            _3343 = mem[(32 * t) + 416]
                                                            require t + 1 < 5
                                                            require t < 5
                                                            mem[(32 * t) + 416] = mem[(32 * t + 1) + 447 len 1]
                                                            require t + 1 < 5
                                                            mem[(32 * t + 1) + 416] = uint8(_3343)
                                                            t = t + 1
                                                            u = _3343
                                                            continue 
                                                        idx = idx + 1
                                                        s = u
                                                        continue 
                                                uint256(stor0[stor3].field_512)++
                                                uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_0) = msg.sender or Mask(96, 160, uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_0))
                                                uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_256) = uint256(stor0[stor3].field_512)
                                                s = 0
                                                idx = 416
                                                while 576 > idx:
                                                    uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_512) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_512)
                                                    s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                                    idx = idx + 32
                                                    continue 
                                                idx = 5
                                                s = sha3(uint256(stor0[stor3].field_512), sha3(sub_d960e8de, 0) + 9) + 2
                                                while idx:
                                                    uint256(stor[s]) = !(255 * 256^idx) and uint256(stor[s])
                                                    idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                                    s = (idx + 1 / 32) + s
                                                    continue 
                                                idx = sha3(uint256(stor0[stor3].field_512), sha3(sub_d960e8de, 0) + 9) + (-3 * None + 3 / 32) + (None * None + 3 / 32) + 2
                                                while sha3(uint256(stor0[stor3].field_512), sha3(sub_d960e8de, 0) + 9) + 3 > idx:
                                                    uint8(stor[idx]) = 0
                                                    idx = idx + 1
                                                    continue 
                                                mem[832] = mem[447 len 1]
                                                mem[864] = mem[479 len 1]
                                                mem[896] = mem[511 len 1]
                                                mem[928] = mem[543 len 1]
                                                mem[960] = mem[575 len 1]
                                                emit 0x90f48102: sub_d960e8de, uint256(stor0[stor3].field_512), msg.sender, mem[832 len 160]
                                            idx = 0
                                            while uint8(idx) < 4:
                                                s = idx + 1
                                                while uint8(s) < 5:
                                                    require uint8(idx) < 5
                                                    if mem[(32 * uint8(idx)) + 447 len 1] != mem[(32 * uint8(s)) + 447 len 1]:
                                                        s = s + 1
                                                        continue 
                                                    idx = 0
                                                    while uint8(idx) < 5:
                                                        mem[(32 * uint8(idx)) + 416] = uint8((block.timestamp + block.hash(block.number + -(2 * idx % 128) - 1) % 36) + 1)
                                                        idx = idx + 1
                                                        continue 
                                                    idx = 0
                                                    while uint8(idx) < 4:
                                                        s = idx + 1
                                                        while uint8(s) < 5:
                                                            require uint8(idx) < 5
                                                            if mem[(32 * uint8(idx)) + 447 len 1] == mem[(32 * uint8(s)) + 447 len 1]:
                                                                require uint8(s) < 5
                                                                mem[(32 * uint8(s)) + 416] = uint8(mem[(32 * uint8(s)) + 416] + 1)
                                                            s = s + 1
                                                            continue 
                                                        idx = idx + 1
                                                        continue 
                                                    mem[576 len 160] = code.data[6880 len 160]
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
                                                            _4157 = mem[(32 * t) + 416]
                                                            require t + 1 < 5
                                                            require t < 5
                                                            mem[(32 * t) + 416] = mem[(32 * t + 1) + 447 len 1]
                                                            require t + 1 < 5
                                                            mem[(32 * t + 1) + 416] = uint8(_4157)
                                                            t = t + 1
                                                            u = _4157
                                                            continue 
                                                        idx = idx + 1
                                                        s = u
                                                        continue 
                                                    uint256(stor0[stor3].field_512)++
                                                    uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_0) = msg.sender or Mask(96, 160, uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_0))
                                                    uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_256) = uint256(stor0[stor3].field_512)
                                                    s = 0
                                                    idx = 416
                                                    while 576 > idx:
                                                        uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_512) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_512)
                                                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                                        idx = idx + 32
                                                        continue 
                                                    idx = 5
                                                    s = sha3(uint256(stor0[stor3].field_512), sha3(sub_d960e8de, 0) + 9) + 2
                                                    while idx:
                                                        uint256(stor[s]) = !(255 * 256^idx) and uint256(stor[s])
                                                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                                        s = (idx + 1 / 32) + s
                                                        continue 
                                                    idx = sha3(uint256(stor0[stor3].field_512), sha3(sub_d960e8de, 0) + 9) + (-3 * None + 3 / 32) + (None * None + 3 / 32) + 2
                                                    while sha3(uint256(stor0[stor3].field_512), sha3(sub_d960e8de, 0) + 9) + 3 > idx:
                                                        uint8(stor[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                    emit 0x90f48102: sub_d960e8de, uint256(stor0[stor3].field_512), msg.sender, mem[416] << 248, mem[448] << 248, mem[480] << 248, mem[512] << 248, mem[575 len 1]
                                                idx = idx + 1
                                                continue 
                                            mem[576 len 160] = code.data[6880 len 160]
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
                                                    _2768 = mem[(32 * t) + 416]
                                                    require t + 1 < 5
                                                    require t < 5
                                                    mem[(32 * t) + 416] = mem[(32 * t + 1) + 447 len 1]
                                                    require t + 1 < 5
                                                    mem[(32 * t + 1) + 416] = uint8(_2768)
                                                    t = t + 1
                                                    u = _2768
                                                    continue 
                                                idx = idx + 1
                                                s = u
                                                continue 
                                            uint256(stor0[stor3].field_512)++
                                            uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_0) = msg.sender or Mask(96, 160, uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_0))
                                            uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_256) = uint256(stor0[stor3].field_512)
                                            s = 0
                                            idx = 416
                                            while 576 > idx:
                                                uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_512) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_512)
                                                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                                idx = idx + 32
                                                continue 
                                            idx = 5
                                            s = sha3(uint256(stor0[stor3].field_512), sha3(sub_d960e8de, 0) + 9) + 2
                                            while idx:
                                                uint256(stor[s]) = !(255 * 256^idx) and uint256(stor[s])
                                                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                                s = (idx + 1 / 32) + s
                                                continue 
                                            idx = (-3 * None + 3 / 32) + (None * None + 3 / 32) + 2
                                            while 3 > idx:
                                                uint8(stor0[stor3][9][uint256(stor0[stor3].field_512)][idx].field_0) = 0
                                                idx = idx + 1
                                                continue 
                                            emit 0x90f48102: sub_d960e8de, uint256(stor0[stor3].field_512), msg.sender, mem[416] << 248, mem[448] << 248, mem[480] << 248, mem[512] << 248, mem[575 len 1]
                                        else:
                                            idx = 0
                                            while uint8(idx) < 5:
                                                mem[(32 * uint8(idx)) + 416] = uint8((block.timestamp + block.hash(block.number + -(2 * idx % 128) - 1) % 36) + 1)
                                                idx = idx + 1
                                                continue 
                                            idx = 0
                                            while uint8(idx) < 4:
                                                s = idx + 1
                                                while uint8(s) < 5:
                                                    require uint8(idx) < 5
                                                    if mem[(32 * uint8(idx)) + 447 len 1] == mem[(32 * uint8(s)) + 447 len 1]:
                                                        require uint8(s) < 5
                                                        mem[(32 * uint8(s)) + 416] = uint8(mem[(32 * uint8(s)) + 416] + 1)
                                                    s = s + 1
                                                    continue 
                                                idx = idx + 1
                                                continue 
                                            mem[576 len 160] = code.data[6880 len 160]
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
                                                    _2222 = mem[(32 * t) + 416]
                                                    require t + 1 < 5
                                                    require t < 5
                                                    mem[(32 * t) + 416] = mem[(32 * t + 1) + 447 len 1]
                                                    require t + 1 < 5
                                                    mem[(32 * t + 1) + 416] = uint8(_2222)
                                                    t = t + 1
                                                    u = _2222
                                                    continue 
                                                idx = idx + 1
                                                s = u
                                                continue 
                                            uint256(stor0[stor3].field_512)++
                                            uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_0) = msg.sender or Mask(96, 160, uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_0))
                                            uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_256) = uint256(stor0[stor3].field_512)
                                            s = 0
                                            idx = 416
                                            while 576 > idx:
                                                uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_512) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_512)
                                                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                                idx = idx + 32
                                                continue 
                                            idx = 5
                                            s = sha3(uint256(stor0[stor3].field_512), sha3(sub_d960e8de, 0) + 9) + 2
                                            while idx:
                                                uint256(stor[s]) = !(255 * 256^idx) and uint256(stor[s])
                                                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                                s = (idx + 1 / 32) + s
                                                continue 
                                            idx = (-3 * None + 3 / 32) + (None * None + 3 / 32) + 2
                                            while 3 > idx:
                                                uint8(stor0[stor3][9][uint256(stor0[stor3].field_512)][idx].field_0) = 0
                                                idx = idx + 1
                                                continue 
                                            mem[832] = mem[447 len 1]
                                            mem[864] = mem[479 len 1]
                                            mem[896] = mem[511 len 1]
                                            mem[928] = mem[543 len 1]
                                            mem[960] = mem[575 len 1]
                                            emit 0x90f48102: sub_d960e8de, uint256(stor0[stor3].field_512), msg.sender, mem[832 len 160]
                                    else:
                                        if msg.value < 10^16:
                                            if msg.value:
                                                require msg.value
                                                require 15 * msg.value / msg.value == 15
                                            stor5 += 15 * msg.value / 100
                                            if msg.value:
                                                require msg.value
                                                require 85 * msg.value / msg.value == 85
                                            uint256(stor0[stor3].field_768) += 85 * msg.value / 100
                                            emit 0xe2a6acbc: uint256(stor0[stor3].field_768)
                                        else:
                                            require 10^16 <= msg.value
                                            call msg.sender with:
                                               value msg.value - 10^16 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[96 len 160] = code.data[6880 len 160]
                                            stor5 += 15 * 10^14
                                            mem[32] = 0
                                            uint256(stor0[stor3].field_768) += 85 * 10^14
                                            mem[0] = sub_d960e8de
                                            emit 0xe2a6acbc: uint256(stor0[stor3].field_768)
                                            mem[256 len 160] = code.data[6880 len 160]
                                            mem[64] = 576
                                            mem[416 len 160] = code.data[6880 len 160]
                                            if calldata.size == 5:
                                                idx = 0
                                                while uint8(idx) < calldata.size:
                                                    require uint8(idx) < 5
                                                    mem[(32 * uint8(idx)) + 416] = Mask(8, 248, cd[uint8(idx)]) >> 248
                                                    idx = idx + 1
                                                    continue 
                                                idx = 0
                                                while uint8(idx) < 5:
                                                    if mem[(32 * uint8(idx)) + 447 len 1] < 1:
                                                        idx = 0
                                                        while uint8(idx) < 5:
                                                            mem[(32 * uint8(idx)) + 416] = uint8((block.timestamp + block.hash(block.number + -(2 * idx % 128) - 1) % 36) + 1)
                                                            idx = idx + 1
                                                            continue 
                                                        idx = 0
                                                        while uint8(idx) < 4:
                                                            s = idx + 1
                                                            while uint8(s) < 5:
                                                                require uint8(idx) < 5
                                                                if mem[(32 * uint8(idx)) + 447 len 1] == mem[(32 * uint8(s)) + 447 len 1]:
                                                                    require uint8(s) < 5
                                                                    mem[(32 * uint8(s)) + 416] = uint8(mem[(32 * uint8(s)) + 416] + 1)
                                                                s = s + 1
                                                                continue 
                                                            idx = idx + 1
                                                            continue 
                                                        mem[576 len 160] = code.data[6880 len 160]
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
                                                                _3339 = mem[(32 * t) + 416]
                                                                require t + 1 < 5
                                                                require t < 5
                                                                mem[(32 * t) + 416] = mem[(32 * t + 1) + 447 len 1]
                                                                require t + 1 < 5
                                                                mem[(32 * t + 1) + 416] = uint8(_3339)
                                                                t = t + 1
                                                                u = _3339
                                                                continue 
                                                            idx = idx + 1
                                                            s = u
                                                            continue 
                                                    else:
                                                        require uint8(idx) < 5
                                                        if mem[(32 * uint8(idx)) + 447 len 1] <= 36:
                                                            idx = idx + 1
                                                            continue 
                                                        idx = 0
                                                        while uint8(idx) < 5:
                                                            mem[(32 * uint8(idx)) + 416] = uint8((block.timestamp + block.hash(block.number + -(2 * idx % 128) - 1) % 36) + 1)
                                                            idx = idx + 1
                                                            continue 
                                                        idx = 0
                                                        while uint8(idx) < 4:
                                                            s = idx + 1
                                                            while uint8(s) < 5:
                                                                require uint8(idx) < 5
                                                                if mem[(32 * uint8(idx)) + 447 len 1] == mem[(32 * uint8(s)) + 447 len 1]:
                                                                    require uint8(s) < 5
                                                                    mem[(32 * uint8(s)) + 416] = uint8(mem[(32 * uint8(s)) + 416] + 1)
                                                                s = s + 1
                                                                continue 
                                                            idx = idx + 1
                                                            continue 
                                                        mem[576 len 160] = code.data[6880 len 160]
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
                                                                _3340 = mem[(32 * t) + 416]
                                                                require t + 1 < 5
                                                                require t < 5
                                                                mem[(32 * t) + 416] = mem[(32 * t + 1) + 447 len 1]
                                                                require t + 1 < 5
                                                                mem[(32 * t + 1) + 416] = uint8(_3340)
                                                                t = t + 1
                                                                u = _3340
                                                                continue 
                                                            idx = idx + 1
                                                            s = u
                                                            continue 
                                                    uint256(stor0[stor3].field_512)++
                                                    uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_0) = msg.sender or Mask(96, 160, uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_0))
                                                    uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_256) = uint256(stor0[stor3].field_512)
                                                    s = 0
                                                    idx = 416
                                                    while 576 > idx:
                                                        uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_512) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_512)
                                                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                                        idx = idx + 32
                                                        continue 
                                                    idx = 5
                                                    s = sha3(uint256(stor0[stor3].field_512), sha3(sub_d960e8de, 0) + 9) + 2
                                                    while idx:
                                                        uint256(stor[s]) = !(255 * 256^idx) and uint256(stor[s])
                                                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                                        s = (idx + 1 / 32) + s
                                                        continue 
                                                    idx = sha3(uint256(stor0[stor3].field_512), sha3(sub_d960e8de, 0) + 9) + (-3 * None + 3 / 32) + (None * None + 3 / 32) + 2
                                                    while sha3(uint256(stor0[stor3].field_512), sha3(sub_d960e8de, 0) + 9) + 3 > idx:
                                                        uint8(stor[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                    mem[832] = mem[447 len 1]
                                                    mem[864] = mem[479 len 1]
                                                    mem[896] = mem[511 len 1]
                                                    mem[928] = mem[543 len 1]
                                                    mem[960] = mem[575 len 1]
                                                    emit 0x90f48102: sub_d960e8de, uint256(stor0[stor3].field_512), msg.sender, mem[832 len 160]
                                                idx = 0
                                                while uint8(idx) < 4:
                                                    s = idx + 1
                                                    while uint8(s) < 5:
                                                        require uint8(idx) < 5
                                                        if mem[(32 * uint8(idx)) + 447 len 1] != mem[(32 * uint8(s)) + 447 len 1]:
                                                            s = s + 1
                                                            continue 
                                                        idx = 0
                                                        while uint8(idx) < 5:
                                                            mem[(32 * uint8(idx)) + 416] = uint8((block.timestamp + block.hash(block.number + -(2 * idx % 128) - 1) % 36) + 1)
                                                            idx = idx + 1
                                                            continue 
                                                        idx = 0
                                                        while uint8(idx) < 4:
                                                            s = idx + 1
                                                            while uint8(s) < 5:
                                                                require uint8(idx) < 5
                                                                if mem[(32 * uint8(idx)) + 447 len 1] == mem[(32 * uint8(s)) + 447 len 1]:
                                                                    require uint8(s) < 5
                                                                    mem[(32 * uint8(s)) + 416] = uint8(mem[(32 * uint8(s)) + 416] + 1)
                                                                s = s + 1
                                                                continue 
                                                            idx = idx + 1
                                                            continue 
                                                        mem[576 len 160] = code.data[6880 len 160]
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
                                                                _4156 = mem[(32 * t) + 416]
                                                                require t + 1 < 5
                                                                require t < 5
                                                                mem[(32 * t) + 416] = mem[(32 * t + 1) + 447 len 1]
                                                                require t + 1 < 5
                                                                mem[(32 * t + 1) + 416] = uint8(_4156)
                                                                t = t + 1
                                                                u = _4156
                                                                continue 
                                                            idx = idx + 1
                                                            s = u
                                                            continue 
                                                        uint256(stor0[stor3].field_512)++
                                                        uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_0) = msg.sender or Mask(96, 160, uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_0))
                                                        uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_256) = uint256(stor0[stor3].field_512)
                                                        s = 0
                                                        idx = 416
                                                        while 576 > idx:
                                                            uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_512) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_512)
                                                            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                                            idx = idx + 32
                                                            continue 
                                                        idx = 5
                                                        s = sha3(uint256(stor0[stor3].field_512), sha3(sub_d960e8de, 0) + 9) + 2
                                                        while idx:
                                                            uint256(stor[s]) = !(255 * 256^idx) and uint256(stor[s])
                                                            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                                            s = (idx + 1 / 32) + s
                                                            continue 
                                                        idx = sha3(uint256(stor0[stor3].field_512), sha3(sub_d960e8de, 0) + 9) + (-3 * None + 3 / 32) + (None * None + 3 / 32) + 2
                                                        while sha3(uint256(stor0[stor3].field_512), sha3(sub_d960e8de, 0) + 9) + 3 > idx:
                                                            uint8(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                        emit 0x90f48102: sub_d960e8de, uint256(stor0[stor3].field_512), msg.sender, mem[416] << 248, mem[448] << 248, mem[480] << 248, mem[512] << 248, mem[575 len 1]
                                                    idx = idx + 1
                                                    continue 
                                                mem[576 len 160] = code.data[6880 len 160]
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
                                                        _2764 = mem[(32 * t) + 416]
                                                        require t + 1 < 5
                                                        require t < 5
                                                        mem[(32 * t) + 416] = mem[(32 * t + 1) + 447 len 1]
                                                        require t + 1 < 5
                                                        mem[(32 * t + 1) + 416] = uint8(_2764)
                                                        t = t + 1
                                                        u = _2764
                                                        continue 
                                                    idx = idx + 1
                                                    s = u
                                                    continue 
                                                uint256(stor0[stor3].field_512)++
                                                uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_0) = msg.sender or Mask(96, 160, uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_0))
                                                uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_256) = uint256(stor0[stor3].field_512)
                                                s = 0
                                                idx = 416
                                                while 576 > idx:
                                                    uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_512) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_512)
                                                    s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                                    idx = idx + 32
                                                    continue 
                                                idx = 5
                                                s = sha3(uint256(stor0[stor3].field_512), sha3(sub_d960e8de, 0) + 9) + 2
                                                while idx:
                                                    uint256(stor[s]) = !(255 * 256^idx) and uint256(stor[s])
                                                    idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                                    s = (idx + 1 / 32) + s
                                                    continue 
                                                idx = (-3 * None + 3 / 32) + (None * None + 3 / 32) + 2
                                                while 3 > idx:
                                                    uint8(stor0[stor3][9][uint256(stor0[stor3].field_512)][idx].field_0) = 0
                                                    idx = idx + 1
                                                    continue 
                                                emit 0x90f48102: sub_d960e8de, uint256(stor0[stor3].field_512), msg.sender, mem[416] << 248, mem[448] << 248, mem[480] << 248, mem[512] << 248, mem[575 len 1]
                                            else:
                                                idx = 0
                                                while uint8(idx) < 5:
                                                    mem[(32 * uint8(idx)) + 416] = uint8((block.timestamp + block.hash(block.number + -(2 * idx % 128) - 1) % 36) + 1)
                                                    idx = idx + 1
                                                    continue 
                                                idx = 0
                                                while uint8(idx) < 4:
                                                    s = idx + 1
                                                    while uint8(s) < 5:
                                                        require uint8(idx) < 5
                                                        if mem[(32 * uint8(idx)) + 447 len 1] == mem[(32 * uint8(s)) + 447 len 1]:
                                                            require uint8(s) < 5
                                                            mem[(32 * uint8(s)) + 416] = uint8(mem[(32 * uint8(s)) + 416] + 1)
                                                        s = s + 1
                                                        continue 
                                                    idx = idx + 1
                                                    continue 
                                                mem[576 len 160] = code.data[6880 len 160]
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
                                                        _2216 = mem[(32 * t) + 416]
                                                        require t + 1 < 5
                                                        require t < 5
                                                        mem[(32 * t) + 416] = mem[(32 * t + 1) + 447 len 1]
                                                        require t + 1 < 5
                                                        mem[(32 * t + 1) + 416] = uint8(_2216)
                                                        t = t + 1
                                                        u = _2216
                                                        continue 
                                                    idx = idx + 1
                                                    s = u
                                                    continue 
                                                uint256(stor0[stor3].field_512)++
                                                uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_0) = msg.sender or Mask(96, 160, uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_0))
                                                uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_256) = uint256(stor0[stor3].field_512)
                                                s = 0
                                                idx = 416
                                                while 576 > idx:
                                                    uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_512) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_512)
                                                    s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                                    idx = idx + 32
                                                    continue 
                                                idx = 5
                                                s = sha3(uint256(stor0[stor3].field_512), sha3(sub_d960e8de, 0) + 9) + 2
                                                while idx:
                                                    uint256(stor[s]) = !(255 * 256^idx) and uint256(stor[s])
                                                    idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                                    s = (idx + 1 / 32) + s
                                                    continue 
                                                idx = (-3 * None + 3 / 32) + (None * None + 3 / 32) + 2
                                                while 3 > idx:
                                                    uint8(stor0[stor3][9][uint256(stor0[stor3].field_512)][idx].field_0) = 0
                                                    idx = idx + 1
                                                    continue 
                                                mem[832] = mem[447 len 1]
                                                mem[864] = mem[479 len 1]
                                                mem[896] = mem[511 len 1]
                                                mem[928] = mem[543 len 1]
                                                mem[960] = mem[575 len 1]
                                                emit 0x90f48102: sub_d960e8de, uint256(stor0[stor3].field_512), msg.sender, mem[832 len 160]
                                else:
                                    if uint8(block.timestamp / 60 / 60 % 24) <= 13:
                                        call msg.sender with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if msg.value == 10^16:
                                            mem[96 len 160] = code.data[6880 len 160]
                                            stor5 += 15 * 10^14
                                            mem[32] = 0
                                            uint256(stor0[stor3].field_768) += 85 * 10^14
                                            mem[0] = sub_d960e8de
                                            emit 0xe2a6acbc: uint256(stor0[stor3].field_768)
                                            mem[256 len 160] = code.data[6880 len 160]
                                            mem[64] = 576
                                            mem[416 len 160] = code.data[6880 len 160]
                                            if calldata.size == 5:
                                                idx = 0
                                                while uint8(idx) < calldata.size:
                                                    require uint8(idx) < 5
                                                    mem[(32 * uint8(idx)) + 416] = Mask(8, 248, cd[uint8(idx)]) >> 248
                                                    idx = idx + 1
                                                    continue 
                                                idx = 0
                                                while uint8(idx) < 5:
                                                    if mem[(32 * uint8(idx)) + 447 len 1] < 1:
                                                        idx = 0
                                                        while uint8(idx) < 5:
                                                            mem[(32 * uint8(idx)) + 416] = uint8((block.timestamp + block.hash(block.number + -(2 * idx % 128) - 1) % 36) + 1)
                                                            idx = idx + 1
                                                            continue 
                                                        idx = 0
                                                        while uint8(idx) < 4:
                                                            s = idx + 1
                                                            while uint8(s) < 5:
                                                                require uint8(idx) < 5
                                                                if mem[(32 * uint8(idx)) + 447 len 1] == mem[(32 * uint8(s)) + 447 len 1]:
                                                                    require uint8(s) < 5
                                                                    mem[(32 * uint8(s)) + 416] = uint8(mem[(32 * uint8(s)) + 416] + 1)
                                                                s = s + 1
                                                                continue 
                                                            idx = idx + 1
                                                            continue 
                                                        mem[576 len 160] = code.data[6880 len 160]
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
                                                                _3348 = mem[(32 * t) + 416]
                                                                require t + 1 < 5
                                                                require t < 5
                                                                mem[(32 * t) + 416] = mem[(32 * t + 1) + 447 len 1]
                                                                require t + 1 < 5
                                                                mem[(32 * t + 1) + 416] = uint8(_3348)
                                                                t = t + 1
                                                                u = _3348
                                                                continue 
                                                            idx = idx + 1
                                                            s = u
                                                            continue 
                                                    else:
                                                        require uint8(idx) < 5
                                                        if mem[(32 * uint8(idx)) + 447 len 1] <= 36:
                                                            idx = idx + 1
                                                            continue 
                                                        idx = 0
                                                        while uint8(idx) < 5:
                                                            mem[(32 * uint8(idx)) + 416] = uint8((block.timestamp + block.hash(block.number + -(2 * idx % 128) - 1) % 36) + 1)
                                                            idx = idx + 1
                                                            continue 
                                                        idx = 0
                                                        while uint8(idx) < 4:
                                                            s = idx + 1
                                                            while uint8(s) < 5:
                                                                require uint8(idx) < 5
                                                                if mem[(32 * uint8(idx)) + 447 len 1] == mem[(32 * uint8(s)) + 447 len 1]:
                                                                    require uint8(s) < 5
                                                                    mem[(32 * uint8(s)) + 416] = uint8(mem[(32 * uint8(s)) + 416] + 1)
                                                                s = s + 1
                                                                continue 
                                                            idx = idx + 1
                                                            continue 
                                                        mem[576 len 160] = code.data[6880 len 160]
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
                                                                _3349 = mem[(32 * t) + 416]
                                                                require t + 1 < 5
                                                                require t < 5
                                                                mem[(32 * t) + 416] = mem[(32 * t + 1) + 447 len 1]
                                                                require t + 1 < 5
                                                                mem[(32 * t + 1) + 416] = uint8(_3349)
                                                                t = t + 1
                                                                u = _3349
                                                                continue 
                                                            idx = idx + 1
                                                            s = u
                                                            continue 
                                                    uint256(stor0[stor3].field_512)++
                                                    uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_0) = msg.sender or Mask(96, 160, uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_0))
                                                    uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_256) = uint256(stor0[stor3].field_512)
                                                    s = 0
                                                    idx = 416
                                                    while 576 > idx:
                                                        uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_512) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_512)
                                                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                                        idx = idx + 32
                                                        continue 
                                                    idx = 5
                                                    s = sha3(uint256(stor0[stor3].field_512), sha3(sub_d960e8de, 0) + 9) + 2
                                                    while idx:
                                                        uint256(stor[s]) = !(255 * 256^idx) and uint256(stor[s])
                                                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                                        s = (idx + 1 / 32) + s
                                                        continue 
                                                    idx = sha3(uint256(stor0[stor3].field_512), sha3(sub_d960e8de, 0) + 9) + (-3 * None + 3 / 32) + (None * None + 3 / 32) + 2
                                                    while sha3(uint256(stor0[stor3].field_512), sha3(sub_d960e8de, 0) + 9) + 3 > idx:
                                                        uint8(stor[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                    mem[832] = mem[447 len 1]
                                                    mem[864] = mem[479 len 1]
                                                    mem[896] = mem[511 len 1]
                                                    mem[928] = mem[543 len 1]
                                                    mem[960] = mem[575 len 1]
                                                    emit 0x90f48102: sub_d960e8de, uint256(stor0[stor3].field_512), msg.sender, mem[832 len 160]
                                                idx = 0
                                                while uint8(idx) < 4:
                                                    s = idx + 1
                                                    while uint8(s) < 5:
                                                        require uint8(idx) < 5
                                                        if mem[(32 * uint8(idx)) + 447 len 1] != mem[(32 * uint8(s)) + 447 len 1]:
                                                            s = s + 1
                                                            continue 
                                                        idx = 0
                                                        while uint8(idx) < 5:
                                                            mem[(32 * uint8(idx)) + 416] = uint8((block.timestamp + block.hash(block.number + -(2 * idx % 128) - 1) % 36) + 1)
                                                            idx = idx + 1
                                                            continue 
                                                        idx = 0
                                                        while uint8(idx) < 4:
                                                            s = idx + 1
                                                            while uint8(s) < 5:
                                                                require uint8(idx) < 5
                                                                if mem[(32 * uint8(idx)) + 447 len 1] == mem[(32 * uint8(s)) + 447 len 1]:
                                                                    require uint8(s) < 5
                                                                    mem[(32 * uint8(s)) + 416] = uint8(mem[(32 * uint8(s)) + 416] + 1)
                                                                s = s + 1
                                                                continue 
                                                            idx = idx + 1
                                                            continue 
                                                        mem[576 len 160] = code.data[6880 len 160]
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
                                                                _4159 = mem[(32 * t) + 416]
                                                                require t + 1 < 5
                                                                require t < 5
                                                                mem[(32 * t) + 416] = mem[(32 * t + 1) + 447 len 1]
                                                                require t + 1 < 5
                                                                mem[(32 * t + 1) + 416] = uint8(_4159)
                                                                t = t + 1
                                                                u = _4159
                                                                continue 
                                                            idx = idx + 1
                                                            s = u
                                                            continue 
                                                        uint256(stor0[stor3].field_512)++
                                                        uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_0) = msg.sender or Mask(96, 160, uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_0))
                                                        uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_256) = uint256(stor0[stor3].field_512)
                                                        s = 0
                                                        idx = 416
                                                        while 576 > idx:
                                                            uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_512) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_512)
                                                            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                                            idx = idx + 32
                                                            continue 
                                                        idx = 5
                                                        s = sha3(uint256(stor0[stor3].field_512), sha3(sub_d960e8de, 0) + 9) + 2
                                                        while idx:
                                                            uint256(stor[s]) = !(255 * 256^idx) and uint256(stor[s])
                                                            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                                            s = (idx + 1 / 32) + s
                                                            continue 
                                                        idx = sha3(uint256(stor0[stor3].field_512), sha3(sub_d960e8de, 0) + 9) + (-3 * None + 3 / 32) + (None * None + 3 / 32) + 2
                                                        while sha3(uint256(stor0[stor3].field_512), sha3(sub_d960e8de, 0) + 9) + 3 > idx:
                                                            uint8(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                        emit 0x90f48102: sub_d960e8de, uint256(stor0[stor3].field_512), msg.sender, mem[416] << 248, mem[448] << 248, mem[480] << 248, mem[512] << 248, mem[575 len 1]
                                                    idx = idx + 1
                                                    continue 
                                                mem[576 len 160] = code.data[6880 len 160]
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
                                                        _2776 = mem[(32 * t) + 416]
                                                        require t + 1 < 5
                                                        require t < 5
                                                        mem[(32 * t) + 416] = mem[(32 * t + 1) + 447 len 1]
                                                        require t + 1 < 5
                                                        mem[(32 * t + 1) + 416] = uint8(_2776)
                                                        t = t + 1
                                                        u = _2776
                                                        continue 
                                                    idx = idx + 1
                                                    s = u
                                                    continue 
                                                uint256(stor0[stor3].field_512)++
                                                uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_0) = msg.sender or Mask(96, 160, uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_0))
                                                uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_256) = uint256(stor0[stor3].field_512)
                                                s = 0
                                                idx = 416
                                                while 576 > idx:
                                                    uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_512) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_512)
                                                    s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                                    idx = idx + 32
                                                    continue 
                                                idx = 5
                                                s = sha3(uint256(stor0[stor3].field_512), sha3(sub_d960e8de, 0) + 9) + 2
                                                while idx:
                                                    uint256(stor[s]) = !(255 * 256^idx) and uint256(stor[s])
                                                    idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                                    s = (idx + 1 / 32) + s
                                                    continue 
                                                idx = (-3 * None + 3 / 32) + (None * None + 3 / 32) + 2
                                                while 3 > idx:
                                                    uint8(stor0[stor3][9][uint256(stor0[stor3].field_512)][idx].field_0) = 0
                                                    idx = idx + 1
                                                    continue 
                                                emit 0x90f48102: sub_d960e8de, uint256(stor0[stor3].field_512), msg.sender, mem[416] << 248, mem[448] << 248, mem[480] << 248, mem[512] << 248, mem[575 len 1]
                                            else:
                                                idx = 0
                                                while uint8(idx) < 5:
                                                    mem[(32 * uint8(idx)) + 416] = uint8((block.timestamp + block.hash(block.number + -(2 * idx % 128) - 1) % 36) + 1)
                                                    idx = idx + 1
                                                    continue 
                                                idx = 0
                                                while uint8(idx) < 4:
                                                    s = idx + 1
                                                    while uint8(s) < 5:
                                                        require uint8(idx) < 5
                                                        if mem[(32 * uint8(idx)) + 447 len 1] == mem[(32 * uint8(s)) + 447 len 1]:
                                                            require uint8(s) < 5
                                                            mem[(32 * uint8(s)) + 416] = uint8(mem[(32 * uint8(s)) + 416] + 1)
                                                        s = s + 1
                                                        continue 
                                                    idx = idx + 1
                                                    continue 
                                                mem[576 len 160] = code.data[6880 len 160]
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
                                                        _2234 = mem[(32 * t) + 416]
                                                        require t + 1 < 5
                                                        require t < 5
                                                        mem[(32 * t) + 416] = mem[(32 * t + 1) + 447 len 1]
                                                        require t + 1 < 5
                                                        mem[(32 * t + 1) + 416] = uint8(_2234)
                                                        t = t + 1
                                                        u = _2234
                                                        continue 
                                                    idx = idx + 1
                                                    s = u
                                                    continue 
                                                uint256(stor0[stor3].field_512)++
                                                uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_0) = msg.sender or Mask(96, 160, uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_0))
                                                uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_256) = uint256(stor0[stor3].field_512)
                                                s = 0
                                                idx = 416
                                                while 576 > idx:
                                                    uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_512) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_512)
                                                    s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                                    idx = idx + 32
                                                    continue 
                                                idx = 5
                                                s = sha3(uint256(stor0[stor3].field_512), sha3(sub_d960e8de, 0) + 9) + 2
                                                while idx:
                                                    uint256(stor[s]) = !(255 * 256^idx) and uint256(stor[s])
                                                    idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                                    s = (idx + 1 / 32) + s
                                                    continue 
                                                idx = (-3 * None + 3 / 32) + (None * None + 3 / 32) + 2
                                                while 3 > idx:
                                                    uint8(stor0[stor3][9][uint256(stor0[stor3].field_512)][idx].field_0) = 0
                                                    idx = idx + 1
                                                    continue 
                                                mem[832] = mem[447 len 1]
                                                mem[864] = mem[479 len 1]
                                                mem[896] = mem[511 len 1]
                                                mem[928] = mem[543 len 1]
                                                mem[960] = mem[575 len 1]
                                                emit 0x90f48102: sub_d960e8de, uint256(stor0[stor3].field_512), msg.sender, mem[832 len 160]
                                        else:
                                            if msg.value < 10^16:
                                                if msg.value:
                                                    require msg.value
                                                    require 15 * msg.value / msg.value == 15
                                                stor5 += 15 * msg.value / 100
                                                if msg.value:
                                                    require msg.value
                                                    require 85 * msg.value / msg.value == 85
                                                uint256(stor0[stor3].field_768) += 85 * msg.value / 100
                                                emit 0xe2a6acbc: uint256(stor0[stor3].field_768)
                                            else:
                                                require 10^16 <= msg.value
                                                call msg.sender with:
                                                   value msg.value - 10^16 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[96 len 160] = code.data[6880 len 160]
                                                stor5 += 15 * 10^14
                                                mem[32] = 0
                                                uint256(stor0[stor3].field_768) += 85 * 10^14
                                                mem[0] = sub_d960e8de
                                                emit 0xe2a6acbc: uint256(stor0[stor3].field_768)
                                                mem[256 len 160] = code.data[6880 len 160]
                                                mem[64] = 576
                                                mem[416 len 160] = code.data[6880 len 160]
                                                if calldata.size == 5:
                                                    idx = 0
                                                    while uint8(idx) < calldata.size:
                                                        require uint8(idx) < 5
                                                        mem[(32 * uint8(idx)) + 416] = Mask(8, 248, cd[uint8(idx)]) >> 248
                                                        idx = idx + 1
                                                        continue 
                                                    idx = 0
                                                    while uint8(idx) < 5:
                                                        if mem[(32 * uint8(idx)) + 447 len 1] < 1:
                                                            idx = 0
                                                            while uint8(idx) < 5:
                                                                mem[(32 * uint8(idx)) + 416] = uint8((block.timestamp + block.hash(block.number + -(2 * idx % 128) - 1) % 36) + 1)
                                                                idx = idx + 1
                                                                continue 
                                                            idx = 0
                                                            while uint8(idx) < 4:
                                                                s = idx + 1
                                                                while uint8(s) < 5:
                                                                    require uint8(idx) < 5
                                                                    if mem[(32 * uint8(idx)) + 447 len 1] == mem[(32 * uint8(s)) + 447 len 1]:
                                                                        require uint8(s) < 5
                                                                        mem[(32 * uint8(s)) + 416] = uint8(mem[(32 * uint8(s)) + 416] + 1)
                                                                    s = s + 1
                                                                    continue 
                                                                idx = idx + 1
                                                                continue 
                                                            mem[576 len 160] = code.data[6880 len 160]
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
                                                                    _3345 = mem[(32 * t) + 416]
                                                                    require t + 1 < 5
                                                                    require t < 5
                                                                    mem[(32 * t) + 416] = mem[(32 * t + 1) + 447 len 1]
                                                                    require t + 1 < 5
                                                                    mem[(32 * t + 1) + 416] = uint8(_3345)
                                                                    t = t + 1
                                                                    u = _3345
                                                                    continue 
                                                                idx = idx + 1
                                                                s = u
                                                                continue 
                                                        else:
                                                            require uint8(idx) < 5
                                                            if mem[(32 * uint8(idx)) + 447 len 1] <= 36:
                                                                idx = idx + 1
                                                                continue 
                                                            idx = 0
                                                            while uint8(idx) < 5:
                                                                mem[(32 * uint8(idx)) + 416] = uint8((block.timestamp + block.hash(block.number + -(2 * idx % 128) - 1) % 36) + 1)
                                                                idx = idx + 1
                                                                continue 
                                                            idx = 0
                                                            while uint8(idx) < 4:
                                                                s = idx + 1
                                                                while uint8(s) < 5:
                                                                    require uint8(idx) < 5
                                                                    if mem[(32 * uint8(idx)) + 447 len 1] == mem[(32 * uint8(s)) + 447 len 1]:
                                                                        require uint8(s) < 5
                                                                        mem[(32 * uint8(s)) + 416] = uint8(mem[(32 * uint8(s)) + 416] + 1)
                                                                    s = s + 1
                                                                    continue 
                                                                idx = idx + 1
                                                                continue 
                                                            mem[576 len 160] = code.data[6880 len 160]
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
                                                                    _3346 = mem[(32 * t) + 416]
                                                                    require t + 1 < 5
                                                                    require t < 5
                                                                    mem[(32 * t) + 416] = mem[(32 * t + 1) + 447 len 1]
                                                                    require t + 1 < 5
                                                                    mem[(32 * t + 1) + 416] = uint8(_3346)
                                                                    t = t + 1
                                                                    u = _3346
                                                                    continue 
                                                                idx = idx + 1
                                                                s = u
                                                                continue 
                                                        uint256(stor0[stor3].field_512)++
                                                        uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_0) = msg.sender or Mask(96, 160, uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_0))
                                                        uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_256) = uint256(stor0[stor3].field_512)
                                                        s = 0
                                                        idx = 416
                                                        while 576 > idx:
                                                            uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_512) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_512)
                                                            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                                            idx = idx + 32
                                                            continue 
                                                        idx = 5
                                                        s = sha3(uint256(stor0[stor3].field_512), sha3(sub_d960e8de, 0) + 9) + 2
                                                        while idx:
                                                            uint256(stor[s]) = !(255 * 256^idx) and uint256(stor[s])
                                                            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                                            s = (idx + 1 / 32) + s
                                                            continue 
                                                        idx = sha3(uint256(stor0[stor3].field_512), sha3(sub_d960e8de, 0) + 9) + (-3 * None + 3 / 32) + (None * None + 3 / 32) + 2
                                                        while sha3(uint256(stor0[stor3].field_512), sha3(sub_d960e8de, 0) + 9) + 3 > idx:
                                                            uint8(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                        mem[832] = mem[447 len 1]
                                                        mem[864] = mem[479 len 1]
                                                        mem[896] = mem[511 len 1]
                                                        mem[928] = mem[543 len 1]
                                                        mem[960] = mem[575 len 1]
                                                        emit 0x90f48102: sub_d960e8de, uint256(stor0[stor3].field_512), msg.sender, mem[832 len 160]
                                                    idx = 0
                                                    while uint8(idx) < 4:
                                                        s = idx + 1
                                                        while uint8(s) < 5:
                                                            require uint8(idx) < 5
                                                            if mem[(32 * uint8(idx)) + 447 len 1] != mem[(32 * uint8(s)) + 447 len 1]:
                                                                s = s + 1
                                                                continue 
                                                            idx = 0
                                                            while uint8(idx) < 5:
                                                                mem[(32 * uint8(idx)) + 416] = uint8((block.timestamp + block.hash(block.number + -(2 * idx % 128) - 1) % 36) + 1)
                                                                idx = idx + 1
                                                                continue 
                                                            idx = 0
                                                            while uint8(idx) < 4:
                                                                s = idx + 1
                                                                while uint8(s) < 5:
                                                                    require uint8(idx) < 5
                                                                    if mem[(32 * uint8(idx)) + 447 len 1] == mem[(32 * uint8(s)) + 447 len 1]:
                                                                        require uint8(s) < 5
                                                                        mem[(32 * uint8(s)) + 416] = uint8(mem[(32 * uint8(s)) + 416] + 1)
                                                                    s = s + 1
                                                                    continue 
                                                                idx = idx + 1
                                                                continue 
                                                            mem[576 len 160] = code.data[6880 len 160]
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
                                                                    _4158 = mem[(32 * t) + 416]
                                                                    require t + 1 < 5
                                                                    require t < 5
                                                                    mem[(32 * t) + 416] = mem[(32 * t + 1) + 447 len 1]
                                                                    require t + 1 < 5
                                                                    mem[(32 * t + 1) + 416] = uint8(_4158)
                                                                    t = t + 1
                                                                    u = _4158
                                                                    continue 
                                                                idx = idx + 1
                                                                s = u
                                                                continue 
                                                            uint256(stor0[stor3].field_512)++
                                                            uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_0) = msg.sender or Mask(96, 160, uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_0))
                                                            uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_256) = uint256(stor0[stor3].field_512)
                                                            s = 0
                                                            idx = 416
                                                            while 576 > idx:
                                                                uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_512) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_512)
                                                                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                                                idx = idx + 32
                                                                continue 
                                                            idx = 5
                                                            s = sha3(uint256(stor0[stor3].field_512), sha3(sub_d960e8de, 0) + 9) + 2
                                                            while idx:
                                                                uint256(stor[s]) = !(255 * 256^idx) and uint256(stor[s])
                                                                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                                                s = (idx + 1 / 32) + s
                                                                continue 
                                                            idx = sha3(uint256(stor0[stor3].field_512), sha3(sub_d960e8de, 0) + 9) + (-3 * None + 3 / 32) + (None * None + 3 / 32) + 2
                                                            while sha3(uint256(stor0[stor3].field_512), sha3(sub_d960e8de, 0) + 9) + 3 > idx:
                                                                uint8(stor[idx]) = 0
                                                                idx = idx + 1
                                                                continue 
                                                            emit 0x90f48102: sub_d960e8de, uint256(stor0[stor3].field_512), msg.sender, mem[416] << 248, mem[448] << 248, mem[480] << 248, mem[512] << 248, mem[575 len 1]
                                                        idx = idx + 1
                                                        continue 
                                                    mem[576 len 160] = code.data[6880 len 160]
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
                                                            _2772 = mem[(32 * t) + 416]
                                                            require t + 1 < 5
                                                            require t < 5
                                                            mem[(32 * t) + 416] = mem[(32 * t + 1) + 447 len 1]
                                                            require t + 1 < 5
                                                            mem[(32 * t + 1) + 416] = uint8(_2772)
                                                            t = t + 1
                                                            u = _2772
                                                            continue 
                                                        idx = idx + 1
                                                        s = u
                                                        continue 
                                                    uint256(stor0[stor3].field_512)++
                                                    uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_0) = msg.sender or Mask(96, 160, uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_0))
                                                    uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_256) = uint256(stor0[stor3].field_512)
                                                    s = 0
                                                    idx = 416
                                                    while 576 > idx:
                                                        uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_512) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_512)
                                                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                                        idx = idx + 32
                                                        continue 
                                                    idx = 5
                                                    s = sha3(uint256(stor0[stor3].field_512), sha3(sub_d960e8de, 0) + 9) + 2
                                                    while idx:
                                                        uint256(stor[s]) = !(255 * 256^idx) and uint256(stor[s])
                                                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                                        s = (idx + 1 / 32) + s
                                                        continue 
                                                    idx = (-3 * None + 3 / 32) + (None * None + 3 / 32) + 2
                                                    while 3 > idx:
                                                        uint8(stor0[stor3][9][uint256(stor0[stor3].field_512)][idx].field_0) = 0
                                                        idx = idx + 1
                                                        continue 
                                                    emit 0x90f48102: sub_d960e8de, uint256(stor0[stor3].field_512), msg.sender, mem[416] << 248, mem[448] << 248, mem[480] << 248, mem[512] << 248, mem[575 len 1]
                                                else:
                                                    idx = 0
                                                    while uint8(idx) < 5:
                                                        mem[(32 * uint8(idx)) + 416] = uint8((block.timestamp + block.hash(block.number + -(2 * idx % 128) - 1) % 36) + 1)
                                                        idx = idx + 1
                                                        continue 
                                                    idx = 0
                                                    while uint8(idx) < 4:
                                                        s = idx + 1
                                                        while uint8(s) < 5:
                                                            require uint8(idx) < 5
                                                            if mem[(32 * uint8(idx)) + 447 len 1] == mem[(32 * uint8(s)) + 447 len 1]:
                                                                require uint8(s) < 5
                                                                mem[(32 * uint8(s)) + 416] = uint8(mem[(32 * uint8(s)) + 416] + 1)
                                                            s = s + 1
                                                            continue 
                                                        idx = idx + 1
                                                        continue 
                                                    mem[576 len 160] = code.data[6880 len 160]
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
                                                            _2228 = mem[(32 * t) + 416]
                                                            require t + 1 < 5
                                                            require t < 5
                                                            mem[(32 * t) + 416] = mem[(32 * t + 1) + 447 len 1]
                                                            require t + 1 < 5
                                                            mem[(32 * t + 1) + 416] = uint8(_2228)
                                                            t = t + 1
                                                            u = _2228
                                                            continue 
                                                        idx = idx + 1
                                                        s = u
                                                        continue 
                                                    uint256(stor0[stor3].field_512)++
                                                    uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_0) = msg.sender or Mask(96, 160, uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_0))
                                                    uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_256) = uint256(stor0[stor3].field_512)
                                                    s = 0
                                                    idx = 416
                                                    while 576 > idx:
                                                        uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_512) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor0[stor3][9][uint256(stor0[stor3].field_512)].field_512)
                                                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                                        idx = idx + 32
                                                        continue 
                                                    idx = 5
                                                    s = sha3(uint256(stor0[stor3].field_512), sha3(sub_d960e8de, 0) + 9) + 2
                                                    while idx:
                                                        uint256(stor[s]) = !(255 * 256^idx) and uint256(stor[s])
                                                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                                        s = (idx + 1 / 32) + s
                                                        continue 
                                                    idx = (-3 * None + 3 / 32) + (None * None + 3 / 32) + 2
                                                    while 3 > idx:
                                                        uint8(stor0[stor3][9][uint256(stor0[stor3].field_512)][idx].field_0) = 0
                                                        idx = idx + 1
                                                        continue 
                                                    mem[832] = mem[447 len 1]
                                                    mem[864] = mem[479 len 1]
                                                    mem[896] = mem[511 len 1]
                                                    mem[928] = mem[543 len 1]
                                                    mem[960] = mem[575 len 1]
                                                    emit 0x90f48102: sub_d960e8de, uint256(stor0[stor3].field_512), msg.sender, mem[832 len 160]
        else:
            if not sub_d960e8de:
                sub_d960e8de = 1
                uint256(stor0[1].field_0) = block.timestamp
                storADA5 = 1
                stor1.length = block.timestamp
            else:
                mem[0] = sub_d960e8de
                if uint8(stor0[stor3].field_2048) != 1:
                    uint8(stor0[stor3].field_2048) = 1
                else:
                    mem[64] = 256
                    mem[96 len 160] = code.data[6880 len 160]
                    if stor6:
                        mem[64] = 416
                        mem[256] = uint8(stor0[stor3].field_256)
                        idx = 256
                        s = 0
                        while 416 > idx + 32:
                            mem[idx + 32] = stor1[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                            idx = idx + 32
                            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                            continue 
                        mem[0] = sub_d960e8de
                        mem[32] = 0
                        if (30 * stor6) + 30 <= uint256(stor0[stor3].field_512):
                            idx = (30 * stor6) + 1
                            s = 0
                            t = 0
                            while idx <= (30 * stor6) + 30:
                                mem[0] = idx
                                mem[32] = sha3(sub_d960e8de, 0) + 9
                                _866 = mem[64]
                                mem[64] = mem[64] + 160
                                mem[_866] = uint8(stor0[stor3][9][idx].field_512)
                                t = _866
                                u = 0
                                while _866 + 160 > t + 32:
                                    mem[t + 32] = stor2[-(0.03125 / u + 1) + u + (-1 * 0.03125 / u + 1 * u) + 1]
                                    t = t + 32
                                    u = -(u + 1 / 32) + u + (-1 * u + 1 / 32 * u) + 1
                                    continue 
                                t = 0
                                u = 0
                                while uint8(t) < 5:
                                    idx = 0
                                    while uint8(idx) < 5:
                                        if mem[(32 * uint8(idx)) + 287 len 1] != mem[(32 * uint8(idx)) + _866 + 31 len 1]:
                                            idx = idx + 1
                                            continue 
                                        else:
                                            idx = idx + 1
                                            u = u + 1
                                            continue 
                                    idx = idx + 1
                                    u = u
                                    continue 
                                if uint8(u) != 2:
                                    if uint8(u) != 3:
                                        if uint8(u) != 4:
                                            if uint8(u) != 5:
                                                idx = idx + 1
                                                s = s
                                                t = u
                                                continue 
                                            else:
                                                idx = idx + 1
                                                s = s
                                                t = u
                                                continue 
                                        else:
                                            idx = idx + 1
                                            s = s
                                            t = u
                                            continue 
                                    else:
                                        idx = idx + 1
                                        s = s
                                        t = u
                                        continue 
                                else:
                                    idx = idx + 1
                                    s = s + 1
                                    t = u
                                    continue 
                            if s:
                                stor7 += s
                            if (30 * stor6) + 30 != uint256(stor0[stor3].field_512):
                                stor6++
                            else:
                                if not stor7:
                                    if not stor8:
                                        if not stor9:
                                            if not stor10:
                                                stor2.length = (35 * uint256(stor0[stor3].field_768) / 100) + (30 * uint256(stor0[stor3].field_768) / 100) + (20 * uint256(stor0[stor3].field_768) / 100) + stor2.length + (15 * uint256(stor0[stor3].field_768) / 100)
                                            else:
                                                require stor10
                                                uint256(stor0[stor3].field_1792) = (35 * uint256(stor0[stor3].field_768) / 100) + (30 * uint256(stor0[stor3].field_768) / 100) + (20 * uint256(stor0[stor3].field_768) / 100) + stor2.length + (15 * uint256(stor0[stor3].field_768) / 100) / stor10
                                                stor2.length = 0
                                                stor4 = 0
                                        else:
                                            require stor9
                                            uint256(stor0[stor3].field_1536) = 35 * uint256(stor0[stor3].field_768) / 100 / stor9
                                            if not stor10:
                                                stor2.length = (30 * uint256(stor0[stor3].field_768) / 100) + (20 * uint256(stor0[stor3].field_768) / 100) + stor2.length + (15 * uint256(stor0[stor3].field_768) / 100)
                                            else:
                                                require stor10
                                                uint256(stor0[stor3].field_1792) = (30 * uint256(stor0[stor3].field_768) / 100) + (20 * uint256(stor0[stor3].field_768) / 100) + stor2.length + (15 * uint256(stor0[stor3].field_768) / 100) / stor10
                                                stor2.length = 0
                                                stor4 = 0
                                    else:
                                        require stor8
                                        uint256(stor0[stor3].field_1280) = 30 * uint256(stor0[stor3].field_768) / 100 / stor8
                                        if not stor9:
                                            if not stor10:
                                                stor2.length = (35 * uint256(stor0[stor3].field_768) / 100) + (20 * uint256(stor0[stor3].field_768) / 100) + stor2.length + (15 * uint256(stor0[stor3].field_768) / 100)
                                            else:
                                                require stor10
                                                uint256(stor0[stor3].field_1792) = (35 * uint256(stor0[stor3].field_768) / 100) + (20 * uint256(stor0[stor3].field_768) / 100) + stor2.length + (15 * uint256(stor0[stor3].field_768) / 100) / stor10
                                                stor2.length = 0
                                                stor4 = 0
                                        else:
                                            require stor9
                                            uint256(stor0[stor3].field_1536) = 35 * uint256(stor0[stor3].field_768) / 100 / stor9
                                            if not stor10:
                                                stor2.length = (20 * uint256(stor0[stor3].field_768) / 100) + stor2.length + (15 * uint256(stor0[stor3].field_768) / 100)
                                            else:
                                                require stor10
                                                uint256(stor0[stor3].field_1792) = (20 * uint256(stor0[stor3].field_768) / 100) + stor2.length + (15 * uint256(stor0[stor3].field_768) / 100) / stor10
                                                stor2.length = 0
                                                stor4 = 0
                                else:
                                    require stor7
                                    uint256(stor0[stor3].field_1024) = 20 * uint256(stor0[stor3].field_768) / 100 / stor7
                                    if not stor8:
                                        if not stor9:
                                            if not stor10:
                                                stor2.length = (35 * uint256(stor0[stor3].field_768) / 100) + (30 * uint256(stor0[stor3].field_768) / 100) + stor2.length + (15 * uint256(stor0[stor3].field_768) / 100)
                                            else:
                                                require stor10
                                                uint256(stor0[stor3].field_1792) = (35 * uint256(stor0[stor3].field_768) / 100) + (30 * uint256(stor0[stor3].field_768) / 100) + stor2.length + (15 * uint256(stor0[stor3].field_768) / 100) / stor10
                                                stor2.length = 0
                                                stor4 = 0
                                        else:
                                            require stor9
                                            uint256(stor0[stor3].field_1536) = 35 * uint256(stor0[stor3].field_768) / 100 / stor9
                                            if not stor10:
                                                stor2.length = (30 * uint256(stor0[stor3].field_768) / 100) + stor2.length + (15 * uint256(stor0[stor3].field_768) / 100)
                                            else:
                                                require stor10
                                                uint256(stor0[stor3].field_1792) = (30 * uint256(stor0[stor3].field_768) / 100) + stor2.length + (15 * uint256(stor0[stor3].field_768) / 100) / stor10
                                                stor2.length = 0
                                                stor4 = 0
                                    else:
                                        require stor8
                                        uint256(stor0[stor3].field_1280) = 30 * uint256(stor0[stor3].field_768) / 100 / stor8
                                        if not stor9:
                                            if not stor10:
                                                stor2.length = (35 * uint256(stor0[stor3].field_768) / 100) + stor2.length + (15 * uint256(stor0[stor3].field_768) / 100)
                                            else:
                                                require stor10
                                                uint256(stor0[stor3].field_1792) = (35 * uint256(stor0[stor3].field_768) / 100) + stor2.length + (15 * uint256(stor0[stor3].field_768) / 100) / stor10
                                                stor2.length = 0
                                                stor4 = 0
                                        else:
                                            require stor9
                                            uint256(stor0[stor3].field_1536) = 35 * uint256(stor0[stor3].field_768) / 100 / stor9
                                            if not stor10:
                                                stor2.length += 15 * uint256(stor0[stor3].field_768) / 100
                                            else:
                                                require stor10
                                                uint256(stor0[stor3].field_1792) = stor2.length + (15 * uint256(stor0[stor3].field_768) / 100) / stor10
                                                stor2.length = 0
                                                stor4 = 0
                                emit 0x601efe55: stor2.length
                                sub_d960e8de++
                                uint256(stor0[stor3 + 1].field_0) = block.timestamp
                                emit NewGame(sub_d960e8de);
                                stor6 = 0
                                call 0xcd66911b6f38faaf5bfee427b3ceb7d18dd09f78 with:
                                   value stor5 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                stor5 = 0
                        else:
                            mem[0] = sub_d960e8de
                            mem[32] = 0
                            idx = (30 * stor6) + 1
                            s = 0
                            t = 0
                            while idx <= uint256(stor0[stor3].field_512):
                                mem[0] = idx
                                mem[32] = sha3(sub_d960e8de, 0) + 9
                                _869 = mem[64]
                                mem[64] = mem[64] + 160
                                mem[_869] = uint8(stor0[stor3][9][idx].field_512)
                                t = _869
                                u = 0
                                while _869 + 160 > t + 32:
                                    mem[t + 32] = stor2[-(0.03125 / u + 1) + u + (-1 * 0.03125 / u + 1 * u) + 1]
                                    t = t + 32
                                    u = -(u + 1 / 32) + u + (-1 * u + 1 / 32 * u) + 1
                                    continue 
                                t = 0
                                u = 0
                                while uint8(t) < 5:
                                    idx = 0
                                    while uint8(idx) < 5:
                                        if mem[(32 * uint8(idx)) + 287 len 1] != mem[(32 * uint8(idx)) + _869 + 31 len 1]:
                                            idx = idx + 1
                                            continue 
                                        else:
                                            idx = idx + 1
                                            u = u + 1
                                            continue 
                                    idx = idx + 1
                                    u = u
                                    continue 
                                if uint8(u) != 2:
                                    if uint8(u) != 3:
                                        if uint8(u) != 4:
                                            if uint8(u) != 5:
                                                idx = idx + 1
                                                s = s
                                                t = u
                                                continue 
                                            else:
                                                idx = idx + 1
                                                s = s
                                                t = u
                                                continue 
                                        else:
                                            idx = idx + 1
                                            s = s
                                            t = u
                                            continue 
                                    else:
                                        idx = idx + 1
                                        s = s
                                        t = u
                                        continue 
                                else:
                                    idx = idx + 1
                                    s = s + 1
                                    t = u
                                    continue 
                            if s:
                                stor7 += s
                            if uint256(stor0[stor3].field_512) != uint256(stor0[stor3].field_512):
                                stor6++
                            else:
                                if not stor7:
                                    if not stor8:
                                        if not stor9:
                                            if not stor10:
                                                stor2.length = (35 * uint256(stor0[stor3].field_768) / 100) + (30 * uint256(stor0[stor3].field_768) / 100) + (20 * uint256(stor0[stor3].field_768) / 100) + stor2.length + (15 * uint256(stor0[stor3].field_768) / 100)
                                            else:
                                                require stor10
                                                uint256(stor0[stor3].field_1792) = (35 * uint256(stor0[stor3].field_768) / 100) + (30 * uint256(stor0[stor3].field_768) / 100) + (20 * uint256(stor0[stor3].field_768) / 100) + stor2.length + (15 * uint256(stor0[stor3].field_768) / 100) / stor10
                                                stor2.length = 0
                                                stor4 = 0
                                        else:
                                            require stor9
                                            uint256(stor0[stor3].field_1536) = 35 * uint256(stor0[stor3].field_768) / 100 / stor9
                                            if not stor10:
                                                stor2.length = (30 * uint256(stor0[stor3].field_768) / 100) + (20 * uint256(stor0[stor3].field_768) / 100) + stor2.length + (15 * uint256(stor0[stor3].field_768) / 100)
                                            else:
                                                require stor10
                                                uint256(stor0[stor3].field_1792) = (30 * uint256(stor0[stor3].field_768) / 100) + (20 * uint256(stor0[stor3].field_768) / 100) + stor2.length + (15 * uint256(stor0[stor3].field_768) / 100) / stor10
                                                stor2.length = 0
                                                stor4 = 0
                                    else:
                                        require stor8
                                        uint256(stor0[stor3].field_1280) = 30 * uint256(stor0[stor3].field_768) / 100 / stor8
                                        if not stor9:
                                            if not stor10:
                                                stor2.length = (35 * uint256(stor0[stor3].field_768) / 100) + (20 * uint256(stor0[stor3].field_768) / 100) + stor2.length + (15 * uint256(stor0[stor3].field_768) / 100)
                                            else:
                                                require stor10
                                                uint256(stor0[stor3].field_1792) = (35 * uint256(stor0[stor3].field_768) / 100) + (20 * uint256(stor0[stor3].field_768) / 100) + stor2.length + (15 * uint256(stor0[stor3].field_768) / 100) / stor10
                                                stor2.length = 0
                                                stor4 = 0
                                        else:
                                            require stor9
                                            uint256(stor0[stor3].field_1536) = 35 * uint256(stor0[stor3].field_768) / 100 / stor9
                                            if not stor10:
                                                stor2.length = (20 * uint256(stor0[stor3].field_768) / 100) + stor2.length + (15 * uint256(stor0[stor3].field_768) / 100)
                                            else:
                                                require stor10
                                                uint256(stor0[stor3].field_1792) = (20 * uint256(stor0[stor3].field_768) / 100) + stor2.length + (15 * uint256(stor0[stor3].field_768) / 100) / stor10
                                                stor2.length = 0
                                                stor4 = 0
                                else:
                                    require stor7
                                    uint256(stor0[stor3].field_1024) = 20 * uint256(stor0[stor3].field_768) / 100 / stor7
                                    if not stor8:
                                        if not stor9:
                                            if not stor10:
                                                stor2.length = (35 * uint256(stor0[stor3].field_768) / 100) + (30 * uint256(stor0[stor3].field_768) / 100) + stor2.length + (15 * uint256(stor0[stor3].field_768) / 100)
                                            else:
                                                require stor10
                                                uint256(stor0[stor3].field_1792) = (35 * uint256(stor0[stor3].field_768) / 100) + (30 * uint256(stor0[stor3].field_768) / 100) + stor2.length + (15 * uint256(stor0[stor3].field_768) / 100) / stor10
                                                stor2.length = 0
                                                stor4 = 0
                                        else:
                                            require stor9
                                            uint256(stor0[stor3].field_1536) = 35 * uint256(stor0[stor3].field_768) / 100 / stor9
                                            if not stor10:
                                                stor2.length = (30 * uint256(stor0[stor3].field_768) / 100) + stor2.length + (15 * uint256(stor0[stor3].field_768) / 100)
                                            else:
                                                require stor10
                                                uint256(stor0[stor3].field_1792) = (30 * uint256(stor0[stor3].field_768) / 100) + stor2.length + (15 * uint256(stor0[stor3].field_768) / 100) / stor10
                                                stor2.length = 0
                                                stor4 = 0
                                    else:
                                        require stor8
                                        uint256(stor0[stor3].field_1280) = 30 * uint256(stor0[stor3].field_768) / 100 / stor8
                                        if not stor9:
                                            if not stor10:
                                                stor2.length = (35 * uint256(stor0[stor3].field_768) / 100) + stor2.length + (15 * uint256(stor0[stor3].field_768) / 100)
                                            else:
                                                require stor10
                                                uint256(stor0[stor3].field_1792) = (35 * uint256(stor0[stor3].field_768) / 100) + stor2.length + (15 * uint256(stor0[stor3].field_768) / 100) / stor10
                                                stor2.length = 0
                                                stor4 = 0
                                        else:
                                            require stor9
                                            uint256(stor0[stor3].field_1536) = 35 * uint256(stor0[stor3].field_768) / 100 / stor9
                                            if not stor10:
                                                stor2.length += 15 * uint256(stor0[stor3].field_768) / 100
                                            else:
                                                require stor10
                                                uint256(stor0[stor3].field_1792) = stor2.length + (15 * uint256(stor0[stor3].field_768) / 100) / stor10
                                                stor2.length = 0
                                                stor4 = 0
                                emit 0x601efe55: stor2.length
                                sub_d960e8de++
                                uint256(stor0[stor3 + 1].field_0) = block.timestamp
                                emit NewGame(sub_d960e8de);
                                stor6 = 0
                                call 0xcd66911b6f38faaf5bfee427b3ceb7d18dd09f78 with:
                                   value stor5 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                stor5 = 0
                    else:
                        stor7 = 0
                        stor8 = 0
                        stor9 = 0
                        stor10 = 0
                        idx = 0
                        while uint8(idx) < 5:
                            mem[(32 * uint8(idx)) + 96] = uint8((block.timestamp + block.hash(block.number + -(2 * idx % 128) - 1) % 36) + 1)
                            idx = idx + 1
                            continue 
                        _392 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_392 len 160] = code.data[6880 len 160]
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
                                _963 = mem[(32 * t) + 96]
                                require t + 1 < 5
                                require t < 5
                                mem[(32 * t) + 96] = mem[(32 * t + 1) + 127 len 1]
                                require t + 1 < 5
                                mem[(32 * t + 1) + 96] = uint8(_963)
                                t = t + 1
                                u = _963
                                continue 
                            idx = idx + 1
                            s = u
                            continue 
                        idx = 0
                        while uint8(idx) < 4:
                            s = idx + 1
                            while uint8(s) < 5:
                                require uint8(idx) < 5
                                if mem[(32 * uint8(idx)) + 127 len 1] == mem[(32 * uint8(s)) + 127 len 1]:
                                    require uint8(s) < 5
                                    mem[(32 * uint8(s)) + 96] = uint8(mem[(32 * uint8(s)) + 96] + 1)
                                s = s + 1
                                continue 
                            idx = idx + 1
                            continue 
                        mem[0] = sub_d960e8de
                        mem[32] = 0
                        s = 0
                        idx = 96
                        while 256 > idx:
                            uint256(stor0[stor3].field_256) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor0[stor3].field_256)
                            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                            idx = idx + 32
                            continue 
                        idx = 5
                        s = sha3(sub_d960e8de, 0) + 1
                        while idx:
                            uint256(stor[s]) = !(255 * 256^idx) and uint256(stor[s])
                            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                            s = (idx + 1 / 32) + s
                            continue 
                        idx = (-3 * None + 3 / 32) + (None * None + 3 / 32) + 1
                        while 2 > idx:
                            uint8(stor0[stor3][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        _3325 = mem[96]
                        _3326 = mem[128]
                        _3327 = mem[160]
                        _3328 = mem[192]
                        _3329 = mem[224]
                        mem[mem[64]] = sub_d960e8de
                        mem[mem[64] + 32] = uint8(_3325)
                        mem[mem[64] + 64] = uint8(_3326)
                        mem[mem[64] + 96] = uint8(_3327)
                        mem[mem[64] + 128] = uint8(_3328)
                        mem[mem[64] + 160] = uint8(_3329)
                        emit 0xb8590059: sub_d960e8de, _3325 << 248, _3326 << 248, _3327 << 248, _3328 << 248, uint8(_3329)
                        mem[0] = sub_d960e8de
                        mem[32] = 0
                        if (30 * stor6) + 30 <= uint256(stor0[stor3].field_512):
                            idx = (30 * stor6) + 1
                            s = 0
                            t = 0
                            while idx <= (30 * stor6) + 30:
                                mem[0] = idx
                                mem[32] = sha3(sub_d960e8de, 0) + 9
                                _4138 = mem[64]
                                mem[64] = mem[64] + 160
                                mem[_4138] = uint8(stor0[stor3][9][idx].field_512)
                                t = _4138
                                u = 0
                                while _4138 + 160 > t + 32:
                                    mem[t + 32] = stor2[-(0.03125 / u + 1) + u + (-1 * 0.03125 / u + 1 * u) + 1]
                                    t = t + 32
                                    u = -(u + 1 / 32) + u + (-1 * u + 1 / 32 * u) + 1
                                    continue 
                                t = 0
                                u = 0
                                while uint8(t) < 5:
                                    idx = 0
                                    while uint8(idx) < 5:
                                        if mem[(32 * uint8(idx)) + 127 len 1] != mem[(32 * uint8(idx)) + _4138 + 31 len 1]:
                                            idx = idx + 1
                                            continue 
                                        else:
                                            idx = idx + 1
                                            u = u + 1
                                            continue 
                                    idx = idx + 1
                                    u = u
                                    continue 
                                if uint8(u) != 2:
                                    if uint8(u) != 3:
                                        if uint8(u) != 4:
                                            if uint8(u) != 5:
                                                idx = idx + 1
                                                s = s
                                                t = u
                                                continue 
                                            else:
                                                idx = idx + 1
                                                s = s
                                                t = u
                                                continue 
                                        else:
                                            idx = idx + 1
                                            s = s
                                            t = u
                                            continue 
                                    else:
                                        idx = idx + 1
                                        s = s
                                        t = u
                                        continue 
                                else:
                                    idx = idx + 1
                                    s = s + 1
                                    t = u
                                    continue 
                            if s:
                                stor7 += s
                            if (30 * stor6) + 30 != uint256(stor0[stor3].field_512):
                                stor6++
                            else:
                                if not stor7:
                                    if not stor8:
                                        if not stor9:
                                            if not stor10:
                                                stor2.length = (35 * uint256(stor0[stor3].field_768) / 100) + (30 * uint256(stor0[stor3].field_768) / 100) + (20 * uint256(stor0[stor3].field_768) / 100) + stor2.length + (15 * uint256(stor0[stor3].field_768) / 100)
                                            else:
                                                require stor10
                                                uint256(stor0[stor3].field_1792) = (35 * uint256(stor0[stor3].field_768) / 100) + (30 * uint256(stor0[stor3].field_768) / 100) + (20 * uint256(stor0[stor3].field_768) / 100) + stor2.length + (15 * uint256(stor0[stor3].field_768) / 100) / stor10
                                                stor2.length = 0
                                                stor4 = 0
                                        else:
                                            require stor9
                                            uint256(stor0[stor3].field_1536) = 35 * uint256(stor0[stor3].field_768) / 100 / stor9
                                            if not stor10:
                                                stor2.length = (30 * uint256(stor0[stor3].field_768) / 100) + (20 * uint256(stor0[stor3].field_768) / 100) + stor2.length + (15 * uint256(stor0[stor3].field_768) / 100)
                                            else:
                                                require stor10
                                                uint256(stor0[stor3].field_1792) = (30 * uint256(stor0[stor3].field_768) / 100) + (20 * uint256(stor0[stor3].field_768) / 100) + stor2.length + (15 * uint256(stor0[stor3].field_768) / 100) / stor10
                                                stor2.length = 0
                                                stor4 = 0
                                    else:
                                        require stor8
                                        uint256(stor0[stor3].field_1280) = 30 * uint256(stor0[stor3].field_768) / 100 / stor8
                                        if not stor9:
                                            if not stor10:
                                                stor2.length = (35 * uint256(stor0[stor3].field_768) / 100) + (20 * uint256(stor0[stor3].field_768) / 100) + stor2.length + (15 * uint256(stor0[stor3].field_768) / 100)
                                            else:
                                                require stor10
                                                uint256(stor0[stor3].field_1792) = (35 * uint256(stor0[stor3].field_768) / 100) + (20 * uint256(stor0[stor3].field_768) / 100) + stor2.length + (15 * uint256(stor0[stor3].field_768) / 100) / stor10
                                                stor2.length = 0
                                                stor4 = 0
                                        else:
                                            require stor9
                                            uint256(stor0[stor3].field_1536) = 35 * uint256(stor0[stor3].field_768) / 100 / stor9
                                            if not stor10:
                                                stor2.length = (20 * uint256(stor0[stor3].field_768) / 100) + stor2.length + (15 * uint256(stor0[stor3].field_768) / 100)
                                            else:
                                                require stor10
                                                uint256(stor0[stor3].field_1792) = (20 * uint256(stor0[stor3].field_768) / 100) + stor2.length + (15 * uint256(stor0[stor3].field_768) / 100) / stor10
                                                stor2.length = 0
                                                stor4 = 0
                                else:
                                    require stor7
                                    uint256(stor0[stor3].field_1024) = 20 * uint256(stor0[stor3].field_768) / 100 / stor7
                                    if not stor8:
                                        if not stor9:
                                            if not stor10:
                                                stor2.length = (35 * uint256(stor0[stor3].field_768) / 100) + (30 * uint256(stor0[stor3].field_768) / 100) + stor2.length + (15 * uint256(stor0[stor3].field_768) / 100)
                                            else:
                                                require stor10
                                                uint256(stor0[stor3].field_1792) = (35 * uint256(stor0[stor3].field_768) / 100) + (30 * uint256(stor0[stor3].field_768) / 100) + stor2.length + (15 * uint256(stor0[stor3].field_768) / 100) / stor10
                                                stor2.length = 0
                                                stor4 = 0
                                        else:
                                            require stor9
                                            uint256(stor0[stor3].field_1536) = 35 * uint256(stor0[stor3].field_768) / 100 / stor9
                                            if not stor10:
                                                stor2.length = (30 * uint256(stor0[stor3].field_768) / 100) + stor2.length + (15 * uint256(stor0[stor3].field_768) / 100)
                                            else:
                                                require stor10
                                                uint256(stor0[stor3].field_1792) = (30 * uint256(stor0[stor3].field_768) / 100) + stor2.length + (15 * uint256(stor0[stor3].field_768) / 100) / stor10
                                                stor2.length = 0
                                                stor4 = 0
                                    else:
                                        require stor8
                                        uint256(stor0[stor3].field_1280) = 30 * uint256(stor0[stor3].field_768) / 100 / stor8
                                        if not stor9:
                                            if not stor10:
                                                stor2.length = (35 * uint256(stor0[stor3].field_768) / 100) + stor2.length + (15 * uint256(stor0[stor3].field_768) / 100)
                                            else:
                                                require stor10
                                                uint256(stor0[stor3].field_1792) = (35 * uint256(stor0[stor3].field_768) / 100) + stor2.length + (15 * uint256(stor0[stor3].field_768) / 100) / stor10
                                                stor2.length = 0
                                                stor4 = 0
                                        else:
                                            require stor9
                                            uint256(stor0[stor3].field_1536) = 35 * uint256(stor0[stor3].field_768) / 100 / stor9
                                            if not stor10:
                                                stor2.length += 15 * uint256(stor0[stor3].field_768) / 100
                                            else:
                                                require stor10
                                                uint256(stor0[stor3].field_1792) = stor2.length + (15 * uint256(stor0[stor3].field_768) / 100) / stor10
                                                stor2.length = 0
                                                stor4 = 0
                                emit 0x601efe55: stor2.length
                                sub_d960e8de++
                                uint256(stor0[stor3 + 1].field_0) = block.timestamp
                                emit NewGame(sub_d960e8de);
                                stor6 = 0
                                call 0xcd66911b6f38faaf5bfee427b3ceb7d18dd09f78 with:
                                   value stor5 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                stor5 = 0
                        else:
                            mem[0] = sub_d960e8de
                            mem[32] = 0
                            idx = (30 * stor6) + 1
                            s = 0
                            t = 0
                            while idx <= uint256(stor0[stor3].field_512):
                                mem[0] = idx
                                mem[32] = sha3(sub_d960e8de, 0) + 9
                                _4141 = mem[64]
                                mem[64] = mem[64] + 160
                                mem[_4141] = uint8(stor0[stor3][9][idx].field_512)
                                t = _4141
                                u = 0
                                while _4141 + 160 > t + 32:
                                    mem[t + 32] = stor2[-(0.03125 / u + 1) + u + (-1 * 0.03125 / u + 1 * u) + 1]
                                    t = t + 32
                                    u = -(u + 1 / 32) + u + (-1 * u + 1 / 32 * u) + 1
                                    continue 
                                t = 0
                                u = 0
                                while uint8(t) < 5:
                                    idx = 0
                                    while uint8(idx) < 5:
                                        if mem[(32 * uint8(idx)) + 127 len 1] != mem[(32 * uint8(idx)) + _4141 + 31 len 1]:
                                            idx = idx + 1
                                            continue 
                                        else:
                                            idx = idx + 1
                                            u = u + 1
                                            continue 
                                    idx = idx + 1
                                    u = u
                                    continue 
                                if uint8(u) != 2:
                                    if uint8(u) != 3:
                                        if uint8(u) != 4:
                                            if uint8(u) != 5:
                                                idx = idx + 1
                                                s = s
                                                t = u
                                                continue 
                                            else:
                                                idx = idx + 1
                                                s = s
                                                t = u
                                                continue 
                                        else:
                                            idx = idx + 1
                                            s = s
                                            t = u
                                            continue 
                                    else:
                                        idx = idx + 1
                                        s = s
                                        t = u
                                        continue 
                                else:
                                    idx = idx + 1
                                    s = s + 1
                                    t = u
                                    continue 
                            if s:
                                stor7 += s
                            if uint256(stor0[stor3].field_512) != uint256(stor0[stor3].field_512):
                                stor6++
                            else:
                                if not stor7:
                                    if not stor8:
                                        if not stor9:
                                            if not stor10:
                                                stor2.length = (35 * uint256(stor0[stor3].field_768) / 100) + (30 * uint256(stor0[stor3].field_768) / 100) + (20 * uint256(stor0[stor3].field_768) / 100) + stor2.length + (15 * uint256(stor0[stor3].field_768) / 100)
                                            else:
                                                require stor10
                                                uint256(stor0[stor3].field_1792) = (35 * uint256(stor0[stor3].field_768) / 100) + (30 * uint256(stor0[stor3].field_768) / 100) + (20 * uint256(stor0[stor3].field_768) / 100) + stor2.length + (15 * uint256(stor0[stor3].field_768) / 100) / stor10
                                                stor2.length = 0
                                                stor4 = 0
                                        else:
                                            require stor9
                                            uint256(stor0[stor3].field_1536) = 35 * uint256(stor0[stor3].field_768) / 100 / stor9
                                            if not stor10:
                                                stor2.length = (30 * uint256(stor0[stor3].field_768) / 100) + (20 * uint256(stor0[stor3].field_768) / 100) + stor2.length + (15 * uint256(stor0[stor3].field_768) / 100)
                                            else:
                                                require stor10
                                                uint256(stor0[stor3].field_1792) = (30 * uint256(stor0[stor3].field_768) / 100) + (20 * uint256(stor0[stor3].field_768) / 100) + stor2.length + (15 * uint256(stor0[stor3].field_768) / 100) / stor10
                                                stor2.length = 0
                                                stor4 = 0
                                    else:
                                        require stor8
                                        uint256(stor0[stor3].field_1280) = 30 * uint256(stor0[stor3].field_768) / 100 / stor8
                                        if not stor9:
                                            if not stor10:
                                                stor2.length = (35 * uint256(stor0[stor3].field_768) / 100) + (20 * uint256(stor0[stor3].field_768) / 100) + stor2.length + (15 * uint256(stor0[stor3].field_768) / 100)
                                            else:
                                                require stor10
                                                uint256(stor0[stor3].field_1792) = (35 * uint256(stor0[stor3].field_768) / 100) + (20 * uint256(stor0[stor3].field_768) / 100) + stor2.length + (15 * uint256(stor0[stor3].field_768) / 100) / stor10
                                                stor2.length = 0
                                                stor4 = 0
                                        else:
                                            require stor9
                                            uint256(stor0[stor3].field_1536) = 35 * uint256(stor0[stor3].field_768) / 100 / stor9
                                            if not stor10:
                                                stor2.length = (20 * uint256(stor0[stor3].field_768) / 100) + stor2.length + (15 * uint256(stor0[stor3].field_768) / 100)
                                            else:
                                                require stor10
                                                uint256(stor0[stor3].field_1792) = (20 * uint256(stor0[stor3].field_768) / 100) + stor2.length + (15 * uint256(stor0[stor3].field_768) / 100) / stor10
                                                stor2.length = 0
                                                stor4 = 0
                                else:
                                    require stor7
                                    uint256(stor0[stor3].field_1024) = 20 * uint256(stor0[stor3].field_768) / 100 / stor7
                                    if not stor8:
                                        if not stor9:
                                            if not stor10:
                                                stor2.length = (35 * uint256(stor0[stor3].field_768) / 100) + (30 * uint256(stor0[stor3].field_768) / 100) + stor2.length + (15 * uint256(stor0[stor3].field_768) / 100)
                                            else:
                                                require stor10
                                                uint256(stor0[stor3].field_1792) = (35 * uint256(stor0[stor3].field_768) / 100) + (30 * uint256(stor0[stor3].field_768) / 100) + stor2.length + (15 * uint256(stor0[stor3].field_768) / 100) / stor10
                                                stor2.length = 0
                                                stor4 = 0
                                        else:
                                            require stor9
                                            uint256(stor0[stor3].field_1536) = 35 * uint256(stor0[stor3].field_768) / 100 / stor9
                                            if not stor10:
                                                stor2.length = (30 * uint256(stor0[stor3].field_768) / 100) + stor2.length + (15 * uint256(stor0[stor3].field_768) / 100)
                                            else:
                                                require stor10
                                                uint256(stor0[stor3].field_1792) = (30 * uint256(stor0[stor3].field_768) / 100) + stor2.length + (15 * uint256(stor0[stor3].field_768) / 100) / stor10
                                                stor2.length = 0
                                                stor4 = 0
                                    else:
                                        require stor8
                                        uint256(stor0[stor3].field_1280) = 30 * uint256(stor0[stor3].field_768) / 100 / stor8
                                        if not stor9:
                                            if not stor10:
                                                stor2.length = (35 * uint256(stor0[stor3].field_768) / 100) + stor2.length + (15 * uint256(stor0[stor3].field_768) / 100)
                                            else:
                                                require stor10
                                                uint256(stor0[stor3].field_1792) = (35 * uint256(stor0[stor3].field_768) / 100) + stor2.length + (15 * uint256(stor0[stor3].field_768) / 100) / stor10
                                                stor2.length = 0
                                                stor4 = 0
                                        else:
                                            require stor9
                                            uint256(stor0[stor3].field_1536) = 35 * uint256(stor0[stor3].field_768) / 100 / stor9
                                            if not stor10:
                                                stor2.length += 15 * uint256(stor0[stor3].field_768) / 100
                                            else:
                                                require stor10
                                                uint256(stor0[stor3].field_1792) = stor2.length + (15 * uint256(stor0[stor3].field_768) / 100) / stor10
                                                stor2.length = 0
                                                stor4 = 0
                                emit 0x601efe55: stor2.length
                                sub_d960e8de++
                                uint256(stor0[stor3 + 1].field_0) = block.timestamp
                                emit NewGame(sub_d960e8de);
                                stor6 = 0
                                call 0xcd66911b6f38faaf5bfee427b3ceb7d18dd09f78 with:
                                   value stor5 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                stor5 = 0
}



}

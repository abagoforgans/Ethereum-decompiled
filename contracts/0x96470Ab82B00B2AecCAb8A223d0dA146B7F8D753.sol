contract main {




// =====================  Runtime code  =====================


#
#  - sub_64bd2ed0(?)
#  - sub_bca75fe5(?)
#
address owner;
mapping of struct sub_45e8cec2;
array of struct stor2;
uint256 stor3;
mapping of address sub_51d40a48;
uint8 stor5;
mapping of uint8 stor6;
mapping of uint8 stor7;
mapping of struct bonusRate;
array of struct stor9;
uint256 stor10;
mapping of uint256 stor11;
address coinBaseAddress;
uint8 sub_ab99e920; offset 160
uint8 feeRate; offset 168
address mintBaseAddress;
mapping of struct stor14;
array of struct stor15;
uint256 stor16;
uint256 sub_4443c1cb;
uint8 stor18;
uint256 stor18; offset 8
uint256 sub_1fcc495f;

function getAccountLock(address arg1) {
    return bool(stor6[address(arg1)])
}

function sub_1fcc495f(?) {
    return sub_1fcc495f
}

function getMintBase() {
    return mintBaseAddress
}

function sub_4443c1cb(?) {
    return sub_4443c1cb
}

function sub_45e8cec2(?) {
    return sub_45e8cec2[arg1].field_256
}

function sub_51d40a48(?) {
    return sub_51d40a48[address(arg1)]
}

function paused() {
    return bool(stor5)
}

function getFeeRate() {
    return feeRate
}

function owner() {
    return owner
}

function getCoinBase() {
    return coinBaseAddress
}

function sub_ab99e920(?) {
    return sub_ab99e920
}

function getBonusRate(uint256 arg1) {
    return bonusRate[arg1].field_256
}

function sub_fea1bafc(?) {
    return bool(stor7[address(arg1)])
}

function _fallback() payable {
    revert
}

function setPause(bool arg1) {
    require owner == msg.sender
    stor5 = uint8(arg1)
}

function sub_0a9afde5(?) {
    require owner == msg.sender
    if arg1:
        mintBaseAddress = arg1
}

function sub_c96fbb03(?) {
    require owner == msg.sender
    if arg1:
        coinBaseAddress = arg1
}

function sub_5f7d8d56(?) {
    require owner == msg.sender
    if arg1 > 0:
        sub_4443c1cb = arg1
}

function sub_d806bc04(?) {
    require owner == msg.sender
    if arg1 > 0:
        sub_ab99e920 = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function setFeeRate(uint8 arg1) {
    require owner == msg.sender
    if arg1 >= 0:
        if arg1 <= 100:
            feeRate = arg1
}

function sub_ec01ef68(?) {
    if stor11[address(arg1)]:
        return bonusRate[stor11[address(arg1)]].field_256
    return bonusRate[1].field_256
}

function sub_9cc0a36d(?) {
    require owner == msg.sender
    if arg1 > 0:
        uint8(stor18.field_0) = arg1
        Mask(248, 0, stor18.field_8) = 0
}

function sub_52b313be(?) {
    require owner == msg.sender
    stor6[address(arg1)] = uint8(arg2)
    emit 0x61f40d64: address(arg1), arg2
    emit 0xe1d55f7d 
}

function sub_cf695e4d(?) {
    require owner == msg.sender
    stor7[address(arg1)] = uint8(arg2)
    emit 0x4d3966ed: address(arg1), arg2
    emit 0xe1d55f7d 
}

function sub_edc80120(?) {
    require owner == msg.sender
    if stor14[arg1].field_0:
        stor14[arg1].field_0 = 0
        stor14[arg1].field_256 = 0
        require stor14[arg1].field_0 - 1 < stor15.length
        stor15[stor14[arg1].field_0 - 1].field_256 = 1
        stor16--
}

function sub_66f28efa(?) {
    require owner == msg.sender
    if bonusRate[arg1].field_0:
        bonusRate[arg1].field_0 = 0
        bonusRate[arg1].field_256 = 0
        require bonusRate[arg1].field_0 - 1 < stor9.length
        stor9[stor8[arg1].field_0 - 1].field_256 = 1
        stor10--
}

function sub_c868ad41(?) {
    require owner == msg.sender
    if sub_45e8cec2[arg1].field_0:
        sub_45e8cec2[arg1].field_0 = 0
        sub_45e8cec2[arg1].field_256 = 0
        require sub_45e8cec2[arg1].field_0 - 1 < stor2.length
        stor2[stor1[arg1].field_0 - 1].field_256 = 1
        stor3--
}

function sub_a3776d40(?) {
    require owner == msg.sender
    stor11[address(arg1)] = arg2
    if stor11[address(arg1)]:
        emit 0xbcacf013: address(arg1), arg2, bonusRate[stor11[address(arg1)]].field_256
    else:
        emit 0xbcacf013: address(arg1), arg2, bonusRate[1].field_256
    emit 0xe1d55f7d 
}

function sub_66eb0b99(?) {
    require owner == msg.sender
    stor14[arg1].field_256 = arg2
    if stor14[arg1].field_0 <= 0:
        stor15.length++
        if stor15.length > stor15.length + 1:
            idx = 2 * stor15.length + 1
            while 2 * stor15.length > idx:
                stor15[idx].field_0 = 0
                stor15[idx].field_256 = 0
                idx = idx + 2
                continue 
        stor14[arg1].field_0 = stor15.length + 1
        require stor15.length < stor15.length
        stor15[stor15.length].field_0 = arg1
        stor16++
}

function sub_237b8a53(?) {
    require owner == msg.sender
    sub_45e8cec2[arg1].field_256 = arg2
    sub_45e8cec2[arg1].field_416 = 0
    if sub_45e8cec2[arg1].field_0 <= 0:
        stor2.length++
        if stor2.length > stor2.length + 1:
            idx = 2 * stor2.length + 1
            while 2 * stor2.length > idx:
                stor2[idx].field_0 = 0
                stor2[idx].field_256 = 0
                idx = idx + 2
                continue 
        sub_45e8cec2[arg1].field_0 = stor2.length + 1
        require stor2.length < stor2.length
        stor2[stor2.length].field_0 = arg1
        stor3++
}

function setBonusRate(uint256 arg1, uint256 arg2) {
    require owner == msg.sender
    bonusRate[arg1].field_256 = arg2
    if bonusRate[arg1].field_0 <= 0:
        stor9.length++
        if stor9.length > stor9.length + 1:
            idx = 2 * stor9.length + 1
            while 2 * stor9.length > idx:
                stor9[idx].field_0 = 0
                stor9[idx].field_256 = 0
                idx = idx + 2
                continue 
        bonusRate[arg1].field_0 = stor9.length + 1
        require stor9.length < stor9.length
        stor9[stor9.length].field_0 = arg1
        stor10++
    emit 0xb875666a: arg1, arg2
    emit 0xe1d55f7d 
}

function sub_8f9e1a5d(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = mem[ceil32(arg1.length) + floor32(arg1.length) + 128] and 256^(-(arg1.length % 32) + 32) - 1 or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + 128] = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function sub_333c3ec5(?) {
    mem[96] = stor10
    if not stor10:
        mem[(32 * stor10) + 128] = stor10
        mem[64] = (64 * stor10) + 160
        if var13002 >= stor9.length:
            if var34001:
                require var38001 < stor9.length
                mem[32] = 8
                require var42006 < stor10
                mem[(32 * var44001) + 128] = var44003
                require var44007 < stor10
                mem[(32 * stor10) + (32 * var44007) + 160] = var44005
                if var37002 >= stor9.length:
                    if stor9.length > var37002:
                        require var37002 < stor9.length
                        mem[0] = stor9[var37002].field_0
                        mem[32] = 8
                        require var44007 + 1 < stor10
                        var44001 = var44007 + 1
                        var44003 = stor9[var37002].field_0
                        var44004 = stor9[var37002].field_0
                        var44005 = bonusRate[stor9[var37002].field_0].field_256
                        var44006 = var37002
                        var44007 = var44007 + 1
                        continue 
                else:
                    require var39003 < stor9.length
                    mem[0] = 9
                    if not var43001:
                        if stor9.length > var43003:
                            require var43003 < stor9.length
                            mem[0] = stor9[var43003].field_0
                            mem[32] = 8
                            require var44007 + 1 < stor10
                            var44001 = var44007 + 1
                            var44003 = stor9[var43003].field_0
                            var44004 = stor9[var43003].field_0
                            var44005 = bonusRate[stor9[var43003].field_0].field_256
                            var44006 = var43003
                            var44007 = var44007 + 1
                            continue 
                    else:
                        idx = var43003
                        while idx + 1 < stor9.length:
                            mem[0] = 9
                            if stor9[idx + 1].field_256:
                                idx = idx + 1
                                continue 
                            if stor9.length > idx + 1:
                                require idx + 1 < stor9.length
                                mem[0] = stor9[idx + 1].field_0
                                mem[32] = 8
                                require var44007 + 1 < stor10
                                var44001 = var44007 + 1
                                var44003 = stor9[idx + 1].field_0
                                var44004 = stor9[idx + 1].field_0
                                var44005 = bonusRate[stor9[idx + 1].field_0].field_256
                                var44006 = idx + 1
                                var44007 = var44007 + 1
                                continue 
                            mem[(64 * stor10) + 160] = 64
                            mem[(64 * stor10) + 224] = stor10
                            idx = 0
                            while idx < 32 * stor10:
                                mem[idx + (64 * stor10) + 256] = mem[idx + 128]
                                idx = idx + 32
                                continue 
                            mem[(64 * stor10) + 192] = (32 * stor10) + 96
                            mem[(98 * stor10) + 256] = mem[(32 * stor10) + 128]
                            idx = 0
                            while idx < 32 * mem[(32 * stor10) + 128]:
                                mem[idx + (98 * stor10) + 288] = mem[idx + (32 * stor10) + 160]
                                idx = idx + 32
                                continue 
                            return memory
                              from (64 * stor10) + 160
                               len (32 * mem[(32 * stor10) + 128]) + (160 * stor10) + 128
                        if stor9.length > idx + 1:
                            require idx + 1 < stor9.length
                            mem[0] = stor9[idx + 1].field_0
                            mem[32] = 8
                            require var44007 + 1 < stor10
                            var44001 = var44007 + 1
                            var44003 = stor9[idx + 1].field_0
                            var44004 = stor9[idx + 1].field_0
                            var44005 = bonusRate[stor9[idx + 1].field_0].field_256
                            var44006 = idx + 1
                            var44007 = var44007 + 1
                            continue 
            mem[(64 * stor10) + 160] = 64
            mem[(64 * stor10) + 224] = stor10
            mem[(64 * stor10) + 256 len floor32(stor10)] = mem[128 len floor32(stor10)]
            mem[(64 * stor10) + 192] = (32 * stor10) + 96
            mem[(98 * stor10) + 256] = stor10
            mem[(98 * stor10) + 288 len floor32(stor10)] = mem[(32 * stor10) + 160 len floor32(stor10)]
            return memory
              from (64 * stor10) + 160
               len (193 * stor10) + 128
        require var15003 < stor9.length
        mem[0] = 9
        if not var19001:
            if var39001:
                require var43001 < stor9.length
                mem[32] = 8
                require var47006 < stor10
                mem[(32 * var49001) + 128] = var49003
                require var49007 < stor10
                mem[(32 * stor10) + (32 * var49007) + 160] = var49005
                if var42002 >= stor9.length:
                    if stor9.length > var42002:
                        require var42002 < stor9.length
                        mem[0] = stor9[var42002].field_0
                        mem[32] = 8
                        require var49007 + 1 < stor10
                        var49001 = var49007 + 1
                        var49003 = stor9[var42002].field_0
                        var49004 = stor9[var42002].field_0
                        var49005 = bonusRate[stor9[var42002].field_0].field_256
                        var49006 = var42002
                        var49007 = var49007 + 1
                        continue 
                else:
                    require var44003 < stor9.length
                    mem[0] = 9
                    if not var48001:
                        if stor9.length > var48003:
                            require var48003 < stor9.length
                            mem[0] = stor9[var48003].field_0
                            mem[32] = 8
                            require var49007 + 1 < stor10
                            var49001 = var49007 + 1
                            var49003 = stor9[var48003].field_0
                            var49004 = stor9[var48003].field_0
                            var49005 = bonusRate[stor9[var48003].field_0].field_256
                            var49006 = var48003
                            var49007 = var49007 + 1
                            continue 
                    else:
                        idx = var48003
                        while idx + 1 < stor9.length:
                            mem[0] = 9
                            if stor9[idx + 1].field_256:
                                idx = idx + 1
                                continue 
                            if stor9.length > idx + 1:
                                require idx + 1 < stor9.length
                                mem[0] = stor9[idx + 1].field_0
                                mem[32] = 8
                                require var49007 + 1 < stor10
                                var49001 = var49007 + 1
                                var49003 = stor9[idx + 1].field_0
                                var49004 = stor9[idx + 1].field_0
                                var49005 = bonusRate[stor9[idx + 1].field_0].field_256
                                var49006 = idx + 1
                                var49007 = var49007 + 1
                                continue 
                            mem[(64 * stor10) + 160] = 64
                            mem[(64 * stor10) + 224] = stor10
                            idx = 0
                            while idx < 32 * stor10:
                                mem[idx + (64 * stor10) + 256] = mem[idx + 128]
                                idx = idx + 32
                                continue 
                            mem[(64 * stor10) + 192] = (32 * stor10) + 96
                            mem[(98 * stor10) + 256] = mem[(32 * stor10) + 128]
                            idx = 0
                            while idx < 32 * mem[(32 * stor10) + 128]:
                                mem[idx + (98 * stor10) + 288] = mem[idx + (32 * stor10) + 160]
                                idx = idx + 32
                                continue 
                            return memory
                              from (64 * stor10) + 160
                               len (32 * mem[(32 * stor10) + 128]) + (160 * stor10) + 128
                        if stor9.length > idx + 1:
                            require idx + 1 < stor9.length
                            mem[0] = stor9[idx + 1].field_0
                            mem[32] = 8
                            require var49007 + 1 < stor10
                            var49001 = var49007 + 1
                            var49003 = stor9[idx + 1].field_0
                            var49004 = stor9[idx + 1].field_0
                            var49005 = bonusRate[stor9[idx + 1].field_0].field_256
                            var49006 = idx + 1
                            var49007 = var49007 + 1
                            continue 
            mem[(64 * stor10) + 160] = 64
            mem[(64 * stor10) + 224] = stor10
            mem[(64 * stor10) + 256 len floor32(stor10)] = mem[128 len floor32(stor10)]
            mem[(64 * stor10) + 192] = (32 * stor10) + 96
            mem[(98 * stor10) + 256] = stor10
            mem[(98 * stor10) + 288 len floor32(stor10)] = mem[(32 * stor10) + 160 len floor32(stor10)]
            return memory
              from (64 * stor10) + 160
               len (193 * stor10) + 128
        idx = var19003
        while idx + 1 < stor9.length:
            mem[0] = 9
            if stor9[idx + 1].field_256:
                idx = idx + 1
                continue 
            if not var45001:
                _791 = mem[64]
                mem[mem[64]] = 64
                mem[mem[64] + 64] = mem[96]
                _793 = mem[96]
                idx = 0
                while idx < 32 * _793:
                    mem[idx + mem[64] + 96] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                mem[_791 + 32] = (32 * _793) + 96
                mem[(32 * _793) + _791 + 96] = mem[(32 * stor10) + 128]
                _1004 = mem[(32 * stor10) + 128]
                idx = 0
                while idx < 32 * _1004:
                    mem[idx + (32 * _793) + _791 + 128] = mem[idx + (32 * stor10) + 160]
                    idx = idx + 32
                    continue 
                return memory
                  from mem[64]
                   len (32 * _1004) + (32 * _793) + _791 + -mem[64] + 128
            require var49001 < stor9.length
            mem[32] = 8
            require var53006 < mem[96]
            mem[(32 * var55001) + 128] = var55003
            require var55007 < mem[(32 * stor10) + 128]
            mem[(32 * stor10) + (32 * var55007) + 160] = var55005
            if var48002 >= stor9.length:
                if stor9.length > var48002:
                    require var48002 < stor9.length
                    mem[0] = stor9[var48002].field_0
                    mem[32] = 8
                    require var55007 + 1 < mem[96]
                    var55001 = var55007 + 1
                    var55003 = stor9[var48002].field_0
                    var55004 = stor9[var48002].field_0
                    var55005 = bonusRate[stor9[var48002].field_0].field_256
                    var55006 = var48002
                    var55007 = var55007 + 1
                    continue 
                _1983 = mem[64]
                mem[mem[64]] = 64
                mem[mem[64] + 64] = mem[96]
                _1985 = mem[96]
                idx = 0
                while idx < 32 * _1985:
                    mem[idx + mem[64] + 96] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                mem[_1983 + 32] = (32 * _1985) + 96
                mem[(32 * _1985) + _1983 + 96] = mem[(32 * stor10) + 128]
                _2151 = mem[(32 * stor10) + 128]
                idx = 0
                while idx < 32 * _2151:
                    mem[idx + (32 * _1985) + _1983 + 128] = mem[idx + (32 * stor10) + 160]
                    idx = idx + 32
                    continue 
                return memory
                  from mem[64]
                   len (32 * _2151) + (32 * _1985) + _1983 + -mem[64] + 128
            require var50003 < stor9.length
            mem[0] = 9
            if var54001:
                idx = var54003
                while idx + 1 < stor9.length:
                    mem[0] = 9
                    if stor9[idx + 1].field_256:
                        idx = idx + 1
                        continue 
                    if stor9.length <= idx + 1:
                        mem[mem[64]] = 64
                        mem[mem[64] + 64] = mem[96]
                        _2665 = mem[96]
                        idx = 0
                        while idx < 32 * _2665:
                            mem[idx + mem[64] + 96] = mem[idx + 128]
                            idx = idx + 32
                            continue 
                        # nil
                    else:
                        require idx + 1 < stor9.length
                        mem[0] = stor9[idx + 1].field_0
                        mem[32] = 8
                        require var55007 + 1 < mem[96]
                        var55001 = var55007 + 1
                        var55003 = stor9[idx + 1].field_0
                        var55004 = stor9[idx + 1].field_0
                        var55005 = bonusRate[stor9[idx + 1].field_0].field_256
                        var55006 = idx + 1
                        var55007 = var55007 + 1
                        continue 
                if stor9.length <= idx + 1:
                    mem[mem[64]] = 64
                    mem[mem[64] + 64] = mem[96]
                    _2637 = mem[96]
                    idx = 0
                    while idx < 32 * _2637:
                        mem[idx + mem[64] + 96] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    # nil
                else:
                    require idx + 1 < stor9.length
                    mem[0] = stor9[idx + 1].field_0
                    mem[32] = 8
                    require var55007 + 1 < mem[96]
                    var55001 = var55007 + 1
                    var55003 = stor9[idx + 1].field_0
                    var55004 = stor9[idx + 1].field_0
                    var55005 = bonusRate[stor9[idx + 1].field_0].field_256
                    var55006 = idx + 1
                    var55007 = var55007 + 1
                    continue 
            else:
                if stor9.length > var54003:
                    require var54003 < stor9.length
                    mem[0] = stor9[var54003].field_0
                    mem[32] = 8
                    require var55007 + 1 < mem[96]
                    var55001 = var55007 + 1
                    var55003 = stor9[var54003].field_0
                    var55004 = stor9[var54003].field_0
                    var55005 = bonusRate[stor9[var54003].field_0].field_256
                    var55006 = var54003
                    var55007 = var55007 + 1
                    continue 
                _2411 = mem[64]
                mem[mem[64]] = 64
                mem[mem[64] + 64] = mem[96]
                _2413 = mem[96]
                idx = 0
                while idx < 32 * _2413:
                    mem[idx + mem[64] + 96] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                mem[_2411 + 32] = (32 * _2413) + 96
                mem[(32 * _2413) + _2411 + 96] = mem[(32 * stor10) + 128]
                _2596 = mem[(32 * stor10) + 128]
                idx = 0
                while idx < 32 * _2596:
                    mem[idx + (32 * _2413) + _2411 + 128] = mem[idx + (32 * stor10) + 160]
                    idx = idx + 32
                    continue 
                return memory
                  from mem[64]
                   len (32 * _2596) + (32 * _2413) + _2411 + -mem[64] + 128
        if not var43001:
            _788 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[96]
            _790 = mem[96]
            mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 32] = (32 * mem[96]) + 96
            mem[(32 * mem[96]) + _788 + 96] = mem[(32 * stor10) + 128]
            _1001 = mem[(32 * stor10) + 128]
            mem[(32 * _790) + _788 + 128 len floor32(mem[(32 * stor10) + 128])] = mem[(32 * stor10) + 160 len floor32(mem[(32 * stor10) + 128])]
            return memory
              from mem[64]
               len (32 * _1001) + (32 * _790) + _788 + -mem[64] + 128
        require var47001 < stor9.length
        mem[0] = stor9[var49001].field_0
        mem[32] = 8
        require var51006 < mem[96]
        mem[(32 * var53001) + 128] = var53003
        require var53007 < mem[(32 * stor10) + 128]
        mem[(32 * stor10) + (32 * var53007) + 160] = var53005
        if var46002 >= stor9.length:
            if stor9.length > var46002:
                require var46002 < stor9.length
                mem[0] = stor9[var46002].field_0
                mem[32] = 8
                require var53007 + 1 < mem[96]
                var53001 = var53007 + 1
                var53003 = stor9[var46002].field_0
                var53004 = stor9[var46002].field_0
                var53005 = bonusRate[stor9[var46002].field_0].field_256
                var53006 = var46002
                var53007 = var53007 + 1
                continue 
            _1980 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[96]
            _1982 = mem[96]
            mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 32] = (32 * mem[96]) + 96
            mem[(32 * mem[96]) + _1980 + 96] = mem[(32 * stor10) + 128]
            _2147 = mem[(32 * stor10) + 128]
            mem[(32 * _1982) + _1980 + 128 len floor32(mem[(32 * stor10) + 128])] = mem[(32 * stor10) + 160 len floor32(mem[(32 * stor10) + 128])]
            return memory
              from mem[64]
               len (32 * _2147) + (32 * _1982) + _1980 + -mem[64] + 128
        require var48003 < stor9.length
        mem[0] = 9
        if var52001:
            idx = var52003
            while idx + 1 < stor9.length:
                mem[0] = 9
                if stor9[idx + 1].field_256:
                    idx = idx + 1
                    continue 
                if stor9.length <= idx + 1:
                    mem[mem[64]] = 64
                    mem[mem[64] + 64] = mem[96]
                    _2658 = mem[96]
                    idx = 0
                    while idx < 32 * _2658:
                        mem[idx + mem[64] + 96] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    # nil
                else:
                    require idx + 1 < stor9.length
                    mem[0] = stor9[idx + 1].field_0
                    mem[32] = 8
                    require var53007 + 1 < mem[96]
                    var53001 = var53007 + 1
                    var53003 = stor9[idx + 1].field_0
                    var53004 = stor9[idx + 1].field_0
                    var53005 = bonusRate[stor9[idx + 1].field_0].field_256
                    var53006 = idx + 1
                    var53007 = var53007 + 1
                    continue 
            if stor9.length <= idx + 1:
                # nil
            else:
                require idx + 1 < stor9.length
                mem[0] = stor9[idx + 1].field_0
                mem[32] = 8
                require var53007 + 1 < mem[96]
                var53001 = var53007 + 1
                var53003 = stor9[idx + 1].field_0
                var53004 = stor9[idx + 1].field_0
                var53005 = bonusRate[stor9[idx + 1].field_0].field_256
                var53006 = idx + 1
                var53007 = var53007 + 1
                continue 
        else:
            if stor9.length > var52003:
                require var52003 < stor9.length
                mem[0] = stor9[var52003].field_0
                mem[32] = 8
                require var53007 + 1 < mem[96]
                var53001 = var53007 + 1
                var53003 = stor9[var52003].field_0
                var53004 = stor9[var52003].field_0
                var53005 = bonusRate[stor9[var52003].field_0].field_256
                var53006 = var52003
                var53007 = var53007 + 1
                continue 
            _2408 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[96]
            _2410 = mem[96]
            mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 32] = (32 * mem[96]) + 96
            mem[(32 * mem[96]) + _2408 + 96] = mem[(32 * stor10) + 128]
            _2593 = mem[(32 * stor10) + 128]
            mem[(32 * _2410) + _2408 + 128 len floor32(mem[(32 * stor10) + 128])] = mem[(32 * stor10) + 160 len floor32(mem[(32 * stor10) + 128])]
            return memory
              from mem[64]
               len (32 * _2593) + (32 * _2410) + _2408 + -mem[64] + 128
    else:
        mem[128 len 32 * stor10] = code.data[5368 len 32 * stor10]
        mem[(32 * stor10) + 128] = stor10
        mem[64] = (64 * stor10) + 160
        mem[(32 * stor10) + 160 len 32 * stor10] = code.data[5368 len 32 * stor10]
        if var15002 >= stor9.length:
            if var36001:
                require var40001 < stor9.length
                mem[32] = 8
                require var44006 < stor10
                mem[(32 * var46001) + 128] = var46003
                require var46007 < stor10
                mem[(32 * stor10) + (32 * var46007) + 160] = var46005
                if var39002 >= stor9.length:
                    if stor9.length > var39002:
                        require var39002 < stor9.length
                        mem[0] = stor9[var39002].field_0
                        mem[32] = 8
                        require var46007 + 1 < stor10
                        var46001 = var46007 + 1
                        var46003 = stor9[var39002].field_0
                        var46004 = stor9[var39002].field_0
                        var46005 = bonusRate[stor9[var39002].field_0].field_256
                        var46006 = var39002
                        var46007 = var46007 + 1
                        continue 
                else:
                    require var41003 < stor9.length
                    mem[0] = 9
                    if not var45001:
                        if stor9.length > var45003:
                            require var45003 < stor9.length
                            mem[0] = stor9[var45003].field_0
                            mem[32] = 8
                            require var46007 + 1 < stor10
                            var46001 = var46007 + 1
                            var46003 = stor9[var45003].field_0
                            var46004 = stor9[var45003].field_0
                            var46005 = bonusRate[stor9[var45003].field_0].field_256
                            var46006 = var45003
                            var46007 = var46007 + 1
                            continue 
                    else:
                        idx = var45003
                        while idx + 1 < stor9.length:
                            mem[0] = 9
                            if stor9[idx + 1].field_256:
                                idx = idx + 1
                                continue 
                            if stor9.length > idx + 1:
                                require idx + 1 < stor9.length
                                mem[0] = stor9[idx + 1].field_0
                                mem[32] = 8
                                require var46007 + 1 < stor10
                                var46001 = var46007 + 1
                                var46003 = stor9[idx + 1].field_0
                                var46004 = stor9[idx + 1].field_0
                                var46005 = bonusRate[stor9[idx + 1].field_0].field_256
                                var46006 = idx + 1
                                var46007 = var46007 + 1
                                continue 
                            mem[(64 * stor10) + 160] = 64
                            mem[(64 * stor10) + 224] = stor10
                            idx = 0
                            while idx < 32 * stor10:
                                mem[idx + (64 * stor10) + 256] = mem[idx + 128]
                                idx = idx + 32
                                continue 
                            mem[(64 * stor10) + 192] = (32 * stor10) + 96
                            mem[(98 * stor10) + 256] = mem[(32 * stor10) + 128]
                            idx = 0
                            while idx < 32 * mem[(32 * stor10) + 128]:
                                mem[idx + (98 * stor10) + 288] = mem[idx + (32 * stor10) + 160]
                                idx = idx + 32
                                continue 
                            return memory
                              from (64 * stor10) + 160
                               len (32 * mem[(32 * stor10) + 128]) + (160 * stor10) + 128
                        if stor9.length > idx + 1:
                            require idx + 1 < stor9.length
                            mem[0] = stor9[idx + 1].field_0
                            mem[32] = 8
                            require var46007 + 1 < stor10
                            var46001 = var46007 + 1
                            var46003 = stor9[idx + 1].field_0
                            var46004 = stor9[idx + 1].field_0
                            var46005 = bonusRate[stor9[idx + 1].field_0].field_256
                            var46006 = idx + 1
                            var46007 = var46007 + 1
                            continue 
            mem[(64 * stor10) + 160] = 64
            mem[(64 * stor10) + 224] = stor10
            mem[(64 * stor10) + 256 len floor32(stor10)] = code.data[5368 len floor32(stor10)]
            mem[(64 * stor10) + 192] = (32 * stor10) + 96
            mem[(98 * stor10) + 256] = stor10
            mem[(98 * stor10) + 288 len floor32(stor10)] = code.data[5368 len floor32(stor10)]
            return memory
              from (64 * stor10) + 160
               len (193 * stor10) + 128
        require var17003 < stor9.length
        mem[0] = 9
        if not var21001:
            if var41001:
                require var45001 < stor9.length
                mem[32] = 8
                require var49006 < stor10
                mem[(32 * var51001) + 128] = var51003
                require var51007 < stor10
                mem[(32 * stor10) + (32 * var51007) + 160] = var51005
                if var44002 >= stor9.length:
                    if stor9.length > var44002:
                        require var44002 < stor9.length
                        mem[0] = stor9[var44002].field_0
                        mem[32] = 8
                        require var51007 + 1 < stor10
                        var51001 = var51007 + 1
                        var51003 = stor9[var44002].field_0
                        var51004 = stor9[var44002].field_0
                        var51005 = bonusRate[stor9[var44002].field_0].field_256
                        var51006 = var44002
                        var51007 = var51007 + 1
                        continue 
                else:
                    require var46003 < stor9.length
                    mem[0] = 9
                    if not var50001:
                        if stor9.length > var50003:
                            require var50003 < stor9.length
                            mem[0] = stor9[var50003].field_0
                            mem[32] = 8
                            require var51007 + 1 < stor10
                            var51001 = var51007 + 1
                            var51003 = stor9[var50003].field_0
                            var51004 = stor9[var50003].field_0
                            var51005 = bonusRate[stor9[var50003].field_0].field_256
                            var51006 = var50003
                            var51007 = var51007 + 1
                            continue 
                    else:
                        idx = var50003
                        while idx + 1 < stor9.length:
                            mem[0] = 9
                            if stor9[idx + 1].field_256:
                                idx = idx + 1
                                continue 
                            if stor9.length > idx + 1:
                                require idx + 1 < stor9.length
                                mem[0] = stor9[idx + 1].field_0
                                mem[32] = 8
                                require var51007 + 1 < stor10
                                var51001 = var51007 + 1
                                var51003 = stor9[idx + 1].field_0
                                var51004 = stor9[idx + 1].field_0
                                var51005 = bonusRate[stor9[idx + 1].field_0].field_256
                                var51006 = idx + 1
                                var51007 = var51007 + 1
                                continue 
                            mem[(64 * stor10) + 160] = 64
                            mem[(64 * stor10) + 224] = stor10
                            idx = 0
                            while idx < 32 * stor10:
                                mem[idx + (64 * stor10) + 256] = mem[idx + 128]
                                idx = idx + 32
                                continue 
                            mem[(64 * stor10) + 192] = (32 * stor10) + 96
                            mem[(98 * stor10) + 256] = mem[(32 * stor10) + 128]
                            idx = 0
                            while idx < 32 * mem[(32 * stor10) + 128]:
                                mem[idx + (98 * stor10) + 288] = mem[idx + (32 * stor10) + 160]
                                idx = idx + 32
                                continue 
                            return memory
                              from (64 * stor10) + 160
                               len (32 * mem[(32 * stor10) + 128]) + (160 * stor10) + 128
                        if stor9.length > idx + 1:
                            require idx + 1 < stor9.length
                            mem[0] = stor9[idx + 1].field_0
                            mem[32] = 8
                            require var51007 + 1 < stor10
                            var51001 = var51007 + 1
                            var51003 = stor9[idx + 1].field_0
                            var51004 = stor9[idx + 1].field_0
                            var51005 = bonusRate[stor9[idx + 1].field_0].field_256
                            var51006 = idx + 1
                            var51007 = var51007 + 1
                            continue 
            mem[(64 * stor10) + 160] = 64
            mem[(64 * stor10) + 224] = stor10
            mem[(64 * stor10) + 256 len floor32(stor10)] = code.data[5368 len floor32(stor10)]
            mem[(64 * stor10) + 192] = (32 * stor10) + 96
            mem[(98 * stor10) + 256] = stor10
            mem[(98 * stor10) + 288 len floor32(stor10)] = code.data[5368 len floor32(stor10)]
            return memory
              from (64 * stor10) + 160
               len (193 * stor10) + 128
        idx = var21003
        while idx + 1 < stor9.length:
            mem[0] = 9
            if stor9[idx + 1].field_256:
                idx = idx + 1
                continue 
            if not var47001:
                _799 = mem[64]
                mem[mem[64]] = 64
                mem[mem[64] + 64] = mem[96]
                _801 = mem[96]
                idx = 0
                while idx < 32 * _801:
                    mem[idx + mem[64] + 96] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                mem[_799 + 32] = (32 * _801) + 96
                mem[(32 * _801) + _799 + 96] = mem[(32 * stor10) + 128]
                _1014 = mem[(32 * stor10) + 128]
                idx = 0
                while idx < 32 * _1014:
                    mem[idx + (32 * _801) + _799 + 128] = mem[idx + (32 * stor10) + 160]
                    idx = idx + 32
                    continue 
                return memory
                  from mem[64]
                   len (32 * _1014) + (32 * _801) + _799 + -mem[64] + 128
            require var51001 < stor9.length
            mem[32] = 8
            require var55006 < mem[96]
            mem[(32 * var57001) + 128] = var57003
            require var57007 < mem[(32 * stor10) + 128]
            mem[(32 * stor10) + (32 * var57007) + 160] = var57005
            if var50002 >= stor9.length:
                if stor9.length > var50002:
                    require var50002 < stor9.length
                    mem[0] = stor9[var50002].field_0
                    mem[32] = 8
                    require var57007 + 1 < mem[96]
                    var57001 = var57007 + 1
                    var57003 = stor9[var50002].field_0
                    var57004 = stor9[var50002].field_0
                    var57005 = bonusRate[stor9[var50002].field_0].field_256
                    var57006 = var50002
                    var57007 = var57007 + 1
                    continue 
                _1989 = mem[64]
                mem[mem[64]] = 64
                mem[mem[64] + 64] = mem[96]
                _1991 = mem[96]
                idx = 0
                while idx < 32 * _1991:
                    mem[idx + mem[64] + 96] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                mem[_1989 + 32] = (32 * _1991) + 96
                mem[(32 * _1991) + _1989 + 96] = mem[(32 * stor10) + 128]
                _2169 = mem[(32 * stor10) + 128]
                idx = 0
                while idx < 32 * _2169:
                    mem[idx + (32 * _1991) + _1989 + 128] = mem[idx + (32 * stor10) + 160]
                    idx = idx + 32
                    continue 
                return memory
                  from mem[64]
                   len (32 * _2169) + (32 * _1991) + _1989 + -mem[64] + 128
            require var52003 < stor9.length
            mem[0] = 9
            if var56001:
                idx = var56003
                while idx + 1 < stor9.length:
                    mem[0] = 9
                    if stor9[idx + 1].field_256:
                        idx = idx + 1
                        continue 
                    if stor9.length <= idx + 1:
                        mem[mem[64]] = 64
                        mem[mem[64] + 64] = mem[96]
                        _2679 = mem[96]
                        idx = 0
                        while idx < 32 * _2679:
                            mem[idx + mem[64] + 96] = mem[idx + 128]
                            idx = idx + 32
                            continue 
                        # nil
                    else:
                        require idx + 1 < stor9.length
                        mem[0] = stor9[idx + 1].field_0
                        mem[32] = 8
                        require var57007 + 1 < mem[96]
                        var57001 = var57007 + 1
                        var57003 = stor9[idx + 1].field_0
                        var57004 = stor9[idx + 1].field_0
                        var57005 = bonusRate[stor9[idx + 1].field_0].field_256
                        var57006 = idx + 1
                        var57007 = var57007 + 1
                        continue 
                if stor9.length <= idx + 1:
                    mem[mem[64]] = 64
                    mem[mem[64] + 64] = mem[96]
                    _2643 = mem[96]
                    idx = 0
                    while idx < 32 * _2643:
                        mem[idx + mem[64] + 96] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    # nil
                else:
                    require idx + 1 < stor9.length
                    mem[0] = stor9[idx + 1].field_0
                    mem[32] = 8
                    require var57007 + 1 < mem[96]
                    var57001 = var57007 + 1
                    var57003 = stor9[idx + 1].field_0
                    var57004 = stor9[idx + 1].field_0
                    var57005 = bonusRate[stor9[idx + 1].field_0].field_256
                    var57006 = idx + 1
                    var57007 = var57007 + 1
                    continue 
            else:
                if stor9.length > var56003:
                    require var56003 < stor9.length
                    mem[0] = stor9[var56003].field_0
                    mem[32] = 8
                    require var57007 + 1 < mem[96]
                    var57001 = var57007 + 1
                    var57003 = stor9[var56003].field_0
                    var57004 = stor9[var56003].field_0
                    var57005 = bonusRate[stor9[var56003].field_0].field_256
                    var57006 = var56003
                    var57007 = var57007 + 1
                    continue 
                _2417 = mem[64]
                mem[mem[64]] = 64
                mem[mem[64] + 64] = mem[96]
                _2419 = mem[96]
                idx = 0
                while idx < 32 * _2419:
                    mem[idx + mem[64] + 96] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                mem[_2417 + 32] = (32 * _2419) + 96
                mem[(32 * _2419) + _2417 + 96] = mem[(32 * stor10) + 128]
                _2610 = mem[(32 * stor10) + 128]
                idx = 0
                while idx < 32 * _2610:
                    mem[idx + (32 * _2419) + _2417 + 128] = mem[idx + (32 * stor10) + 160]
                    idx = idx + 32
                    continue 
                return memory
                  from mem[64]
                   len (32 * _2610) + (32 * _2419) + _2417 + -mem[64] + 128
        if not var45001:
            _796 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[96]
            _798 = mem[96]
            mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 32] = (32 * mem[96]) + 96
            mem[(32 * mem[96]) + _796 + 96] = mem[(32 * stor10) + 128]
            _1011 = mem[(32 * stor10) + 128]
            mem[(32 * _798) + _796 + 128 len floor32(mem[(32 * stor10) + 128])] = mem[(32 * stor10) + 160 len floor32(mem[(32 * stor10) + 128])]
            return memory
              from mem[64]
               len (32 * _1011) + (32 * _798) + _796 + -mem[64] + 128
        require var49001 < stor9.length
        mem[0] = stor9[var51001].field_0
        mem[32] = 8
        require var53006 < mem[96]
        mem[(32 * var55001) + 128] = var55003
        require var55007 < mem[(32 * stor10) + 128]
        mem[(32 * stor10) + (32 * var55007) + 160] = var55005
        if var48002 >= stor9.length:
            if stor9.length > var48002:
                require var48002 < stor9.length
                mem[0] = stor9[var48002].field_0
                mem[32] = 8
                require var55007 + 1 < mem[96]
                var55001 = var55007 + 1
                var55003 = stor9[var48002].field_0
                var55004 = stor9[var48002].field_0
                var55005 = bonusRate[stor9[var48002].field_0].field_256
                var55006 = var48002
                var55007 = var55007 + 1
                continue 
            _1986 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[96]
            _1988 = mem[96]
            mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 32] = (32 * mem[96]) + 96
            mem[(32 * mem[96]) + _1986 + 96] = mem[(32 * stor10) + 128]
            _2165 = mem[(32 * stor10) + 128]
            mem[(32 * _1988) + _1986 + 128 len floor32(mem[(32 * stor10) + 128])] = mem[(32 * stor10) + 160 len floor32(mem[(32 * stor10) + 128])]
            return memory
              from mem[64]
               len (32 * _2165) + (32 * _1988) + _1986 + -mem[64] + 128
        require var50003 < stor9.length
        mem[0] = 9
        if var54001:
            idx = var54003
            while idx + 1 < stor9.length:
                mem[0] = 9
                if stor9[idx + 1].field_256:
                    idx = idx + 1
                    continue 
                if stor9.length <= idx + 1:
                    mem[mem[64]] = 64
                    mem[mem[64] + 64] = mem[96]
                    _2672 = mem[96]
                    idx = 0
                    while idx < 32 * _2672:
                        mem[idx + mem[64] + 96] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    # nil
                else:
                    require idx + 1 < stor9.length
                    mem[0] = stor9[idx + 1].field_0
                    mem[32] = 8
                    require var55007 + 1 < mem[96]
                    var55001 = var55007 + 1
                    var55003 = stor9[idx + 1].field_0
                    var55004 = stor9[idx + 1].field_0
                    var55005 = bonusRate[stor9[idx + 1].field_0].field_256
                    var55006 = idx + 1
                    var55007 = var55007 + 1
                    continue 
            if stor9.length <= idx + 1:
                # nil
            else:
                require idx + 1 < stor9.length
                mem[0] = stor9[idx + 1].field_0
                mem[32] = 8
                require var55007 + 1 < mem[96]
                var55001 = var55007 + 1
                var55003 = stor9[idx + 1].field_0
                var55004 = stor9[idx + 1].field_0
                var55005 = bonusRate[stor9[idx + 1].field_0].field_256
                var55006 = idx + 1
                var55007 = var55007 + 1
                continue 
        else:
            if stor9.length > var54003:
                require var54003 < stor9.length
                mem[0] = stor9[var54003].field_0
                mem[32] = 8
                require var55007 + 1 < mem[96]
                var55001 = var55007 + 1
                var55003 = stor9[var54003].field_0
                var55004 = stor9[var54003].field_0
                var55005 = bonusRate[stor9[var54003].field_0].field_256
                var55006 = var54003
                var55007 = var55007 + 1
                continue 
            _2414 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[96]
            _2416 = mem[96]
            mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 32] = (32 * mem[96]) + 96
            mem[(32 * mem[96]) + _2414 + 96] = mem[(32 * stor10) + 128]
            _2607 = mem[(32 * stor10) + 128]
            mem[(32 * _2416) + _2414 + 128 len floor32(mem[(32 * stor10) + 128])] = mem[(32 * stor10) + 160 len floor32(mem[(32 * stor10) + 128])]
            return memory
              from mem[64]
               len (32 * _2607) + (32 * _2416) + _2414 + -mem[64] + 128
}

function sub_f5754e75(?) {
    mem[96] = stor3
    if not stor3:
        mem[(32 * stor3) + 128] = stor3
        mem[64] = (64 * stor3) + 160
        if var13002 >= stor2.length:
            if var34001:
                require var38001 < stor2.length
                mem[32] = 1
                require var42006 < stor3
                mem[(32 * var44001) + 128] = var44003
                require var44007 < stor3
                mem[(32 * stor3) + (32 * var44007) + 160] = address(var44004)
                if var37002 >= stor2.length:
                    if stor2.length > var37002:
                        require var37002 < stor2.length
                        mem[0] = stor2[var37002].field_0
                        mem[32] = 1
                        require var44007 + 1 < stor3
                        var44001 = var44007 + 1
                        var44003 = stor2[var37002].field_0
                        var44004 = sub_45e8cec2[stor2[var37002].field_0].field_256
                        var44005 = stor2[var37002].field_0
                        var44006 = var37002
                        var44007 = var44007 + 1
                        continue 
                else:
                    require var39003 < stor2.length
                    mem[0] = 2
                    if not var43001:
                        if stor2.length > var43003:
                            require var43003 < stor2.length
                            mem[0] = stor2[var43003].field_0
                            mem[32] = 1
                            require var44007 + 1 < stor3
                            var44001 = var44007 + 1
                            var44003 = stor2[var43003].field_0
                            var44004 = sub_45e8cec2[stor2[var43003].field_0].field_256
                            var44005 = stor2[var43003].field_0
                            var44006 = var43003
                            var44007 = var44007 + 1
                            continue 
                    else:
                        idx = var43003
                        while idx + 1 < stor2.length:
                            mem[0] = 2
                            if stor2[idx + 1].field_256:
                                idx = idx + 1
                                continue 
                            if stor2.length > idx + 1:
                                require idx + 1 < stor2.length
                                mem[0] = stor2[idx + 1].field_0
                                mem[32] = 1
                                require var44007 + 1 < stor3
                                var44001 = var44007 + 1
                                var44003 = stor2[idx + 1].field_0
                                var44004 = sub_45e8cec2[stor2[idx + 1].field_0].field_256
                                var44005 = stor2[idx + 1].field_0
                                var44006 = idx + 1
                                var44007 = var44007 + 1
                                continue 
                            mem[(64 * stor3) + 160] = 64
                            mem[(64 * stor3) + 224] = stor3
                            idx = 0
                            while idx < 32 * stor3:
                                mem[idx + (64 * stor3) + 256] = mem[idx + 128]
                                idx = idx + 32
                                continue 
                            mem[(64 * stor3) + 192] = (32 * stor3) + 96
                            mem[(98 * stor3) + 256] = mem[(32 * stor3) + 128]
                            _2142 = mem[(32 * stor3) + 128]
                            idx = 0
                            while idx < 32 * mem[(32 * stor3) + 128]:
                                mem[idx + (98 * stor3) + 288] = mem[idx + (32 * stor3) + 160]
                                idx = idx + 32
                                continue 
                            return memory
                              from (64 * stor3) + 160
                               len (32 * _2142) + (160 * stor3) + 128
                        if stor2.length > idx + 1:
                            require idx + 1 < stor2.length
                            mem[0] = stor2[idx + 1].field_0
                            mem[32] = 1
                            require var44007 + 1 < stor3
                            var44001 = var44007 + 1
                            var44003 = stor2[idx + 1].field_0
                            var44004 = sub_45e8cec2[stor2[idx + 1].field_0].field_256
                            var44005 = stor2[idx + 1].field_0
                            var44006 = idx + 1
                            var44007 = var44007 + 1
                            continue 
            mem[(64 * stor3) + 160] = 64
            mem[(64 * stor3) + 224] = stor3
            mem[(64 * stor3) + 256 len floor32(stor3)] = mem[128 len floor32(stor3)]
            mem[(64 * stor3) + 192] = (32 * stor3) + 96
            mem[(98 * stor3) + 256] = stor3
            mem[(98 * stor3) + 288 len floor32(stor3)] = mem[(32 * stor3) + 160 len floor32(stor3)]
            return memory
              from (64 * stor3) + 160
               len (193 * stor3) + 128
        require var15003 < stor2.length
        mem[0] = 2
        if not var19001:
            if var39001:
                require var43001 < stor2.length
                mem[32] = 1
                require var47006 < stor3
                mem[(32 * var49001) + 128] = var49003
                require var49007 < stor3
                mem[(32 * stor3) + (32 * var49007) + 160] = address(var49004)
                if var42002 >= stor2.length:
                    if stor2.length > var42002:
                        require var42002 < stor2.length
                        mem[0] = stor2[var42002].field_0
                        mem[32] = 1
                        require var49007 + 1 < stor3
                        var49001 = var49007 + 1
                        var49003 = stor2[var42002].field_0
                        var49004 = sub_45e8cec2[stor2[var42002].field_0].field_256
                        var49005 = stor2[var42002].field_0
                        var49006 = var42002
                        var49007 = var49007 + 1
                        continue 
                else:
                    require var44003 < stor2.length
                    mem[0] = 2
                    if not var48001:
                        if stor2.length > var48003:
                            require var48003 < stor2.length
                            mem[0] = stor2[var48003].field_0
                            mem[32] = 1
                            require var49007 + 1 < stor3
                            var49001 = var49007 + 1
                            var49003 = stor2[var48003].field_0
                            var49004 = sub_45e8cec2[stor2[var48003].field_0].field_256
                            var49005 = stor2[var48003].field_0
                            var49006 = var48003
                            var49007 = var49007 + 1
                            continue 
                    else:
                        idx = var48003
                        while idx + 1 < stor2.length:
                            mem[0] = 2
                            if stor2[idx + 1].field_256:
                                idx = idx + 1
                                continue 
                            if stor2.length > idx + 1:
                                require idx + 1 < stor2.length
                                mem[0] = stor2[idx + 1].field_0
                                mem[32] = 1
                                require var49007 + 1 < stor3
                                var49001 = var49007 + 1
                                var49003 = stor2[idx + 1].field_0
                                var49004 = sub_45e8cec2[stor2[idx + 1].field_0].field_256
                                var49005 = stor2[idx + 1].field_0
                                var49006 = idx + 1
                                var49007 = var49007 + 1
                                continue 
                            mem[(64 * stor3) + 160] = 64
                            mem[(64 * stor3) + 224] = stor3
                            idx = 0
                            while idx < 32 * stor3:
                                mem[idx + (64 * stor3) + 256] = mem[idx + 128]
                                idx = idx + 32
                                continue 
                            mem[(64 * stor3) + 192] = (32 * stor3) + 96
                            mem[(98 * stor3) + 256] = mem[(32 * stor3) + 128]
                            _2590 = mem[(32 * stor3) + 128]
                            idx = 0
                            while idx < 32 * mem[(32 * stor3) + 128]:
                                mem[idx + (98 * stor3) + 288] = mem[idx + (32 * stor3) + 160]
                                idx = idx + 32
                                continue 
                            return memory
                              from (64 * stor3) + 160
                               len (32 * _2590) + (160 * stor3) + 128
                        if stor2.length > idx + 1:
                            require idx + 1 < stor2.length
                            mem[0] = stor2[idx + 1].field_0
                            mem[32] = 1
                            require var49007 + 1 < stor3
                            var49001 = var49007 + 1
                            var49003 = stor2[idx + 1].field_0
                            var49004 = sub_45e8cec2[stor2[idx + 1].field_0].field_256
                            var49005 = stor2[idx + 1].field_0
                            var49006 = idx + 1
                            var49007 = var49007 + 1
                            continue 
            mem[(64 * stor3) + 160] = 64
            mem[(64 * stor3) + 224] = stor3
            mem[(64 * stor3) + 256 len floor32(stor3)] = mem[128 len floor32(stor3)]
            mem[(64 * stor3) + 192] = (32 * stor3) + 96
            mem[(98 * stor3) + 256] = stor3
            mem[(98 * stor3) + 288 len floor32(stor3)] = mem[(32 * stor3) + 160 len floor32(stor3)]
            return memory
              from (64 * stor3) + 160
               len (193 * stor3) + 128
        idx = var19003
        while idx + 1 < stor2.length:
            mem[0] = 2
            if stor2[idx + 1].field_256:
                idx = idx + 1
                continue 
            if not var45001:
                _791 = mem[64]
                mem[mem[64]] = 64
                mem[mem[64] + 64] = mem[96]
                _793 = mem[96]
                idx = 0
                while idx < 32 * _793:
                    mem[idx + mem[64] + 96] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                mem[_791 + 32] = (32 * _793) + 96
                mem[(32 * _793) + _791 + 96] = mem[(32 * stor3) + 128]
                _1004 = mem[(32 * stor3) + 128]
                idx = 0
                while idx < 32 * _1004:
                    mem[idx + (32 * _793) + _791 + 128] = mem[idx + (32 * stor3) + 160]
                    idx = idx + 32
                    continue 
                return memory
                  from mem[64]
                   len (32 * _1004) + (32 * _793) + _791 + -mem[64] + 128
            require var49001 < stor2.length
            mem[32] = 1
            require var53006 < mem[96]
            mem[(32 * var55001) + 128] = var55003
            require var55007 < mem[(32 * stor3) + 128]
            mem[(32 * stor3) + (32 * var55007) + 160] = address(var55004)
            if var48002 >= stor2.length:
                if stor2.length > var48002:
                    require var48002 < stor2.length
                    mem[0] = stor2[var48002].field_0
                    mem[32] = 1
                    require var55007 + 1 < mem[96]
                    var55001 = var55007 + 1
                    var55003 = stor2[var48002].field_0
                    var55004 = sub_45e8cec2[stor2[var48002].field_0].field_256
                    var55005 = stor2[var48002].field_0
                    var55006 = var48002
                    var55007 = var55007 + 1
                    continue 
                _1983 = mem[64]
                mem[mem[64]] = 64
                mem[mem[64] + 64] = mem[96]
                _1985 = mem[96]
                idx = 0
                while idx < 32 * _1985:
                    mem[idx + mem[64] + 96] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                mem[_1983 + 32] = (32 * _1985) + 96
                mem[(32 * _1985) + _1983 + 96] = mem[(32 * stor3) + 128]
                _2151 = mem[(32 * stor3) + 128]
                idx = 0
                while idx < 32 * _2151:
                    mem[idx + (32 * _1985) + _1983 + 128] = mem[idx + (32 * stor3) + 160]
                    idx = idx + 32
                    continue 
                return memory
                  from mem[64]
                   len (32 * _2151) + (32 * _1985) + _1983 + -mem[64] + 128
            require var50003 < stor2.length
            mem[0] = 2
            if var54001:
                idx = var54003
                while idx + 1 < stor2.length:
                    mem[0] = 2
                    if stor2[idx + 1].field_256:
                        idx = idx + 1
                        continue 
                    if stor2.length <= idx + 1:
                        mem[mem[64]] = 64
                        mem[mem[64] + 64] = mem[96]
                        _2665 = mem[96]
                        idx = 0
                        while idx < 32 * _2665:
                            mem[idx + mem[64] + 96] = mem[idx + 128]
                            idx = idx + 32
                            continue 
                        # nil
                    else:
                        require idx + 1 < stor2.length
                        mem[0] = stor2[idx + 1].field_0
                        mem[32] = 1
                        require var55007 + 1 < mem[96]
                        var55001 = var55007 + 1
                        var55003 = stor2[idx + 1].field_0
                        var55004 = sub_45e8cec2[stor2[idx + 1].field_0].field_256
                        var55005 = stor2[idx + 1].field_0
                        var55006 = idx + 1
                        var55007 = var55007 + 1
                        continue 
                if stor2.length <= idx + 1:
                    mem[mem[64]] = 64
                    mem[mem[64] + 64] = mem[96]
                    _2637 = mem[96]
                    idx = 0
                    while idx < 32 * _2637:
                        mem[idx + mem[64] + 96] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    # nil
                else:
                    require idx + 1 < stor2.length
                    mem[0] = stor2[idx + 1].field_0
                    mem[32] = 1
                    require var55007 + 1 < mem[96]
                    var55001 = var55007 + 1
                    var55003 = stor2[idx + 1].field_0
                    var55004 = sub_45e8cec2[stor2[idx + 1].field_0].field_256
                    var55005 = stor2[idx + 1].field_0
                    var55006 = idx + 1
                    var55007 = var55007 + 1
                    continue 
            else:
                if stor2.length > var54003:
                    require var54003 < stor2.length
                    mem[0] = stor2[var54003].field_0
                    mem[32] = 1
                    require var55007 + 1 < mem[96]
                    var55001 = var55007 + 1
                    var55003 = stor2[var54003].field_0
                    var55004 = sub_45e8cec2[stor2[var54003].field_0].field_256
                    var55005 = stor2[var54003].field_0
                    var55006 = var54003
                    var55007 = var55007 + 1
                    continue 
                _2411 = mem[64]
                mem[mem[64]] = 64
                mem[mem[64] + 64] = mem[96]
                _2413 = mem[96]
                idx = 0
                while idx < 32 * _2413:
                    mem[idx + mem[64] + 96] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                mem[_2411 + 32] = (32 * _2413) + 96
                mem[(32 * _2413) + _2411 + 96] = mem[(32 * stor3) + 128]
                _2596 = mem[(32 * stor3) + 128]
                idx = 0
                while idx < 32 * _2596:
                    mem[idx + (32 * _2413) + _2411 + 128] = mem[idx + (32 * stor3) + 160]
                    idx = idx + 32
                    continue 
                return memory
                  from mem[64]
                   len (32 * _2596) + (32 * _2413) + _2411 + -mem[64] + 128
        if not var43001:
            _788 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[96]
            _790 = mem[96]
            mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 32] = (32 * mem[96]) + 96
            mem[(32 * mem[96]) + _788 + 96] = mem[(32 * stor3) + 128]
            _1001 = mem[(32 * stor3) + 128]
            mem[(32 * _790) + _788 + 128 len floor32(mem[(32 * stor3) + 128])] = mem[(32 * stor3) + 160 len floor32(mem[(32 * stor3) + 128])]
            return memory
              from mem[64]
               len (32 * _1001) + (32 * _790) + _788 + -mem[64] + 128
        require var47001 < stor2.length
        mem[0] = stor2[var49001].field_0
        mem[32] = 1
        require var51006 < mem[96]
        mem[(32 * var53001) + 128] = var53003
        require var53007 < mem[(32 * stor3) + 128]
        mem[(32 * stor3) + (32 * var53007) + 160] = address(var53004)
        if var46002 >= stor2.length:
            if stor2.length > var46002:
                require var46002 < stor2.length
                mem[0] = stor2[var46002].field_0
                mem[32] = 1
                require var53007 + 1 < mem[96]
                var53001 = var53007 + 1
                var53003 = stor2[var46002].field_0
                var53004 = sub_45e8cec2[stor2[var46002].field_0].field_256
                var53005 = stor2[var46002].field_0
                var53006 = var46002
                var53007 = var53007 + 1
                continue 
            _1980 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[96]
            _1982 = mem[96]
            mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 32] = (32 * mem[96]) + 96
            mem[(32 * mem[96]) + _1980 + 96] = mem[(32 * stor3) + 128]
            _2147 = mem[(32 * stor3) + 128]
            mem[(32 * _1982) + _1980 + 128 len floor32(mem[(32 * stor3) + 128])] = mem[(32 * stor3) + 160 len floor32(mem[(32 * stor3) + 128])]
            return memory
              from mem[64]
               len (32 * _2147) + (32 * _1982) + _1980 + -mem[64] + 128
        require var48003 < stor2.length
        mem[0] = 2
        if var52001:
            idx = var52003
            while idx + 1 < stor2.length:
                mem[0] = 2
                if stor2[idx + 1].field_256:
                    idx = idx + 1
                    continue 
                if stor2.length <= idx + 1:
                    mem[mem[64]] = 64
                    mem[mem[64] + 64] = mem[96]
                    _2658 = mem[96]
                    idx = 0
                    while idx < 32 * _2658:
                        mem[idx + mem[64] + 96] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    # nil
                else:
                    require idx + 1 < stor2.length
                    mem[0] = stor2[idx + 1].field_0
                    mem[32] = 1
                    require var53007 + 1 < mem[96]
                    var53001 = var53007 + 1
                    var53003 = stor2[idx + 1].field_0
                    var53004 = sub_45e8cec2[stor2[idx + 1].field_0].field_256
                    var53005 = stor2[idx + 1].field_0
                    var53006 = idx + 1
                    var53007 = var53007 + 1
                    continue 
            if stor2.length <= idx + 1:
                # nil
            else:
                require idx + 1 < stor2.length
                mem[0] = stor2[idx + 1].field_0
                mem[32] = 1
                require var53007 + 1 < mem[96]
                var53001 = var53007 + 1
                var53003 = stor2[idx + 1].field_0
                var53004 = sub_45e8cec2[stor2[idx + 1].field_0].field_256
                var53005 = stor2[idx + 1].field_0
                var53006 = idx + 1
                var53007 = var53007 + 1
                continue 
        else:
            if stor2.length > var52003:
                require var52003 < stor2.length
                mem[0] = stor2[var52003].field_0
                mem[32] = 1
                require var53007 + 1 < mem[96]
                var53001 = var53007 + 1
                var53003 = stor2[var52003].field_0
                var53004 = sub_45e8cec2[stor2[var52003].field_0].field_256
                var53005 = stor2[var52003].field_0
                var53006 = var52003
                var53007 = var53007 + 1
                continue 
            _2408 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[96]
            _2410 = mem[96]
            mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 32] = (32 * mem[96]) + 96
            mem[(32 * mem[96]) + _2408 + 96] = mem[(32 * stor3) + 128]
            _2593 = mem[(32 * stor3) + 128]
            mem[(32 * _2410) + _2408 + 128 len floor32(mem[(32 * stor3) + 128])] = mem[(32 * stor3) + 160 len floor32(mem[(32 * stor3) + 128])]
            return memory
              from mem[64]
               len (32 * _2593) + (32 * _2410) + _2408 + -mem[64] + 128
    else:
        mem[128 len 32 * stor3] = code.data[5368 len 32 * stor3]
        mem[(32 * stor3) + 128] = stor3
        mem[64] = (64 * stor3) + 160
        mem[(32 * stor3) + 160 len 32 * stor3] = code.data[5368 len 32 * stor3]
        if var15002 >= stor2.length:
            if var36001:
                require var40001 < stor2.length
                mem[32] = 1
                require var44006 < stor3
                mem[(32 * var46001) + 128] = var46003
                require var46007 < stor3
                mem[(32 * stor3) + (32 * var46007) + 160] = address(var46004)
                if var39002 >= stor2.length:
                    if stor2.length > var39002:
                        require var39002 < stor2.length
                        mem[0] = stor2[var39002].field_0
                        mem[32] = 1
                        require var46007 + 1 < stor3
                        var46001 = var46007 + 1
                        var46003 = stor2[var39002].field_0
                        var46004 = sub_45e8cec2[stor2[var39002].field_0].field_256
                        var46005 = stor2[var39002].field_0
                        var46006 = var39002
                        var46007 = var46007 + 1
                        continue 
                else:
                    require var41003 < stor2.length
                    mem[0] = 2
                    if not var45001:
                        if stor2.length > var45003:
                            require var45003 < stor2.length
                            mem[0] = stor2[var45003].field_0
                            mem[32] = 1
                            require var46007 + 1 < stor3
                            var46001 = var46007 + 1
                            var46003 = stor2[var45003].field_0
                            var46004 = sub_45e8cec2[stor2[var45003].field_0].field_256
                            var46005 = stor2[var45003].field_0
                            var46006 = var45003
                            var46007 = var46007 + 1
                            continue 
                    else:
                        idx = var45003
                        while idx + 1 < stor2.length:
                            mem[0] = 2
                            if stor2[idx + 1].field_256:
                                idx = idx + 1
                                continue 
                            if stor2.length > idx + 1:
                                require idx + 1 < stor2.length
                                mem[0] = stor2[idx + 1].field_0
                                mem[32] = 1
                                require var46007 + 1 < stor3
                                var46001 = var46007 + 1
                                var46003 = stor2[idx + 1].field_0
                                var46004 = sub_45e8cec2[stor2[idx + 1].field_0].field_256
                                var46005 = stor2[idx + 1].field_0
                                var46006 = idx + 1
                                var46007 = var46007 + 1
                                continue 
                            mem[(64 * stor3) + 160] = 64
                            mem[(64 * stor3) + 224] = stor3
                            idx = 0
                            while idx < 32 * stor3:
                                mem[idx + (64 * stor3) + 256] = mem[idx + 128]
                                idx = idx + 32
                                continue 
                            mem[(64 * stor3) + 192] = (32 * stor3) + 96
                            mem[(98 * stor3) + 256] = mem[(32 * stor3) + 128]
                            _2160 = mem[(32 * stor3) + 128]
                            idx = 0
                            while idx < 32 * mem[(32 * stor3) + 128]:
                                mem[idx + (98 * stor3) + 288] = mem[idx + (32 * stor3) + 160]
                                idx = idx + 32
                                continue 
                            return memory
                              from (64 * stor3) + 160
                               len (32 * _2160) + (160 * stor3) + 128
                        if stor2.length > idx + 1:
                            require idx + 1 < stor2.length
                            mem[0] = stor2[idx + 1].field_0
                            mem[32] = 1
                            require var46007 + 1 < stor3
                            var46001 = var46007 + 1
                            var46003 = stor2[idx + 1].field_0
                            var46004 = sub_45e8cec2[stor2[idx + 1].field_0].field_256
                            var46005 = stor2[idx + 1].field_0
                            var46006 = idx + 1
                            var46007 = var46007 + 1
                            continue 
            mem[(64 * stor3) + 160] = 64
            mem[(64 * stor3) + 224] = stor3
            mem[(64 * stor3) + 256 len floor32(stor3)] = code.data[5368 len floor32(stor3)]
            mem[(64 * stor3) + 192] = (32 * stor3) + 96
            mem[(98 * stor3) + 256] = stor3
            mem[(98 * stor3) + 288 len floor32(stor3)] = code.data[5368 len floor32(stor3)]
            return memory
              from (64 * stor3) + 160
               len (193 * stor3) + 128
        require var17003 < stor2.length
        mem[0] = 2
        if not var21001:
            if var41001:
                require var45001 < stor2.length
                mem[32] = 1
                require var49006 < stor3
                mem[(32 * var51001) + 128] = var51003
                require var51007 < stor3
                mem[(32 * stor3) + (32 * var51007) + 160] = address(var51004)
                if var44002 >= stor2.length:
                    if stor2.length > var44002:
                        require var44002 < stor2.length
                        mem[0] = stor2[var44002].field_0
                        mem[32] = 1
                        require var51007 + 1 < stor3
                        var51001 = var51007 + 1
                        var51003 = stor2[var44002].field_0
                        var51004 = sub_45e8cec2[stor2[var44002].field_0].field_256
                        var51005 = stor2[var44002].field_0
                        var51006 = var44002
                        var51007 = var51007 + 1
                        continue 
                else:
                    require var46003 < stor2.length
                    mem[0] = 2
                    if not var50001:
                        if stor2.length > var50003:
                            require var50003 < stor2.length
                            mem[0] = stor2[var50003].field_0
                            mem[32] = 1
                            require var51007 + 1 < stor3
                            var51001 = var51007 + 1
                            var51003 = stor2[var50003].field_0
                            var51004 = sub_45e8cec2[stor2[var50003].field_0].field_256
                            var51005 = stor2[var50003].field_0
                            var51006 = var50003
                            var51007 = var51007 + 1
                            continue 
                    else:
                        idx = var50003
                        while idx + 1 < stor2.length:
                            mem[0] = 2
                            if stor2[idx + 1].field_256:
                                idx = idx + 1
                                continue 
                            if stor2.length > idx + 1:
                                require idx + 1 < stor2.length
                                mem[0] = stor2[idx + 1].field_0
                                mem[32] = 1
                                require var51007 + 1 < stor3
                                var51001 = var51007 + 1
                                var51003 = stor2[idx + 1].field_0
                                var51004 = sub_45e8cec2[stor2[idx + 1].field_0].field_256
                                var51005 = stor2[idx + 1].field_0
                                var51006 = idx + 1
                                var51007 = var51007 + 1
                                continue 
                            mem[(64 * stor3) + 160] = 64
                            mem[(64 * stor3) + 224] = stor3
                            idx = 0
                            while idx < 32 * stor3:
                                mem[idx + (64 * stor3) + 256] = mem[idx + 128]
                                idx = idx + 32
                                continue 
                            mem[(64 * stor3) + 192] = (32 * stor3) + 96
                            mem[(98 * stor3) + 256] = mem[(32 * stor3) + 128]
                            _2604 = mem[(32 * stor3) + 128]
                            idx = 0
                            while idx < 32 * mem[(32 * stor3) + 128]:
                                mem[idx + (98 * stor3) + 288] = mem[idx + (32 * stor3) + 160]
                                idx = idx + 32
                                continue 
                            return memory
                              from (64 * stor3) + 160
                               len (32 * _2604) + (160 * stor3) + 128
                        if stor2.length > idx + 1:
                            require idx + 1 < stor2.length
                            mem[0] = stor2[idx + 1].field_0
                            mem[32] = 1
                            require var51007 + 1 < stor3
                            var51001 = var51007 + 1
                            var51003 = stor2[idx + 1].field_0
                            var51004 = sub_45e8cec2[stor2[idx + 1].field_0].field_256
                            var51005 = stor2[idx + 1].field_0
                            var51006 = idx + 1
                            var51007 = var51007 + 1
                            continue 
            mem[(64 * stor3) + 160] = 64
            mem[(64 * stor3) + 224] = stor3
            mem[(64 * stor3) + 256 len floor32(stor3)] = code.data[5368 len floor32(stor3)]
            mem[(64 * stor3) + 192] = (32 * stor3) + 96
            mem[(98 * stor3) + 256] = stor3
            mem[(98 * stor3) + 288 len floor32(stor3)] = code.data[5368 len floor32(stor3)]
            return memory
              from (64 * stor3) + 160
               len (193 * stor3) + 128
        idx = var21003
        while idx + 1 < stor2.length:
            mem[0] = 2
            if stor2[idx + 1].field_256:
                idx = idx + 1
                continue 
            if not var47001:
                _799 = mem[64]
                mem[mem[64]] = 64
                mem[mem[64] + 64] = mem[96]
                _801 = mem[96]
                idx = 0
                while idx < 32 * _801:
                    mem[idx + mem[64] + 96] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                mem[_799 + 32] = (32 * _801) + 96
                mem[(32 * _801) + _799 + 96] = mem[(32 * stor3) + 128]
                _1014 = mem[(32 * stor3) + 128]
                idx = 0
                while idx < 32 * _1014:
                    mem[idx + (32 * _801) + _799 + 128] = mem[idx + (32 * stor3) + 160]
                    idx = idx + 32
                    continue 
                return memory
                  from mem[64]
                   len (32 * _1014) + (32 * _801) + _799 + -mem[64] + 128
            require var51001 < stor2.length
            mem[32] = 1
            require var55006 < mem[96]
            mem[(32 * var57001) + 128] = var57003
            require var57007 < mem[(32 * stor3) + 128]
            mem[(32 * stor3) + (32 * var57007) + 160] = address(var57004)
            if var50002 >= stor2.length:
                if stor2.length > var50002:
                    require var50002 < stor2.length
                    mem[0] = stor2[var50002].field_0
                    mem[32] = 1
                    require var57007 + 1 < mem[96]
                    var57001 = var57007 + 1
                    var57003 = stor2[var50002].field_0
                    var57004 = sub_45e8cec2[stor2[var50002].field_0].field_256
                    var57005 = stor2[var50002].field_0
                    var57006 = var50002
                    var57007 = var57007 + 1
                    continue 
                _1989 = mem[64]
                mem[mem[64]] = 64
                mem[mem[64] + 64] = mem[96]
                _1991 = mem[96]
                idx = 0
                while idx < 32 * _1991:
                    mem[idx + mem[64] + 96] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                mem[_1989 + 32] = (32 * _1991) + 96
                mem[(32 * _1991) + _1989 + 96] = mem[(32 * stor3) + 128]
                _2169 = mem[(32 * stor3) + 128]
                idx = 0
                while idx < 32 * _2169:
                    mem[idx + (32 * _1991) + _1989 + 128] = mem[idx + (32 * stor3) + 160]
                    idx = idx + 32
                    continue 
                return memory
                  from mem[64]
                   len (32 * _2169) + (32 * _1991) + _1989 + -mem[64] + 128
            require var52003 < stor2.length
            mem[0] = 2
            if var56001:
                idx = var56003
                while idx + 1 < stor2.length:
                    mem[0] = 2
                    if stor2[idx + 1].field_256:
                        idx = idx + 1
                        continue 
                    if stor2.length <= idx + 1:
                        mem[mem[64]] = 64
                        mem[mem[64] + 64] = mem[96]
                        _2679 = mem[96]
                        idx = 0
                        while idx < 32 * _2679:
                            mem[idx + mem[64] + 96] = mem[idx + 128]
                            idx = idx + 32
                            continue 
                        # nil
                    else:
                        require idx + 1 < stor2.length
                        mem[0] = stor2[idx + 1].field_0
                        mem[32] = 1
                        require var57007 + 1 < mem[96]
                        var57001 = var57007 + 1
                        var57003 = stor2[idx + 1].field_0
                        var57004 = sub_45e8cec2[stor2[idx + 1].field_0].field_256
                        var57005 = stor2[idx + 1].field_0
                        var57006 = idx + 1
                        var57007 = var57007 + 1
                        continue 
                if stor2.length <= idx + 1:
                    mem[mem[64]] = 64
                    mem[mem[64] + 64] = mem[96]
                    _2643 = mem[96]
                    idx = 0
                    while idx < 32 * _2643:
                        mem[idx + mem[64] + 96] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    # nil
                else:
                    require idx + 1 < stor2.length
                    mem[0] = stor2[idx + 1].field_0
                    mem[32] = 1
                    require var57007 + 1 < mem[96]
                    var57001 = var57007 + 1
                    var57003 = stor2[idx + 1].field_0
                    var57004 = sub_45e8cec2[stor2[idx + 1].field_0].field_256
                    var57005 = stor2[idx + 1].field_0
                    var57006 = idx + 1
                    var57007 = var57007 + 1
                    continue 
            else:
                if stor2.length > var56003:
                    require var56003 < stor2.length
                    mem[0] = stor2[var56003].field_0
                    mem[32] = 1
                    require var57007 + 1 < mem[96]
                    var57001 = var57007 + 1
                    var57003 = stor2[var56003].field_0
                    var57004 = sub_45e8cec2[stor2[var56003].field_0].field_256
                    var57005 = stor2[var56003].field_0
                    var57006 = var56003
                    var57007 = var57007 + 1
                    continue 
                _2417 = mem[64]
                mem[mem[64]] = 64
                mem[mem[64] + 64] = mem[96]
                _2419 = mem[96]
                idx = 0
                while idx < 32 * _2419:
                    mem[idx + mem[64] + 96] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                mem[_2417 + 32] = (32 * _2419) + 96
                mem[(32 * _2419) + _2417 + 96] = mem[(32 * stor3) + 128]
                _2610 = mem[(32 * stor3) + 128]
                idx = 0
                while idx < 32 * _2610:
                    mem[idx + (32 * _2419) + _2417 + 128] = mem[idx + (32 * stor3) + 160]
                    idx = idx + 32
                    continue 
                return memory
                  from mem[64]
                   len (32 * _2610) + (32 * _2419) + _2417 + -mem[64] + 128
        if not var45001:
            _796 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[96]
            _798 = mem[96]
            mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 32] = (32 * mem[96]) + 96
            mem[(32 * mem[96]) + _796 + 96] = mem[(32 * stor3) + 128]
            _1011 = mem[(32 * stor3) + 128]
            mem[(32 * _798) + _796 + 128 len floor32(mem[(32 * stor3) + 128])] = mem[(32 * stor3) + 160 len floor32(mem[(32 * stor3) + 128])]
            return memory
              from mem[64]
               len (32 * _1011) + (32 * _798) + _796 + -mem[64] + 128
        require var49001 < stor2.length
        mem[0] = stor2[var51001].field_0
        mem[32] = 1
        require var53006 < mem[96]
        mem[(32 * var55001) + 128] = var55003
        require var55007 < mem[(32 * stor3) + 128]
        mem[(32 * stor3) + (32 * var55007) + 160] = address(var55004)
        if var48002 >= stor2.length:
            if stor2.length > var48002:
                require var48002 < stor2.length
                mem[0] = stor2[var48002].field_0
                mem[32] = 1
                require var55007 + 1 < mem[96]
                var55001 = var55007 + 1
                var55003 = stor2[var48002].field_0
                var55004 = sub_45e8cec2[stor2[var48002].field_0].field_256
                var55005 = stor2[var48002].field_0
                var55006 = var48002
                var55007 = var55007 + 1
                continue 
            _1986 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[96]
            _1988 = mem[96]
            mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 32] = (32 * mem[96]) + 96
            mem[(32 * mem[96]) + _1986 + 96] = mem[(32 * stor3) + 128]
            _2165 = mem[(32 * stor3) + 128]
            mem[(32 * _1988) + _1986 + 128 len floor32(mem[(32 * stor3) + 128])] = mem[(32 * stor3) + 160 len floor32(mem[(32 * stor3) + 128])]
            return memory
              from mem[64]
               len (32 * _2165) + (32 * _1988) + _1986 + -mem[64] + 128
        require var50003 < stor2.length
        mem[0] = 2
        if var54001:
            idx = var54003
            while idx + 1 < stor2.length:
                mem[0] = 2
                if stor2[idx + 1].field_256:
                    idx = idx + 1
                    continue 
                if stor2.length <= idx + 1:
                    mem[mem[64]] = 64
                    mem[mem[64] + 64] = mem[96]
                    _2672 = mem[96]
                    idx = 0
                    while idx < 32 * _2672:
                        mem[idx + mem[64] + 96] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    # nil
                else:
                    require idx + 1 < stor2.length
                    mem[0] = stor2[idx + 1].field_0
                    mem[32] = 1
                    require var55007 + 1 < mem[96]
                    var55001 = var55007 + 1
                    var55003 = stor2[idx + 1].field_0
                    var55004 = sub_45e8cec2[stor2[idx + 1].field_0].field_256
                    var55005 = stor2[idx + 1].field_0
                    var55006 = idx + 1
                    var55007 = var55007 + 1
                    continue 
            if stor2.length <= idx + 1:
                # nil
            else:
                require idx + 1 < stor2.length
                mem[0] = stor2[idx + 1].field_0
                mem[32] = 1
                require var55007 + 1 < mem[96]
                var55001 = var55007 + 1
                var55003 = stor2[idx + 1].field_0
                var55004 = sub_45e8cec2[stor2[idx + 1].field_0].field_256
                var55005 = stor2[idx + 1].field_0
                var55006 = idx + 1
                var55007 = var55007 + 1
                continue 
        else:
            if stor2.length > var54003:
                require var54003 < stor2.length
                mem[0] = stor2[var54003].field_0
                mem[32] = 1
                require var55007 + 1 < mem[96]
                var55001 = var55007 + 1
                var55003 = stor2[var54003].field_0
                var55004 = sub_45e8cec2[stor2[var54003].field_0].field_256
                var55005 = stor2[var54003].field_0
                var55006 = var54003
                var55007 = var55007 + 1
                continue 
            _2414 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[96]
            _2416 = mem[96]
            mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 32] = (32 * mem[96]) + 96
            mem[(32 * mem[96]) + _2414 + 96] = mem[(32 * stor3) + 128]
            _2607 = mem[(32 * stor3) + 128]
            mem[(32 * _2416) + _2414 + 128 len floor32(mem[(32 * stor3) + 128])] = mem[(32 * stor3) + 160 len floor32(mem[(32 * stor3) + 128])]
            return memory
              from mem[64]
               len (32 * _2607) + (32 * _2416) + _2414 + -mem[64] + 128
}

function sub_615a7580(?) {
    mem[96] = stor16
    if not stor16:
        mem[(32 * stor16) + 128] = stor16
        mem[64] = (64 * stor16) + 160
        if var13002 >= stor15.length:
            if var34001:
                require var38001 < stor15.length
                mem[32] = 14
                require var42006 < stor16
                mem[(32 * var44001) + 128] = var44003
                require var44007 < stor16
                mem[(32 * stor16) + (32 * var44007) + 160] = var44005
                if var37002 >= stor15.length:
                    if stor15.length > var37002:
                        require var37002 < stor15.length
                        mem[0] = stor15[var37002].field_0
                        mem[32] = 14
                        require var44007 + 1 < stor16
                        var44001 = var44007 + 1
                        var44003 = stor15[var37002].field_0
                        var44004 = stor15[var37002].field_0
                        var44005 = stor14[stor15[var37002].field_0].field_256
                        var44006 = var37002
                        var44007 = var44007 + 1
                        continue 
                else:
                    require var39003 < stor15.length
                    mem[0] = 15
                    if not var43001:
                        if stor15.length > var43003:
                            require var43003 < stor15.length
                            mem[0] = stor15[var43003].field_0
                            mem[32] = 14
                            require var44007 + 1 < stor16
                            var44001 = var44007 + 1
                            var44003 = stor15[var43003].field_0
                            var44004 = stor15[var43003].field_0
                            var44005 = stor14[stor15[var43003].field_0].field_256
                            var44006 = var43003
                            var44007 = var44007 + 1
                            continue 
                    else:
                        idx = var43003
                        while idx + 1 < stor15.length:
                            mem[0] = 15
                            if stor15[idx + 1].field_256:
                                idx = idx + 1
                                continue 
                            if stor15.length > idx + 1:
                                require idx + 1 < stor15.length
                                mem[0] = stor15[idx + 1].field_0
                                mem[32] = 14
                                require var44007 + 1 < stor16
                                var44001 = var44007 + 1
                                var44003 = stor15[idx + 1].field_0
                                var44004 = stor15[idx + 1].field_0
                                var44005 = stor14[stor15[idx + 1].field_0].field_256
                                var44006 = idx + 1
                                var44007 = var44007 + 1
                                continue 
                            mem[(64 * stor16) + 160] = 64
                            mem[(64 * stor16) + 224] = stor16
                            idx = 0
                            while idx < 32 * stor16:
                                mem[idx + (64 * stor16) + 256] = mem[idx + 128]
                                idx = idx + 32
                                continue 
                            mem[(64 * stor16) + 192] = (32 * stor16) + 96
                            mem[(98 * stor16) + 256] = mem[(32 * stor16) + 128]
                            idx = 0
                            while idx < 32 * mem[(32 * stor16) + 128]:
                                mem[idx + (32 * mem[96]) + (64 * stor16) + 288] = mem[idx + (32 * stor16) + 160]
                                idx = idx + 32
                                continue 
                            return memory
                              from (64 * stor16) + 160
                               len (32 * mem[(32 * stor16) + 128]) + (32 * mem[96]) + (127 * stor16) + 128
                        if stor15.length > idx + 1:
                            require idx + 1 < stor15.length
                            mem[0] = stor15[idx + 1].field_0
                            mem[32] = 14
                            require var44007 + 1 < stor16
                            var44001 = var44007 + 1
                            var44003 = stor15[idx + 1].field_0
                            var44004 = stor15[idx + 1].field_0
                            var44005 = stor14[stor15[idx + 1].field_0].field_256
                            var44006 = idx + 1
                            var44007 = var44007 + 1
                            continue 
            mem[(64 * stor16) + 160] = 64
            mem[(64 * stor16) + 224] = stor16
            mem[(64 * stor16) + 256 len floor32(stor16)] = mem[128 len floor32(stor16)]
            mem[(64 * stor16) + 192] = (32 * stor16) + 96
            mem[(98 * stor16) + 256] = stor16
            mem[(98 * stor16) + 288 len floor32(stor16)] = mem[(32 * stor16) + 160 len floor32(stor16)]
            return memory
              from (64 * stor16) + 160
               len (193 * stor16) + 128
        require var15003 < stor15.length
        mem[0] = 15
        if not var19001:
            if var39001:
                require var43001 < stor15.length
                mem[32] = 14
                require var47006 < stor16
                mem[(32 * var49001) + 128] = var49003
                require var49007 < stor16
                mem[(32 * stor16) + (32 * var49007) + 160] = var49005
                if var42002 >= stor15.length:
                    if stor15.length > var42002:
                        require var42002 < stor15.length
                        mem[0] = stor15[var42002].field_0
                        mem[32] = 14
                        require var49007 + 1 < stor16
                        var49001 = var49007 + 1
                        var49003 = stor15[var42002].field_0
                        var49004 = stor15[var42002].field_0
                        var49005 = stor14[stor15[var42002].field_0].field_256
                        var49006 = var42002
                        var49007 = var49007 + 1
                        continue 
                else:
                    require var44003 < stor15.length
                    mem[0] = 15
                    if not var48001:
                        if stor15.length > var48003:
                            require var48003 < stor15.length
                            mem[0] = stor15[var48003].field_0
                            mem[32] = 14
                            require var49007 + 1 < stor16
                            var49001 = var49007 + 1
                            var49003 = stor15[var48003].field_0
                            var49004 = stor15[var48003].field_0
                            var49005 = stor14[stor15[var48003].field_0].field_256
                            var49006 = var48003
                            var49007 = var49007 + 1
                            continue 
                    else:
                        idx = var48003
                        while idx + 1 < stor15.length:
                            mem[0] = 15
                            if stor15[idx + 1].field_256:
                                idx = idx + 1
                                continue 
                            if stor15.length > idx + 1:
                                require idx + 1 < stor15.length
                                mem[0] = stor15[idx + 1].field_0
                                mem[32] = 14
                                require var49007 + 1 < stor16
                                var49001 = var49007 + 1
                                var49003 = stor15[idx + 1].field_0
                                var49004 = stor15[idx + 1].field_0
                                var49005 = stor14[stor15[idx + 1].field_0].field_256
                                var49006 = idx + 1
                                var49007 = var49007 + 1
                                continue 
                            mem[(64 * stor16) + 160] = 64
                            mem[(64 * stor16) + 224] = stor16
                            idx = 0
                            while idx < 32 * stor16:
                                mem[idx + (64 * stor16) + 256] = mem[idx + 128]
                                idx = idx + 32
                                continue 
                            mem[(64 * stor16) + 192] = (32 * stor16) + 96
                            mem[(98 * stor16) + 256] = mem[(32 * stor16) + 128]
                            idx = 0
                            while idx < 32 * mem[(32 * stor16) + 128]:
                                mem[idx + (32 * mem[96]) + (64 * stor16) + 288] = mem[idx + (32 * stor16) + 160]
                                idx = idx + 32
                                continue 
                            return memory
                              from (64 * stor16) + 160
                               len (32 * mem[(32 * stor16) + 128]) + (32 * mem[96]) + (127 * stor16) + 128
                        if stor15.length > idx + 1:
                            require idx + 1 < stor15.length
                            mem[0] = stor15[idx + 1].field_0
                            mem[32] = 14
                            require var49007 + 1 < stor16
                            var49001 = var49007 + 1
                            var49003 = stor15[idx + 1].field_0
                            var49004 = stor15[idx + 1].field_0
                            var49005 = stor14[stor15[idx + 1].field_0].field_256
                            var49006 = idx + 1
                            var49007 = var49007 + 1
                            continue 
            mem[(64 * stor16) + 160] = 64
            mem[(64 * stor16) + 224] = stor16
            mem[(64 * stor16) + 256 len floor32(stor16)] = mem[128 len floor32(stor16)]
            mem[(64 * stor16) + 192] = (32 * stor16) + 96
            mem[(98 * stor16) + 256] = stor16
            mem[(98 * stor16) + 288 len floor32(stor16)] = mem[(32 * stor16) + 160 len floor32(stor16)]
            return memory
              from (64 * stor16) + 160
               len (193 * stor16) + 128
        idx = var19003
        while idx + 1 < stor15.length:
            mem[0] = 15
            if stor15[idx + 1].field_256:
                idx = idx + 1
                continue 
            if not var45001:
                _791 = mem[64]
                mem[mem[64]] = 64
                mem[mem[64] + 64] = mem[96]
                _793 = mem[96]
                idx = 0
                while idx < 32 * _793:
                    mem[idx + mem[64] + 96] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                mem[_791 + 32] = (32 * _793) + 96
                mem[(32 * _793) + _791 + 96] = mem[(32 * stor16) + 128]
                _1004 = mem[(32 * stor16) + 128]
                idx = 0
                while idx < 32 * _1004:
                    mem[idx + (32 * _793) + _791 + 128] = mem[idx + (32 * stor16) + 160]
                    idx = idx + 32
                    continue 
                return memory
                  from mem[64]
                   len (32 * _1004) + (32 * _793) + _791 + -mem[64] + 128
            require var49001 < stor15.length
            mem[32] = 14
            require var53006 < mem[96]
            mem[(32 * var55001) + 128] = var55003
            require var55007 < mem[(32 * stor16) + 128]
            mem[(32 * stor16) + (32 * var55007) + 160] = var55005
            if var48002 >= stor15.length:
                if stor15.length > var48002:
                    require var48002 < stor15.length
                    mem[0] = stor15[var48002].field_0
                    mem[32] = 14
                    require var55007 + 1 < mem[96]
                    var55001 = var55007 + 1
                    var55003 = stor15[var48002].field_0
                    var55004 = stor15[var48002].field_0
                    var55005 = stor14[stor15[var48002].field_0].field_256
                    var55006 = var48002
                    var55007 = var55007 + 1
                    continue 
                _1983 = mem[64]
                mem[mem[64]] = 64
                mem[mem[64] + 64] = mem[96]
                _1985 = mem[96]
                idx = 0
                while idx < 32 * _1985:
                    mem[idx + mem[64] + 96] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                mem[_1983 + 32] = (32 * _1985) + 96
                mem[(32 * _1985) + _1983 + 96] = mem[(32 * stor16) + 128]
                _2151 = mem[(32 * stor16) + 128]
                idx = 0
                while idx < 32 * _2151:
                    mem[idx + (32 * _1985) + _1983 + 128] = mem[idx + (32 * stor16) + 160]
                    idx = idx + 32
                    continue 
                return memory
                  from mem[64]
                   len (32 * _2151) + (32 * _1985) + _1983 + -mem[64] + 128
            require var50003 < stor15.length
            mem[0] = 15
            if var54001:
                idx = var54003
                while idx + 1 < stor15.length:
                    mem[0] = 15
                    if stor15[idx + 1].field_256:
                        idx = idx + 1
                        continue 
                    if stor15.length <= idx + 1:
                        mem[mem[64]] = 64
                        mem[mem[64] + 64] = mem[96]
                        _2665 = mem[96]
                        idx = 0
                        while idx < 32 * _2665:
                            mem[idx + mem[64] + 96] = mem[idx + 128]
                            idx = idx + 32
                            continue 
                        # nil
                    else:
                        require idx + 1 < stor15.length
                        mem[0] = stor15[idx + 1].field_0
                        mem[32] = 14
                        require var55007 + 1 < mem[96]
                        var55001 = var55007 + 1
                        var55003 = stor15[idx + 1].field_0
                        var55004 = stor15[idx + 1].field_0
                        var55005 = stor14[stor15[idx + 1].field_0].field_256
                        var55006 = idx + 1
                        var55007 = var55007 + 1
                        continue 
                if stor15.length <= idx + 1:
                    mem[mem[64]] = 64
                    mem[mem[64] + 64] = mem[96]
                    _2637 = mem[96]
                    idx = 0
                    while idx < 32 * _2637:
                        mem[idx + mem[64] + 96] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    # nil
                else:
                    require idx + 1 < stor15.length
                    mem[0] = stor15[idx + 1].field_0
                    mem[32] = 14
                    require var55007 + 1 < mem[96]
                    var55001 = var55007 + 1
                    var55003 = stor15[idx + 1].field_0
                    var55004 = stor15[idx + 1].field_0
                    var55005 = stor14[stor15[idx + 1].field_0].field_256
                    var55006 = idx + 1
                    var55007 = var55007 + 1
                    continue 
            else:
                if stor15.length > var54003:
                    require var54003 < stor15.length
                    mem[0] = stor15[var54003].field_0
                    mem[32] = 14
                    require var55007 + 1 < mem[96]
                    var55001 = var55007 + 1
                    var55003 = stor15[var54003].field_0
                    var55004 = stor15[var54003].field_0
                    var55005 = stor14[stor15[var54003].field_0].field_256
                    var55006 = var54003
                    var55007 = var55007 + 1
                    continue 
                _2411 = mem[64]
                mem[mem[64]] = 64
                mem[mem[64] + 64] = mem[96]
                _2413 = mem[96]
                idx = 0
                while idx < 32 * _2413:
                    mem[idx + mem[64] + 96] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                mem[_2411 + 32] = (32 * _2413) + 96
                mem[(32 * _2413) + _2411 + 96] = mem[(32 * stor16) + 128]
                _2596 = mem[(32 * stor16) + 128]
                idx = 0
                while idx < 32 * _2596:
                    mem[idx + (32 * _2413) + _2411 + 128] = mem[idx + (32 * stor16) + 160]
                    idx = idx + 32
                    continue 
                return memory
                  from mem[64]
                   len (32 * _2596) + (32 * _2413) + _2411 + -mem[64] + 128
        if not var43001:
            _788 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[96]
            _790 = mem[96]
            mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 32] = (32 * mem[96]) + 96
            mem[(32 * mem[96]) + _788 + 96] = mem[(32 * stor16) + 128]
            _1001 = mem[(32 * stor16) + 128]
            mem[(32 * _790) + _788 + 128 len floor32(mem[(32 * stor16) + 128])] = mem[(32 * stor16) + 160 len floor32(mem[(32 * stor16) + 128])]
            return memory
              from mem[64]
               len (32 * _1001) + (32 * _790) + _788 + -mem[64] + 128
        require var47001 < stor15.length
        mem[0] = stor15[var49001].field_0
        mem[32] = 14
        require var51006 < mem[96]
        mem[(32 * var53001) + 128] = var53003
        require var53007 < mem[(32 * stor16) + 128]
        mem[(32 * stor16) + (32 * var53007) + 160] = var53005
        if var46002 >= stor15.length:
            if stor15.length > var46002:
                require var46002 < stor15.length
                mem[0] = stor15[var46002].field_0
                mem[32] = 14
                require var53007 + 1 < mem[96]
                var53001 = var53007 + 1
                var53003 = stor15[var46002].field_0
                var53004 = stor15[var46002].field_0
                var53005 = stor14[stor15[var46002].field_0].field_256
                var53006 = var46002
                var53007 = var53007 + 1
                continue 
            _1980 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[96]
            _1982 = mem[96]
            mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 32] = (32 * mem[96]) + 96
            mem[(32 * mem[96]) + _1980 + 96] = mem[(32 * stor16) + 128]
            _2147 = mem[(32 * stor16) + 128]
            mem[(32 * _1982) + _1980 + 128 len floor32(mem[(32 * stor16) + 128])] = mem[(32 * stor16) + 160 len floor32(mem[(32 * stor16) + 128])]
            return memory
              from mem[64]
               len (32 * _2147) + (32 * _1982) + _1980 + -mem[64] + 128
        require var48003 < stor15.length
        mem[0] = 15
        if var52001:
            idx = var52003
            while idx + 1 < stor15.length:
                mem[0] = 15
                if stor15[idx + 1].field_256:
                    idx = idx + 1
                    continue 
                if stor15.length <= idx + 1:
                    mem[mem[64]] = 64
                    mem[mem[64] + 64] = mem[96]
                    _2658 = mem[96]
                    idx = 0
                    while idx < 32 * _2658:
                        mem[idx + mem[64] + 96] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    # nil
                else:
                    require idx + 1 < stor15.length
                    mem[0] = stor15[idx + 1].field_0
                    mem[32] = 14
                    require var53007 + 1 < mem[96]
                    var53001 = var53007 + 1
                    var53003 = stor15[idx + 1].field_0
                    var53004 = stor15[idx + 1].field_0
                    var53005 = stor14[stor15[idx + 1].field_0].field_256
                    var53006 = idx + 1
                    var53007 = var53007 + 1
                    continue 
            if stor15.length <= idx + 1:
                # nil
            else:
                require idx + 1 < stor15.length
                mem[0] = stor15[idx + 1].field_0
                mem[32] = 14
                require var53007 + 1 < mem[96]
                var53001 = var53007 + 1
                var53003 = stor15[idx + 1].field_0
                var53004 = stor15[idx + 1].field_0
                var53005 = stor14[stor15[idx + 1].field_0].field_256
                var53006 = idx + 1
                var53007 = var53007 + 1
                continue 
        else:
            if stor15.length > var52003:
                require var52003 < stor15.length
                mem[0] = stor15[var52003].field_0
                mem[32] = 14
                require var53007 + 1 < mem[96]
                var53001 = var53007 + 1
                var53003 = stor15[var52003].field_0
                var53004 = stor15[var52003].field_0
                var53005 = stor14[stor15[var52003].field_0].field_256
                var53006 = var52003
                var53007 = var53007 + 1
                continue 
            _2408 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[96]
            _2410 = mem[96]
            mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 32] = (32 * mem[96]) + 96
            mem[(32 * mem[96]) + _2408 + 96] = mem[(32 * stor16) + 128]
            _2593 = mem[(32 * stor16) + 128]
            mem[(32 * _2410) + _2408 + 128 len floor32(mem[(32 * stor16) + 128])] = mem[(32 * stor16) + 160 len floor32(mem[(32 * stor16) + 128])]
            return memory
              from mem[64]
               len (32 * _2593) + (32 * _2410) + _2408 + -mem[64] + 128
    else:
        mem[128 len 32 * stor16] = code.data[5368 len 32 * stor16]
        mem[(32 * stor16) + 128] = stor16
        mem[64] = (64 * stor16) + 160
        mem[(32 * stor16) + 160 len 32 * stor16] = code.data[5368 len 32 * stor16]
        if var15002 >= stor15.length:
            if var36001:
                require var40001 < stor15.length
                mem[32] = 14
                require var44006 < stor16
                mem[(32 * var46001) + 128] = var46003
                require var46007 < stor16
                mem[(32 * stor16) + (32 * var46007) + 160] = var46005
                if var39002 >= stor15.length:
                    if stor15.length > var39002:
                        require var39002 < stor15.length
                        mem[0] = stor15[var39002].field_0
                        mem[32] = 14
                        require var46007 + 1 < stor16
                        var46001 = var46007 + 1
                        var46003 = stor15[var39002].field_0
                        var46004 = stor15[var39002].field_0
                        var46005 = stor14[stor15[var39002].field_0].field_256
                        var46006 = var39002
                        var46007 = var46007 + 1
                        continue 
                else:
                    require var41003 < stor15.length
                    mem[0] = 15
                    if not var45001:
                        if stor15.length > var45003:
                            require var45003 < stor15.length
                            mem[0] = stor15[var45003].field_0
                            mem[32] = 14
                            require var46007 + 1 < stor16
                            var46001 = var46007 + 1
                            var46003 = stor15[var45003].field_0
                            var46004 = stor15[var45003].field_0
                            var46005 = stor14[stor15[var45003].field_0].field_256
                            var46006 = var45003
                            var46007 = var46007 + 1
                            continue 
                    else:
                        idx = var45003
                        while idx + 1 < stor15.length:
                            mem[0] = 15
                            if stor15[idx + 1].field_256:
                                idx = idx + 1
                                continue 
                            if stor15.length > idx + 1:
                                require idx + 1 < stor15.length
                                mem[0] = stor15[idx + 1].field_0
                                mem[32] = 14
                                require var46007 + 1 < stor16
                                var46001 = var46007 + 1
                                var46003 = stor15[idx + 1].field_0
                                var46004 = stor15[idx + 1].field_0
                                var46005 = stor14[stor15[idx + 1].field_0].field_256
                                var46006 = idx + 1
                                var46007 = var46007 + 1
                                continue 
                            mem[(64 * stor16) + 160] = 64
                            mem[(64 * stor16) + 224] = stor16
                            idx = 0
                            while idx < 32 * stor16:
                                mem[idx + (64 * stor16) + 256] = mem[idx + 128]
                                idx = idx + 32
                                continue 
                            mem[(64 * stor16) + 192] = (32 * stor16) + 96
                            mem[(98 * stor16) + 256] = mem[(32 * stor16) + 128]
                            idx = 0
                            while idx < 32 * mem[(32 * stor16) + 128]:
                                mem[idx + (32 * mem[96]) + (64 * stor16) + 288] = mem[idx + (32 * stor16) + 160]
                                idx = idx + 32
                                continue 
                            return memory
                              from (64 * stor16) + 160
                               len (32 * mem[(32 * stor16) + 128]) + (32 * mem[96]) + (127 * stor16) + 128
                        if stor15.length > idx + 1:
                            require idx + 1 < stor15.length
                            mem[0] = stor15[idx + 1].field_0
                            mem[32] = 14
                            require var46007 + 1 < stor16
                            var46001 = var46007 + 1
                            var46003 = stor15[idx + 1].field_0
                            var46004 = stor15[idx + 1].field_0
                            var46005 = stor14[stor15[idx + 1].field_0].field_256
                            var46006 = idx + 1
                            var46007 = var46007 + 1
                            continue 
            mem[(64 * stor16) + 160] = 64
            mem[(64 * stor16) + 224] = stor16
            mem[(64 * stor16) + 256 len floor32(stor16)] = code.data[5368 len floor32(stor16)]
            mem[(64 * stor16) + 192] = (32 * stor16) + 96
            mem[(98 * stor16) + 256] = stor16
            mem[(98 * stor16) + 288 len floor32(stor16)] = code.data[5368 len floor32(stor16)]
            return memory
              from (64 * stor16) + 160
               len (193 * stor16) + 128
        require var17003 < stor15.length
        mem[0] = 15
        if not var21001:
            if var41001:
                require var45001 < stor15.length
                mem[32] = 14
                require var49006 < stor16
                mem[(32 * var51001) + 128] = var51003
                require var51007 < stor16
                mem[(32 * stor16) + (32 * var51007) + 160] = var51005
                if var44002 >= stor15.length:
                    if stor15.length > var44002:
                        require var44002 < stor15.length
                        mem[0] = stor15[var44002].field_0
                        mem[32] = 14
                        require var51007 + 1 < stor16
                        var51001 = var51007 + 1
                        var51003 = stor15[var44002].field_0
                        var51004 = stor15[var44002].field_0
                        var51005 = stor14[stor15[var44002].field_0].field_256
                        var51006 = var44002
                        var51007 = var51007 + 1
                        continue 
                else:
                    require var46003 < stor15.length
                    mem[0] = 15
                    if not var50001:
                        if stor15.length > var50003:
                            require var50003 < stor15.length
                            mem[0] = stor15[var50003].field_0
                            mem[32] = 14
                            require var51007 + 1 < stor16
                            var51001 = var51007 + 1
                            var51003 = stor15[var50003].field_0
                            var51004 = stor15[var50003].field_0
                            var51005 = stor14[stor15[var50003].field_0].field_256
                            var51006 = var50003
                            var51007 = var51007 + 1
                            continue 
                    else:
                        idx = var50003
                        while idx + 1 < stor15.length:
                            mem[0] = 15
                            if stor15[idx + 1].field_256:
                                idx = idx + 1
                                continue 
                            if stor15.length > idx + 1:
                                require idx + 1 < stor15.length
                                mem[0] = stor15[idx + 1].field_0
                                mem[32] = 14
                                require var51007 + 1 < stor16
                                var51001 = var51007 + 1
                                var51003 = stor15[idx + 1].field_0
                                var51004 = stor15[idx + 1].field_0
                                var51005 = stor14[stor15[idx + 1].field_0].field_256
                                var51006 = idx + 1
                                var51007 = var51007 + 1
                                continue 
                            mem[(64 * stor16) + 160] = 64
                            mem[(64 * stor16) + 224] = stor16
                            idx = 0
                            while idx < 32 * stor16:
                                mem[idx + (64 * stor16) + 256] = mem[idx + 128]
                                idx = idx + 32
                                continue 
                            mem[(64 * stor16) + 192] = (32 * stor16) + 96
                            mem[(98 * stor16) + 256] = mem[(32 * stor16) + 128]
                            idx = 0
                            while idx < 32 * mem[(32 * stor16) + 128]:
                                mem[idx + (32 * mem[96]) + (64 * stor16) + 288] = mem[idx + (32 * stor16) + 160]
                                idx = idx + 32
                                continue 
                            return memory
                              from (64 * stor16) + 160
                               len (32 * mem[(32 * stor16) + 128]) + (32 * mem[96]) + (127 * stor16) + 128
                        if stor15.length > idx + 1:
                            require idx + 1 < stor15.length
                            mem[0] = stor15[idx + 1].field_0
                            mem[32] = 14
                            require var51007 + 1 < stor16
                            var51001 = var51007 + 1
                            var51003 = stor15[idx + 1].field_0
                            var51004 = stor15[idx + 1].field_0
                            var51005 = stor14[stor15[idx + 1].field_0].field_256
                            var51006 = idx + 1
                            var51007 = var51007 + 1
                            continue 
            mem[(64 * stor16) + 160] = 64
            mem[(64 * stor16) + 224] = stor16
            mem[(64 * stor16) + 256 len floor32(stor16)] = code.data[5368 len floor32(stor16)]
            mem[(64 * stor16) + 192] = (32 * stor16) + 96
            mem[(98 * stor16) + 256] = stor16
            mem[(98 * stor16) + 288 len floor32(stor16)] = code.data[5368 len floor32(stor16)]
            return memory
              from (64 * stor16) + 160
               len (193 * stor16) + 128
        idx = var21003
        while idx + 1 < stor15.length:
            mem[0] = 15
            if stor15[idx + 1].field_256:
                idx = idx + 1
                continue 
            if not var47001:
                _799 = mem[64]
                mem[mem[64]] = 64
                mem[mem[64] + 64] = mem[96]
                _801 = mem[96]
                idx = 0
                while idx < 32 * _801:
                    mem[idx + mem[64] + 96] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                mem[_799 + 32] = (32 * _801) + 96
                mem[(32 * _801) + _799 + 96] = mem[(32 * stor16) + 128]
                _1014 = mem[(32 * stor16) + 128]
                idx = 0
                while idx < 32 * _1014:
                    mem[idx + (32 * _801) + _799 + 128] = mem[idx + (32 * stor16) + 160]
                    idx = idx + 32
                    continue 
                return memory
                  from mem[64]
                   len (32 * _1014) + (32 * _801) + _799 + -mem[64] + 128
            require var51001 < stor15.length
            mem[32] = 14
            require var55006 < mem[96]
            mem[(32 * var57001) + 128] = var57003
            require var57007 < mem[(32 * stor16) + 128]
            mem[(32 * stor16) + (32 * var57007) + 160] = var57005
            if var50002 >= stor15.length:
                if stor15.length > var50002:
                    require var50002 < stor15.length
                    mem[0] = stor15[var50002].field_0
                    mem[32] = 14
                    require var57007 + 1 < mem[96]
                    var57001 = var57007 + 1
                    var57003 = stor15[var50002].field_0
                    var57004 = stor15[var50002].field_0
                    var57005 = stor14[stor15[var50002].field_0].field_256
                    var57006 = var50002
                    var57007 = var57007 + 1
                    continue 
                _1989 = mem[64]
                mem[mem[64]] = 64
                mem[mem[64] + 64] = mem[96]
                _1991 = mem[96]
                idx = 0
                while idx < 32 * _1991:
                    mem[idx + mem[64] + 96] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                mem[_1989 + 32] = (32 * _1991) + 96
                mem[(32 * _1991) + _1989 + 96] = mem[(32 * stor16) + 128]
                _2169 = mem[(32 * stor16) + 128]
                idx = 0
                while idx < 32 * _2169:
                    mem[idx + (32 * _1991) + _1989 + 128] = mem[idx + (32 * stor16) + 160]
                    idx = idx + 32
                    continue 
                return memory
                  from mem[64]
                   len (32 * _2169) + (32 * _1991) + _1989 + -mem[64] + 128
            require var52003 < stor15.length
            mem[0] = 15
            if var56001:
                idx = var56003
                while idx + 1 < stor15.length:
                    mem[0] = 15
                    if stor15[idx + 1].field_256:
                        idx = idx + 1
                        continue 
                    if stor15.length <= idx + 1:
                        mem[mem[64]] = 64
                        mem[mem[64] + 64] = mem[96]
                        _2679 = mem[96]
                        idx = 0
                        while idx < 32 * _2679:
                            mem[idx + mem[64] + 96] = mem[idx + 128]
                            idx = idx + 32
                            continue 
                        # nil
                    else:
                        require idx + 1 < stor15.length
                        mem[0] = stor15[idx + 1].field_0
                        mem[32] = 14
                        require var57007 + 1 < mem[96]
                        var57001 = var57007 + 1
                        var57003 = stor15[idx + 1].field_0
                        var57004 = stor15[idx + 1].field_0
                        var57005 = stor14[stor15[idx + 1].field_0].field_256
                        var57006 = idx + 1
                        var57007 = var57007 + 1
                        continue 
                if stor15.length <= idx + 1:
                    mem[mem[64]] = 64
                    mem[mem[64] + 64] = mem[96]
                    _2643 = mem[96]
                    idx = 0
                    while idx < 32 * _2643:
                        mem[idx + mem[64] + 96] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    # nil
                else:
                    require idx + 1 < stor15.length
                    mem[0] = stor15[idx + 1].field_0
                    mem[32] = 14
                    require var57007 + 1 < mem[96]
                    var57001 = var57007 + 1
                    var57003 = stor15[idx + 1].field_0
                    var57004 = stor15[idx + 1].field_0
                    var57005 = stor14[stor15[idx + 1].field_0].field_256
                    var57006 = idx + 1
                    var57007 = var57007 + 1
                    continue 
            else:
                if stor15.length > var56003:
                    require var56003 < stor15.length
                    mem[0] = stor15[var56003].field_0
                    mem[32] = 14
                    require var57007 + 1 < mem[96]
                    var57001 = var57007 + 1
                    var57003 = stor15[var56003].field_0
                    var57004 = stor15[var56003].field_0
                    var57005 = stor14[stor15[var56003].field_0].field_256
                    var57006 = var56003
                    var57007 = var57007 + 1
                    continue 
                _2417 = mem[64]
                mem[mem[64]] = 64
                mem[mem[64] + 64] = mem[96]
                _2419 = mem[96]
                idx = 0
                while idx < 32 * _2419:
                    mem[idx + mem[64] + 96] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                mem[_2417 + 32] = (32 * _2419) + 96
                mem[(32 * _2419) + _2417 + 96] = mem[(32 * stor16) + 128]
                _2610 = mem[(32 * stor16) + 128]
                idx = 0
                while idx < 32 * _2610:
                    mem[idx + (32 * _2419) + _2417 + 128] = mem[idx + (32 * stor16) + 160]
                    idx = idx + 32
                    continue 
                return memory
                  from mem[64]
                   len (32 * _2610) + (32 * _2419) + _2417 + -mem[64] + 128
        if not var45001:
            _796 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[96]
            _798 = mem[96]
            mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 32] = (32 * mem[96]) + 96
            mem[(32 * mem[96]) + _796 + 96] = mem[(32 * stor16) + 128]
            _1011 = mem[(32 * stor16) + 128]
            mem[(32 * _798) + _796 + 128 len floor32(mem[(32 * stor16) + 128])] = mem[(32 * stor16) + 160 len floor32(mem[(32 * stor16) + 128])]
            return memory
              from mem[64]
               len (32 * _1011) + (32 * _798) + _796 + -mem[64] + 128
        require var49001 < stor15.length
        mem[0] = stor15[var51001].field_0
        mem[32] = 14
        require var53006 < mem[96]
        mem[(32 * var55001) + 128] = var55003
        require var55007 < mem[(32 * stor16) + 128]
        mem[(32 * stor16) + (32 * var55007) + 160] = var55005
        if var48002 >= stor15.length:
            if stor15.length > var48002:
                require var48002 < stor15.length
                mem[0] = stor15[var48002].field_0
                mem[32] = 14
                require var55007 + 1 < mem[96]
                var55001 = var55007 + 1
                var55003 = stor15[var48002].field_0
                var55004 = stor15[var48002].field_0
                var55005 = stor14[stor15[var48002].field_0].field_256
                var55006 = var48002
                var55007 = var55007 + 1
                continue 
            _1986 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[96]
            _1988 = mem[96]
            mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 32] = (32 * mem[96]) + 96
            mem[(32 * mem[96]) + _1986 + 96] = mem[(32 * stor16) + 128]
            _2165 = mem[(32 * stor16) + 128]
            mem[(32 * _1988) + _1986 + 128 len floor32(mem[(32 * stor16) + 128])] = mem[(32 * stor16) + 160 len floor32(mem[(32 * stor16) + 128])]
            return memory
              from mem[64]
               len (32 * _2165) + (32 * _1988) + _1986 + -mem[64] + 128
        require var50003 < stor15.length
        mem[0] = 15
        if var54001:
            idx = var54003
            while idx + 1 < stor15.length:
                mem[0] = 15
                if stor15[idx + 1].field_256:
                    idx = idx + 1
                    continue 
                if stor15.length <= idx + 1:
                    mem[mem[64]] = 64
                    mem[mem[64] + 64] = mem[96]
                    _2672 = mem[96]
                    idx = 0
                    while idx < 32 * _2672:
                        mem[idx + mem[64] + 96] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    # nil
                else:
                    require idx + 1 < stor15.length
                    mem[0] = stor15[idx + 1].field_0
                    mem[32] = 14
                    require var55007 + 1 < mem[96]
                    var55001 = var55007 + 1
                    var55003 = stor15[idx + 1].field_0
                    var55004 = stor15[idx + 1].field_0
                    var55005 = stor14[stor15[idx + 1].field_0].field_256
                    var55006 = idx + 1
                    var55007 = var55007 + 1
                    continue 
            if stor15.length <= idx + 1:
                # nil
            else:
                require idx + 1 < stor15.length
                mem[0] = stor15[idx + 1].field_0
                mem[32] = 14
                require var55007 + 1 < mem[96]
                var55001 = var55007 + 1
                var55003 = stor15[idx + 1].field_0
                var55004 = stor15[idx + 1].field_0
                var55005 = stor14[stor15[idx + 1].field_0].field_256
                var55006 = idx + 1
                var55007 = var55007 + 1
                continue 
        else:
            if stor15.length > var54003:
                require var54003 < stor15.length
                mem[0] = stor15[var54003].field_0
                mem[32] = 14
                require var55007 + 1 < mem[96]
                var55001 = var55007 + 1
                var55003 = stor15[var54003].field_0
                var55004 = stor15[var54003].field_0
                var55005 = stor14[stor15[var54003].field_0].field_256
                var55006 = var54003
                var55007 = var55007 + 1
                continue 
            _2414 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[96]
            _2416 = mem[96]
            mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 32] = (32 * mem[96]) + 96
            mem[(32 * mem[96]) + _2414 + 96] = mem[(32 * stor16) + 128]
            _2607 = mem[(32 * stor16) + 128]
            mem[(32 * _2416) + _2414 + 128 len floor32(mem[(32 * stor16) + 128])] = mem[(32 * stor16) + 160 len floor32(mem[(32 * stor16) + 128])]
            return memory
              from mem[64]
               len (32 * _2607) + (32 * _2416) + _2414 + -mem[64] + 128
}



}

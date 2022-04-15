contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint8 stor6;

function _fallback() payable {
    stor1 = 0
    stor2 = 0
    stor6 = 0
    require not msg.value
    stor0 = msg.sender
    return code.data[79 len 3939]
}



// =====================  Runtime code  =====================


address owner;
array of uint8 stor1;
uint256 distributionEntryCount;
array of struct transactionLog;
array of struct distributionList;
uint8 stor6;

function distributionFixed() {
    return bool(stor6)
}

function txCount() {
    return stor1.length
}

function transactionLog(uint256 arg1) {
    require arg1 < transactionLog.length
    mem[320] = uint256(transactionLog[arg1].field_0)
    idx = 320
    s = 0
    while transactionLog[arg1].length + 320 > idx + 32:
        mem[idx + 32] = uint256(transactionLog[(6 * arg1) + s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[transactionLog[arg1].length + (floor32(transactionLog[arg1].length - 1) + -transactionLog[arg1].length + 32 % 32) + 320] = stor[(6 * arg1) + ('name', 'transactionLog', 4) + 1].length
    mem[transactionLog[arg1].length + (floor32(transactionLog[arg1].length - 1) + -transactionLog[arg1].length + 32 % 32) + 352] = uint256(stor[sha3((6 * arg1) + ('name', 'transactionLog', 4) + 1)].field_0)
    idx = transactionLog[arg1].length + (floor32(transactionLog[arg1].length - 1) + -transactionLog[arg1].length + 32 % 32) + 352
    s = 0
    while transactionLog[arg1].length + (floor32(transactionLog[arg1].length - 1) + -transactionLog[arg1].length + 32 % 32) + stor[(6 * arg1) + ('name', 'transactionLog', 4) + 1].length + 352 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((6 * arg1) + ('name', 'transactionLog', 4) + 1)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=transactionLog[arg1].length, data=mem[320 len transactionLog[arg1].length + (floor32(transactionLog[arg1].length - 1) + -transactionLog[arg1].length + 32 % 32) + stor[(6 * arg1) + ('name', 'transactionLog', 4) + 1].length + (floor32(stor[(6 * arg1) + ('name', 'transactionLog', 4) + 1].length - 1) + -stor[(6 * arg1) + ('name', 'transactionLog', 4) + 1].length + 32 % 32) + 32]), 
           transactionLog[arg1].length + (floor32(transactionLog[arg1].length - 1) + -transactionLog[arg1].length + 32 % 32) + 224,
           address(transactionLog[arg1].field_512),
           uint256(transactionLog[arg1].field_768),
           uint8(transactionLog[arg1].field_1024),
           uint256(transactionLog[arg1].field_1280)
}

function owner() {
    return owner
}

function distributionList(uint256 arg1) {
    require arg1 < distributionList.length
    mem[288] = uint256(distributionList[arg1].field_0)
    idx = 288
    s = 0
    while distributionList[arg1].length + 288 > idx + 32:
        mem[idx + 32] = uint256(distributionList[(5 * arg1) + s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=distributionList[arg1].length, data=mem[288 len distributionList[arg1].length + (floor32(distributionList[arg1].length - 1) + -distributionList[arg1].length + 32 % 32)]), 
           address(distributionList[arg1].field_256),
           uint256(distributionList[arg1].field_512),
           uint8(distributionList[arg1].field_768),
           uint256(distributionList[arg1].field_1024)
}

function distributionEntryCount() {
    return distributionEntryCount
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function fixDistribution(uint8 arg1, uint256 arg2) {
    mem[256] = 0
    mem[96] = 256
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[480] = 0
    mem[288] = 480
    mem[64] = 544
    mem[512] = 0
    mem[320] = 512
    mem[352] = 0
    mem[384] = 0
    mem[416] = 0
    mem[448] = 0
    require owner == msg.sender
    require not stor6
    idx = 0
    s = 96
    while idx < distributionEntryCount:
        require idx < distributionList.length
        _193 = mem[64]
        mem[64] = mem[64] + ceil32(distributionList[idx].length) + 192
        mem[_193 + 160] = distributionList[idx].length
        mem[0] = (5 * idx) + sha3(5)
        mem[_193 + 192] = uint256(distributionList[idx].field_0)
        s = _193 + 192
        t = sha3(mem[0])
        while _193 + distributionList[idx].length + 192 > s + 32:
            mem[s + 32] = uint256(stor1[t])
            s = s + 32
            t = t + 1
            continue 
        mem[_193] = _193 + 160
        mem[_193 + 32] = address(distributionList[idx].field_256)
        mem[_193 + 64] = uint256(distributionList[idx].field_512)
        mem[_193 + 96] = uint8(distributionList[idx].field_768)
        require uint8(uint8(arg1 * uint8(distributionList[idx].field_768)) / 100)
        mem[_193 + 128] = 100 * uint256(distributionList[idx].field_512) * arg2 / uint8(uint8(arg1 * uint8(distributionList[idx].field_768)) / 100)
        require idx < distributionList.length
        _407 = mem[_193 + 160]
        mem[0] = (5 * idx) + sha3(5)
        uint256(distributionList[idx].field_0) = (2 * _407) + 1
        t = sha3((5 * idx) + sha3(5))
        s = _193 + 192
        while _193 + _407 + 192 > s:
            uint256(stor[t]) = mem[s]
            t = t + 1
            s = s + 32
            continue 
        s = sha3((5 * idx) + sha3(5)) + (Mask(251, 0, _407 + 31) >> 5)
        while sha3((5 * idx) + sha3(5)) + (distributionList[idx].length + 31 / 32) > s:
            uint256(stor[s]) = 0
            s = s + 1
            continue 
        address(distributionList[idx].field_256) = address(distributionList[idx].field_256)
        uint8(distributionList[idx].field_768) = uint8(distributionList[idx].field_768)
        uint256(distributionList[idx].field_1024) = 100 * uint256(distributionList[idx].field_512) * arg2 / uint8(uint8(arg1 * uint8(distributionList[idx].field_768)) / 100)
        idx = idx + 1
        s = _193
        continue 
    stor6 = 1
    _189 = mem[64]
    mem[64] = mem[64] + 64
    mem[_189] = 5
    mem[_189 + 32] = 'FIXED'
    mem[288] = _189
    mem[448] = block.timestamp
    _190 = mem[64]
    mem[64] = mem[64] + 64
    mem[_190] = 23
    mem[_190 + 32] = '__FIXED__DISTRIBUTION__'
    mem[320] = _190
    transactionLog.length++
    if not transactionLog.length > transactionLog.length + 1:
        bool(transactionLog[transactionLog.length].field_0) = 0
        uint255(transactionLog[transactionLog.length].field_1) = 5
        Mask(248, 0, transactionLog[transactionLog.length].field_8) = 'FIXED' / 256
        idx = 0
        while transactionLog[transactionLog.length].length + 31 / 32 > idx:
            uint256(transactionLog[(6 * transactionLog.length) + idx].field_0) = 0
            idx = idx + 1
            continue 
        bool(transactionLog[transactionLog.length].field_256) = 0
        uint255(transactionLog[transactionLog.length].field_257) = 23
        Mask(248, 0, transactionLog[transactionLog.length].field_264) = '__FIXED__DISTRIBUTION__' / 256
        idx = 0
        while stor[(6 * transactionLog.length) + ('name', 'transactionLog', 4) + 1].length + 31 / 32 > idx:
            uint256(stor[idx + sha3((6 * transactionLog.length) + ('name', 'transactionLog', 4) + 1)].field_0) = 0
            idx = idx + 1
            continue 
    else:
        mem[0] = 4
        idx = (6 * transactionLog.length) + 6
        while sha3(4) + (6 * transactionLog.length) > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])]) = 0
            if 31 >= stor[idx + sha3(mem[0])].length:
                uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                if 31 >= stor[idx + sha3(mem[0]) + 1].length:
                    address(stor[idx + sha3(mem[0]) + 2]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                    uint8(stor[idx + sha3(mem[0]) + 4]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 5]) = 0
                    idx = idx + 6
                    continue 
                mem[0] = idx + sha3(mem[0]) + 1
                s = sha3(s + sha3(mem[0]) + 1)
                while sha3(s + sha3(mem[0]) + 1) + (stor[s + sha3(mem[0]) + 1].length + 31 / 32) > s + sha3(mem[0]):
                    uint256(stor[s + sha3(mem[0])]) = 0
                    s = s + 1
                    continue 
                address(stor[s + sha3(mem[0]) + 2]) = 0
                uint256(stor[s + sha3(mem[0]) + 3]) = 0
                uint8(stor[s + sha3(mem[0]) + 4]) = 0
                uint256(stor[s + sha3(mem[0]) + 5]) = 0
                s = s + 6
                continue 
            mem[0] = idx + sha3(mem[0])
            s = sha3(idx + sha3(mem[0]))
            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 1].length:
                mem[0] = idx + sha3(mem[0]) + 1
                s = sha3(idx + sha3(mem[0]) + 1)
                while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            address(stor[idx + sha3(mem[0]) + 2]) = 0
            uint256(stor[idx + sha3(mem[0]) + 3]) = 0
            uint8(stor[idx + sha3(mem[0]) + 4]) = 0
            uint256(stor[idx + sha3(mem[0]) + 5]) = 0
            idx = idx + 6
            continue 
        mem[0] = 4
        _405 = mem[_189]
        mem[0] = (6 * transactionLog.length) + sha3(4)
        uint256(transactionLog[transactionLog.length][].field_0) = Array(len=_405, data=mem[_189 + 32 len _405])
        _675 = mem[_190]
        uint256(stor[sha3((6 * transactionLog.length) + ('name', 'transactionLog', 4) + 1)][].field_0) = Array(len=_675, data=mem[_190 + 32 len _675])
    address(transactionLog[transactionLog.length].field_512) = mem[364 len 20]
    uint256(transactionLog[transactionLog.length].field_768) = mem[384]
    uint8(transactionLog[transactionLog.length].field_1024) = mem[447 len 1]
    uint256(transactionLog[transactionLog.length].field_1280) = block.timestamp
    stor1.length++
}

function appendToDistributionList(string arg1, address arg2, uint256 arg3, uint8 arg4) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 0
    require owner == msg.sender
    mem[ceil32(arg1.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 640] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 640] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 640] = 3
    _3317 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 640 len (arg1.length % 32) + 32])
    mem[ceil32(arg1.length) + 640] = uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 640 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]])
    require not stor6
    require arg4 <= 100
    transactionLog.length++
    if uint8(stor1[_3317]):
        if not transactionLog.length > transactionLog.length + 1:
            bool(transactionLog[transactionLog.length].field_0) = 0
            uint255(transactionLog[transactionLog.length].field_1) = 6
            Mask(248, 0, transactionLog[transactionLog.length].field_8) = 'UPDATE' / 256
            idx = 0
            while transactionLog[transactionLog.length].length + 31 / 32 > idx:
                uint256(transactionLog[(6 * transactionLog.length) + idx].field_0) = 0
                idx = idx + 1
                continue 
            uint256(stor[sha3((6 * transactionLog.length) + ('name', 'transactionLog', 4) + 1)][].field_0) = Array(len=arg1.length, data=arg1[all])
            address(transactionLog[transactionLog.length].field_512) = arg2
            uint256(transactionLog[transactionLog.length].field_768) = arg3
            uint8(transactionLog[transactionLog.length].field_1024) = arg4
            uint256(transactionLog[transactionLog.length].field_1280) = block.timestamp
            stor1.length++
            if uint8(stor1[_3317]):
                require uint256(stor[_3317]) < distributionList.length
                uint256(distributionList[uint256(stor[_3317])][].field_0) = Array(len=arg1.length, data=arg1[all])
                address(distributionList[uint256(stor[_3317])].field_256) = arg2
                uint256(distributionList[uint256(stor[_3317])].field_512) = arg3
                uint8(distributionList[uint256(stor[_3317])].field_768) = arg4
                uint256(distributionList[uint256(stor[_3317])].field_1024) = 0
            else:
                mem[ceil32(arg1.length) + 768 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                mem[ceil32(arg1.length) + floor32(arg1.length) + 768] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 768] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
                mem[ceil32(arg1.length) + arg1.length + 768] = 3
                uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 768 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]) = distributionEntryCount
                uint8(stor1[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 768, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))]) = 1
                distributionList.length++
                if not distributionList.length <= distributionList.length + 1:
                    mem[0] = 5
                    idx = (5 * distributionList.length) + 5
                    while sha3(5) + (5 * distributionList.length) > idx + sha3(mem[0]):
                        uint256(stor[idx + sha3(mem[0])]) = 0
                        if 31 >= stor[idx + sha3(mem[0])].length:
                            address(stor[idx + sha3(mem[0]) + 1]) = 0
                            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
                            uint8(stor[idx + sha3(mem[0]) + 3]) = 0
                            uint256(stor[idx + sha3(mem[0]) + 4]) = 0
                            idx = idx + 5
                            continue 
                        mem[0] = idx + sha3(mem[0])
                        s = sha3(s + sha3(mem[0]))
                        while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].length + 31 / 32) > s + sha3(mem[0]):
                            uint256(stor[s + sha3(mem[0])]) = 0
                            s = s + 1
                            continue 
                        address(stor[s + sha3(mem[0]) + 1]) = 0
                        uint256(stor[s + sha3(mem[0]) + 2]) = 0
                        uint8(stor[s + sha3(mem[0]) + 3]) = 0
                        uint256(stor[s + sha3(mem[0]) + 4]) = 0
                        s = s + 5
                        continue 
                uint256(distributionList[distributionList.length][].field_0) = Array(len=arg1.length, data=arg1[all])
                address(distributionList[distributionList.length].field_256) = uint64(arg2) << 96
                uint256(distributionList[distributionList.length].field_512) = arg3
                uint8(distributionList[distributionList.length].field_768) = 0
                uint256(distributionList[distributionList.length].field_1024) = 0
                distributionEntryCount++
        else:
            mem[0] = 4
            idx = (6 * transactionLog.length) + 6
            while sha3(4) + (6 * transactionLog.length) > idx + sha3(mem[0]):
                uint256(stor[idx + sha3(mem[0])]) = 0
                if 31 >= stor[idx + sha3(mem[0])].length:
                    uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                    if 31 >= stor[idx + sha3(mem[0]) + 1].length:
                        address(stor[idx + sha3(mem[0]) + 2]) = 0
                        uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                        uint8(stor[idx + sha3(mem[0]) + 4]) = 0
                        uint256(stor[idx + sha3(mem[0]) + 5]) = 0
                        idx = idx + 6
                        continue 
                    mem[0] = idx + sha3(mem[0]) + 1
                    s = sha3(s + sha3(mem[0]) + 1)
                    while sha3(s + sha3(mem[0]) + 1) + (stor[s + sha3(mem[0]) + 1].length + 31 / 32) > s + sha3(mem[0]):
                        uint256(stor[s + sha3(mem[0])]) = 0
                        s = s + 1
                        continue 
                    address(stor[s + sha3(mem[0]) + 2]) = 0
                    uint256(stor[s + sha3(mem[0]) + 3]) = 0
                    uint8(stor[s + sha3(mem[0]) + 4]) = 0
                    uint256(stor[s + sha3(mem[0]) + 5]) = 0
                    s = s + 6
                    continue 
                mem[0] = idx + sha3(mem[0])
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
                uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                if 31 < stor[idx + sha3(mem[0]) + 1].length:
                    mem[0] = idx + sha3(mem[0]) + 1
                    s = sha3(idx + sha3(mem[0]) + 1)
                    while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                address(stor[idx + sha3(mem[0]) + 2]) = 0
                uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                uint8(stor[idx + sha3(mem[0]) + 4]) = 0
                uint256(stor[idx + sha3(mem[0]) + 5]) = 0
                idx = idx + 6
                continue 
            bool(transactionLog[transactionLog.length].field_0) = 0
            uint255(transactionLog[transactionLog.length].field_1) = 6
            Mask(248, 0, transactionLog[transactionLog.length].field_8) = 'UPDATE' / 256
            idx = 0
            while transactionLog[transactionLog.length].length + 31 / 32 > idx:
                uint256(transactionLog[(6 * transactionLog.length) + idx].field_0) = 0
                idx = idx + 1
                continue 
            uint256(stor[sha3((6 * transactionLog.length) + ('name', 'transactionLog', 4) + 1)][].field_0) = Array(len=arg1.length, data=arg1[all])
            address(transactionLog[transactionLog.length].field_512) = arg2
            uint256(transactionLog[transactionLog.length].field_768) = arg3
            uint8(transactionLog[transactionLog.length].field_1024) = arg4
            uint256(transactionLog[transactionLog.length].field_1280) = block.timestamp
            stor1.length++
            if uint8(stor1[_3317]):
                require mem[ceil32(arg1.length) + 640] < distributionList.length
                uint256(distributionList[mem[ceil32(arg1.length) + 640]][].field_0) = Array(len=arg1.length, data=arg1[all])
                address(distributionList[mem[ceil32(arg1.length) + 640]].field_256) = arg2
                uint256(distributionList[mem[ceil32(arg1.length) + 640]].field_512) = arg3
                uint8(distributionList[mem[ceil32(arg1.length) + 640]].field_768) = arg4
                uint256(distributionList[mem[ceil32(arg1.length) + 640]].field_1024) = 0
            else:
                mem[ceil32(arg1.length) + 768 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                mem[ceil32(arg1.length) + floor32(arg1.length) + 768] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 768] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
                mem[ceil32(arg1.length) + arg1.length + 768] = 3
                uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 768 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]) = distributionEntryCount
                uint8(stor1[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 768, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))]) = 1
                distributionList.length++
                if not distributionList.length <= distributionList.length + 1:
                    mem[0] = 5
                    idx = (5 * distributionList.length) + 5
                    while sha3(5) + (5 * distributionList.length) > idx + sha3(mem[0]):
                        uint256(stor[idx + sha3(mem[0])]) = 0
                        if 31 >= stor[idx + sha3(mem[0])].length:
                            address(stor[idx + sha3(mem[0]) + 1]) = 0
                            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
                            uint8(stor[idx + sha3(mem[0]) + 3]) = 0
                            uint256(stor[idx + sha3(mem[0]) + 4]) = 0
                            idx = idx + 5
                            continue 
                        mem[0] = idx + sha3(mem[0])
                        s = sha3(s + sha3(mem[0]))
                        while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].length + 31 / 32) > s + sha3(mem[0]):
                            uint256(stor[s + sha3(mem[0])]) = 0
                            s = s + 1
                            continue 
                        address(stor[s + sha3(mem[0]) + 1]) = 0
                        uint256(stor[s + sha3(mem[0]) + 2]) = 0
                        uint8(stor[s + sha3(mem[0]) + 3]) = 0
                        uint256(stor[s + sha3(mem[0]) + 4]) = 0
                        s = s + 5
                        continue 
                uint256(distributionList[distributionList.length][].field_0) = Array(len=arg1.length, data=arg1[all])
                address(distributionList[distributionList.length].field_256) = uint64(arg2) << 96
                uint256(distributionList[distributionList.length].field_512) = arg3
                uint8(distributionList[distributionList.length].field_768) = 0
                uint256(distributionList[distributionList.length].field_1024) = 0
                distributionEntryCount++
        return 1
    if not transactionLog.length > transactionLog.length + 1:
        bool(transactionLog[transactionLog.length].field_0) = 0
        uint255(transactionLog[transactionLog.length].field_1) = 6
        Mask(248, 0, transactionLog[transactionLog.length].field_8) = 'INSERT' / 256
        idx = 0
        while transactionLog[transactionLog.length].length + 31 / 32 > idx:
            uint256(transactionLog[(6 * transactionLog.length) + idx].field_0) = 0
            idx = idx + 1
            continue 
        uint256(stor[sha3((6 * transactionLog.length) + ('name', 'transactionLog', 4) + 1)][].field_0) = Array(len=arg1.length, data=arg1[all])
        address(transactionLog[transactionLog.length].field_512) = arg2
        uint256(transactionLog[transactionLog.length].field_768) = arg3
        uint8(transactionLog[transactionLog.length].field_1024) = arg4
        uint256(transactionLog[transactionLog.length].field_1280) = block.timestamp
        stor1.length++
        if uint8(stor1[_3317]):
            require uint256(stor[_3317]) < distributionList.length
            uint256(distributionList[uint256(stor[_3317])][].field_0) = Array(len=arg1.length, data=arg1[all])
            address(distributionList[uint256(stor[_3317])].field_256) = arg2
            uint256(distributionList[uint256(stor[_3317])].field_512) = arg3
            uint8(distributionList[uint256(stor[_3317])].field_768) = arg4
            uint256(distributionList[uint256(stor[_3317])].field_1024) = 0
        else:
            mem[ceil32(arg1.length) + 768 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            mem[ceil32(arg1.length) + floor32(arg1.length) + 768] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 768] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
            mem[ceil32(arg1.length) + arg1.length + 768] = 3
            uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 768 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]) = distributionEntryCount
            uint8(stor1[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 768, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))]) = 1
            distributionList.length++
            if not distributionList.length <= distributionList.length + 1:
                mem[0] = 5
                idx = (5 * distributionList.length) + 5
                while sha3(5) + (5 * distributionList.length) > idx + sha3(mem[0]):
                    uint256(stor[idx + sha3(mem[0])]) = 0
                    if 31 >= stor[idx + sha3(mem[0])].length:
                        address(stor[idx + sha3(mem[0]) + 1]) = 0
                        uint256(stor[idx + sha3(mem[0]) + 2]) = 0
                        uint8(stor[idx + sha3(mem[0]) + 3]) = 0
                        uint256(stor[idx + sha3(mem[0]) + 4]) = 0
                        idx = idx + 5
                        continue 
                    mem[0] = idx + sha3(mem[0])
                    s = sha3(s + sha3(mem[0]))
                    while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].length + 31 / 32) > s + sha3(mem[0]):
                        uint256(stor[s + sha3(mem[0])]) = 0
                        s = s + 1
                        continue 
                    address(stor[s + sha3(mem[0]) + 1]) = 0
                    uint256(stor[s + sha3(mem[0]) + 2]) = 0
                    uint8(stor[s + sha3(mem[0]) + 3]) = 0
                    uint256(stor[s + sha3(mem[0]) + 4]) = 0
                    s = s + 5
                    continue 
            uint256(distributionList[distributionList.length][].field_0) = Array(len=arg1.length, data=arg1[all])
            address(distributionList[distributionList.length].field_256) = uint64(arg2) << 96
            uint256(distributionList[distributionList.length].field_512) = arg3
            uint8(distributionList[distributionList.length].field_768) = 0
            uint256(distributionList[distributionList.length].field_1024) = 0
            distributionEntryCount++
    else:
        mem[0] = 4
        idx = (6 * transactionLog.length) + 6
        while sha3(4) + (6 * transactionLog.length) > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])]) = 0
            if 31 >= stor[idx + sha3(mem[0])].length:
                uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                if 31 >= stor[idx + sha3(mem[0]) + 1].length:
                    address(stor[idx + sha3(mem[0]) + 2]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                    uint8(stor[idx + sha3(mem[0]) + 4]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 5]) = 0
                    idx = idx + 6
                    continue 
                mem[0] = idx + sha3(mem[0]) + 1
                s = sha3(s + sha3(mem[0]) + 1)
                while sha3(s + sha3(mem[0]) + 1) + (stor[s + sha3(mem[0]) + 1].length + 31 / 32) > s + sha3(mem[0]):
                    uint256(stor[s + sha3(mem[0])]) = 0
                    s = s + 1
                    continue 
                address(stor[s + sha3(mem[0]) + 2]) = 0
                uint256(stor[s + sha3(mem[0]) + 3]) = 0
                uint8(stor[s + sha3(mem[0]) + 4]) = 0
                uint256(stor[s + sha3(mem[0]) + 5]) = 0
                s = s + 6
                continue 
            mem[0] = idx + sha3(mem[0])
            s = sha3(idx + sha3(mem[0]))
            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 1].length:
                mem[0] = idx + sha3(mem[0]) + 1
                s = sha3(idx + sha3(mem[0]) + 1)
                while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            address(stor[idx + sha3(mem[0]) + 2]) = 0
            uint256(stor[idx + sha3(mem[0]) + 3]) = 0
            uint8(stor[idx + sha3(mem[0]) + 4]) = 0
            uint256(stor[idx + sha3(mem[0]) + 5]) = 0
            idx = idx + 6
            continue 
        bool(transactionLog[transactionLog.length].field_0) = 0
        uint255(transactionLog[transactionLog.length].field_1) = 6
        Mask(248, 0, transactionLog[transactionLog.length].field_8) = 'INSERT' / 256
        idx = 0
        while transactionLog[transactionLog.length].length + 31 / 32 > idx:
            uint256(transactionLog[(6 * transactionLog.length) + idx].field_0) = 0
            idx = idx + 1
            continue 
        uint256(stor[sha3((6 * transactionLog.length) + ('name', 'transactionLog', 4) + 1)][].field_0) = Array(len=arg1.length, data=arg1[all])
        address(transactionLog[transactionLog.length].field_512) = arg2
        uint256(transactionLog[transactionLog.length].field_768) = arg3
        uint8(transactionLog[transactionLog.length].field_1024) = arg4
        uint256(transactionLog[transactionLog.length].field_1280) = block.timestamp
        stor1.length++
        if uint8(stor1[_3317]):
            require mem[ceil32(arg1.length) + 640] < distributionList.length
            uint256(distributionList[mem[ceil32(arg1.length) + 640]][].field_0) = Array(len=arg1.length, data=arg1[all])
            address(distributionList[mem[ceil32(arg1.length) + 640]].field_256) = arg2
            uint256(distributionList[mem[ceil32(arg1.length) + 640]].field_512) = arg3
            uint8(distributionList[mem[ceil32(arg1.length) + 640]].field_768) = arg4
            uint256(distributionList[mem[ceil32(arg1.length) + 640]].field_1024) = 0
        else:
            mem[ceil32(arg1.length) + 768 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            mem[ceil32(arg1.length) + floor32(arg1.length) + 768] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 768] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
            mem[ceil32(arg1.length) + arg1.length + 768] = 3
            uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 768 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]) = distributionEntryCount
            uint8(stor1[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 768, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))]) = 1
            distributionList.length++
            if not distributionList.length <= distributionList.length + 1:
                mem[0] = 5
                idx = (5 * distributionList.length) + 5
                while sha3(5) + (5 * distributionList.length) > idx + sha3(mem[0]):
                    uint256(stor[idx + sha3(mem[0])]) = 0
                    if 31 >= stor[idx + sha3(mem[0])].length:
                        address(stor[idx + sha3(mem[0]) + 1]) = 0
                        uint256(stor[idx + sha3(mem[0]) + 2]) = 0
                        uint8(stor[idx + sha3(mem[0]) + 3]) = 0
                        uint256(stor[idx + sha3(mem[0]) + 4]) = 0
                        idx = idx + 5
                        continue 
                    mem[0] = idx + sha3(mem[0])
                    s = sha3(s + sha3(mem[0]))
                    while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].length + 31 / 32) > s + sha3(mem[0]):
                        uint256(stor[s + sha3(mem[0])]) = 0
                        s = s + 1
                        continue 
                    address(stor[s + sha3(mem[0]) + 1]) = 0
                    uint256(stor[s + sha3(mem[0]) + 2]) = 0
                    uint8(stor[s + sha3(mem[0]) + 3]) = 0
                    uint256(stor[s + sha3(mem[0]) + 4]) = 0
                    s = s + 5
                    continue 
            uint256(distributionList[distributionList.length][].field_0) = Array(len=arg1.length, data=arg1[all])
            address(distributionList[distributionList.length].field_256) = uint64(arg2) << 96
            uint256(distributionList[distributionList.length].field_512) = arg3
            uint8(distributionList[distributionList.length].field_768) = 0
            uint256(distributionList[distributionList.length].field_1024) = 0
            distributionEntryCount++
    return 0
}



}

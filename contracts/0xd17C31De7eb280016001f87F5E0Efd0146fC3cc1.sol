contract main {




// =====================  Runtime code  =====================


#
#  - sub_31b0763f(?)
#  - sub_55458f4a(?)
#
array of struct name;
array of uint256 sub_a8340833;
array of struct stor2;
array of uint256 sub_1b012cbf;

function sub_1b012cbf(?) {
    require calldata.size - 4 >= 64
    require arg2 < sub_1b012cbf[arg1]
    return sub_1b012cbf[arg1][arg2]
}

function getName(bytes32 arg1) {
    return name[arg1][1][0 len name[arg1][1].length].field_0
}

function sub_574869f1(?) {
    return name[arg1][2][0 len name[arg1][2].length].field_0
}

function sub_a8340833(?) {
    require calldata.size - 4 >= 32
    return sub_a8340833[arg1]
}

function _fallback() payable {
    revert
}

function isExpired(bytes32 arg1) {
    require calldata.size - 4 >= 32
    if not name[arg1].field_2560:
        return 0
    if block.timestamp <= name[arg1].field_2304 + name[arg1].field_2560:
        return 0
    return 1
}

function vote(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not address(name[arg1].field_16):
        revert with 0, 'Poll does not exist.'
    if uint8(name[arg1].field_0):
        revert with 0, 'Poll does not exist.'
    if uint8(name[arg1][6][address(msg.sender)].field_0):
        revert with 0, 'User has already voted.'
    if not uint8(name[arg1].field_8):
        require bool(uint8(name[arg1][7][address(msg.sender)].field_0)) == 1
    if name[arg1].field_2560:
        if block.timestamp >= name[arg1].field_2304 + name[arg1].field_2560:
            revert with 0, 'This poll has expired.'
    if arg2 >= name[arg1].field_768 + 1:
        revert with 0, 'This option does not exist'
    if arg2 <= 0:
        revert with 0, 'This option does not exist'
    require arg2 - 1 < name[arg1].field_1280
    stor[('array', 5, ('map', ('param', 'arg1'), ('name', 'name', 0))) + arg2].field_0++
    name[arg1].field_2048++
    uint8(name[arg1][6][address(msg.sender)].field_0) = 1
}

function sub_875a5f8a(?) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 <= test266151307() and ceil32(arg1.length) + 128 >= 96
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 160] = address(arg2)
    mem[ceil32(arg1.length) + 128] = arg1.length + 20
    mem[arg1.length + ceil32(arg1.length) + 180] = sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    return memory
      from arg1.length + ceil32(arg1.length) + 180
       len 32
}

function sub_b2359d4e(?) {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 <= test266151307() and (32 * ('cd', 36).length) + 128 >= 96
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if address(name[cd[4]].field_16) != msg.sender:
        revert with 0, 'Only the poll creator can do that.'
    if uint8(name[cd[4]].field_8):
        revert with 0, 'Poll is public'
    if name[cd[4]].field_2560:
        if block.timestamp >= name[cd[4]].field_2304 + name[cd[4]].field_2560:
            revert with 0, 'This poll has expired.'
    idx = 0
    while idx < ('cd', 36).length:
        require idx < ('cd', 36).length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(cd[4], 0) + 7
        uint8(name[cd[4]][7][mem[(32 * idx) + 140 len 20]].field_0) = 1
        idx = idx + 1
        continue 
}

function sub_fbb0ae1e(?) {
    require calldata.size - 4 >= 64
    require arg2 < stor2[arg1].field_0
    mem[128] = stor[sha3((11 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1)].field_0
    idx = 128
    s = 0
    while stor[(11 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length + 96 > idx:
        mem[idx + 32] = stor[s + sha3((11 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor[(11 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length) + 160] = stor[sha3((11 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 2)].field_0
    idx = ceil32(stor[(11 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length) + 160
    s = 0
    while ceil32(stor[(11 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length) + stor[(11 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 2].length + 128 > idx:
        mem[idx + 32] = stor[s + sha3((11 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 2)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if ceil32(stor[(11 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length) > stor[(11 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length:
        mem[ceil32(stor[(11 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length) + ceil32(stor[(11 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 2].length) + stor[(11 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length + 448] = 0
    mem[(2 * ceil32(stor[(11 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length)) + ceil32(stor[(11 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 2].length) + 448] = stor[(11 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 2].length
    mem[(2 * ceil32(stor[(11 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length)) + ceil32(stor[(11 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 2].length) + 480 len ceil32(stor[(11 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 2].length)] = mem[ceil32(stor[(11 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length) + 160 len ceil32(stor[(11 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 2].length)]
    if ceil32(stor[(11 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 2].length) > stor[(11 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 2].length:
        mem[(2 * ceil32(stor[(11 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length)) + ceil32(stor[(11 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 2].length) + stor[(11 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 2].length + 480] = 0
    return bool(uint8(stor2[arg1][arg2].field_0)), 
           bool(uint8(stor2[arg1][arg2].field_8)),
           address(stor2[arg1][arg2].field_0),
           Array(len=stor[(11 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length, data=mem[128 len ceil32(stor[(11 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length)], stor[(11 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 2].length, mem[ceil32(stor[(11 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length) + 160 len ceil32(stor[(11 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 2].length)]),
           ceil32(stor[(11 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1].length) + 288,
           stor2[arg1][arg2].field_2048,
           stor2[arg1][arg2].field_2304,
           stor2[arg1][arg2].field_2560
}

function sub_2c30a81c(?) {
    require calldata.size - 4 >= 32
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 96
    mem[224] = 96
    mem[256] = 96
    mem[288] = 96
    mem[320] = 96
    mem[352] = 0
    mem[384] = 0
    mem[416] = 0
    mem[32] = 0
    mem[448] = bool(uint8(name[arg1].field_0))
    mem[480] = bool(uint8(name[arg1].field_8))
    mem[512] = address(name[arg1].field_16)
    mem[800] = name[arg1][1].length
    mem[832] = name[arg1][1].field_0
    idx = 832
    s = 0
    while name[arg1][1].length + 800 > idx:
        mem[idx + 32] = name[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[544] = 800
    mem[ceil32(name[arg1][1].length) + 832] = name[arg1][2].length
    mem[0] = sha3(arg1, 0) + 2
    mem[ceil32(name[arg1][1].length) + 864] = name[arg1][2].field_0
    idx = ceil32(name[arg1][1].length) + 864
    s = 0
    while ceil32(name[arg1][1].length) + name[arg1][2].length + 832 > idx:
        mem[idx + 32] = name[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[576] = ceil32(name[arg1][1].length) + 832
    mem[64] = ceil32(name[arg1][1].length) + ceil32(name[arg1][2].length) + (32 * name[arg1].field_768) + 896
    mem[ceil32(name[arg1][1].length) + ceil32(name[arg1][2].length) + 864] = name[arg1].field_768
    s = ceil32(name[arg1][1].length) + ceil32(name[arg1][2].length) + 896
    idx = 0
    while idx < name[arg1].field_768:
        mem[0] = sha3(arg1, 0) + 3
        _642 = mem[64]
        mem[64] = mem[64] + ceil32(name[arg1][idx + 3].length) + 32
        mem[_642] = name[arg1][idx + 3].length
        mem[0] = sha3(sha3(arg1, 0) + 3) + idx
        mem[_642 + 32] = name[arg1][idx + 3].field_0
        t = _642 + 32
        u = sha3(mem[0])
        while _642 + name[arg1][idx + 3].length > t:
            mem[t + 32] = sub_a8340833[u]
            t = t + 32
            u = u + 1
            continue 
        mem[s] = _642
        s = s + 32
        idx = idx + 1
        continue 
    mem[608] = ceil32(name[arg1][1].length) + ceil32(name[arg1][2].length) + 864
    _640 = mem[64]
    mem[64] = mem[64] + (32 * name[arg1].field_1024) + 32
    mem[_640] = name[arg1].field_1024
    if not name[arg1].field_1024:
        mem[640] = _640
        _667 = mem[64]
        mem[64] = mem[64] + (32 * name[arg1].field_1280) + 32
        mem[_667] = name[arg1].field_1280
        if not name[arg1].field_1280:
            mem[672] = _667
            mem[704] = name[arg1].field_2048
            mem[736] = name[arg1].field_2304
            mem[768] = name[arg1].field_2560
            _674 = mem[480]
            _687 = mem[64]
            mem[mem[64]] = not bool(mem[448])
            mem[mem[64] + 32] = bool(_674)
            mem[mem[64] + 64] = 192
            _718 = mem[ceil32(name[arg1][1].length) + ceil32(name[arg1][2].length) + 864]
            mem[mem[64] + 192] = mem[ceil32(name[arg1][1].length) + ceil32(name[arg1][2].length) + 864]
            idx = 0
            s = ceil32(name[arg1][1].length) + ceil32(name[arg1][2].length) + 896
            t = mem[64] + (32 * _718) + 224
            u = mem[64] + 224
            while idx < _718:
                mem[u] = t + -_687 - 224
                _855 = mem[s]
                _890 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _890:
                    mem[t + v + 32] = mem[_855 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_890) > _890:
                    mem[t + _890 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_890) + 32
                u = u + 32
                continue 
            mem[_687 + 96] = t - _687
            _901 = mem[_667]
            mem[t] = mem[_667]
            mem[t + 32 len 32 * _901] = mem[_667 + 32 len 32 * _901]
            var62001 = _901
            var62002 = _667 + (32 * _901) + 32
            mem[_687 + 128] = t + (32 * _901) + -_687 + 32
            _1127 = mem[_640]
            mem[t + (32 * _901) + 32] = mem[_640]
            idx = 0
            s = _640 + 32
            u = t + (32 * _901) + 64
            while idx < _1127:
                mem[u] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                u = u + 32
                continue 
            mem[_687 + 160] = name[arg1].field_2048
            return memory
              from mem[64]
               len t + (32 * _901) + (32 * _1127) + -mem[64] + 64
        mem[0] = sha3(arg1, 0) + 5
        mem[_667 + 32] = name[arg1][5].field_0
        idx = _667 + 32
        s = 0
        while _667 + (32 * name[arg1].field_1280) > idx:
            mem[idx + 32] = name[arg1][s + 5].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[672] = _667
        mem[704] = name[arg1].field_2048
        mem[736] = name[arg1].field_2304
        mem[768] = name[arg1].field_2560
        _1050 = mem[480]
        _1051 = mem[608]
        _1053 = mem[640]
        _1086 = mem[64]
        mem[mem[64]] = not bool(mem[448])
        mem[mem[64] + 32] = bool(_1050)
        mem[mem[64] + 64] = 192
        _1171 = mem[_1051]
        mem[mem[64] + 192] = mem[_1051]
        idx = 0
        s = _1051 + 32
        t = mem[64] + (32 * _1171) + 224
        u = mem[64] + 224
        while idx < _1171:
            mem[u] = t + -_1086 - 224
            _1293 = mem[s]
            _1313 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _1313:
                mem[t + v + 32] = mem[_1293 + v + 32]
                v = v + 32
                continue 
            if ceil32(_1313) > _1313:
                mem[t + _1313 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_1313) + 32
            u = u + 32
            continue 
        mem[_1086 + 96] = t - _1086
        _1323 = mem[_667]
        mem[t] = mem[_667]
        mem[t + 32 len 32 * _1323] = mem[_667 + 32 len 32 * _1323]
        var66001 = _1323
        var66002 = _667 + (32 * _1323) + 32
        mem[_1086 + 128] = t + (32 * _1323) + -_1086 + 32
        _1461 = mem[_1053]
        mem[t + (32 * _1323) + 32] = mem[_1053]
        idx = 0
        s = _1053 + 32
        u = t + (32 * _1323) + 64
        while idx < _1461:
            mem[u] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            u = u + 32
            continue 
        mem[_1086 + 160] = name[arg1].field_2048
        return memory
          from mem[64]
           len t + (32 * _1323) + (32 * _1461) + -mem[64] + 64
    mem[0] = sha3(arg1, 0) + 4
    mem[_640 + 32] = address(name[arg1][4].field_0)
    t = _640 + 32
    s = 0
    while _640 + (32 * name[arg1].field_1024) > t:
        mem[t + 32] = address(name[arg1][s + 4].field_256)
        t = t + 32
        s = s + 1
        continue 
    mem[640] = _640
    _1055 = mem[64]
    mem[64] = mem[64] + (32 * name[arg1].field_1280) + 32
    mem[_1055] = name[arg1].field_1280
    if not name[arg1].field_1280:
        mem[672] = _1055
        mem[704] = name[arg1].field_2048
        mem[736] = name[arg1].field_2304
        mem[768] = name[arg1].field_2560
        _1088 = mem[480]
        _1089 = mem[608]
        _1110 = mem[64]
        mem[mem[64]] = not bool(mem[448])
        mem[mem[64] + 32] = bool(_1088)
        mem[mem[64] + 64] = 192
        _1178 = mem[_1089]
        mem[mem[64] + 192] = mem[_1089]
        idx = 0
        s = _1089 + 32
        t = mem[64] + (32 * _1178) + 224
        u = mem[64] + 224
        while idx < _1178:
            mem[u] = t + -_1110 - 224
            _1294 = mem[s]
            _1314 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _1314:
                mem[t + v + 32] = mem[_1294 + v + 32]
                v = v + 32
                continue 
            if ceil32(_1314) > _1314:
                mem[t + _1314 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_1314) + 32
            u = u + 32
            continue 
        mem[_1110 + 96] = t - _1110
        _1324 = mem[_1055]
        mem[t] = mem[_1055]
        mem[t + 32 len 32 * _1324] = mem[_1055 + 32 len 32 * _1324]
        var66001 = _1324
        var66002 = _1055 + (32 * _1324) + 32
        mem[_1110 + 128] = t + (32 * _1324) + -_1110 + 32
        _1462 = mem[_640]
        mem[t + (32 * _1324) + 32] = mem[_640]
        idx = 0
        s = _640 + 32
        u = t + (32 * _1324) + 64
        while idx < _1462:
            mem[u] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            u = u + 32
            continue 
        mem[_1110 + 160] = name[arg1].field_2048
        return memory
          from mem[64]
           len t + (32 * _1324) + (32 * _1462) + -mem[64] + 64
    mem[0] = sha3(arg1, 0) + 5
    mem[_1055 + 32] = name[arg1][5].field_0
    idx = _1055 + 32
    s = 0
    while _1055 + (32 * name[arg1].field_1280) > idx:
        mem[idx + 32] = name[arg1][s + 5].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[672] = _1055
    mem[704] = name[arg1].field_2048
    mem[736] = name[arg1].field_2304
    mem[768] = name[arg1].field_2560
    _1423 = mem[480]
    _1424 = mem[608]
    _1426 = mem[640]
    _1442 = mem[64]
    mem[mem[64]] = not bool(mem[448])
    mem[mem[64] + 32] = bool(_1423)
    mem[mem[64] + 64] = 192
    _1491 = mem[_1424]
    mem[mem[64] + 192] = mem[_1424]
    idx = 0
    s = _1424 + 32
    t = mem[64] + (32 * _1491) + 224
    u = mem[64] + 224
    while idx < _1491:
        mem[u] = t + -_1442 - 224
        _1524 = mem[s]
        _1531 = mem[mem[s]]
        mem[t] = mem[mem[s]]
        v = 0
        while v < _1531:
            mem[t + v + 32] = mem[_1524 + v + 32]
            v = v + 32
            continue 
        if ceil32(_1531) > _1531:
            mem[t + _1531 + 32] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(_1531) + 32
        u = u + 32
        continue 
    mem[_1442 + 96] = t - _1442
    _1534 = mem[_1055]
    mem[t] = mem[_1055]
    mem[t + 32 len 32 * _1534] = mem[_1055 + 32 len 32 * _1534]
    var70001 = _1534
    var70002 = _1055 + (32 * _1534) + 32
    var70006 = t + (32 * _1534) + 32
    mem[_1442 + 128] = t + (32 * _1534) + -_1442 + 32
    _1562 = mem[_1426]
    mem[t + (32 * _1534) + 32] = mem[_1426]
    idx = 0
    s = _1426 + 32
    u = t + (32 * _1534) + 64
    while idx < _1562:
        mem[u] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        u = u + 32
        continue 
    mem[_1442 + 160] = name[arg1].field_2048
    return memory
      from mem[64]
       len t + (32 * _1534) + (32 * _1562) + -mem[64] + 64
}

function sub_e7cf8bcb(?) {
    require calldata.size - 4 >= 192
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require ceil32(('cd', 4).length) + 128 <= test266151307() and ceil32(('cd', 4).length) + 128 >= 96
    mem[96] = ('cd', 4).length
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    mem[128 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
    mem[('cd', 4).length + 128] = 0
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require ceil32(('cd', 4).length) + ceil32(('cd', 36).length) + 160 <= test266151307() and ceil32(('cd', 36).length) + 160 >= 128
    mem[ceil32(('cd', 4).length) + 128] = ('cd', 36).length
    require cd[36] + ('cd', 36).length + 36 <= calldata.size
    mem[ceil32(('cd', 4).length) + 160 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
    mem[ceil32(('cd', 4).length) + ('cd', 36).length + 160] = 0
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require ceil32(('cd', 4).length) + ceil32(('cd', 36).length) + (32 * ('cd', 68).length) + 192 <= test266151307() and (32 * ('cd', 68).length) + 192 >= 160
    mem[64] = ceil32(('cd', 4).length) + ceil32(('cd', 36).length) + (32 * ('cd', 68).length) + 192
    mem[ceil32(('cd', 4).length) + ceil32(('cd', 36).length) + 160] = ('cd', 68).length
    idx = 0
    s = cd[68] + 36
    t = ceil32(('cd', 4).length) + ceil32(('cd', 36).length) + 192
    while idx < ('cd', 68).length:
        require cd[68] + cd[s] + 67 < calldata.size
        require cd[(cd[68] + cd[s] + 36)] <= test266151307()
        _854 = mem[64]
        require mem[64] + ceil32(cd[(cd[68] + cd[s] + 36)]) + 32 <= test266151307() and mem[64] + ceil32(cd[(cd[68] + cd[s] + 36)]) + 32 >= mem[64]
        mem[64] = mem[64] + ceil32(cd[(cd[68] + cd[s] + 36)]) + 32
        mem[_854] = cd[(cd[68] + cd[s] + 36)]
        require cd[68] + cd[s] + cd[(cd[68] + cd[s] + 36)] + 68 <= calldata.size
        mem[_854 + 32 len cd[(cd[68] + cd[s] + 36)]] = call.data[cd[68] + cd[s] + 68 len cd[(cd[68] + cd[s] + 36)]]
        mem[_854 + cd[(cd[68] + cd[s] + 36)] + 32] = 0
        mem[t] = _854
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    _855 = mem[64]
    require mem[64] + (32 * ('cd', 100).length) + 32 <= test266151307() and mem[64] + (32 * ('cd', 100).length) + 32 >= mem[64]
    mem[64] = mem[64] + (32 * ('cd', 100).length) + 32
    mem[_855] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = _855 + 32
    while idx < ('cd', 100).length:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[0] = msg.sender
    mem[32] = 1
    if sub_a8340833[address(msg.sender)] >= 256:
        revert with 0, 'User has reached maximum number of open polls.'
    _1706 = mem[64]
    _1707 = mem[ceil32(('cd', 4).length) + 128]
    mem[mem[64] + 32 len floor32(mem[ceil32(('cd', 4).length) + 128])] = mem[ceil32(('cd', 4).length) + 160 len floor32(mem[ceil32(('cd', 4).length) + 128])]
    mem[mem[64] + floor32(mem[ceil32(('cd', 4).length) + 128]) + -(mem[ceil32(('cd', 4).length) + 128] % 32) + 64 len mem[ceil32(('cd', 4).length) + 128] % 32] = mem[ceil32(('cd', 4).length) + floor32(mem[ceil32(('cd', 4).length) + 128]) + -(mem[ceil32(('cd', 4).length) + 128] % 32) + 192 len mem[ceil32(('cd', 4).length) + 128] % 32]
    mem[_1707 + _1706 + 32] = address(msg.sender)
    _2554 = mem[64]
    mem[mem[64]] = _1707 + _1706 + -mem[64] + 20
    mem[64] = _1707 + _1706 + 52
    _2556 = sha3(mem[_2554 + 32 len mem[_2554]])
    if mem[ceil32(('cd', 4).length) + ceil32(('cd', 36).length) + 160] <= 1:
        revert with 0, 'Invalid poll creation. Must include voting data.'
    mem[0] = sha3(mem[_2554 + 32 len mem[_2554]])
    if address(name[mem[0]].field_16):
        revert with 0, 'Poll already exists'
    address(name[_2556].field_16) = msg.sender
    name[_2556][1][].field_0 = Array(len=mem[ceil32(('cd', 4).length) + 128], data=mem[ceil32(('cd', 4).length) + 160 len mem[ceil32(('cd', 4).length) + 128]])
    name[_2556][2][].field_0 = Array(len=mem[96], data=mem[128 len mem[96]])
    mem[32] = 0
    name[_2556].field_768 = mem[ceil32(('cd', 4).length) + ceil32(('cd', 36).length) + 160]
    mem[0] = sha3(_2556, 0) + 3
    if not mem[ceil32(('cd', 4).length) + ceil32(('cd', 36).length) + 160]:
        idx = 0
        while sha3(sha3(_2556, 0) + 3) + name[_2556].field_768 > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            if 31 < stor[idx + sha3(mem[0])].length:
                mem[0] = idx + sha3(mem[0])
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
        mem[64] = _1707 + _1706 + 212
        mem[_1707 + _1706 + 52] = 0
        mem[_1707 + _1706 + 84] = 0
        mem[_1707 + _1706 + 116] = 0
        mem[_1707 + _1706 + 148] = 0
        mem[_1707 + _1706 + 180] = 0
        name[_2556].field_1280 = 5
        s = 0
        idx = _1707 + _1706 + 52
        while _1707 + _1706 + 212 > idx:
            uint8(name[_2556][s + 5].field_0) = mem[idx + 31 len 1]
            Mask(248, 0, name[_2556][s + 5].field_8) = 0
            s = s + 1
            idx = idx + 32
            continue 
        idx = 5
        while name[_2556].field_1280 > idx:
            name[_2556][idx + 5].field_0 = 0
            idx = idx + 1
            continue 
        name[_2556].field_2560 = cd[164]
        name[_2556].field_2304 = block.timestamp
        mem[0] = _2556
        mem[32] = 0
        name[_2556].field_1024 = mem[_855]
        if not mem[_855]:
            idx = 0
            while name[_2556].field_1024 > idx:
                address(name[_2556][idx + 4].field_0) = 0
                idx = idx + 1
                continue 
            sub_1b012cbf[address(msg.sender)]++
            sub_1b012cbf[address(msg.sender)][sub_1b012cbf[address(msg.sender)]] = _2556
            if not cd[132]:
                mem[0] = _2556
                mem[32] = 0
                if not uint8(name[_2556].field_8):
                    _8933 = mem[_855]
                    idx = 0
                    while idx < _8933:
                        mem[0] = _2556
                        mem[32] = 0
                        require idx < mem[_855]
                        mem[0] = mem[(32 * idx) + _855 + 44 len 20]
                        mem[32] = sha3(_2556, 0) + 7
                        uint8(name[_2556][7][mem[0]].field_0) = 1
                        _8933 = mem[_855]
                        idx = idx + 1
                        continue 
            else:
                Mask(248, 0, name[_2556].field_8) = 1
                mem[0] = _2556
                mem[32] = 0
                if not uint8(name[_2556].field_8):
                    _8934 = mem[_855]
                    idx = 0
                    while idx < _8934:
                        mem[0] = _2556
                        mem[32] = 0
                        require idx < mem[_855]
                        mem[0] = mem[(32 * idx) + _855 + 44 len 20]
                        mem[32] = sha3(_2556, 0) + 7
                        uint8(name[_2556][7][mem[0]].field_0) = 1
                        _8934 = mem[_855]
                        idx = idx + 1
                        continue 
        else:
            s = 0
            idx = _855 + 32
            while _855 + (32 * mem[_855]) + 32 > idx:
                address(name[_2556][s + 4].field_0) = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * mem[_855]) + 31) >> 5
            while name[_2556].field_1024 > idx:
                address(name[_2556][idx + 4].field_0) = 0
                idx = idx + 1
                continue 
            sub_1b012cbf[address(msg.sender)]++
            sub_1b012cbf[address(msg.sender)][sub_1b012cbf[address(msg.sender)]] = _2556
            if not cd[132]:
                mem[0] = _2556
                mem[32] = 0
                if not uint8(name[_2556].field_8):
                    _9161 = mem[_855]
                    idx = 0
                    while idx < _9161:
                        mem[0] = _2556
                        mem[32] = 0
                        require idx < mem[_855]
                        mem[0] = mem[(32 * idx) + _855 + 44 len 20]
                        mem[32] = sha3(_2556, 0) + 7
                        uint8(name[_2556][7][mem[0]].field_0) = 1
                        _9161 = mem[_855]
                        idx = idx + 1
                        continue 
            else:
                Mask(248, 0, name[_2556].field_8) = 1
                mem[0] = _2556
                mem[32] = 0
                if not uint8(name[_2556].field_8):
                    _9162 = mem[_855]
                    idx = 0
                    while idx < _9162:
                        mem[0] = _2556
                        mem[32] = 0
                        require idx < mem[_855]
                        mem[0] = mem[(32 * idx) + _855 + 44 len 20]
                        mem[32] = sha3(_2556, 0) + 7
                        uint8(name[_2556][7][mem[0]].field_0) = 1
                        _9162 = mem[_855]
                        idx = idx + 1
                        continue 
    else:
        s = 0
        idx = ceil32(('cd', 4).length) + ceil32(('cd', 36).length) + 192
        while ceil32(('cd', 4).length) + ceil32(('cd', 36).length) + (32 * mem[ceil32(('cd', 4).length) + ceil32(('cd', 36).length) + 160]) + 192 > idx:
            _6597 = mem[idx]
            _6598 = mem[mem[idx]]
            mem[0] = s + sha3(mem[0])
            stor[s + sha3(mem[0])] = (2 * _6598) + 1
            u = sha3(s + sha3(mem[0]))
            t = _6597 + 32
            while _6597 + _6598 + 32 > t:
                stor[u] = mem[t]
                u = u + 1
                t = t + 32
                continue 
            t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _6598 + 31) >> 5)
            while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].length + 31 / 32) > t:
                stor[t] = 0
                t = t + 1
                continue 
            s = s + 1
            idx = idx + 32
            continue 
        idx = s
        while sha3(sha3(_2556, 0) + 3) + name[_2556].field_768 > idx:
            stor[idx] = 0
            if 31 < stor[idx].length:
                mem[0] = idx
                s = sha3(idx)
                while sha3(idx) + (stor[idx].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
        mem[64] = _1707 + _1706 + 212
        mem[_1707 + _1706 + 52] = 0
        mem[_1707 + _1706 + 84] = 0
        mem[_1707 + _1706 + 116] = 0
        mem[_1707 + _1706 + 148] = 0
        mem[_1707 + _1706 + 180] = 0
        name[_2556].field_1280 = 5
        s = 0
        idx = _1707 + _1706 + 52
        while _1707 + _1706 + 212 > idx:
            uint8(name[_2556][s + 5].field_0) = mem[idx + 31 len 1]
            Mask(248, 0, name[_2556][s + 5].field_8) = 0
            s = s + 1
            idx = idx + 32
            continue 
        idx = 5
        while name[_2556].field_1280 > idx:
            name[_2556][idx + 5].field_0 = 0
            idx = idx + 1
            continue 
        name[_2556].field_2560 = cd[164]
        name[_2556].field_2304 = block.timestamp
        mem[0] = _2556
        mem[32] = 0
        name[_2556].field_1024 = mem[_855]
        if not mem[_855]:
            idx = 0
            while name[_2556].field_1024 > idx:
                address(name[_2556][idx + 4].field_0) = 0
                idx = idx + 1
                continue 
            sub_1b012cbf[address(msg.sender)]++
            sub_1b012cbf[address(msg.sender)][sub_1b012cbf[address(msg.sender)]] = _2556
            if not cd[132]:
                mem[0] = _2556
                mem[32] = 0
                if not uint8(name[_2556].field_8):
                    _9163 = mem[_855]
                    idx = 0
                    while idx < _9163:
                        mem[0] = _2556
                        mem[32] = 0
                        require idx < mem[_855]
                        mem[0] = mem[(32 * idx) + _855 + 44 len 20]
                        mem[32] = sha3(_2556, 0) + 7
                        uint8(name[_2556][7][mem[0]].field_0) = 1
                        _9163 = mem[_855]
                        idx = idx + 1
                        continue 
            else:
                Mask(248, 0, name[_2556].field_8) = 1
                mem[0] = _2556
                mem[32] = 0
                if not uint8(name[_2556].field_8):
                    _9164 = mem[_855]
                    idx = 0
                    while idx < _9164:
                        mem[0] = _2556
                        mem[32] = 0
                        require idx < mem[_855]
                        mem[0] = mem[(32 * idx) + _855 + 44 len 20]
                        mem[32] = sha3(_2556, 0) + 7
                        uint8(name[_2556][7][mem[0]].field_0) = 1
                        _9164 = mem[_855]
                        idx = idx + 1
                        continue 
        else:
            s = 0
            idx = _855 + 32
            while _855 + (32 * mem[_855]) + 32 > idx:
                address(name[_2556][s + 4].field_0) = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * mem[_855]) + 31) >> 5
            while name[_2556].field_1024 > idx:
                address(name[_2556][idx + 4].field_0) = 0
                idx = idx + 1
                continue 
            sub_1b012cbf[address(msg.sender)]++
            sub_1b012cbf[address(msg.sender)][sub_1b012cbf[address(msg.sender)]] = _2556
            if not cd[132]:
                mem[0] = _2556
                mem[32] = 0
                if not uint8(name[_2556].field_8):
                    _9232 = mem[_855]
                    idx = 0
                    while idx < _9232:
                        mem[0] = _2556
                        mem[32] = 0
                        require idx < mem[_855]
                        mem[0] = mem[(32 * idx) + _855 + 44 len 20]
                        mem[32] = sha3(_2556, 0) + 7
                        uint8(name[_2556][7][mem[0]].field_0) = 1
                        _9232 = mem[_855]
                        idx = idx + 1
                        continue 
            else:
                Mask(248, 0, name[_2556].field_8) = 1
                mem[0] = _2556
                mem[32] = 0
                if not uint8(name[_2556].field_8):
                    _9233 = mem[_855]
                    idx = 0
                    while idx < _9233:
                        mem[0] = _2556
                        mem[32] = 0
                        require idx < mem[_855]
                        mem[0] = mem[(32 * idx) + _855 + 44 len 20]
                        mem[32] = sha3(_2556, 0) + 7
                        uint8(name[_2556][7][mem[0]].field_0) = 1
                        _9233 = mem[_855]
                        idx = idx + 1
                        continue 
}



}

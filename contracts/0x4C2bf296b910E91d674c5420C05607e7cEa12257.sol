contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;

function _fallback() {
    stor0 = 0x79be667ef9dcbbac55a06295ce870b07029bfcdb2dce28d959f2815b16f81798
    stor1 = 0x483ada7726a3c4655da4fbfc0e1108a8fd17b448a68554199c47d08ffb10d4b8
    stor2 = 0xd8bf8b6616bb7d183e2192e1f95bf5a09868dfb1f2e0556d4ab7f572b3c2e0cc
    stor3 = 0x3fb65bd9acc08d00f5fb91014acc61522aa96c79e3b1aadf3bef0fa7b9c3a09
    return code.data[186 len 14561]
}



// =====================  Runtime code  =====================


#
#  - sub_16f9f521(?)
#  - sub_27c40b04(?)
#  - sub_28e44298(?)
#  - sub_3447e09b(?)
#  - createZKP(uint256 arg1, uint256 arg2, uint256[2] arg3)
#  - sub_a1f70a5d(?)
#  - sub_dae176e0(?)
#  - sub_dba6c34d(?)
#
const sub_0dfe4e6a(?) = sha3(msg.sender, call.data[4], call.data[36 len 96], call.data[132], call.data[164], call.data[196], call.data[228], call.data[260], call.data[292], call.data[324], call.data[356], call.data[388], call.data[420], call.data[452], call.data[484], call.data[516], call.data[548])


uint256 stor0;
array of uint256 stor1;
uint256 stor2;
uint256 stor3;

function _fallback() payable {
    revert 
}

function submod(uint256 arg1, uint256 arg2) {
    if arg1 <= arg2:
        return mulmod(arg1 + -arg2 - 0x14551231950b75fc4402da1732fc9bebf, 0, 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141)
    return mulmod(arg1 - arg2, 0, 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141)
}

function sub_f5a93beb(?) {
    mem[96 len 64] = call.data[4 len 64]
    mem[160 len 64] = call.data[68 len 64]
    mem[224 len 64] = call.data[132 len 64]
    mem[288 len 64] = call.data[196 len 64]
    mem[352] = 0
    mem[384 len 64] = 0
    mem[448] = 0
    mem[480 len 64] = 0
    mem[544] = 0
    mem[576 len 64] = 0
    mem[64] = 736
    mem[640] = 0
    mem[672 len 64] = 0
    mem[768] = 0
    mem[736] = stor0
    idx = mem[64]
    s = 0
    while mem[64] + 64 > idx + 32:
        mem[idx + 32] = stor1[s]
        idx = idx + 32
        s = s + 1
        continue 
    mem[mem[64] + 64] = stor2
    idx = 800
    s = 2
    while 864 > idx + 32:
        mem[idx + 32] = stor1[s]
        idx = idx + 32
        s = s + 1
        continue 
    mem[864] = mem[96]
    mem[896] = mem[128]
    mem[928] = mem[160]
    mem[960] = mem[192]
    mem[992] = mem[224]
    mem[1024] = mem[256]
    mem[1056] = mem[288]
    mem[1088] = mem[320]
    hash = sha256hash(mem[mem[64] len -mem[64] + 1120]) 
    require sha256hash.result
    # nil
}

function sub_c07bbc87(?) {
    mem[96 len 128] = call.data[4 len 128]
    mem[224 len 64] = call.data[132 len 64]
    mem[288 len 64] = call.data[196 len 64]
    mem[352 len 64] = call.data[260 len 64]
    mem[416 len 64] = call.data[324 len 64]
    mem[480 len 64] = call.data[388 len 64]
    mem[544 len 64] = call.data[452 len 64]
    mem[608 len 64] = call.data[516 len 64]
    mem[672] = 0
    mem[704] = 0
    mem[736] = 0
    mem[768 len 64] = 0
    mem[832] = 0
    mem[864 len 64] = 0
    if not call.data[132]:
        return 0
    if -4294968273 == call.data[132]:
        return 0
    if not call.data[164]:
        return 0
    if -4294968273 == call.data[164]:
        return 0
    if mulmod(call.data[164], call.data[164], -4294968273) != mulmod(mulmod(mulmod(call.data[132], call.data[132], -4294968273), call.data[132], -4294968273), 7, -4294968273):
        return 0
    if not call.data[196]:
        return 0
    if -4294968273 == call.data[196]:
        return 0
    if not call.data[228]:
        return 0
    if -4294968273 == call.data[228]:
        return 0
    if mulmod(call.data[228], call.data[228], -4294968273) != mulmod(mulmod(mulmod(call.data[196], call.data[196], -4294968273), call.data[196], -4294968273), 7, -4294968273):
        return 0
    if not call.data[260]:
        return 0
    if -4294968273 == call.data[260]:
        return 0
    if not call.data[292]:
        return 0
    if -4294968273 == call.data[292]:
        return 0
    if mulmod(call.data[292], call.data[292], -4294968273) != mulmod(mulmod(mulmod(call.data[260], call.data[260], -4294968273), call.data[260], -4294968273), 7, -4294968273):
        return 0
    if not call.data[324]:
        return 0
    if -4294968273 == call.data[324]:
        return 0
    if not call.data[356]:
        return 0
    if -4294968273 == call.data[356]:
        return 0
    if mulmod(call.data[356], call.data[356], -4294968273) != mulmod(mulmod(mulmod(call.data[324], call.data[324], -4294968273), call.data[324], -4294968273), 7, -4294968273):
        return 0
    if not call.data[388]:
        return 0
    if -4294968273 == call.data[388]:
        return 0
    if not call.data[420]:
        return 0
    if -4294968273 == call.data[420]:
        return 0
    if mulmod(call.data[420], call.data[420], -4294968273) != mulmod(mulmod(mulmod(call.data[388], call.data[388], -4294968273), call.data[388], -4294968273), 7, -4294968273):
        return 0
    if not call.data[452]:
        return 0
    if -4294968273 == call.data[452]:
        return 0
    if not call.data[484]:
        return 0
    if -4294968273 == call.data[484]:
        return 0
    if mulmod(call.data[484], call.data[484], -4294968273) != mulmod(mulmod(mulmod(call.data[452], call.data[452], -4294968273), call.data[452], -4294968273), 7, -4294968273):
        return 0
    if not call.data[516]:
        return 0
    if -4294968273 == call.data[516]:
        return 0
    if not call.data[548]:
        return 0
    if -4294968273 == call.data[548]:
        return 0
    if mulmod(call.data[548], call.data[548], -4294968273) != mulmod(mulmod(mulmod(call.data[516], call.data[516], -4294968273), call.data[516], -4294968273), 7, -4294968273):
        return 0
    mem[1076] = call.data[324]
    mem[1108] = call.data[356]
    mem[1140] = call.data[388]
    mem[1172] = call.data[420]
    mem[1204] = call.data[452]
    mem[1236] = call.data[484]
    mem[1268] = call.data[516]
    mem[1300] = call.data[548]
    hash = sha256hash(msg.sender, call.data[132], call.data[164], call.data[260], call.data[292], call.data[324], call.data[356], call.data[388], call.data[420], call.data[452], call.data[484], call.data[516], call.data[548]) 
    require sha256hash.result
    if hash != mulmod(call.data[4], call.data[36], 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141):
        return 0
    mem[928] = stor0
    mem[960] = stor1.length
    idx = 960
    s = 1
    while 992 > idx + 32:
        mem[idx + 32] = stor1[s]
        idx = idx + 32
        s = s + 1
        continue 
    mem[992] = 0
    mem[1024 len 64] = 0
    mem[64] = 1952
    mem[var150001] = 0
    if var150002 - 1:
        var150001 = var150001 + 32
        var150002 = var150002 - 1
        continue 
    mem[var151001] = 1856
    if var151002 - 1:
        mem[64] = 2048
        var150001 = 1952
        var150002 = 3
        continue 
    if call.data[68]:
        s = 0
        t = 0
        idx = call.data[68]
        while idx:
            if not bool(idx):
                s = s
                t = t + 1
                idx = idx / 2
                continue 
            mem[t + 2560 len 8] = idx % 32
            s = idx % 32
            t = t + 1
            idx = floor32(idx) + (32 * idx % 32 > 16) / 2
            continue 
    # nil
}

function sub_8a6ab9c7(?) {
    mem[96 len 64] = call.data[4 len 64]
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320 len 64] = 0
    mem[384] = 0
    mem[416 len 64] = 0
    mem[480] = 0
    mem[512 len 64] = 0
    mem[576] = 0
    mem[608] = 0
    mem[640] = stor0
    mem[672] = stor1.length
    idx = 672
    s = 1
    while 704 > idx + 32:
        mem[idx + 32] = stor1[s]
        idx = idx + 32
        s = s + 1
        continue 
    mem[704] = 0
    mem[736 len 64] = 0
    mem[64] = 1664
    mem[var35001] = 0
    if var35002 - 1:
        var35001 = var35001 + 32
        var35002 = var35002 - 1
        continue 
    else:
        mem[var36001] = 1568
        if var36002 - 1:
            mem[64] = 1760
            var35001 = 1664
            var35002 = 3
            continue 
        else:
            mem[1664] = 0
            mem[1696 len 64] = 0
            mem[1760] = 0
            mem[1792 len 480] = 0
            if arg1:
                mem[64] = 2784
                s = 0
                t = 0
                idx = arg1
                while idx:
                    if not bool(idx):
                        s = s
                        t = t + 1
                        idx = idx / 2
                        continue 
                    else:
                        mem[t + 2272 len 8] = idx % 32
                        s = idx % 32
                        t = t + 1
                        idx = floor32(idx) + (32 * idx % 32 > 16) / 2
                        continue 
                _32 = mem[64]
                mem[64] = mem[64] + 96
                mem[_32] = mem[640]
                mem[_32 + 32] = mem[672]
                mem[_32 + 64] = 1
                mem[800] = _32
                _39 = mem[64]
                mem[64] = mem[64] + 96
                mem[_39] = 0
                mem[_39 + 32 len 64] = 0
                var50001 = _39 + 64
                var50002 = 1
                _52 = mem[_32]
                _53 = mem[_32 + 32]
                mem[_39] = mulmod(mulmod(mulmod(3, mulmod(mem[_32], mem[_32], -4294968273), -4294968273), mulmod(3, mulmod(mem[_32], mem[_32], -4294968273), -4294968273), -4294968273), -mulmod(mulmod(4, mulmod(mem[_32], mulmod(mem[_32 + 32], mem[_32 + 32], -4294968273), -4294968273), -4294968273), mulmod(4, mulmod(mem[_32], mulmod(mem[_32 + 32], mem[_32 + 32], -4294968273), -4294968273), -4294968273), -4294968273) - 4294968273, -4294968273)
                mem[_39 + 32] = mulmod(mulmod(mulmod(3, mulmod(_52, _52, -4294968273), -4294968273), mulmod(mulmod(4, mulmod(_52, mulmod(_53, _53, -4294968273), -4294968273), -4294968273), -mulmod(mulmod(mulmod(3, mulmod(_52, _52, -4294968273), -4294968273), mulmod(3, mulmod(_52, _52, -4294968273), -4294968273), -4294968273), -mulmod(mulmod(4, mulmod(_52, mulmod(_53, _53, -4294968273), -4294968273), -4294968273), mulmod(4, mulmod(_52, mulmod(_53, _53, -4294968273), -4294968273), -4294968273), -4294968273) - 4294968273, -4294968273) - 4294968273, -4294968273), -4294968273), -mulmod(8, mulmod(mulmod(_53, _53, -4294968273), mulmod(_53, _53, -4294968273), -4294968273), -4294968273) - 4294968273, -4294968273)
                mem[_39 + 64] = mulmod(2, mulmod(_53, 1, -4294968273), -4294968273)
                _57 = mem[64]
                mem[64] = mem[64] + 96
                mem[_57] = 0
                mem[_57 + 32 len 64] = 0
                _60 = mem[64]
                mem[64] = mem[64] + 64
                mem[_60] = 0
                mem[_60 + 32] = 0
                _68 = mem[64]
                mem[64] = mem[64] + 128
                mem[_68] = 0
                mem[_68 + 32 len 96] = 0
                if mulmod(2, mulmod(_53, 1, -4294968273), -4294968273):
                    if mem[672]:
                        mem[_60] = mulmod(mulmod(2, mulmod(_53, 1, -4294968273), -4294968273), mulmod(2, mulmod(_53, 1, -4294968273), -4294968273), -4294968273)
                        mem[_60 + 32] = mulmod(mulmod(2, mulmod(_53, 1, -4294968273), -4294968273), mulmod(mulmod(2, mulmod(_53, 1, -4294968273), -4294968273), mulmod(2, mulmod(_53, 1, -4294968273), -4294968273), -4294968273), -4294968273)
                        _170 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_170] = mem[_39]
                        mem[_170 + 32] = mulmod(mulmod(mulmod(3, mulmod(_52, _52, -4294968273), -4294968273), mulmod(mulmod(4, mulmod(_52, mulmod(_53, _53, -4294968273), -4294968273), -4294968273), -mulmod(mulmod(mulmod(3, mulmod(_52, _52, -4294968273), -4294968273), mulmod(3, mulmod(_52, _52, -4294968273), -4294968273), -4294968273), -mulmod(mulmod(4, mulmod(_52, mulmod(_53, _53, -4294968273), -4294968273), -4294968273), mulmod(4, mulmod(_52, mulmod(_53, _53, -4294968273), -4294968273), -4294968273), -4294968273) - 4294968273, -4294968273) - 4294968273, -4294968273), -4294968273), -mulmod(8, mulmod(mulmod(_53, _53, -4294968273), mulmod(_53, _53, -4294968273), -4294968273), -4294968273) - 4294968273, -4294968273)
                        mem[_170 + 64] = mulmod(mem[640], mulmod(mulmod(2, mulmod(_53, 1, -4294968273), -4294968273), mulmod(2, mulmod(_53, 1, -4294968273), -4294968273), -4294968273), -4294968273)
                        mem[_170 + 96] = mulmod(mem[672], mulmod(mulmod(2, mulmod(_53, 1, -4294968273), -4294968273), mulmod(mulmod(2, mulmod(_53, 1, -4294968273), -4294968273), mulmod(2, mulmod(_53, 1, -4294968273), -4294968273), -4294968273), -4294968273), -4294968273)
                        if mem[_170 + 64] != mem[_170]:
                            # nil
                        else:
                            if mulmod(mulmod(mulmod(3, mulmod(_52, _52, -4294968273), -4294968273), mulmod(mulmod(4, mulmod(_52, mulmod(_53, _53, -4294968273), -4294968273), -4294968273), -mulmod(mulmod(mulmod(3, mulmod(_52, _52, -4294968273), -4294968273), mulmod(3, mulmod(_52, _52, -4294968273), -4294968273), -4294968273), -mulmod(mulmod(4, mulmod(_52, mulmod(_53, _53, -4294968273), -4294968273), -4294968273), mulmod(4, mulmod(_52, mulmod(_53, _53, -4294968273), -4294968273), -4294968273), -4294968273) - 4294968273, -4294968273) - 4294968273, -4294968273), -4294968273), -mulmod(8, mulmod(mulmod(_53, _53, -4294968273), mulmod(_53, _53, -4294968273), -4294968273), -4294968273) - 4294968273, -4294968273) == mem[_170 + 96]:
                                # nil
                            else:
                                # nil
                    else:
                        # nil
                else:
                    # nil
            else:
                idx = 2304
                s = 3
                while 2336 > idx + 32:
                    mem[idx + 32] = stor1[s]
                    idx = idx + 32
                    s = s + 1
                    continue 
                # nil
}

function createCommitment(uint256 arg1, uint256 arg2) {
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192 len 64] = 0
    mem[256] = 0
    mem[288 len 64] = 0
    mem[352] = 0
    mem[384 len 64] = 0
    mem[448] = 0
    mem[480] = 0
    mem[512] = stor0
    mem[544] = stor1.length
    idx = 544
    s = 1
    while 576 > idx + 32:
        mem[idx + 32] = stor1[s]
        idx = idx + 32
        s = s + 1
        continue 
    mem[576] = 0
    mem[608 len 64] = 0
    mem[64] = 1536
    mem[var31001] = 0
    if var31002 - 1:
        var31001 = var31001 + 32
        var31002 = var31002 - 1
        continue 
    else:
        mem[var32001] = 1440
        if var32002 - 1:
            mem[64] = 1632
            var31001 = 1536
            var31002 = 3
            continue 
        else:
            mem[1536] = 0
            mem[1568 len 64] = 0
            mem[1632] = 0
            mem[1664 len 480] = 0
            if arg2:
                mem[64] = 2656
                s = 0
                t = 0
                idx = arg2
                while idx:
                    if not bool(idx):
                        s = s
                        t = t + 1
                        idx = idx / 2
                        continue 
                    else:
                        mem[t + 2144 len 8] = idx % 32
                        s = idx % 32
                        t = t + 1
                        idx = floor32(idx) + (32 * idx % 32 > 16) / 2
                        continue 
                _30 = mem[64]
                mem[64] = mem[64] + 96
                mem[_30] = mem[512]
                mem[_30 + 32] = mem[544]
                mem[_30 + 64] = 1
                mem[672] = _30
                _37 = mem[64]
                mem[64] = mem[64] + 96
                mem[_37] = 0
                mem[_37 + 32 len 64] = 0
                var46001 = _37 + 64
                var46002 = 1
                _50 = mem[_30]
                _51 = mem[_30 + 32]
                mem[_37] = mulmod(mulmod(mulmod(3, mulmod(mem[_30], mem[_30], -4294968273), -4294968273), mulmod(3, mulmod(mem[_30], mem[_30], -4294968273), -4294968273), -4294968273), -mulmod(mulmod(4, mulmod(mem[_30], mulmod(mem[_30 + 32], mem[_30 + 32], -4294968273), -4294968273), -4294968273), mulmod(4, mulmod(mem[_30], mulmod(mem[_30 + 32], mem[_30 + 32], -4294968273), -4294968273), -4294968273), -4294968273) - 4294968273, -4294968273)
                mem[_37 + 32] = mulmod(mulmod(mulmod(3, mulmod(_50, _50, -4294968273), -4294968273), mulmod(mulmod(4, mulmod(_50, mulmod(_51, _51, -4294968273), -4294968273), -4294968273), -mulmod(mulmod(mulmod(3, mulmod(_50, _50, -4294968273), -4294968273), mulmod(3, mulmod(_50, _50, -4294968273), -4294968273), -4294968273), -mulmod(mulmod(4, mulmod(_50, mulmod(_51, _51, -4294968273), -4294968273), -4294968273), mulmod(4, mulmod(_50, mulmod(_51, _51, -4294968273), -4294968273), -4294968273), -4294968273) - 4294968273, -4294968273) - 4294968273, -4294968273), -4294968273), -mulmod(8, mulmod(mulmod(_51, _51, -4294968273), mulmod(_51, _51, -4294968273), -4294968273), -4294968273) - 4294968273, -4294968273)
                mem[_37 + 64] = mulmod(2, mulmod(_51, 1, -4294968273), -4294968273)
                _55 = mem[64]
                mem[64] = mem[64] + 96
                mem[_55] = 0
                mem[_55 + 32 len 64] = 0
                _58 = mem[64]
                mem[64] = mem[64] + 64
                mem[_58] = 0
                mem[_58 + 32] = 0
                var56001 = _58 + 32
                var56002 = 1
                _66 = mem[64]
                mem[64] = mem[64] + 128
                mem[_66] = 0
                mem[_66 + 32 len 96] = 0
                if mulmod(2, mulmod(_51, 1, -4294968273), -4294968273):
                    if mem[544]:
                        mem[_58] = mulmod(mulmod(2, mulmod(_51, 1, -4294968273), -4294968273), mulmod(2, mulmod(_51, 1, -4294968273), -4294968273), -4294968273)
                        mem[_58 + 32] = mulmod(mulmod(2, mulmod(_51, 1, -4294968273), -4294968273), mulmod(mulmod(2, mulmod(_51, 1, -4294968273), -4294968273), mulmod(2, mulmod(_51, 1, -4294968273), -4294968273), -4294968273), -4294968273)
                        _168 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_168] = mem[_37]
                        mem[_168 + 32] = mulmod(mulmod(mulmod(3, mulmod(_50, _50, -4294968273), -4294968273), mulmod(mulmod(4, mulmod(_50, mulmod(_51, _51, -4294968273), -4294968273), -4294968273), -mulmod(mulmod(mulmod(3, mulmod(_50, _50, -4294968273), -4294968273), mulmod(3, mulmod(_50, _50, -4294968273), -4294968273), -4294968273), -mulmod(mulmod(4, mulmod(_50, mulmod(_51, _51, -4294968273), -4294968273), -4294968273), mulmod(4, mulmod(_50, mulmod(_51, _51, -4294968273), -4294968273), -4294968273), -4294968273) - 4294968273, -4294968273) - 4294968273, -4294968273), -4294968273), -mulmod(8, mulmod(mulmod(_51, _51, -4294968273), mulmod(_51, _51, -4294968273), -4294968273), -4294968273) - 4294968273, -4294968273)
                        mem[_168 + 64] = mulmod(mem[512], mulmod(mulmod(2, mulmod(_51, 1, -4294968273), -4294968273), mulmod(2, mulmod(_51, 1, -4294968273), -4294968273), -4294968273), -4294968273)
                        mem[_168 + 96] = mulmod(mem[544], mulmod(mulmod(2, mulmod(_51, 1, -4294968273), -4294968273), mulmod(mulmod(2, mulmod(_51, 1, -4294968273), -4294968273), mulmod(2, mulmod(_51, 1, -4294968273), -4294968273), -4294968273), -4294968273), -4294968273)
                        if mem[_168 + 64] != mem[_168]:
                            # nil
                        else:
                            if mulmod(mulmod(mulmod(3, mulmod(_50, _50, -4294968273), -4294968273), mulmod(mulmod(4, mulmod(_50, mulmod(_51, _51, -4294968273), -4294968273), -4294968273), -mulmod(mulmod(mulmod(3, mulmod(_50, _50, -4294968273), -4294968273), mulmod(3, mulmod(_50, _50, -4294968273), -4294968273), -4294968273), -mulmod(mulmod(4, mulmod(_50, mulmod(_51, _51, -4294968273), -4294968273), -4294968273), mulmod(4, mulmod(_50, mulmod(_51, _51, -4294968273), -4294968273), -4294968273), -4294968273) - 4294968273, -4294968273) - 4294968273, -4294968273), -4294968273), -mulmod(8, mulmod(mulmod(_51, _51, -4294968273), mulmod(_51, _51, -4294968273), -4294968273), -4294968273) - 4294968273, -4294968273) == mem[_168 + 96]:
                                if mulmod(2, mulmod(_51, 1, -4294968273), -4294968273):
                                    # nil
                                else:
                                    # nil
                            else:
                                # nil
                    else:
                        # nil
                else:
                    # nil
            else:
                mem[2144] = stor2
                mem[2176] = stor3
                idx = 2176
                s = 3
                while 2208 > idx + 32:
                    mem[idx + 32] = stor1[s]
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[2208] = 0
                mem[2240 len 64] = 0
                mem[64] = 3168
                mem[var56001] = 0
                if var56002 - 1:
                    var56001 = var56001 + 32
                    var56002 = var56002 - 1
                    continue 
                else:
                    mem[var57001] = 3072
                    if var57002 - 1:
                        mem[64] = 3264
                        var56001 = 3168
                        var56002 = 3
                        continue 
                    else:
                        # nil
}

function verifyZKP(uint256[2] arg1, uint256 arg2, uint256[3] arg3) {
    mem[96 len 64] = call.data[4 len 64]
    mem[160 len 96] = call.data[100 len 96]
    mem[320] = 0
    mem[352 len 64] = 0
    mem[416] = 0
    mem[448 len 64] = 0
    mem[512] = 0
    mem[544 len 64] = 0
    mem[256] = 0xb879be667ef9dcbbac55a06295ce870b07029bfcdb2dce28d959f2815b16f817
    mem[288] = 0x483ada7726a3c4655da4fbfc0e1108a8fd17b448a68554199c47d08ffb10d4
    if not call.data[4]:
        return 0
    else:
        if -4294968273 == call.data[4]:
            return 0
        else:
            if not call.data[36]:
                return 0
            else:
                if call.data[36] != -4294968273:
                    if mulmod(call.data[36], call.data[36], -4294968273) != mulmod(mulmod(mulmod(call.data[4], call.data[4], -4294968273), call.data[4], -4294968273), 7, -4294968273):
                        return 0
                    else:
                        mem[608] = call.data[100]
                        mem[640] = call.data[132]
                        if not call.data[100]:
                            return 0
                        else:
                            if -4294968273 == call.data[100]:
                                return 0
                            else:
                                if not call.data[132]:
                                    return 0
                                else:
                                    if call.data[132] != -4294968273:
                                        if mulmod(call.data[132], call.data[132], -4294968273) == mulmod(mulmod(mulmod(call.data[100], call.data[100], -4294968273), call.data[100], -4294968273), 7, -4294968273):
                                            mem[756] = call.data[4]
                                            mem[788] = call.data[36]
                                            mem[820] = call.data[100]
                                            mem[852 len 64] = call.data[132 len 64]
                                            hash = sha256hash(msg.sender, 0xb879be667ef9dcbbac55a06295ce870b07029bfcdb2dce28d959f2815b16f817, 0x483ada7726a3c4655da4fbfc0e1108a8fd17b448a68554199c47d08ffb10d4, call.data[4], call.data[36], call.data[100], call.data[132 len 64]) 
                                            require sha256hash.result
                                            mem[672] = 0
                                            mem[704 len 64] = 0
                                            mem[64] = 1632
                                            mem[var63001] = 0
                                            if var63002 - 1:
                                                var63001 = var63001 + 32
                                                var63002 = var63002 - 1
                                                continue 
                                            else:
                                                mem[var64001] = 1536
                                                if var64002 - 1:
                                                    mem[64] = 1728
                                                    var63001 = 1632
                                                    var63002 = 3
                                                    continue 
                                                else:
                                                    mem[1632] = 0
                                                    mem[1664 len 64] = 0
                                                    mem[1728] = 0
                                                    mem[1760 len 480] = 0
                                                    if arg3:
                                                        mem[64] = 2752
                                                        s = 0
                                                        t = 0
                                                        idx = arg3
                                                        while idx:
                                                            if not bool(idx):
                                                                s = s
                                                                t = t + 1
                                                                idx = idx / 2
                                                                continue 
                                                            else:
                                                                mem[t + 2240 len 8] = idx % 32
                                                                s = idx % 32
                                                                t = t + 1
                                                                idx = floor32(idx) + (32 * idx % 32 > 16) / 2
                                                                continue 
                                                        _68 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_68] = mem[256]
                                                        mem[_68 + 32] = mem[288]
                                                        mem[_68 + 64] = 1
                                                        mem[768] = _68
                                                        _72 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_72] = 0
                                                        mem[_72 + 32 len 64] = 0
                                                        _75 = mem[_68]
                                                        _76 = mem[_68 + 32]
                                                        mem[_72] = mulmod(mulmod(mulmod(3, mulmod(mem[_68], mem[_68], -4294968273), -4294968273), mulmod(3, mulmod(mem[_68], mem[_68], -4294968273), -4294968273), -4294968273), -mulmod(mulmod(4, mulmod(mem[_68], mulmod(mem[_68 + 32], mem[_68 + 32], -4294968273), -4294968273), -4294968273), mulmod(4, mulmod(mem[_68], mulmod(mem[_68 + 32], mem[_68 + 32], -4294968273), -4294968273), -4294968273), -4294968273) - 4294968273, -4294968273)
                                                        mem[_72 + 32] = mulmod(mulmod(mulmod(3, mulmod(_75, _75, -4294968273), -4294968273), mulmod(mulmod(4, mulmod(_75, mulmod(_76, _76, -4294968273), -4294968273), -4294968273), -mulmod(mulmod(mulmod(3, mulmod(_75, _75, -4294968273), -4294968273), mulmod(3, mulmod(_75, _75, -4294968273), -4294968273), -4294968273), -mulmod(mulmod(4, mulmod(_75, mulmod(_76, _76, -4294968273), -4294968273), -4294968273), mulmod(4, mulmod(_75, mulmod(_76, _76, -4294968273), -4294968273), -4294968273), -4294968273) - 4294968273, -4294968273) - 4294968273, -4294968273), -4294968273), -mulmod(8, mulmod(mulmod(_76, _76, -4294968273), mulmod(_76, _76, -4294968273), -4294968273), -4294968273) - 4294968273, -4294968273)
                                                        mem[_72 + 64] = mulmod(2, mulmod(_76, 1, -4294968273), -4294968273)
                                                        _78 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_78] = 0
                                                        mem[_78 + 32 len 64] = 0
                                                        _81 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_81] = 0
                                                        mem[_81 + 32] = 0
                                                        _83 = mem[64]
                                                        mem[64] = mem[64] + 128
                                                        mem[_83] = 0
                                                        mem[_83 + 32 len 96] = 0
                                                        if mulmod(2, mulmod(_76, 1, -4294968273), -4294968273):
                                                            if mem[288]:
                                                                mem[_81] = mulmod(mulmod(2, mulmod(_76, 1, -4294968273), -4294968273), mulmod(2, mulmod(_76, 1, -4294968273), -4294968273), -4294968273)
                                                                mem[_81 + 32] = mulmod(mulmod(2, mulmod(_76, 1, -4294968273), -4294968273), mulmod(mulmod(2, mulmod(_76, 1, -4294968273), -4294968273), mulmod(2, mulmod(_76, 1, -4294968273), -4294968273), -4294968273), -4294968273)
                                                                _100 = mem[64]
                                                                mem[64] = mem[64] + 128
                                                                mem[_100] = mem[_72]
                                                                mem[_100 + 32] = mulmod(mulmod(mulmod(3, mulmod(_75, _75, -4294968273), -4294968273), mulmod(mulmod(4, mulmod(_75, mulmod(_76, _76, -4294968273), -4294968273), -4294968273), -mulmod(mulmod(mulmod(3, mulmod(_75, _75, -4294968273), -4294968273), mulmod(3, mulmod(_75, _75, -4294968273), -4294968273), -4294968273), -mulmod(mulmod(4, mulmod(_75, mulmod(_76, _76, -4294968273), -4294968273), -4294968273), mulmod(4, mulmod(_75, mulmod(_76, _76, -4294968273), -4294968273), -4294968273), -4294968273) - 4294968273, -4294968273) - 4294968273, -4294968273), -4294968273), -mulmod(8, mulmod(mulmod(_76, _76, -4294968273), mulmod(_76, _76, -4294968273), -4294968273), -4294968273) - 4294968273, -4294968273)
                                                                mem[_100 + 64] = mulmod(mem[256], mulmod(mulmod(2, mulmod(_76, 1, -4294968273), -4294968273), mulmod(2, mulmod(_76, 1, -4294968273), -4294968273), -4294968273), -4294968273)
                                                                mem[_100 + 96] = mulmod(mem[288], mulmod(mulmod(2, mulmod(_76, 1, -4294968273), -4294968273), mulmod(mulmod(2, mulmod(_76, 1, -4294968273), -4294968273), mulmod(2, mulmod(_76, 1, -4294968273), -4294968273), -4294968273), -4294968273), -4294968273)
                                                                if mem[_100 + 64] != mem[_100]:
                                                                    # nil
                                                                else:
                                                                    if mulmod(mulmod(mulmod(3, mulmod(_75, _75, -4294968273), -4294968273), mulmod(mulmod(4, mulmod(_75, mulmod(_76, _76, -4294968273), -4294968273), -4294968273), -mulmod(mulmod(mulmod(3, mulmod(_75, _75, -4294968273), -4294968273), mulmod(3, mulmod(_75, _75, -4294968273), -4294968273), -4294968273), -mulmod(mulmod(4, mulmod(_75, mulmod(_76, _76, -4294968273), -4294968273), -4294968273), mulmod(4, mulmod(_75, mulmod(_76, _76, -4294968273), -4294968273), -4294968273), -4294968273) - 4294968273, -4294968273) - 4294968273, -4294968273), -4294968273), -mulmod(8, mulmod(mulmod(_76, _76, -4294968273), mulmod(_76, _76, -4294968273), -4294968273), -4294968273) - 4294968273, -4294968273) == mem[_100 + 96]:
                                                                        # nil
                                                                    else:
                                                                        # nil
                                                            else:
                                                                # nil
                                                        else:
                                                            # nil
                                                    else:
                                                        mem[2240] = 0
                                                        mem[2272 len 64] = 0
                                                        mem[64] = 3200
                                                        mem[var83001] = 0
                                                        if var83002 - 1:
                                                            var83001 = var83001 + 32
                                                            var83002 = var83002 - 1
                                                            continue 
                                                        else:
                                                            mem[var84001] = 3104
                                                            if var84002 - 1:
                                                                mem[64] = 3296
                                                                var83001 = 3200
                                                                var83002 = 3
                                                                continue 
                                                            else:
                                                                # nil
                                        else:
                                            return 0
                                    else:
                                        return 0
                else:
                    return 0
}



}

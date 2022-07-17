contract main {




// =====================  Runtime code  =====================


address factorAddress;
array of uint256 stor1;
array of uint256 sub_348246ac;

function sub_348246ac(?) {
    return sub_348246ac[arg1][0 len sub_348246ac[arg1].length]
}

function factor() {
    return factorAddress
}

function sub_ace62504(?) {
    return sub_348246ac.length
}

function _fallback() payable {
    revert
}

function sub_1c69487c(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    require msg.sender == factorAddress
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 96
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = 96
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] = 96
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 256] = ceil32(arg1.length) + 128
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 288 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + -(arg1.length % 32) + 320 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 288] = 1
    uint256(stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 288 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][]) = Array(len=arg1.length, data=arg1[all])
    uint256(stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 288 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][1][]) = Array(len=Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)], data=mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    sub_348246ac.length++
    sub_348246ac[sub_348246ac.length][] = Array(len=arg1.length, data=arg1[all])
}

function sub_8f4bd2c5(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    require msg.sender == factorAddress
    mem[64] = ceil32(arg1.length) + ceil32(arg2.length) + 224
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 96
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = ceil32(arg1.length) + 128
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 224 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + -(arg1.length % 32) + 256 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 224] = 1
    _36 = mem[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]]
    mem[0] = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 224 len (arg1.length % 32) + 32])
    uint256(stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 224 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][]) = Array(len=_36, data=mem[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)] + 32 len _36])
    uint256(stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 224 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][1][]) = Array(len=Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)], data=mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
}

function sub_2ee5209d(?) payable {
    mem[64] = 96
    require not msg.value
    require msg.sender == factorAddress
    idx = 0
    while idx < sub_348246ac.length:
        _17 = mem[64]
        mem[0] = sha3(2) + idx
        mem[mem[64]] = sub_348246ac[idx]
        s = mem[64]
        t = sha3(mem[0])
        while _17 + sub_348246ac[idx].length > s + 32:
            mem[s + 32] = stor1[t]
            s = s + 32
            t = t + 1
            continue 
        mem[_17 + sub_348246ac[idx].length] = 1
        _35 = sha3(mem[mem[64] len _17 + sub_348246ac[idx].length + -mem[64] + 32])
        uint256(stor[sha3(mem[mem[64] len _17 + stor2[idx].length + -mem[64] + 32])]) = 0
        if 31 >= stor[sha3(mem[mem[64] len _17 + stor2[idx].length + -mem[64] + 32])].length:
            stor1[sha3(mem[mem[64] len _17 + stor2[idx].length + -mem[64] + 32])] = 0
            if 31 < stor[sha3(mem[mem[64] len _17 + stor2[idx].length + -mem[64] + 32]) + 1].length:
                mem[0] = sha3(mem[mem[64] len _17 + sub_348246ac[idx].length + -mem[64] + 32]) + 1
                s = sha3(mem[0])
                while sha3(mem[0]) + (stor[_35 + 1].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
        else:
            mem[0] = sha3(mem[mem[64] len _17 + sub_348246ac[idx].length + -mem[64] + 32])
            s = sha3(mem[0])
            while sha3(mem[0]) + (stor[_35].length + 31 / 32) > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
            stor1[_35] = 0
            if 31 < stor[_35 + 1].length:
                mem[0] = _35 + 1
                s = sha3(_35 + 1)
                while sha3(_35 + 1) + (stor[_35 + 1].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
        idx = idx + 1
        continue 
    sub_348246ac.length = 0
    if sub_348246ac.length > 0:
        mem[0] = 2
        idx = 0
        while sha3(2) + sub_348246ac.length > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])]) = 0
            if 31 < stor[idx + sha3(mem[0])].length:
                mem[0] = idx + sha3(mem[0])
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
}

function readInvoice(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 1
    _180 = sha3(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length)])
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 1
    _353 = sha3(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length)])
    mem[ceil32(arg1.length) + 128] = stor[_180].length
    mem[ceil32(arg1.length) + 160] = uint256(stor[sha3(_180)])
    idx = ceil32(arg1.length) + 160
    s = 0
    while ceil32(arg1.length) + stor[_180].length + 128 > idx:
        mem[idx + 32] = uint256(stor[s + sha3(_180) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(arg1.length) + ceil32(stor[_180].length) + ceil32(stor[_353 + 1].length) + 192
    mem[ceil32(arg1.length) + ceil32(stor[_180].length) + 160] = stor[_353 + 1].length
    mem[0] = _353 + 1
    mem[ceil32(arg1.length) + ceil32(stor[_180].length) + 192] = uint256(stor[sha3(_353 + 1)])
    idx = ceil32(arg1.length) + ceil32(stor[_180].length) + 192
    s = 0
    while ceil32(arg1.length) + ceil32(stor[_180].length) + stor[_353 + 1].length + 160 > idx:
        mem[idx + 32] = uint256(stor[s + sha3(_353 + 1) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg1.length) + ceil32(stor[_180].length) + ceil32(stor[_353 + 1].length) + 192] = 64
    mem[ceil32(arg1.length) + ceil32(stor[_180].length) + ceil32(stor[_353 + 1].length) + 256] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(stor[_180].length) + ceil32(stor[_353 + 1].length) + 288 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
        mem[ceil32(arg1.length) + ceil32(stor[_180].length) + ceil32(stor[_353 + 1].length) + 224] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 96
        mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(stor[_180].length) + ceil32(stor[_353 + 1].length) + 288] = stor[_353 + 1].length
        mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(stor[_180].length) + ceil32(stor[_353 + 1].length) + 320 len ceil32(stor[_353 + 1].length)] = mem[ceil32(arg1.length) + ceil32(stor[_180].length) + 192 len ceil32(stor[_353 + 1].length)]
        if not stor[_353 + 1].length % 32:
            return memory
              from ceil32(arg1.length) + ceil32(stor[_180].length) + ceil32(stor[_353 + 1].length) + 192
               len stor[_353 + 1].length + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 128
        mem[floor32(stor[_353 + 1].length) + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(stor[_180].length) + ceil32(stor[_353 + 1].length) + 320] = mem[floor32(stor[_353 + 1].length) + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(stor[_180].length) + ceil32(stor[_353 + 1].length) + -stor[_353 + 1].length % 32 + 352 len stor[_353 + 1].length % 32]
        return memory
          from ceil32(arg1.length) + ceil32(stor[_180].length) + ceil32(stor[_353 + 1].length) + 192
           len floor32(stor[_353 + 1].length) + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 160
    mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(stor[_180].length) + ceil32(stor[_353 + 1].length) + 288] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(stor[_180].length) + ceil32(stor[_353 + 1].length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 320 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
    mem[ceil32(arg1.length) + ceil32(stor[_180].length) + ceil32(stor[_353 + 1].length) + 224] = floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 128
    mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(stor[_180].length) + ceil32(stor[_353 + 1].length) + 320] = stor[_353 + 1].length
    mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(stor[_180].length) + ceil32(stor[_353 + 1].length) + 352 len ceil32(stor[_353 + 1].length)] = mem[ceil32(arg1.length) + ceil32(stor[_180].length) + 192 len ceil32(stor[_353 + 1].length)]
    if not stor[_353 + 1].length % 32:
        return memory
          from ceil32(arg1.length) + ceil32(stor[_180].length) + ceil32(stor[_353 + 1].length) + 192
           len stor[_353 + 1].length + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 160
    mem[floor32(stor[_353 + 1].length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(stor[_180].length) + ceil32(stor[_353 + 1].length) + 352] = mem[floor32(stor[_353 + 1].length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(stor[_180].length) + ceil32(stor[_353 + 1].length) + -stor[_353 + 1].length % 32 + 384 len stor[_353 + 1].length % 32]
    return memory
      from ceil32(arg1.length) + ceil32(stor[_180].length) + ceil32(stor[_353 + 1].length) + 192
       len floor32(stor[_353 + 1].length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 192
}



}

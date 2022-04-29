contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[94 len 2039]
}



// =====================  Runtime code  =====================


address stor0;
array of struct stor1;
array of uint256 stor2;

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}

function createUser(string arg1) {
    stor2[address(msg.sender)] = (2 * arg1.length) + 1
    s = 0
    idx = arg1 + 36
    while arg1 + arg1.length + 36 > idx:
        stor2[address(msg.sender)][s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg1.length + 31) >> 5
    while stor2[address(msg.sender)].length + 31 / 32 > idx:
        stor2[address(msg.sender)][idx] = 0
        idx = idx + 1
        continue 
}

function sendMessage(string arg1, string arg2) {
    uint256(stor1[arg2[all]].field_0)++
    if not uint256(stor1[arg2[all]].field_0) <= uint256(stor1[arg2[all]].field_0) + 1:
        mem[0] = sha3(arg2[all], 1)
        idx = (3 * uint256(stor1[arg2[all]].field_0)) + 3
        while sha3(sha3(arg2[all], 1)) + (3 * uint256(stor1[arg2[all]].field_0)) > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])]) = 0
            if 31 < stor[idx + sha3(mem[0])].length:
                mem[0] = idx + sha3(mem[0])
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            address(stor[idx + sha3(mem[0]) + 1]) = 0
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            idx = idx + 3
            continue 
    uint256(stor1[arg2[all]][uint256(stor1[arg2[all]].field_0)][].field_0) = Array(len=arg1.length, data=arg1[all])
    address(stor1[arg2[all]][uint256(stor1[arg2[all]].field_0)].field_256) = msg.sender
    uint256(stor1[arg2[all]][uint256(stor1[arg2[all]].field_0)].field_512) = block.timestamp
    emit 0xfd5b8182: 224, 64, arg2.length, arg2[all]
}

function sub_f57a8d46(?) {
    mem[96] = 0
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 1
    mem[64] = (32 * uint256(stor1[arg1[all]].field_0)) + 160
    mem[128] = uint256(stor1[arg1[all]].field_0)
    s = 160
    idx = 0
    while idx < uint256(stor1[arg1[all]].field_0):
        mem[0] = sha3(arg1[all], 1)
        _16 = mem[64]
        mem[64] = mem[64] + 96
        _17 = mem[64]
        mem[64] = mem[64] + ceil32(stor1[arg1[all]][idx].length) + 32
        mem[_17] = stor1[arg1[all]][idx].length
        mem[0] = (3 * idx) + sha3(sha3(arg1[all], 1))
        mem[_17 + 32] = uint256(stor1[arg1[all]][idx].field_0)
        t = _17 + 32
        u = sha3(mem[0])
        while _17 + stor1[arg1[all]][idx].length > t:
            mem[t + 32] = uint256(stor1[u].field_0)
            t = t + 32
            u = u + 1
            continue 
        mem[_16] = _17
        mem[_16 + 32] = address(stor1[arg1[all]][idx].field_256)
        mem[_16 + 64] = uint256(stor1[arg1[all]][idx].field_512)
        mem[s] = _16
        s = s + 32
        idx = idx + 1
        continue 
    _18 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[128]
    _20 = mem[128]
    s = mem[64] + 64
    idx = 0
    while idx < _20:
        mem[s] = mem[(32 * idx) + 160]
        s = s + 32
        idx = idx + 1
        continue 
    return memory
      from mem[64]
       len _18 + (32 * _20) + -mem[64] + 64
}



}

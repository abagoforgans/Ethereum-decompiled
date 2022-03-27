contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;

function _fallback() {
    stor0 = msg.sender
    stor1 = sha3('ADMIN0123456789ADMIN')
    stor2 = sha3('19830811')
    return code.data[165 len 3677]
}



// =====================  Runtime code  =====================


#
#  - sub_4bd42eca(?)
#
address stor0;
uint256 stor1;
uint256 stor2;
array of struct stor4;

function sub_26c6a34c(?) {
    return stor4.length
}

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    revert 
}

function sub_059af1d5(?) {
    if stor1 != sha3(arg1[all]):
        return 0
    if stor2 != sha3(arg2[all]):
        return 0
    return 1
}

function sub_56a5347d(?) {
    require arg1 < stor4.length
    if 1 == arg2:
        mem[128] = stor4[arg1].field_0
        idx = 128
        s = 0
        while stor4[arg1].length + 128 > idx + 32:
            mem[idx + 32] = stor4[arg1 + s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[stor4[arg1].length + 128] = 3
        _298 = sha3(mem[128 len stor4[arg1].length + 32])
        mem[64] = ceil32(stor[sha3(mem[128 len stor4[arg1].length + 32])].length) + 160
        mem[0] = _298
        mem[160] = stor[sha3(_298)]
        idx = 160
        s = 0
        while stor[_298].length + 128 > idx:
            mem[idx + 32] = stor[s + sha3(_298) + 1]
            idx = idx + 32
            s = s + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = stor[_298].length
        mem[mem[64] + 64 len stor[_298].length] = mem[160 len stor[_298].length]
        return Array(len=stor[_298].length, data=mem[mem[64] + 64 len stor[_298].length])
    if 2 == arg2:
        mem[128] = stor4[arg1].field_0
        idx = 128
        s = 0
        while stor4[arg1].length + 128 > idx + 32:
            mem[idx + 32] = stor4[arg1 + s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[stor4[arg1].length + 128] = 3
        _296 = sha3(mem[128 len stor4[arg1].length + 32])
        mem[64] = ceil32(stor[sha3(mem[128 len stor4[arg1].length + 32]) + 1].length) + 160
        mem[0] = _296 + 1
        mem[160] = stor[sha3(_296 + 1)]
        idx = 160
        s = 0
        while stor[_296 + 1].length + 128 > idx:
            mem[idx + 32] = stor[s + sha3(_296 + 1) + 1]
            idx = idx + 32
            s = s + 1
            continue 
        _403 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = stor[_296 + 1].length
        mem[mem[64] + 64 len stor[_296 + 1].length] = mem[160 len stor[_296 + 1].length]
        return Array(len=stor[_296 + 1].length, data=mem[mem[64] + 64 len stor[_296 + 1].length])
    if 3 == arg2:
        mem[128] = stor4[arg1].field_0
        idx = 128
        s = 0
        while stor4[arg1].length + 128 > idx + 32:
            mem[idx + 32] = stor4[arg1 + s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[stor4[arg1].length + 128] = 3
        _294 = sha3(mem[128 len stor4[arg1].length + 32])
        mem[64] = ceil32(stor[sha3(mem[128 len stor4[arg1].length + 32]) + 3].length) + 160
        mem[0] = _294 + 3
        mem[160] = stor[sha3(_294 + 3)]
        idx = 160
        s = 0
        while stor[_294 + 3].length + 128 > idx:
            mem[idx + 32] = stor[s + sha3(_294 + 3) + 1]
            idx = idx + 32
            s = s + 1
            continue 
        _400 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = stor[_294 + 3].length
        mem[mem[64] + 64 len stor[_294 + 3].length] = mem[160 len stor[_294 + 3].length]
        return Array(len=stor[_294 + 3].length, data=mem[mem[64] + 64 len stor[_294 + 3].length])
    if 4 == arg2:
        mem[128] = stor4[arg1].field_0
        idx = 128
        s = 0
        while stor4[arg1].length + 128 > idx + 32:
            mem[idx + 32] = stor4[arg1 + s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[stor4[arg1].length + 128] = 3
        _292 = sha3(mem[128 len stor4[arg1].length + 32])
        mem[64] = ceil32(stor[sha3(mem[128 len stor4[arg1].length + 32]) + 4].length) + 160
        mem[0] = _292 + 4
        mem[160] = stor[sha3(_292 + 4)]
        idx = 160
        s = 0
        while stor[_292 + 4].length + 128 > idx:
            mem[idx + 32] = stor[s + sha3(_292 + 4) + 1]
            idx = idx + 32
            s = s + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = stor[_292 + 4].length
        mem[mem[64] + 64 len stor[_292 + 4].length] = mem[160 len stor[_292 + 4].length]
        return Array(len=stor[_292 + 4].length, data=mem[mem[64] + 64 len stor[_292 + 4].length])
    if arg2 != 5:
        return ''
    mem[128] = stor4[arg1].field_0
    idx = 128
    s = 0
    while stor4[arg1].length + 128 > idx + 32:
        mem[idx + 32] = stor4[arg1 + s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor4[arg1].length + 128] = 3
    _290 = sha3(mem[128 len stor4[arg1].length + 32])
    mem[64] = ceil32(stor[sha3(mem[128 len stor4[arg1].length + 32]) + 2].length) + 160
    mem[0] = _290 + 2
    mem[160] = stor[sha3(_290 + 2)]
    idx = 160
    s = 0
    while stor[_290 + 2].length + 128 > idx:
        mem[idx + 32] = stor[s + sha3(_290 + 2) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    _394 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = stor[_290 + 2].length
    mem[mem[64] + 64 len stor[_290 + 2].length] = mem[160 len stor[_290 + 2].length]
    return Array(len=stor[_290 + 2].length, data=mem[mem[64] + 64 len stor[_290 + 2].length])
}



}

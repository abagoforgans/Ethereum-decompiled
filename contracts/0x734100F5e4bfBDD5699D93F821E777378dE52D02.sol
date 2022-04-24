contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;

function _fallback() payable {
    mem[128] = 'piece'
    bool(stor2.length) = 0
    stor2.length.field_1 = 5
    stor2.length.field_8 = 'piece' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    mem[160 len -6959] = code.data[7328 len -6959]
    stor0 = msg.sender
    stor1[] = Array(len=mem[mem[160] + 160], data=mem[mem[160] + 192 len mem[mem[160] + 160]])
    return code.data[369 len 6959]
}



// =====================  Runtime code  =====================


#
#  - stock(string arg1, string arg2, uint256 arg3, string arg4)
#  - info(string arg1)
#
address owner;
array of uint256 version;
array of uint256 unit;
uint256 total;
array of uint256 storehouseIndex;
array of struct storehouse;
address tokenAddress;
address stor7;

function total() {
    return total
}

function version() {
    return version[0 len version.length]
}

function storehouse(bytes32 arg1) {
    mem[256] = storehouse[arg1].field_0
    idx = 256
    s = 0
    while storehouse[arg1].length + 256 > idx + 32:
        mem[idx + 32] = storehouse[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[storehouse[arg1].length + (floor32(storehouse[arg1].length - 1) + -storehouse[arg1].length + 32 % 32) + 256] = storehouse[arg1][1].length
    mem[storehouse[arg1].length + (floor32(storehouse[arg1].length - 1) + -storehouse[arg1].length + 32 % 32) + 288] = storehouse[arg1][1].field_0
    idx = storehouse[arg1].length + (floor32(storehouse[arg1].length - 1) + -storehouse[arg1].length + 32 % 32) + 288
    s = 0
    while storehouse[arg1].length + (floor32(storehouse[arg1].length - 1) + -storehouse[arg1].length + 32 % 32) + storehouse[arg1][1].length + 288 > idx + 32:
        mem[idx + 32] = storehouse[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[storehouse[arg1].length + (floor32(storehouse[arg1].length - 1) + -storehouse[arg1].length + 32 % 32) + storehouse[arg1][1].length + (floor32(storehouse[arg1][1].length - 1) + -storehouse[arg1][1].length + 32 % 32) + 320] = storehouse[arg1][3].field_0
    idx = storehouse[arg1].length + (floor32(storehouse[arg1].length - 1) + -storehouse[arg1].length + 32 % 32) + storehouse[arg1][1].length + (floor32(storehouse[arg1][1].length - 1) + -storehouse[arg1][1].length + 32 % 32) + 320
    s = 0
    while storehouse[arg1].length + (floor32(storehouse[arg1].length - 1) + -storehouse[arg1].length + 32 % 32) + storehouse[arg1][1].length + (floor32(storehouse[arg1][1].length - 1) + -storehouse[arg1][1].length + 32 % 32) + storehouse[arg1][3].length + 320 > idx + 32:
        mem[idx + 32] = storehouse[arg1][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=storehouse[arg1].length, data=mem[256 len storehouse[arg1].length + (floor32(storehouse[arg1].length - 1) + -storehouse[arg1].length + 32 % 32) + storehouse[arg1][1].length + (floor32(storehouse[arg1][1].length - 1) + -storehouse[arg1][1].length + 32 % 32) + 32], storehouse[arg1][3].length, mem[storehouse[arg1].length + (floor32(storehouse[arg1].length - 1) + -storehouse[arg1].length + 32 % 32) + storehouse[arg1][1].length + (floor32(storehouse[arg1][1].length - 1) + -storehouse[arg1][1].length + 32 % 32) + 320 len storehouse[arg1][3].length + (floor32(storehouse[arg1][3].length - 1) + -storehouse[arg1][3].length + 32 % 32)]), 
           storehouse[arg1].length + (floor32(storehouse[arg1].length - 1) + -storehouse[arg1].length + 32 % 32) + 160,
           storehouse[arg1].field_512,
           storehouse[arg1].length + (floor32(storehouse[arg1].length - 1) + -storehouse[arg1].length + 32 % 32) + storehouse[arg1][1].length + (floor32(storehouse[arg1][1].length - 1) + -storehouse[arg1][1].length + 32 % 32) + 192
}

function owner() {
    return owner
}

function unit() {
    return unit[0 len unit.length]
}

function tokenAddress() {
    return tokenAddress
}

function storehouseIndex(uint256 arg1) {
    require arg1 < storehouseIndex.length
    return storehouseIndex[arg1]
}

function _fallback() payable {
    revert
}

function setTokenAddress(address arg1) {
    require msg.sender == owner
    require arg1 != 0
    stor7 = arg1
    tokenAddress = arg1
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function mint(uint256 arg1) {
    require msg.sender == owner
    require tokenAddress != 0
    require ext_code.size(stor7)
    call stor7.0x65da5603 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[0]
    require arg1 <= total
    total -= arg1
    emit Mint(arg1, total - arg1);
    return 1
}

function reduce(uint256 arg1) {
    require msg.sender == owner
    require tokenAddress != 0
    require ext_code.size(stor7)
    call stor7.0x483f31ab with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[0]
    require arg1 + total >= total
    total += arg1
    emit 0x97f7b10b: arg1, arg1 + total
    return 1
}

function sub_0bb6f390(?) {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    require msg.sender == owner
    mem[ceil32(arg1.length) + 128] = 0xcfb5192800000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + 132] = 32
    mem[ceil32(arg1.length) + 164] = arg1.length
    mem[ceil32(arg1.length) + 196 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    require ext_code.size(0x136df46d9cc312e8ee70a27e3db34b12949313ea)
    delegate 0x136df46d9cc312e8ee70a27e3db34b12949313ea.0xcfb51928 with:
         gas gas_remaining - 710 wei
        args Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + 128] = delegate.return_data[0]
    require delegate.return_code
    require storehouse[delegate.return_data[0]].field_512 > 0
    mem[0] = delegate.return_data[0]
    mem[32] = 5
    require storehouse[delegate.return_data[0]].field_512 <= total
    require total - storehouse[delegate.return_data[0]].field_512 >= 0
    s = 0
    idx = 0
    while idx < storehouseIndex.length:
        mem[0] = storehouseIndex[idx]
        mem[32] = 5
        _726 = mem[64]
        mem[64] = mem[64] + 64
        mem[_726] = 0
        mem[_726 + 32] = 0
        _728 = mem[64]
        mem[64] = mem[64] + 64
        mem[_728] = mem[96]
        mem[_728 + 32] = 128
        _732 = mem[64]
        mem[64] = mem[64] + ceil32(storehouse[stor4[idx]].length) + 32
        mem[_732] = storehouse[stor4[idx]].length
        mem[0] = sha3(storehouseIndex[idx], 5)
        mem[_732 + 32] = storehouse[stor4[idx]].field_0
        s = _732 + 32
        t = sha3(mem[0])
        while _732 + storehouse[stor4[idx]].length > s:
            mem[s + 32] = version[t]
            s = s + 32
            t = t + 1
            continue 
        _1100 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1100] = 0
        mem[_1100 + 32] = 0
        _1102 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1102] = mem[_732]
        mem[_1102 + 32] = _732 + 32
        _1123 = mem[_1102]
        if mem[_728] >= mem[_1102]:
            t = 0
            u = 0
            v = 0
            v = 0
            s = 0
            v = mem[_728 + 32]
            w = _732 + 32
            while s < _1123:
                if mem[w] == mem[v]:
                    t = t
                    u = u
                    v = mem[v]
                    v = mem[w]
                    s = s + 32
                    v = v + 32
                    w = w + 32
                    continue 
                if not Mask(-(8 * s + -_1123 + 32) + 256, 0, mem[w]) - Mask(-(8 * s + -_1123 + 32) + 256, 0, mem[v]):
                    t = Mask(-(8 * s + -_1123 + 32) + 256, 0, mem[w]) - Mask(-(8 * s + -_1123 + 32) + 256, 0, mem[v])
                    u = !(2^(8 * s + -_1123 + 32) - 1)
                    v = mem[v]
                    v = mem[w]
                    s = s + 32
                    v = v + 32
                    w = w + 32
                    continue 
                if 0 == Mask(-(8 * s + -_1123 + 32) + 256, 0, mem[w]) - Mask(-(8 * s + -_1123 + 32) + 256, 0, mem[v]):
                    require idx < storehouseIndex.length
                    mem[0] = 4
                    storehouseIndex[idx] = 0
                s = sha3(storehouseIndex[idx], 5)
                idx = idx + 1
                continue 
        else:
            _1141 = mem[_728]
            t = 0
            u = 0
            v = 0
            v = 0
            s = 0
            v = mem[_728 + 32]
            w = _732 + 32
            while s < _1141:
                if mem[w] == mem[v]:
                    t = t
                    u = u
                    v = mem[v]
                    v = mem[w]
                    s = s + 32
                    v = v + 32
                    w = w + 32
                    continue 
                if not Mask(-(8 * s + -_1141 + 32) + 256, 0, mem[w]) - Mask(-(8 * s + -_1141 + 32) + 256, 0, mem[v]):
                    t = Mask(-(8 * s + -_1141 + 32) + 256, 0, mem[w]) - Mask(-(8 * s + -_1141 + 32) + 256, 0, mem[v])
                    u = !(2^(8 * s + -_1141 + 32) - 1)
                    v = mem[v]
                    v = mem[w]
                    s = s + 32
                    v = v + 32
                    w = w + 32
                    continue 
                if 0 == Mask(-(8 * s + -_1141 + 32) + 256, 0, mem[w]) - Mask(-(8 * s + -_1141 + 32) + 256, 0, mem[v]):
                    require idx < storehouseIndex.length
                    mem[0] = 4
                    storehouseIndex[idx] = 0
                s = sha3(storehouseIndex[idx], 5)
                idx = idx + 1
                continue 
        if 0 == mem[_1102] - mem[_728]:
            require idx < storehouseIndex.length
            mem[0] = 4
            storehouseIndex[idx] = 0
        s = sha3(storehouseIndex[idx], 5)
        idx = idx + 1
        continue 
    mem[0] = delegate.return_data[0]
    storehouse[delegate.return_data[0]].field_0 = 0
    if 31 >= storehouse[delegate.return_data[0]].length:
        storehouse[delegate.return_data[0]].field_256 = 0
        if 31 >= storehouse[delegate.return_data[0]][1].length:
            storehouse[delegate.return_data[0]].field_512 = 0
            storehouse[delegate.return_data[0]].field_768 = 0
            if 31 >= storehouse[delegate.return_data[0]][3].length:
                require storehouse[delegate.return_data[0]].field_512 <= total
                total -= storehouse[delegate.return_data[0]].field_512
                _786 = mem[64]
                mem[mem[64] + 32] = total - storehouse[delegate.return_data[0]].field_512
                mem[mem[64]] = 64
                mem[mem[64] + 64] = storehouse[delegate.return_data[0]].length
                mem[mem[64] + 96] = storehouse[delegate.return_data[0]].field_0
                idx = mem[64] + 96
                s = 0
                while mem[64] + storehouse[delegate.return_data[0]].length + 96 > idx + 32:
                    mem[idx + 32] = storehouse[delegate.return_data[0]][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit 0x3bbc5a4b: mem[mem[64] len _786 + storehouse[delegate.return_data[0]].length + (floor32(storehouse[delegate.return_data[0]].length - 1) + -storehouse[delegate.return_data[0]].length + 32 % 32) + -mem[64] + 96]
            else:
                mem[0] = sha3(delegate.return_data[0], 5) + 3
                idx = 0
                while storehouse[delegate.return_data[0]][3].length + 31 / 32 > idx:
                    storehouse[delegate.return_data[0]][idx + 3].field_0 = 0
                    idx = idx + 1
                    continue 
                require storehouse[delegate.return_data[0]].field_512 <= total
                total -= storehouse[delegate.return_data[0]].field_512
                _1118 = mem[64]
                mem[mem[64] + 32] = total - storehouse[delegate.return_data[0]].field_512
                mem[mem[64]] = 64
                mem[mem[64] + 64] = storehouse[delegate.return_data[0]].length
                mem[mem[64] + 96] = storehouse[delegate.return_data[0]].field_0
                idx = mem[64] + 96
                s = 0
                while mem[64] + storehouse[delegate.return_data[0]].length + 96 > idx + 32:
                    mem[idx + 32] = storehouse[delegate.return_data[0]][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit 0x3bbc5a4b: mem[mem[64] len _1118 + storehouse[delegate.return_data[0]].length + (floor32(storehouse[delegate.return_data[0]].length - 1) + -storehouse[delegate.return_data[0]].length + 32 % 32) + -mem[64] + 96]
        else:
            mem[0] = sha3(delegate.return_data[0], 5) + 1
            idx = 0
            while storehouse[delegate.return_data[0]][1].length + 31 / 32 > idx:
                storehouse[delegate.return_data[0]][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
            storehouse[delegate.return_data[0]].field_512 = 0
            storehouse[delegate.return_data[0]].field_768 = 0
            if 31 >= storehouse[delegate.return_data[0]][3].length:
                require storehouse[delegate.return_data[0]].field_512 <= total
                total -= storehouse[delegate.return_data[0]].field_512
                _1156 = mem[64]
                mem[mem[64] + 32] = total - storehouse[delegate.return_data[0]].field_512
                mem[mem[64]] = 64
                mem[mem[64] + 64] = storehouse[delegate.return_data[0]].length
                mem[mem[64] + 96] = storehouse[delegate.return_data[0]].field_0
                idx = mem[64] + 96
                s = 0
                while mem[64] + storehouse[delegate.return_data[0]].length + 96 > idx + 32:
                    mem[idx + 32] = storehouse[delegate.return_data[0]][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit 0x3bbc5a4b: mem[mem[64] len _1156 + storehouse[delegate.return_data[0]].length + (floor32(storehouse[delegate.return_data[0]].length - 1) + -storehouse[delegate.return_data[0]].length + 32 % 32) + -mem[64] + 96]
            else:
                mem[0] = sha3(delegate.return_data[0], 5) + 3
                idx = 0
                while storehouse[delegate.return_data[0]][3].length + 31 / 32 > idx:
                    storehouse[delegate.return_data[0]][idx + 3].field_0 = 0
                    idx = idx + 1
                    continue 
                require storehouse[delegate.return_data[0]].field_512 <= total
                total -= storehouse[delegate.return_data[0]].field_512
                _1365 = mem[64]
                mem[mem[64] + 32] = total - storehouse[delegate.return_data[0]].field_512
                mem[mem[64]] = 64
                mem[mem[64] + 64] = storehouse[delegate.return_data[0]].length
                mem[mem[64] + 96] = storehouse[delegate.return_data[0]].field_0
                idx = mem[64] + 96
                s = 0
                while mem[64] + storehouse[delegate.return_data[0]].length + 96 > idx + 32:
                    mem[idx + 32] = storehouse[delegate.return_data[0]][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit 0x3bbc5a4b: mem[mem[64] len _1365 + storehouse[delegate.return_data[0]].length + (floor32(storehouse[delegate.return_data[0]].length - 1) + -storehouse[delegate.return_data[0]].length + 32 % 32) + -mem[64] + 96]
    else:
        mem[0] = sha3(delegate.return_data[0], 5)
        idx = 0
        while storehouse[delegate.return_data[0]].length + 31 / 32 > idx:
            storehouse[delegate.return_data[0]][idx].field_0 = 0
            idx = idx + 1
            continue 
        storehouse[delegate.return_data[0]].field_256 = 0
        if 31 >= storehouse[delegate.return_data[0]][1].length:
            storehouse[delegate.return_data[0]].field_512 = 0
            storehouse[delegate.return_data[0]].field_768 = 0
            if 31 >= storehouse[delegate.return_data[0]][3].length:
                require storehouse[delegate.return_data[0]].field_512 <= total
                total -= storehouse[delegate.return_data[0]].field_512
                _1196 = mem[64]
                mem[mem[64] + 32] = total - storehouse[delegate.return_data[0]].field_512
                mem[mem[64]] = 64
                mem[mem[64] + 64] = storehouse[delegate.return_data[0]].length
                mem[mem[64] + 96] = storehouse[delegate.return_data[0]].field_0
                idx = mem[64] + 96
                s = 0
                while mem[64] + storehouse[delegate.return_data[0]].length + 96 > idx + 32:
                    mem[idx + 32] = storehouse[delegate.return_data[0]][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit 0x3bbc5a4b: mem[mem[64] len _1196 + storehouse[delegate.return_data[0]].length + (floor32(storehouse[delegate.return_data[0]].length - 1) + -storehouse[delegate.return_data[0]].length + 32 % 32) + -mem[64] + 96]
            else:
                mem[0] = sha3(delegate.return_data[0], 5) + 3
                idx = 0
                while storehouse[delegate.return_data[0]][3].length + 31 / 32 > idx:
                    storehouse[delegate.return_data[0]][idx + 3].field_0 = 0
                    idx = idx + 1
                    continue 
                require storehouse[delegate.return_data[0]].field_512 <= total
                total -= storehouse[delegate.return_data[0]].field_512
                _1364 = mem[64]
                mem[mem[64] + 32] = total - storehouse[delegate.return_data[0]].field_512
                mem[mem[64]] = 64
                mem[mem[64] + 64] = storehouse[delegate.return_data[0]].length
                mem[mem[64] + 96] = storehouse[delegate.return_data[0]].field_0
                idx = mem[64] + 96
                s = 0
                while mem[64] + storehouse[delegate.return_data[0]].length + 96 > idx + 32:
                    mem[idx + 32] = storehouse[delegate.return_data[0]][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit 0x3bbc5a4b: mem[mem[64] len _1364 + storehouse[delegate.return_data[0]].length + (floor32(storehouse[delegate.return_data[0]].length - 1) + -storehouse[delegate.return_data[0]].length + 32 % 32) + -mem[64] + 96]
        else:
            mem[0] = sha3(delegate.return_data[0], 5) + 1
            idx = 0
            while storehouse[delegate.return_data[0]][1].length + 31 / 32 > idx:
                storehouse[delegate.return_data[0]][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
            storehouse[delegate.return_data[0]].field_512 = 0
            storehouse[delegate.return_data[0]].field_768 = 0
            if 31 >= storehouse[delegate.return_data[0]][3].length:
                require storehouse[delegate.return_data[0]].field_512 <= total
                total -= storehouse[delegate.return_data[0]].field_512
                _1392 = mem[64]
                mem[mem[64] + 32] = total - storehouse[delegate.return_data[0]].field_512
                mem[mem[64]] = 64
                mem[mem[64] + 64] = storehouse[delegate.return_data[0]].length
                mem[mem[64] + 96] = storehouse[delegate.return_data[0]].field_0
                idx = mem[64] + 96
                s = 0
                while mem[64] + storehouse[delegate.return_data[0]].length + 96 > idx + 32:
                    mem[idx + 32] = storehouse[delegate.return_data[0]][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit 0x3bbc5a4b: mem[mem[64] len _1392 + storehouse[delegate.return_data[0]].length + (floor32(storehouse[delegate.return_data[0]].length - 1) + -storehouse[delegate.return_data[0]].length + 32 % 32) + -mem[64] + 96]
            else:
                mem[0] = sha3(delegate.return_data[0], 5) + 3
                idx = 0
                while storehouse[delegate.return_data[0]][3].length + 31 / 32 > idx:
                    storehouse[delegate.return_data[0]][idx + 3].field_0 = 0
                    idx = idx + 1
                    continue 
                require storehouse[delegate.return_data[0]].field_512 <= total
                total -= storehouse[delegate.return_data[0]].field_512
                _1474 = mem[64]
                mem[mem[64] + 32] = total - storehouse[delegate.return_data[0]].field_512
                mem[mem[64]] = 64
                mem[mem[64] + 64] = storehouse[delegate.return_data[0]].length
                mem[mem[64] + 96] = storehouse[delegate.return_data[0]].field_0
                idx = mem[64] + 96
                s = 0
                while mem[64] + storehouse[delegate.return_data[0]].length + 96 > idx + 32:
                    mem[idx + 32] = storehouse[delegate.return_data[0]][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit 0x3bbc5a4b: mem[mem[64] len _1474 + storehouse[delegate.return_data[0]].length + (floor32(storehouse[delegate.return_data[0]].length - 1) + -storehouse[delegate.return_data[0]].length + 32 % 32) + -mem[64] + 96]
    return 1
}



}

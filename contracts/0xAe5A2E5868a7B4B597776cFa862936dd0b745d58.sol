contract main {




// =====================  Runtime code  =====================


#
#  - sub_5f8c679a(?)
#  - sub_f20fb824(?)
#  - sub_f371c6ce(?)
#
address stor0;
mapping of uint8 stor1;
array of struct owners;

function owners(uint256 arg1) {
    require arg1 < owners.length
    return address(owners[arg1].field_0)
}

function _fallback() payable {
    revert
}

function setController(address arg1) {
    require arg1
    require stor1[address(msg.sender)]
    stor0 = arg1
    return 1
}

function addOwner(address arg1) {
    require arg1
    require stor1[address(msg.sender)]
    stor1[address(arg1)] = 1
    owners.length++
    address(owners[owners.length].field_0) = arg1
    return 1
}

function getOwners() {
    if not owners.length:
        mem[(32 * owners.length) + 128] = 32
        mem[(32 * owners.length) + 160] = owners.length
        mem[(32 * owners.length) + 192 len floor32(owners.length)] = mem[128 len floor32(owners.length)]
        return memory
          from (32 * owners.length) + 128
           len (96 * owners.length) + 64
    mem[128] = address(owners.field_0)
    idx = 128
    s = 0
    while (32 * owners.length) + 96 > idx:
        mem[idx + 32] = address(owners[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * owners.length) + 192 len floor32(owners.length)] = mem[128 len floor32(owners.length)]
    return Array(len=owners.length, data=mem[128 len floor32(owners.length)], mem[(32 * owners.length) + floor32(owners.length) + 192 len (32 * owners.length) - floor32(owners.length)]), 
}

function removeOwner(address arg1) {
    require arg1
    require arg1 != msg.sender
    require stor1[address(msg.sender)]
    stor1[address(arg1)] = 0
    idx = 0
    while idx < owners.length - 1:
        mem[0] = 3
        if address(owners[idx].field_0) != arg1:
            idx = idx + 1
            continue 
        require owners.length - 1 < owners.length
        require idx < owners.length
        address(owners[idx].field_0) = address(owners[owners.length].field_0)
        owners.length--
        if owners.length > owners.length - 1:
            idx = sha3(3) + owners.length - 1
            while sha3(3) + owners.length > idx:
                uint256(stor[idx]) = 0
                idx = idx + 1
                continue 
        return 1
    owners.length--
    if owners.length > owners.length - 1:
        idx = owners.length - 1
        while owners.length > idx:
            uint256(owners[idx].field_0) = 0
            idx = idx + 1
            continue 
    return 1
}

function sub_9a13401d(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg3.length
    mem[ceil32(arg1.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require msg.sender == stor0
    mem[ceil32(arg1.length) + (32 * arg3.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + (32 * arg3.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + (32 * arg3.length) + 160] = 2
    _24 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + (32 * arg3.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32])
    mem[ceil32(arg1.length) + (32 * arg3.length) + 160] = Mask(128, 128, arg2)
    uint256(stor[_24])++
    uint128(stor[(2 * uint256(stor[_24])) + sha3(_24)]) = arg2
    uint256(stor[(2 * uint256(stor[_24])) + sha3(_24) + 1]) = arg3.length
    if not arg3.length:
        idx = 0
        while uint256(stor[(2 * uint256(stor[_24])) + sha3(_24) + 1]) + 1 / 2 > idx:
            uint128(stor[idx + sha3((2 * uint256(stor[_24])) + sha3(_24) + 1)]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = ceil32(arg1.length) + 160
        while ceil32(arg1.length) + (32 * arg3.length) + 160 > idx:
            uint256(stor[sha3((2 * uint256(stor[_24])) + sha3(_24) + 1)]) = mem[idx len 16] * 256^s or !(test266151307() * 256^s) and uint256(stor[sha3((2 * uint256(stor[_24])) + sha3(_24) + 1)])
            s = s + (16 * -s + 31 / 32) + (-1 * s * s + 31 / 32) + 16
            idx = idx + 32
            continue 
        idx = floor32(arg3.length) >> 1
        s = sha3((2 * uint256(stor[_24])) + sha3(_24) + 1)
        while idx:
            uint256(stor[s]) = !(test266151307() * 256^idx) and uint256(stor[s])
            idx = idx + (16 * -idx + 31 / 32) + (-1 * idx * idx + 31 / 32) + 16
            s = (idx + 31 / 32) + s
            continue 
        idx = (floor32(arg3.length) >> 1) + Mask(248, 4, None + -(floor32(arg3.length) >> 1) + 17) + 31 / 32 * Mask(252, 0, None + -(floor32(arg3.length) >> 1) + 17) >> 4
        while uint256(stor[(2 * uint256(stor[_24])) + sha3(_24) + 1]) + 1 / 2 > idx:
            uint128(stor[idx + sha3((2 * uint256(stor[_24])) + sha3(_24) + 1)]) = 0
            idx = idx + 1
            continue 
    return 1
}



}

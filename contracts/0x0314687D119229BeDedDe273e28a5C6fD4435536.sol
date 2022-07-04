contract main {




// =====================  Runtime code  =====================


address owner;
array of struct addr;

function getNum() {
    return addr.length
}

function owner() {
    return owner
}

function sub_b95c5d8f(?) {
    require arg1 < addr.length
    return addr[arg1].field_0
}

function getAddr(uint256 arg1) {
    require arg1 < addr.length
    return addr[arg1].field_0
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_63c28b14(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        addr.length++
        mem[0] = 1
        addr[addr.length].field_0 = mem[(32 * idx) + 140 len 20]
        idx = idx + 1
        continue 
}

function getAll() {
    require msg.sender == owner
    if not addr.length:
        mem[(32 * addr.length) + 128] = 32
        mem[(32 * addr.length) + 160] = addr.length
        mem[(32 * addr.length) + 192 len floor32(addr.length)] = mem[128 len floor32(addr.length)]
        return memory
          from (32 * addr.length) + 128
           len (96 * addr.length) + 64
    mem[128] = address(addr.field_0)
    idx = 128
    s = 0
    while (32 * addr.length) + 96 > idx:
        mem[idx + 32] = addr[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * addr.length) + 192 len floor32(addr.length)] = mem[128 len floor32(addr.length)]
    return Array(len=addr.length, data=mem[128 len floor32(addr.length)], mem[(32 * addr.length) + floor32(addr.length) + 192 len (32 * addr.length) - floor32(addr.length)]), 
}



}

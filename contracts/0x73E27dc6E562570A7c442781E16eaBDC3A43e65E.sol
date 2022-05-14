contract main {




// =====================  Runtime code  =====================


address managerAddress;
array of struct owners;
mapping of uint8 stor2;

function owners(uint256 arg1) {
    require arg1 < owners.length
    return owners[arg1].field_0
}

function manager() {
    return managerAddress
}

function ownerByAddress(address arg1) {
    return bool(stor2[arg1])
}

function _fallback() payable {
    revert
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
        mem[idx + 32] = owners[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * owners.length) + 192 len floor32(owners.length)] = mem[128 len floor32(owners.length)]
    return Array(len=owners.length, data=mem[128 len floor32(owners.length)], mem[(32 * owners.length) + floor32(owners.length) + 192 len (32 * owners.length) - floor32(owners.length)]), 
}

function setOwners(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == managerAddress
    idx = 0
    while idx < owners.length:
        mem[0] = owners[idx].field_0
        mem[32] = 2
        stor2[stor1[idx].field_0] = 0
        idx = idx + 1
        continue 
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        stor2[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
    owners.length = arg1.length
    if not arg1.length:
        idx = 0
        while owners.length > idx:
            owners[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            owners[s].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while owners.length > idx:
            owners[idx].field_0 = 0
            idx = idx + 1
            continue 
    mem[(32 * arg1.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    emit SetOwners(Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 192 len (32 * arg1.length) - floor32(arg1.length)]));
}



}

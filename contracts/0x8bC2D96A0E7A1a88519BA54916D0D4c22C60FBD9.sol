contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[49 len 1151]
}



// =====================  Runtime code  =====================


address owner;
address pendingOwner;
array of struct addresses;

function owner() {
    return owner
}

function pendingOwner() {
    return pendingOwner
}

function addresses(uint256 arg1) {
    require arg1 < addresses.length
    return addresses[arg1].field_0
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    pendingOwner = arg1
}

function claimOwnership() {
    require pendingOwner == msg.sender
    owner = pendingOwner
    pendingOwner = 0
}

function remove(uint256 arg1) {
    require owner == msg.sender
    require arg1 < addresses.length
    addresses[arg1].field_0 = 0
}

function add(address arg1) {
    require owner == msg.sender
    addresses.length++
    if not addresses.length <= addresses.length + 1:
        idx = addresses.length + 1
        while addresses.length > idx:
            addresses[idx].field_0 = 0
            idx = idx + 1
            continue 
    addresses[addresses.length].field_0 = arg1
}

function getAllAddresses() {
    if addresses.length:
        mem[160] = address(addresses.field_0)
        idx = 160
        s = 0
        while (32 * addresses.length) + 128 > idx:
            mem[idx + 32] = addresses[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * addresses.length) + 160] = 32
    mem[(32 * addresses.length) + 192] = addresses.length
    if Mask(251, 0, addresses.length):
        mem[(32 * addresses.length) + 224] = mem[160]
        mem[(32 * addresses.length) + 256 len floor32((32 * addresses.length) - 1)] = mem[192 len floor32((32 * addresses.length) - 1)]
    return Array(len=addresses.length, data=mem[(32 * addresses.length) + 224 len 32 * addresses.length])
}



}

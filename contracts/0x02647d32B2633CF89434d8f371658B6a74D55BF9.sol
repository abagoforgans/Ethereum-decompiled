contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 bytes32;
array of uint256 bytes;
array of struct bytesArrayLength;
array of struct intArrayLength;
array of struct addressArrayLength;
mapping of uint8 stor6;

function getNumber(bytes32 arg1) {
    return bytes32[arg1]
}

function getAddressArrayLength(bytes32 arg1) {
    return addressArrayLength[arg1].field_0
}

function getBytesArrayLength(bytes32 arg1) {
    return bytesArrayLength[arg1].field_0
}

function getBytesArrayIndex(bytes32 arg1, uint256 arg2) {
    require arg2 < bytesArrayLength[arg1].field_0
    return bytesArrayLength[arg1][arg2].field_0
}

function owner() {
    return owner
}

function getString(bytes32 arg1) {
    return bytes[arg1][0 len bytes[arg1].length]
}

function getIntArrayLength(bytes32 arg1) {
    return intArrayLength[arg1].field_0
}

function getIntArrayIndex(bytes32 arg1, uint256 arg2) {
    require arg2 < intArrayLength[arg1].field_0
    return intArrayLength[arg1][arg2].field_0
}

function getBytes32(bytes32 arg1) {
    return bytes32[arg1]
}

function getBytes(bytes32 arg1) {
    return bytes[arg1][0 len bytes[arg1].length]
}

function getAddressArrayIndex(bytes32 arg1, uint256 arg2) {
    require arg2 < addressArrayLength[arg1].field_0
    return addressArrayLength[arg1][arg2].field_0
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function pushIntArray(bytes32 arg1, int256 arg2) {
    intArrayLength[arg1].field_0++
    intArrayLength[arg1][intArrayLength[arg1].field_0].field_0 = arg2
}

function pushBytesArray(bytes32 arg1, bytes32 arg2) {
    bytesArrayLength[arg1].field_0++
    bytesArrayLength[arg1][bytesArrayLength[arg1].field_0].field_0 = arg2
}

function pushAddressArray(bytes32 arg1, address arg2) {
    addressArrayLength[arg1].field_0++
    addressArrayLength[arg1][addressArrayLength[arg1].field_0].field_0 = arg2
}

function setNumber(bytes32 arg1, uint256 arg2) {
    if not stor6[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Error: Access not allowed to storage'
    bytes32[arg1] = arg2
}

function setBytes32(bytes32 arg1, bytes32 arg2) {
    if not stor6[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Error: Access not allowed to storage'
    bytes32[arg1] = arg2
}

function setStorageContract(address arg1, bool arg2) {
    require msg.sender == owner
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Error: Address zero is invalid storage contract'
    stor6[address(arg1)] = uint8(arg2)
    emit StorageModified(arg2, arg1);
}

function setIntArrayIndex(bytes32 arg1, uint256 arg2, int256 arg3) {
    if not stor6[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Error: Access not allowed to storage'
    require arg2 < intArrayLength[arg1].field_0
    intArrayLength[arg1][arg2].field_0 = arg3
}

function setBytesArrayIndex(bytes32 arg1, uint256 arg2, bytes32 arg3) {
    if not stor6[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Error: Access not allowed to storage'
    require arg2 < bytesArrayLength[arg1].field_0
    bytesArrayLength[arg1][arg2].field_0 = arg3
}

function setAddressArrayIndex(bytes32 arg1, uint256 arg2, address arg3) {
    if not stor6[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Error: Access not allowed to storage'
    require arg2 < addressArrayLength[arg1].field_0
    addressArrayLength[arg1][arg2].field_0 = arg3
}

function setBytes(bytes32 arg1, bytes arg2) {
    if not stor6[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Error: Access not allowed to storage'
    bytes[arg1] = (2 * arg2.length) + 1
    s = 0
    idx = arg2 + 36
    while arg2 + arg2.length + 36 > idx:
        bytes[arg1][s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg2.length + 31) >> 5
    while bytes[arg1].length + 31 / 32 > idx:
        bytes[arg1][idx] = 0
        idx = idx + 1
        continue 
}

function setString(bytes32 arg1, string arg2) {
    if not stor6[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Error: Access not allowed to storage'
    bytes[arg1] = (2 * arg2.length) + 1
    s = 0
    idx = arg2 + 36
    while arg2 + arg2.length + 36 > idx:
        bytes[arg1][s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg2.length + 31) >> 5
    while bytes[arg1].length + 31 / 32 > idx:
        bytes[arg1][idx] = 0
        idx = idx + 1
        continue 
}

function setIntArray(bytes32 arg1, int256[] arg2) {
    if not stor6[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Error: Access not allowed to storage'
    intArrayLength[arg1].field_0 = arg2.length
    if not arg2.length:
        idx = 0
        while intArrayLength[arg1].field_0 > idx:
            intArrayLength[arg1][idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = arg2 + 36
        while arg2 + (32 * arg2.length) + 36 > idx:
            intArrayLength[arg1][s].field_0 = cd[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
        while intArrayLength[arg1].field_0 > idx:
            intArrayLength[arg1][idx].field_0 = 0
            idx = idx + 1
            continue 
}

function setBytesArray(bytes32 arg1, bytes32[] arg2) {
    if not stor6[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Error: Access not allowed to storage'
    bytesArrayLength[arg1].field_0 = arg2.length
    if not arg2.length:
        idx = 0
        while bytesArrayLength[arg1].field_0 > idx:
            bytesArrayLength[arg1][idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = arg2 + 36
        while arg2 + (32 * arg2.length) + 36 > idx:
            bytesArrayLength[arg1][s].field_0 = cd[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
        while bytesArrayLength[arg1].field_0 > idx:
            bytesArrayLength[arg1][idx].field_0 = 0
            idx = idx + 1
            continue 
}

function setAddressArray(bytes32 arg1, address[] arg2) {
    if not stor6[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Error: Access not allowed to storage'
    addressArrayLength[arg1].field_0 = arg2.length
    if not arg2.length:
        idx = 0
        while addressArrayLength[arg1].field_0 > idx:
            addressArrayLength[arg1][idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = arg2 + 36
        while arg2 + (32 * arg2.length) + 36 > idx:
            addressArrayLength[arg1][s].field_0 = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
        while addressArrayLength[arg1].field_0 > idx:
            addressArrayLength[arg1][idx].field_0 = 0
            idx = idx + 1
            continue 
}

function getIntArray(bytes32 arg1) {
    if not intArrayLength[arg1].field_0:
        mem[(32 * intArrayLength[arg1].field_0) + 128] = 32
        mem[(32 * intArrayLength[arg1].field_0) + 160] = intArrayLength[arg1].field_0
        mem[(32 * intArrayLength[arg1].field_0) + 192 len floor32(intArrayLength[arg1].field_0)] = mem[128 len floor32(intArrayLength[arg1].field_0)]
        return memory
          from (32 * intArrayLength[arg1].field_0) + 128
           len (96 * intArrayLength[arg1].field_0) + 64
    mem[128] = intArrayLength[arg1].field_0
    idx = 128
    s = 0
    while (32 * intArrayLength[arg1].field_0) + 96 > idx:
        mem[idx + 32] = intArrayLength[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * intArrayLength[arg1].field_0) + 192 len floor32(intArrayLength[arg1].field_0)] = mem[128 len floor32(intArrayLength[arg1].field_0)]
    return Array(len=intArrayLength[arg1].field_0, data=mem[128 len floor32(intArrayLength[arg1].field_0)], mem[(32 * intArrayLength[arg1].field_0) + floor32(intArrayLength[arg1].field_0) + 192 len (32 * intArrayLength[arg1].field_0) - floor32(intArrayLength[arg1].field_0)]), 
}

function getBytesArray(bytes32 arg1) {
    if not bytesArrayLength[arg1].field_0:
        mem[(32 * bytesArrayLength[arg1].field_0) + 128] = 32
        mem[(32 * bytesArrayLength[arg1].field_0) + 160] = bytesArrayLength[arg1].field_0
        mem[(32 * bytesArrayLength[arg1].field_0) + 192 len floor32(bytesArrayLength[arg1].field_0)] = mem[128 len floor32(bytesArrayLength[arg1].field_0)]
        return memory
          from (32 * bytesArrayLength[arg1].field_0) + 128
           len (96 * bytesArrayLength[arg1].field_0) + 64
    mem[128] = bytesArrayLength[arg1].field_0
    idx = 128
    s = 0
    while (32 * bytesArrayLength[arg1].field_0) + 96 > idx:
        mem[idx + 32] = bytesArrayLength[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * bytesArrayLength[arg1].field_0) + 192 len floor32(bytesArrayLength[arg1].field_0)] = mem[128 len floor32(bytesArrayLength[arg1].field_0)]
    return Array(len=bytesArrayLength[arg1].field_0, data=mem[128 len floor32(bytesArrayLength[arg1].field_0)], mem[(32 * bytesArrayLength[arg1].field_0) + floor32(bytesArrayLength[arg1].field_0) + 192 len (32 * bytesArrayLength[arg1].field_0) - floor32(bytesArrayLength[arg1].field_0)]), 
}

function getAddressArray(bytes32 arg1) {
    if not addressArrayLength[arg1].field_0:
        mem[(32 * addressArrayLength[arg1].field_0) + 128] = 32
        mem[(32 * addressArrayLength[arg1].field_0) + 160] = addressArrayLength[arg1].field_0
        mem[(32 * addressArrayLength[arg1].field_0) + 192 len floor32(addressArrayLength[arg1].field_0)] = mem[128 len floor32(addressArrayLength[arg1].field_0)]
        return memory
          from (32 * addressArrayLength[arg1].field_0) + 128
           len (96 * addressArrayLength[arg1].field_0) + 64
    mem[128] = addressArrayLength[arg1].field_0
    idx = 128
    s = 0
    while (32 * addressArrayLength[arg1].field_0) + 96 > idx:
        mem[idx + 32] = addressArrayLength[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * addressArrayLength[arg1].field_0) + 192 len floor32(addressArrayLength[arg1].field_0)] = mem[128 len floor32(addressArrayLength[arg1].field_0)]
    return Array(len=addressArrayLength[arg1].field_0, data=mem[128 len floor32(addressArrayLength[arg1].field_0)], mem[(32 * addressArrayLength[arg1].field_0) + floor32(addressArrayLength[arg1].field_0) + 192 len (32 * addressArrayLength[arg1].field_0) - floor32(addressArrayLength[arg1].field_0)]), 
}



}

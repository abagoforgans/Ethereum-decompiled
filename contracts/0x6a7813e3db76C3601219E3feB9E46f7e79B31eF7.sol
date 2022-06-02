contract main {




// =====================  Runtime code  =====================


mapping of uint256 uintStorage;
array of uint256 stringStorage;
mapping of address addressStorage;
array of uint256 bytesStorage;
mapping of uint256 bytes32Storage;
mapping of uint8 stor5;
mapping of uint256 intStorage;

function bytes32Storage(bytes32 arg1) {
    return bytes32Storage[arg1]
}

function addressStorage(bytes32 arg1) {
    return addressStorage[arg1]
}

function stringStorage(bytes32 arg1) {
    return stringStorage[arg1][0 len stringStorage[arg1].length]
}

function boolStorage(bytes32 arg1) {
    return bool(stor5[arg1])
}

function bytesStorage(bytes32 arg1) {
    return bytesStorage[arg1][0 len bytesStorage[arg1].length]
}

function intStorage(bytes32 arg1) {
    return intStorage[arg1]
}

function uintStorage(bytes32 arg1) {
    return uintStorage[arg1]
}

function _fallback() payable {
    revert
}

function deleteBool(bytes32 arg1) {
    stor5[arg1] = 0
}

function deleteInt(bytes32 arg1) {
    intStorage[arg1] = 0
}

function deleteUint(bytes32 arg1) {
    uintStorage[arg1] = 0
}

function deleteBytes32(bytes32 arg1) {
    bytes32Storage[arg1] = 0
}

function deleteAddress(bytes32 arg1) {
    addressStorage[arg1] = 0
}

function setInt(bytes32 arg1, int256 arg2) {
    intStorage[arg1] = arg2
}

function setBool(bytes32 arg1, bool arg2) {
    stor5[arg1] = uint8(arg2)
}

function setUint(bytes32 arg1, uint256 arg2) {
    uintStorage[arg1] = arg2
}

function setBytes32(bytes32 arg1, bytes32 arg2) {
    bytes32Storage[arg1] = arg2
}

function setAddress(bytes32 arg1, address arg2) {
    addressStorage[arg1] = arg2
}

function deleteBytes(bytes32 arg1) {
    bytesStorage[arg1] = 0
    if 31 < bytesStorage[arg1].length:
        idx = 0
        while bytesStorage[arg1].length + 31 / 32 > idx:
            bytesStorage[arg1][idx] = 0
            idx = idx + 1
            continue 
}

function deleteString(bytes32 arg1) {
    stringStorage[arg1] = 0
    if 31 < stringStorage[arg1].length:
        idx = 0
        while stringStorage[arg1].length + 31 / 32 > idx:
            stringStorage[arg1][idx] = 0
            idx = idx + 1
            continue 
}

function setBytes(bytes32 arg1, bytes arg2) {
    bytesStorage[arg1] = (2 * arg2.length) + 1
    s = 0
    idx = arg2 + 36
    while arg2 + arg2.length + 36 > idx:
        bytesStorage[arg1][s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg2.length + 31) >> 5
    while bytesStorage[arg1].length + 31 / 32 > idx:
        bytesStorage[arg1][idx] = 0
        idx = idx + 1
        continue 
}

function setString(bytes32 arg1, string arg2) {
    stringStorage[arg1] = (2 * arg2.length) + 1
    s = 0
    idx = arg2 + 36
    while arg2 + arg2.length + 36 > idx:
        stringStorage[arg1][s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg2.length + 31) >> 5
    while stringStorage[arg1].length + 31 / 32 > idx:
        stringStorage[arg1][idx] = 0
        idx = idx + 1
        continue 
}

function setContractManager(address arg1) {
    require arg1
    require stor5[Mask(200, 56, Mask(144, 0, msg.sender), 0, 0) >> 56]
    require not addressStorage[Mask(72, 64, 'ContractManager') >> 64][Mask(112, 72, Mask(112, 136, 'ContractManager') >> 136, 0) >> 72]
    addressStorage[Mask(72, 64, 'ContractManager') >> 64][Mask(112, 72, Mask(112, 136, 'ContractManager') >> 136, 0) >> 72] = arg1
    stor5[0][Mask(192, 64, Mask(32, 192, 'contract') >> 192, arg1, 0, 0) >> 64] = 1
}



}

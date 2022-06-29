contract main {




// =====================  Runtime code  =====================


function getAddress(bytes32 arg1) {
    return ('storage', 160, 0, ('sha3', ('data', ('param', 'arg1'), 1)))
}

function sub_65f4f498(?) {
    return ('storage', 16, 0, ('sha3', ('data', ('param', 'arg1'), 6)))
}

function getBool(bytes32 arg1) {
    return bool(('storage', 8, 0, ('sha3', ('data', ('param', 'arg1'), 3))))
}

function getString(bytes32 arg1) {
    return ('storage', 256, 0, ('array', ('range', 0, ('storage', 256, 0, ('length', ('sha3', ('data', ('param', 'arg1'), 0))))), ('sha3', ('data', ('param', 'arg1'), 0))))
}

function getUint(bytes32 arg1) {
    return ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 5)))
}

function getBytes(bytes32 arg1) {
    return ('storage', 256, 0, ('array', ('range', 0, ('storage', 256, 0, ('length', ('sha3', ('data', ('param', 'arg1'), 2))))), ('sha3', ('data', ('param', 'arg1'), 2))))
}

function getInt(bytes32 arg1) {
    return ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 4)))
}

function _fallback() payable {
    revert
}

function sub_16816ded(?) {
    if bool(('storage', 8, 0, ('sha3', ('data', ('sha3', "'contract.storage.initialised'"), 3)))) != 1:
        require ('storage', 8, 0, ('sha3', ('data', ('sha3', ('data', "'access.role'", "'owner'", ('mask_shl', 128, 32, -32, 'msg.sender'), ('mem', ('range', 196, 4)))), 3)))
    else:
        require ('storage', 160, 0, ('sha3', ('data', ('sha3', ('data', "'contract.address'", ('mask_shl', 128, 32, -32, 'msg.sender'), ('mem', ('range', 196, 4)))), 1)))
    uint16(stor[sha3(arg1, 6)]) = 0
}

function sub_1d77667b(?) {
    if bool(('storage', 8, 0, ('sha3', ('data', ('sha3', "'contract.storage.initialised'"), 3)))) != 1:
        require ('storage', 8, 0, ('sha3', ('data', ('sha3', ('data', "'access.role'", "'owner'", ('mask_shl', 128, 32, -32, 'msg.sender'), ('mem', ('range', 196, 4)))), 3)))
    else:
        require ('storage', 160, 0, ('sha3', ('data', ('sha3', ('data', "'contract.address'", ('mask_shl', 128, 32, -32, 'msg.sender'), ('mem', ('range', 196, 4)))), 1)))
    uint16(stor[sha3(arg1, 6)]) = arg2
}

function deleteBool(bytes32 arg1) {
    if bool(('storage', 8, 0, ('sha3', ('data', ('sha3', "'contract.storage.initialised'"), 3)))) != 1:
        require ('storage', 8, 0, ('sha3', ('data', ('sha3', ('data', "'access.role'", "'owner'", ('mask_shl', 128, 32, -32, 'msg.sender'), ('mem', ('range', 196, 4)))), 3)))
    else:
        require ('storage', 160, 0, ('sha3', ('data', ('sha3', ('data', "'contract.address'", ('mask_shl', 128, 32, -32, 'msg.sender'), ('mem', ('range', 196, 4)))), 1)))
    uint8(stor[sha3(arg1, 3)]) = 0
}

function deleteInt(bytes32 arg1) {
    if bool(('storage', 8, 0, ('sha3', ('data', ('sha3', "'contract.storage.initialised'"), 3)))) != 1:
        require ('storage', 8, 0, ('sha3', ('data', ('sha3', ('data', "'access.role'", "'owner'", ('mask_shl', 128, 32, -32, 'msg.sender'), ('mem', ('range', 196, 4)))), 3)))
    else:
        require ('storage', 160, 0, ('sha3', ('data', ('sha3', ('data', "'contract.address'", ('mask_shl', 128, 32, -32, 'msg.sender'), ('mem', ('range', 196, 4)))), 1)))
    uint256(stor[sha3(arg1, 4)]) = 0
}

function deleteUint(bytes32 arg1) {
    if bool(('storage', 8, 0, ('sha3', ('data', ('sha3', "'contract.storage.initialised'"), 3)))) != 1:
        require ('storage', 8, 0, ('sha3', ('data', ('sha3', ('data', "'access.role'", "'owner'", ('mask_shl', 128, 32, -32, 'msg.sender'), ('mem', ('range', 196, 4)))), 3)))
    else:
        require ('storage', 160, 0, ('sha3', ('data', ('sha3', ('data', "'contract.address'", ('mask_shl', 128, 32, -32, 'msg.sender'), ('mem', ('range', 196, 4)))), 1)))
    uint256(stor[sha3(arg1, 5)]) = 0
}

function deleteAddress(bytes32 arg1) {
    if bool(('storage', 8, 0, ('sha3', ('data', ('sha3', "'contract.storage.initialised'"), 3)))) != 1:
        require ('storage', 8, 0, ('sha3', ('data', ('sha3', ('data', "'access.role'", "'owner'", ('mask_shl', 128, 32, -32, 'msg.sender'), ('mem', ('range', 196, 4)))), 3)))
    else:
        require ('storage', 160, 0, ('sha3', ('data', ('sha3', ('data', "'contract.address'", ('mask_shl', 128, 32, -32, 'msg.sender'), ('mem', ('range', 196, 4)))), 1)))
    address(stor[sha3(arg1, 1)]) = 0
}

function setInt(bytes32 arg1, int256 arg2) {
    if bool(('storage', 8, 0, ('sha3', ('data', ('sha3', "'contract.storage.initialised'"), 3)))) != 1:
        require ('storage', 8, 0, ('sha3', ('data', ('sha3', ('data', "'access.role'", "'owner'", ('mask_shl', 128, 32, -32, 'msg.sender'), ('mem', ('range', 196, 4)))), 3)))
    else:
        require ('storage', 160, 0, ('sha3', ('data', ('sha3', ('data', "'contract.address'", ('mask_shl', 128, 32, -32, 'msg.sender'), ('mem', ('range', 196, 4)))), 1)))
    uint256(stor[sha3(arg1, 4)]) = arg2
}

function setUint(bytes32 arg1, uint256 arg2) {
    if bool(('storage', 8, 0, ('sha3', ('data', ('sha3', "'contract.storage.initialised'"), 3)))) != 1:
        require ('storage', 8, 0, ('sha3', ('data', ('sha3', ('data', "'access.role'", "'owner'", ('mask_shl', 128, 32, -32, 'msg.sender'), ('mem', ('range', 196, 4)))), 3)))
    else:
        require ('storage', 160, 0, ('sha3', ('data', ('sha3', ('data', "'contract.address'", ('mask_shl', 128, 32, -32, 'msg.sender'), ('mem', ('range', 196, 4)))), 1)))
    uint256(stor[sha3(arg1, 5)]) = arg2
}

function setBool(bytes32 arg1, bool arg2) {
    if bool(('storage', 8, 0, ('sha3', ('data', ('sha3', "'contract.storage.initialised'"), 3)))) != 1:
        require ('storage', 8, 0, ('sha3', ('data', ('sha3', ('data', "'access.role'", "'owner'", ('mask_shl', 128, 32, -32, 'msg.sender'), ('mem', ('range', 196, 4)))), 3)))
    else:
        require ('storage', 160, 0, ('sha3', ('data', ('sha3', ('data', "'contract.address'", ('mask_shl', 128, 32, -32, 'msg.sender'), ('mem', ('range', 196, 4)))), 1)))
    uint8(stor[sha3(arg1, 3)]) = uint8(arg2)
}

function setAddress(bytes32 arg1, address arg2) {
    if bool(('storage', 8, 0, ('sha3', ('data', ('sha3', "'contract.storage.initialised'"), 3)))) != 1:
        require ('storage', 8, 0, ('sha3', ('data', ('sha3', ('data', "'access.role'", "'owner'", ('mask_shl', 128, 32, -32, 'msg.sender'), ('mem', ('range', 196, 4)))), 3)))
    else:
        require ('storage', 160, 0, ('sha3', ('data', ('sha3', ('data', "'contract.address'", ('mask_shl', 128, 32, -32, 'msg.sender'), ('mem', ('range', 196, 4)))), 1)))
    address(stor[sha3(arg1, 1)]) = arg2
}

function deleteBytes(bytes32 arg1) {
    if bool(('storage', 8, 0, ('sha3', ('data', ('sha3', "'contract.storage.initialised'"), 3)))) != 1:
        require ('storage', 8, 0, ('sha3', ('data', ('sha3', ('data', "'access.role'", "'owner'", ('mask_shl', 128, 32, -32, 'msg.sender'), ('mem', ('range', 196, 4)))), 3)))
    else:
        require ('storage', 160, 0, ('sha3', ('data', ('sha3', ('data', "'contract.address'", ('mask_shl', 128, 32, -32, 'msg.sender'), ('mem', ('range', 196, 4)))), 1)))
    uint256(stor[sha3(arg1, 2)]) = 0
    if 31 < ('storage', 256, 0, ('length', ('sha3', ('data', ('param', 'arg1'), 2)))):
        idx = 0
        while ('storage', 256, 0, ('length', ('sha3', ('data', ('param', 'arg1'), 2)))) + 31 / 32 > idx:
            uint256(stor[idx + sha3(sha3(arg1, 2))]) = 0
            idx = idx + 1
            continue 
}

function deleteString(bytes32 arg1) {
    if bool(('storage', 8, 0, ('sha3', ('data', ('sha3', "'contract.storage.initialised'"), 3)))) != 1:
        require ('storage', 8, 0, ('sha3', ('data', ('sha3', ('data', "'access.role'", "'owner'", ('mask_shl', 128, 32, -32, 'msg.sender'), ('mem', ('range', 196, 4)))), 3)))
    else:
        require ('storage', 160, 0, ('sha3', ('data', ('sha3', ('data', "'contract.address'", ('mask_shl', 128, 32, -32, 'msg.sender'), ('mem', ('range', 196, 4)))), 1)))
    uint256(stor[sha3(arg1, 0)]) = 0
    if 31 < ('storage', 256, 0, ('length', ('sha3', ('data', ('param', 'arg1'), 0)))):
        idx = 0
        while ('storage', 256, 0, ('length', ('sha3', ('data', ('param', 'arg1'), 0)))) + 31 / 32 > idx:
            uint256(stor[idx + sha3(sha3(arg1, 0))]) = 0
            idx = idx + 1
            continue 
}

function setBytes(bytes32 arg1, bytes arg2) {
    if bool(('storage', 8, 0, ('sha3', ('data', ('sha3', "'contract.storage.initialised'"), 3)))) != 1:
        require ('storage', 8, 0, ('sha3', ('data', ('sha3', ('data', "'access.role'", "'owner'", ('mask_shl', 128, 32, -32, 'msg.sender'), ('mem', ('range', 196, 4)))), 3)))
    else:
        require ('storage', 160, 0, ('sha3', ('data', ('sha3', ('data', "'contract.address'", ('mask_shl', 128, 32, -32, 'msg.sender'), ('mem', ('range', 196, 4)))), 1)))
    uint256(stor[sha3(arg1, 2)]) = (2 * arg2.length) + 1
    s = 0
    idx = arg2 + 36
    while arg2 + arg2.length + 36 > idx:
        uint256(stor[s + sha3(sha3(arg1, 2))]) = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg2.length + 31) >> 5
    while ('storage', 256, 0, ('length', ('sha3', ('data', ('param', 'arg1'), 2)))) + 31 / 32 > idx:
        uint256(stor[idx + sha3(sha3(arg1, 2))]) = 0
        idx = idx + 1
        continue 
}

function setString(bytes32 arg1, string arg2) {
    if bool(('storage', 8, 0, ('sha3', ('data', ('sha3', "'contract.storage.initialised'"), 3)))) != 1:
        require ('storage', 8, 0, ('sha3', ('data', ('sha3', ('data', "'access.role'", "'owner'", ('mask_shl', 128, 32, -32, 'msg.sender'), ('mem', ('range', 196, 4)))), 3)))
    else:
        require ('storage', 160, 0, ('sha3', ('data', ('sha3', ('data', "'contract.address'", ('mask_shl', 128, 32, -32, 'msg.sender'), ('mem', ('range', 196, 4)))), 1)))
    uint256(stor[sha3(arg1, 0)]) = (2 * arg2.length) + 1
    s = 0
    idx = arg2 + 36
    while arg2 + arg2.length + 36 > idx:
        uint256(stor[s + sha3(sha3(arg1, 0))]) = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg2.length + 31) >> 5
    while ('storage', 256, 0, ('length', ('sha3', ('data', ('param', 'arg1'), 0)))) + 31 / 32 > idx:
        uint256(stor[idx + sha3(sha3(arg1, 0))]) = 0
        idx = idx + 1
        continue 
}



}

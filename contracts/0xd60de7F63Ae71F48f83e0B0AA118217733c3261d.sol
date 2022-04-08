contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[49 len 3869]
}



// =====================  Runtime code  =====================


address owner;
mapping of struct employee;
array of address addresses;

function hasEmployee(address arg1) {
    return bool(employee[address(arg1)].field_232)
}

function getSerializedEmployee(address arg1) {
    require employee[address(arg1)].field_224 <= 4
    require employee[address(arg1)].field_232
    return employee[address(arg1)].field_0, 
           employee[address(arg1)].field_0,
           employee[address(arg1)].field_0,
           employee[address(arg1)].field_0,
           employee[address(arg1)].field_0,
           employee[address(arg1)].field_0,
           employee[address(arg1)].field_0,
           employee[address(arg1)].field_0,
           employee[address(arg1)].field_232
}

function getEmployee(address arg1) {
    require employee[address(arg1)].field_232
    require employee[address(arg1)].field_224 <= 4
    return employee[address(arg1)].field_0, 
           employee[address(arg1)].field_0,
           employee[address(arg1)].field_0,
           employee[address(arg1)].field_0,
           employee[address(arg1)].field_128,
           employee[address(arg1)].field_0,
           employee[address(arg1)].field_0,
           employee[address(arg1)].field_224
}

function owner() {
    return owner
}

function size() {
    return uint16(addresses.length)
}

function addresses(uint256 arg1) {
    require arg1 < addresses.length
    return address(addresses[arg1])
}

function selfdestruct() {
    require owner == msg.sender
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function setFadeoutStarts(address arg1, uint32 arg2) {
    require owner == msg.sender
    require employee[address(arg1)].field_232
    emit UpdateEmployee(employee[address(arg1)].field_0, employee[address(arg1)].field_0, employee[address(arg1)].field_232, arg1);
    employee[address(arg1)].field_96 = arg2
}

function changeState(address arg1, uint8 arg2) {
    require owner == msg.sender
    require employee[address(arg1)].field_232
    require employee[address(arg1)].field_224 <= 4
    require arg2 <= 4
    emit 0x30bd797e: employee[address(arg1)].field_0, arg2, arg1
    employee[address(arg1)].field_224 = arg2
}

function removeEmployee(address arg1) {
    require owner == msg.sender
    if employee[address(arg1)].field_232 <= 0:
        return 0
    employee[address(arg1)].field_0 = 0
    require uint16(employee[address(arg1)].field_232 - 1) < addresses.length
    address(addresses[uint16(stor1[address(arg1)].field_232 - 1)]) = 0
    emit RemoveEmployee(arg1);
    return 1
}

function terminateEmployee(address arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint8 arg5) {
    require owner == msg.sender
    require arg5 <= 4
    require arg5 == 3
    require employee[address(arg1)].field_232
    require employee[address(arg1)].field_224 <= 4
    require arg5 <= 4
    emit 0x30bd797e: employee[address(arg1)].field_0, arg5, arg1
    employee[address(arg1)].field_224 = arg5
    employee[address(arg1)].field_0 = arg2
    employee[address(arg1)].field_64 = arg3
    employee[address(arg1)].field_96 = arg4
    employee[address(arg1)].field_192 = 0
    emit UpdateEmployee(employee[address(arg1)].field_0, employee[address(arg1)].field_0, employee[address(arg1)].field_232, arg1);
}

function setEmployee(address arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7, uint32 arg8, uint8 arg9) {
    require owner == msg.sender
    if employee[address(arg1)].field_232:
        emit UpdateEmployee(arg6 << 224, arg7 << 224, employee[address(arg1)].field_232, arg1);
        require arg9 <= 4
        employee[address(arg1)].field_0 = arg2
        employee[address(arg1)].field_32 = arg3
        employee[address(arg1)].field_64 = arg4
        employee[address(arg1)].field_96 = arg5
        employee[address(arg1)].field_128 = arg6
        employee[address(arg1)].field_160 = arg7
        employee[address(arg1)].field_192 = arg8
        require arg9 <= 4
        employee[address(arg1)].field_0 = arg2
        employee[address(arg1)].field_32 = arg3
        employee[address(arg1)].field_64 = arg4
        employee[address(arg1)].field_96 = arg5
        employee[address(arg1)].field_128 = arg6
        employee[address(arg1)].field_160 = arg7
        employee[address(arg1)].field_192 = arg8
        employee[address(arg1)].field_224 = arg9
        employee[address(arg1)].field_232 = employee[address(arg1)].field_232
        return 0
    require addresses.length != 65535
    addresses.length++
    if not addresses.length <= addresses.length + 1:
        idx = addresses.length + 1
        while addresses.length > idx:
            uint256(addresses[idx]) = 0
            idx = idx + 1
            continue 
    address(addresses[addresses.length]) = arg1
    emit CreateEmployee(arg6 << 224, arg7 << 224, uint16(addresses.length + 1), arg1);
    require arg9 <= 4
    employee[address(arg1)].field_0 = arg2
    employee[address(arg1)].field_32 = arg3
    employee[address(arg1)].field_64 = arg4
    employee[address(arg1)].field_96 = arg5
    employee[address(arg1)].field_128 = arg6
    employee[address(arg1)].field_160 = arg7
    employee[address(arg1)].field_192 = arg8
    require arg9 <= 4
    employee[address(arg1)].field_0 = arg2
    employee[address(arg1)].field_32 = arg3
    employee[address(arg1)].field_64 = arg4
    employee[address(arg1)].field_96 = arg5
    employee[address(arg1)].field_128 = arg6
    employee[address(arg1)].field_160 = arg7
    employee[address(arg1)].field_192 = arg8
    employee[address(arg1)].field_224 = arg9
    employee[address(arg1)].field_232 = uint16(addresses.length + 1)
    return 1
}



}

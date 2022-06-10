contract main {




// =====================  Runtime code  =====================


address contractOwner;
address pendingContractOwner;
mapping of struct string;
address managerAddress;

function getString(bytes32 arg1, bytes32 arg2) {
    return string[arg1][7][arg2][0 len string[arg1][7][arg2].length].field_0
}

function getBytes32(bytes32 arg1, bytes32 arg2) {
    return string[arg1][5][arg2].field_0
}

function getUInt8(bytes32 arg1, bytes32 arg2) {
    return string[arg1][4][arg2].field_0
}

function manager() {
    return managerAddress
}

function getUInt(bytes32 arg1, bytes32 arg2) {
    return string[arg1][arg2].field_0
}

function pendingContractOwner() {
    return pendingContractOwner
}

function getBool(bytes32 arg1, bytes32 arg2) {
    return bool(string[arg1][2][arg2].field_0)
}

function getInt(bytes32 arg1, bytes32 arg2) {
    return string[arg1][3][arg2].field_0
}

function contractOwner() {
    return contractOwner
}

function getAddress(bytes32 arg1, bytes32 arg2) {
    return string[arg1][1][arg2].field_0
}

function getAddressUInt8(bytes32 arg1, bytes32 arg2) {
    return string[arg1][6][arg2].field_0, string[arg1][6][arg2].field_160
}

function _fallback() payable {
    revert
}

function setManager(address arg1) {
    if contractOwner != msg.sender:
        return 0
    managerAddress = arg1
    return 1
}

function changeContractOwnership(address arg1) {
    if contractOwner != msg.sender:
        return 0
    if not arg1:
        return 0
    pendingContractOwner = arg1
    return 1
}

function claimContractOwnership() {
    if pendingContractOwner != msg.sender:
        return 0
    emit OwnershipTransferred(contractOwner, pendingContractOwner);
    contractOwner = pendingContractOwner
    pendingContractOwner = 0
    return 1
}

function transferOwnership(address arg1) {
    if contractOwner != msg.sender:
        return 0
    if not arg1:
        return 0
    emit OwnershipTransferred(contractOwner, arg1);
    contractOwner = arg1
    pendingContractOwner = 0
    return 1
}

function transferContractOwnership(address arg1) {
    if contractOwner != msg.sender:
        return 0
    if not arg1:
        return 0
    emit OwnershipTransferred(contractOwner, arg1);
    contractOwner = arg1
    pendingContractOwner = 0
    return 1
}

function withdrawEther() {
    if msg.sender == contractOwner:
        if eth.balance(this.address) > 0:
            call contractOwner with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}

function transferEther(address arg1, uint256 arg2) {
    if msg.sender == contractOwner:
        if not arg1:
            revert with 0, 'INVALID_ETHER_RECEPIENT_ADDRESS'
        if arg2 > eth.balance(this.address):
            revert with 0, 'INVALID_VALUE_TO_TRANSFER_ETHER'
        call arg1 with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function setString(bytes32 arg1, bytes32 arg2, string arg3) {
    if msg.sender != this.address:
        require ext_code.size(managerAddress)
        call managerAddress.0x5cb8dd09 with:
             gas gas_remaining wei
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'STORAGE_FAILED_TO_ACCESS_PROTECTED_FUNCTION'
    string[arg1][7][arg2][].field_0 = Array(len=arg3.length, data=arg3[all])
}

function setUInt(bytes32 arg1, bytes32 arg2, uint256 arg3) {
    if msg.sender != this.address:
        require ext_code.size(managerAddress)
        call managerAddress.0x5cb8dd09 with:
             gas gas_remaining wei
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'STORAGE_FAILED_TO_ACCESS_PROTECTED_FUNCTION'
    string[arg1][arg2].field_0 = arg3
}

function setInt(bytes32 arg1, bytes32 arg2, int256 arg3) {
    if msg.sender != this.address:
        require ext_code.size(managerAddress)
        call managerAddress.0x5cb8dd09 with:
             gas gas_remaining wei
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'STORAGE_FAILED_TO_ACCESS_PROTECTED_FUNCTION'
    string[arg1][3][arg2].field_0 = arg3
}

function setUInt8(bytes32 arg1, bytes32 arg2, uint8 arg3) {
    if msg.sender != this.address:
        require ext_code.size(managerAddress)
        call managerAddress.0x5cb8dd09 with:
             gas gas_remaining wei
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'STORAGE_FAILED_TO_ACCESS_PROTECTED_FUNCTION'
    string[arg1][4][arg2].field_0 = arg3
}

function setAddress(bytes32 arg1, bytes32 arg2, address arg3) {
    if msg.sender != this.address:
        require ext_code.size(managerAddress)
        call managerAddress.0x5cb8dd09 with:
             gas gas_remaining wei
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'STORAGE_FAILED_TO_ACCESS_PROTECTED_FUNCTION'
    string[arg1][1][arg2].field_0 = arg3
}

function setBytes32(bytes32 arg1, bytes32 arg2, bytes32 arg3) {
    if msg.sender != this.address:
        require ext_code.size(managerAddress)
        call managerAddress.0x5cb8dd09 with:
             gas gas_remaining wei
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'STORAGE_FAILED_TO_ACCESS_PROTECTED_FUNCTION'
    string[arg1][5][arg2].field_0 = arg3
}

function setBool(bytes32 arg1, bytes32 arg2, bool arg3) {
    if msg.sender != this.address:
        require ext_code.size(managerAddress)
        call managerAddress.0x5cb8dd09 with:
             gas gas_remaining wei
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'STORAGE_FAILED_TO_ACCESS_PROTECTED_FUNCTION'
    string[arg1][2][arg2].field_0 = uint8(arg3)
}

function setAddressUInt8(bytes32 arg1, bytes32 arg2, address arg3, uint8 arg4) {
    if msg.sender != this.address:
        require ext_code.size(managerAddress)
        call managerAddress.0x5cb8dd09 with:
             gas gas_remaining wei
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'STORAGE_FAILED_TO_ACCESS_PROTECTED_FUNCTION'
    string[arg1][6][arg2].field_0 = arg3
    string[arg1][6][arg2].field_160 = arg4
}

function withdrawTokens(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if msg.sender == contractOwner:
        s = 0
        s = 0
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _14 = mem[(32 * idx) + 128]
            mem[(32 * arg1.length) + 132] = this.address
            require ext_code.size(address(_14))
            call address(_14).0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0:
                mem[(32 * arg1.length) + 132] = contractOwner
                mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
                require ext_code.size(address(_14))
                call address(_14).0xa9059cbb with:
                     gas gas_remaining wei
                    args contractOwner, ext_call.return_data[0]
                mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
            s = ext_call.return_data[0]
            s = _14
            idx = idx + 1
            continue 
}



}

contract main {




// =====================  Runtime code  =====================


address contractOwner;
address pendingContractOwner;
address stor2;
mapping of uint256 authorised;
mapping of uint8 stor4;
mapping of uint8 stor5;

function acl(address arg1) {
    return bool(stor5[arg1])
}

function pendingContractOwner() {
    return pendingContractOwner
}

function accessRights(bytes32 arg1) {
    return bool(stor4[arg1])
}

function contractOwner() {
    return contractOwner
}

function authorised(address arg1) {
    return authorised[arg1]
}

function _fallback() payable {
    revert
}

function emitErrorCode(uint256 arg1) {
    emit 0x9e0713b4: arg1, msg.sender
}

function emitAuthorizationRevoked(address arg1) {
    emit 0x203a0420: msg.sender, arg1
}

function emitAuthorizationGranted(address arg1) {
    emit 0x72213724: msg.sender, arg1
}

function getEventsHistory() {
    if stor2:
        return stor2
    return this.address
}

function emitAccessGiven(address arg1, bytes32 arg2) {
    emit 0xb6798040: arg2, msg.sender, arg1
}

function emitAccessBlocked(address arg1, bytes32 arg2) {
    emit 0xd21adfca: arg2, msg.sender, arg1
}

function setupEventsHistory(address arg1) {
    if contractOwner != msg.sender:
        return 0
    stor2 = arg1
    return 1
}

function isAllowed(address arg1, bytes32 arg2) {
    if stor4[arg1][arg2]:
        return bool(stor4[arg1][arg2])
    return (arg1 == this.address)
}

function hasAccess(address arg1) {
    if 0 < authorised[address(arg1)]:
        return (0 < authorised[address(arg1)])
    return (this.address == arg1)
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

function authorize(address arg1) {
    if contractOwner != msg.sender:
        if not stor5[msg.sender]:
            return 0
    if not arg1:
        revert with 0, 'STORAGE_MANAGER_INVALID_ADDRESS'
    stor5[address(arg1)] = 1
    if stor2:
        require ext_code.size(stor2)
        call stor2.0x533eaedb with:
             gas gas_remaining wei
            args arg1
    else:
        require ext_code.size(this.address)
        call this.address.0x533eaedb with:
             gas gas_remaining wei
            args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function revoke(address arg1) {
    if contractOwner != msg.sender:
        return 0
    if not stor5[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'STORAGE_MANAGER_ADDRESS_SHOULD_EXIST'
    stor5[address(arg1)] = 0
    if stor2:
        require ext_code.size(stor2)
        call stor2.0x2381efec with:
             gas gas_remaining wei
            args arg1
    else:
        require ext_code.size(this.address)
        call this.address.0x2381efec with:
             gas gas_remaining wei
            args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function giveAccess(address arg1, bytes32 arg2) {
    if contractOwner != msg.sender:
        if not stor5[msg.sender]:
            return 0
    if not stor4[arg1][arg2]:
        stor4[arg1][arg2] = 1
        authorised[address(arg1)]++
        if stor2:
            require ext_code.size(stor2)
            call stor2.0x2c19d480 with:
                 gas gas_remaining wei
                args address(arg1), arg2
        else:
            require ext_code.size(this.address)
            call this.address.0x2c19d480 with:
                 gas gas_remaining wei
                args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function blockAccess(address arg1, bytes32 arg2) {
    if contractOwner != msg.sender:
        if not stor5[msg.sender]:
            return 0
    if stor4[arg1][arg2]:
        stor4[arg1][arg2] = 0
        authorised[address(arg1)]--
        if not authorised[address(arg1)] - 1:
            authorised[address(arg1)] = 0
        if stor2:
            require ext_code.size(stor2)
            call stor2.0x157fbd8d with:
                 gas gas_remaining wei
                args address(arg1), arg2
        else:
            require ext_code.size(this.address)
            call this.address.0x157fbd8d with:
                 gas gas_remaining wei
                args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return 1
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

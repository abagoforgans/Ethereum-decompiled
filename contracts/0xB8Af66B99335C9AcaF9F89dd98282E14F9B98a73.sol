contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 stor1;
address contractOwner;
address pendingContractOwner;
address stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;

function pendingContractOwner() {
    return pendingContractOwner
}

function contractOwner() {
    return contractOwner
}

function _fallback() payable {
    revert
}

function emitErrorCode(uint256 arg1) {
    emit 0x9e0713b4: arg1, msg.sender
}

function getEventsHistory() {
    if stor4:
        return stor4
    return this.address
}

function emitRoleAdded(address arg1, uint8 arg2) {
    emit 0xaefc6303: msg.sender, arg1, arg2
}

function emitRoleRemoved(address arg1, uint8 arg2) {
    emit 0x7577662a: msg.sender, arg1, arg2
}

function emitPublicCapabilityAdded(address arg1, bytes4 arg2) {
    emit 0x67813b79: Mask(32, 224, arg2), msg.sender, arg1
}

function emitPublicCapabilityRemoved(address arg1, bytes4 arg2) {
    emit 0xe74cc03e: Mask(32, 224, arg2), msg.sender, arg1
}

function setupEventsHistory(address arg1) {
    if contractOwner != msg.sender:
        return 0
    stor4 = arg1
    return 1
}

function emitCapabilityAdded(address arg1, bytes4 arg2, uint8 arg3) {
    emit 0xacf87e92: Mask(32, 224, arg2), msg.sender, arg1, arg3
}

function emitCapabilityRemoved(address arg1, bytes4 arg2, uint8 arg3) {
    emit 0xf820011d: Mask(32, 224, arg2), msg.sender, arg1, arg3
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

function getUserRoles(address arg1) {
    require ext_code.size(stor0)
    call stor0.0x37d9d7fc with:
         gas gas_remaining wei
        args stor1, sha3(stor6, arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function isUserRoot(address arg1) {
    require ext_code.size(stor0)
    call stor0.0x37d9d7fc with:
         gas gas_remaining wei
        args stor1, sha3(stor5, arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
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

function hasUserRole(address arg1, uint8 arg2) {
    require ext_code.size(stor0)
    call stor0.0x37d9d7fc with:
         gas gas_remaining wei
        args stor1, sha3(stor6, arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0] and 2^arg2)
}

function getCapabilityRoles(address arg1, bytes4 arg2) {
    require ext_code.size(stor0)
    call stor0.0x37d9d7fc with:
         gas gas_remaining wei
        args stor1, sha3(stor7, sha3(address(arg1), Mask(32, 224, arg2)))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function isCapabilityPublic(address arg1, bytes4 arg2) {
    require ext_code.size(stor0)
    call stor0.0x37d9d7fc with:
         gas gas_remaining wei
        args stor1, sha3(stor8, sha3(address(arg1), Mask(32, 224, arg2)))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
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

function setRootUser(address arg1, bool arg2) {
    if contractOwner != msg.sender:
        return 0
    require ext_code.size(stor0)
    if arg2:
        call stor0.0xa14ff857 with:
             gas gas_remaining wei
            args stor1, sha3(stor5, arg1), 1
    else:
        call stor0.0xa14ff857 with:
             gas gas_remaining wei
            args stor1, sha3(stor5, arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function addRoleCapability(uint8 arg1, address arg2, bytes4 arg3) {
    if contractOwner != msg.sender:
        return 0
    require ext_code.size(stor0)
    call stor0.0x37d9d7fc with:
         gas gas_remaining wei
        args stor1, sha3(stor7, sha3(address(arg2), Mask(32, 224, arg3)))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    call stor0.0xa14ff857 with:
         gas gas_remaining wei
        args stor1, sha3(stor7, sha3(address(arg2), Mask(32, 224, arg3))), 2^arg1 or ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor4:
        require ext_code.size(stor4)
        call stor4.0xd0d9e21d with:
             gas gas_remaining wei
            args address(arg2), Mask(32, 224, arg3), arg1
    else:
        require ext_code.size(this.address)
        call this.address.0xd0d9e21d with:
             gas gas_remaining wei
            args address(arg2), Mask(32, 224, arg3), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function canCall(address arg1, address arg2, bytes4 arg3) {
    require ext_code.size(stor0)
    call stor0.0x37d9d7fc with:
         gas gas_remaining wei
        args stor1, sha3(stor5, arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        return 1
    require ext_code.size(stor0)
    call stor0.0x37d9d7fc with:
         gas gas_remaining wei
        args stor1, sha3(stor8, sha3(address(arg2), Mask(32, 224, arg3)))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        return 1
    require ext_code.size(stor0)
    call stor0.0x37d9d7fc with:
         gas gas_remaining wei
        args stor1, sha3(stor7, sha3(address(arg2), Mask(32, 224, arg3)))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    call stor0.0x37d9d7fc with:
         gas gas_remaining wei
        args stor1, sha3(stor6, arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0] and ext_call.return_data[0])
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

function setPublicCapability(address arg1, bytes4 arg2, bool arg3) {
    if contractOwner != msg.sender:
        return 0
    require ext_code.size(stor0)
    if arg3:
        call stor0.0xa14ff857 with:
             gas gas_remaining wei
            args stor1, sha3(stor8, sha3(address(arg1), Mask(32, 224, arg2))), 1
    else:
        call stor0.0xa14ff857 with:
             gas gas_remaining wei
            args stor1, sha3(stor8, sha3(address(arg1), Mask(32, 224, arg2))), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not arg3:
        if stor4:
            require ext_code.size(stor4)
            call stor4.0x588cff4c with:
                 gas gas_remaining wei
                args address(arg1), Mask(32, 224, arg2)
        else:
            require ext_code.size(this.address)
            call this.address.0x588cff4c with:
                 gas gas_remaining wei
                args address(arg1), Mask(32, 224, arg2)
    else:
        if stor4:
            require ext_code.size(stor4)
            call stor4.0x9a75aa06 with:
                 gas gas_remaining wei
                args address(arg1), Mask(32, 224, arg2)
        else:
            require ext_code.size(this.address)
            call this.address.0x9a75aa06 with:
                 gas gas_remaining wei
                args address(arg1), Mask(32, 224, arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function removeRoleCapability(uint8 arg1, address arg2, bytes4 arg3) {
    if contractOwner != msg.sender:
        return 0
    require ext_code.size(stor0)
    call stor0.0x37d9d7fc with:
         gas gas_remaining wei
        args stor1, sha3(stor7, sha3(address(arg2), Mask(32, 224, arg3)))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if stor4:
            require ext_code.size(stor4)
            call stor4.0x8834277e with:
                 gas gas_remaining wei
                args 20003
        else:
            require ext_code.size(this.address)
            call this.address.0x8834277e with:
                 gas gas_remaining wei
                args 20003
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        return 20003
    require ext_code.size(stor0)
    call stor0.0x37d9d7fc with:
         gas gas_remaining wei
        args stor1, sha3(stor7, sha3(address(arg2), Mask(32, 224, arg3)))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    call stor0.0xa14ff857 with:
         gas gas_remaining wei
        args stor1, sha3(stor7, sha3(address(arg2), Mask(32, 224, arg3))), ext_call.return_data[0] and -1 xor 2^arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor4:
        require ext_code.size(stor4)
        call stor4.emitCapabilityRemoved(address arg1, bytes4 arg2, uint8 arg3) with:
             gas gas_remaining wei
            args address(arg2), Mask(32, 224, arg3), arg1
    else:
        require ext_code.size(this.address)
        call this.address.emitCapabilityRemoved(address arg1, bytes4 arg2, uint8 arg3) with:
             gas gas_remaining wei
            args address(arg2), Mask(32, 224, arg3), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function addUserRole(address arg1, uint8 arg2) {
    require ext_code.size(stor0)
    if contractOwner != msg.sender:
        call stor0.0x37d9d7fc with:
             gas gas_remaining wei
            args stor1, sha3(stor5, msg.sender)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(stor0)
            call stor0.0x37d9d7fc with:
                 gas gas_remaining wei
                args stor1, sha3(stor8, sha3(address(this.address), call.func_hash))
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(stor0)
                call stor0.0x37d9d7fc with:
                     gas gas_remaining wei
                    args stor1, sha3(stor7, sha3(address(this.address), call.func_hash))
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor0)
                call stor0.0x37d9d7fc with:
                     gas gas_remaining wei
                    args stor1, sha3(stor6, msg.sender)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    return 0
    call stor0.0x37d9d7fc with:
         gas gas_remaining wei
        args stor1, sha3(stor6, arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and 2^arg2:
        if stor4:
            require ext_code.size(stor4)
            call stor4.0x8834277e with:
                 gas gas_remaining wei
                args 20001
        else:
            require ext_code.size(this.address)
            call this.address.0x8834277e with:
                 gas gas_remaining wei
                args 20001
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        return 20001
    require ext_code.size(stor0)
    call stor0.0x37d9d7fc with:
         gas gas_remaining wei
        args stor1, sha3(stor6, arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    call stor0.0xa14ff857 with:
         gas gas_remaining wei
        args stor1, sha3(stor6, arg1), 2^arg2 or ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor4:
        require ext_code.size(stor4)
        call stor4.0x95725d8a with:
             gas gas_remaining wei
            args address(arg1), arg2
    else:
        require ext_code.size(this.address)
        call this.address.0x95725d8a with:
             gas gas_remaining wei
            args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function removeUserRole(address arg1, uint8 arg2) {
    require ext_code.size(stor0)
    if contractOwner != msg.sender:
        call stor0.0x37d9d7fc with:
             gas gas_remaining wei
            args stor1, sha3(stor5, msg.sender)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(stor0)
            call stor0.0x37d9d7fc with:
                 gas gas_remaining wei
                args stor1, sha3(stor8, sha3(address(this.address), call.func_hash))
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(stor0)
                call stor0.0x37d9d7fc with:
                     gas gas_remaining wei
                    args stor1, sha3(stor7, sha3(address(this.address), call.func_hash))
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor0)
                call stor0.0x37d9d7fc with:
                     gas gas_remaining wei
                    args stor1, sha3(stor6, msg.sender)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    return 0
    call stor0.0x37d9d7fc with:
         gas gas_remaining wei
        args stor1, sha3(stor6, arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0] or not 2^arg2:
        if stor4:
            require ext_code.size(stor4)
            call stor4.0x8834277e with:
                 gas gas_remaining wei
                args 20003
        else:
            require ext_code.size(this.address)
            call this.address.0x8834277e with:
                 gas gas_remaining wei
                args 20003
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        return 20003
    require ext_code.size(stor0)
    call stor0.0x37d9d7fc with:
         gas gas_remaining wei
        args stor1, sha3(stor6, arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    call stor0.0xa14ff857 with:
         gas gas_remaining wei
        args stor1, sha3(stor6, arg1), ext_call.return_data[0] and -1 xor 2^arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor4:
        require ext_code.size(stor4)
        call stor4.emitRoleRemoved(address arg1, uint8 arg2) with:
             gas gas_remaining wei
            args address(arg1), arg2
    else:
        require ext_code.size(this.address)
        call this.address.emitRoleRemoved(address arg1, uint8 arg2) with:
             gas gas_remaining wei
            args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}



}

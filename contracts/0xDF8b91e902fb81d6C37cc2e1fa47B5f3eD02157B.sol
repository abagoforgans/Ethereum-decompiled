contract main {


// =======================  Init code  ======================


address stor0;
address stor2;

function _fallback() {
    stor0 = msg.sender
    require code.data[2839 len 20]
    stor2 = code.data[2839 len 20]
    return code.data[132 len 2695]
}



// =====================  Runtime code  =====================


address contractOwner;
address pendingContractOwner;
address pendingManagerAddress;

function getPendingManager() {
    return pendingManagerAddress
}

function pendingContractOwner() {
    return pendingContractOwner
}

function contractOwner() {
    return contractOwner
}

function destroy() {
    if contractOwner != msg.sender:
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function setPendingManager(address arg1) {
    if contractOwner != msg.sender:
        return 0
    pendingManagerAddress = arg1
    return 1
}

function claimContractOwnership() {
    if pendingContractOwner != msg.sender:
        return 0
    contractOwner = pendingContractOwner
    pendingContractOwner = 0
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

function withdrawnTokens(address[] arg1, address arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if contractOwner != msg.sender:
        return 0
    s = 0
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _21 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 160] = 0
        mem[(32 * arg1.length) + 132] = this.address
        require ext_code.size(address(_21))
        call address(_21).0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        if ext_call.return_data[0]:
            mem[(32 * arg1.length) + 132] = arg2
            mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
            require ext_code.size(address(_21))
            call address(_21).0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args address(arg2), ext_call.return_data[0]
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            require ext_call.success
        s = ext_call.return_data[0]
        s = _21
        idx = idx + 1
        continue 
    return 1
}

function withdraw(uint256 arg1, address arg2, uint256 arg3) {
    require arg1
    require arg2
    require ext_code.size(arg2)
    call arg2.getLatestVersion() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).dataController() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(pendingManagerAddress)
    if arg3:
        call pendingManagerAddress.0xbe241871 with:
             gas gas_remaining - 710 wei
            args sha3(uint32(call.func_hash), sha3(arg1, arg2), arg3)
    else:
        call pendingManagerAddress.0xbe241871 with:
             gas gas_remaining - 710 wei
            args sha3(uint32(call.func_hash), sha3(arg1, arg2), block.number)
    require ext_call.success
    if not ext_call.return_data[0]:
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).changeAllowance(address arg1, uint256 arg2) with:
             gas gas_remaining - 710 wei
            args msg.sender, arg1
        require ext_call.success
        if ext_call.return_data[0] != 1:
            return ext_call.return_data[0]
    require ext_code.size(pendingManagerAddress)
    if arg3:
        call pendingManagerAddress.0x95e4c1bf with:
             gas gas_remaining - 710 wei
            args sha3(uint32(call.func_hash), sha3(arg1, arg2), arg3)
        require ext_call.success
        if ext_call.return_data[0] == 4:
            require ext_code.size(pendingManagerAddress)
            call pendingManagerAddress.0x2b828e4a with:
                 gas gas_remaining - 710 wei
                args sha3(uint32(call.func_hash), sha3(arg1, arg2), arg3), call.func_hash, this.address
            require ext_call.success
            require 1 == ext_call.return_data[0]
            return 3
    else:
        call pendingManagerAddress.0x95e4c1bf with:
             gas gas_remaining - 710 wei
            args sha3(uint32(call.func_hash), sha3(arg1, arg2), block.number)
        require ext_call.success
        if ext_call.return_data[0] == 4:
            require ext_code.size(pendingManagerAddress)
            call pendingManagerAddress.0x2b828e4a with:
                 gas gas_remaining - 710 wei
                args sha3(uint32(call.func_hash), sha3(arg1, arg2), block.number), call.func_hash, this.address
            require ext_call.success
            require 1 == ext_call.return_data[0]
            return 3
    ('iszero', ('eq', ('ext_call.return_data', 0, 32), 4))
    if ext_call.return_data[0] != 1:
        return ext_call.return_data[0]
    require ext_code.size(arg2)
    call arg2.0xce606ee0 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(arg2)
    call arg2.0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, address(ext_call.return_data[0]), arg1
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).changeAllowance(address arg1, uint256 arg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, 0
    require ext_call.success
    require 1 == ext_call.return_data[0]
    emit TokensWithdraw(msg.sender, arg1, block.timestamp);
    return 1
}



}

contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[49 len 1519]
}



// =====================  Runtime code  =====================


address contractOwner;
address pendingContractOwner;
mapping of uint8 stor2;

function pendingContractOwner() {
    return pendingContractOwner
}

function contractOwner() {
    return contractOwner
}

function isAuthorized(address arg1) {
    return bool(stor2[arg1])
}

function destroy() {
    if contractOwner != msg.sender:
    selfdestruct(msg.sender)
}

function reject(address arg1) {
    if contractOwner == msg.sender:
        stor2[address(arg1)] = 0
}

function authorize(address arg1) {
    if contractOwner != msg.sender:
        return 0
    if stor2[address(arg1)]:
        return 0
    stor2[address(arg1)] = 1
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

function _fallback() {
    if stor2[address(msg.sender)]:
        delegate msg.sender with:
           funct call.data[0 len 4]
             gas gas_remaining - 25710 wei
            args call.data[4 len calldata.size - 4]
        require delegate.return_code
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



}

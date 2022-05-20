contract main {


// =======================  Init code  ======================


address stor0;
address stor5;

function _fallback() {
    stor0 = msg.sender
    require code.data[3521 len 20]
    stor5 = code.data[3521 len 20]
    return code.data[132 len 3377]
}



// =====================  Runtime code  =====================


address contractOwner;
address pendingContractOwner;
address rdCollectorAddress;
uint256 stor3;
uint256 stor4;
address tokenAddress;
uint256 price;
uint8 stor7;

function active() {
    return bool(stor7)
}

function pendingContractOwner() {
    return pendingContractOwner
}

function price() {
    return price
}

function rdCollectorAddress() {
    return rdCollectorAddress
}

function contractOwner() {
    return contractOwner
}

function token() {
    return tokenAddress
}

function destroy() {
    if contractOwner != msg.sender:
    selfdestruct(msg.sender)
}

function getRdFee() {
    return stor3, stor4
}

function _fallback() payable {
    if msg.value > 0:
        emit EtherReceived(msg.value);
}

function setPrice(uint256 arg1) {
    if contractOwner != msg.sender:
        return 0
    price = arg1
    return 1
}

function setRdCollectorAddress(address arg1) {
    if contractOwner != msg.sender:
        return 0
    require arg1
    rdCollectorAddress = arg1
    return 1
}

function setActive(bool arg1) {
    if contractOwner != msg.sender:
        return 0
    if arg1 == bool(stor7):
        return 0
    stor7 = uint8(arg1)
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

function isTransferAllowed(address arg1, address arg2, address arg3, address arg4, uint256 arg5) {
    if not stor7:
        return 0
    if tokenAddress != arg4:
        return 0
    if arg2 != this.address:
        return 0
    return 1
}

function withdrawAllEth(address arg1) {
    if contractOwner != msg.sender:
        return 0
    if not eth.balance(this.address):
        return 0
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return 1
}

function setRdFee(uint256 arg1, uint256 arg2) {
    if contractOwner != msg.sender:
        return 0
    require arg1
    require 1 <= arg2
    require 10^(arg2 - 1)
    require arg1 / 10^(arg2 - 1) >= 0
    require 1 <= arg2
    require 10^(arg2 - 1)
    require arg1 / 10^(arg2 - 1) < 10
    stor3 = arg1
    stor4 = arg2
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

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
    require stor7
    require ext_code.size(tokenAddress)
    call tokenAddress.getLatestVersion() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require msg.sender == ext_call.return_data[12 len 20]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x313ce567 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if arg2:
        require arg2
        require price * arg2 / arg2 == price
    require 10^ext_call.return_data[31 len 1]
    require eth.balance(this.address) >= price * arg2 / 10^ext_call.return_data[31 len 1]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x4bde38c8 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xcb4e75bb with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xca448a88 with:
         gas gas_remaining - 710 wei
        args ext_call.return_data[0], arg2
    require ext_call.success
    require 1 == ext_call.return_data[0]
    require stor3
    require 1 <= stor4
    require 10^(stor4 - 1)
    require stor3 / 10^(stor4 - 1) >= 0
    require 1 <= stor4
    require 10^(stor4 - 1)
    require stor3 / 10^(stor4 - 1) < 10
    if price * arg2 / 10^uint8(ext_call.return_data[0]):
        require price * arg2 / 10^uint8(ext_call.return_data[0])
        require stor3 * price * arg2 / 10^uint8(ext_call.return_data[0]) / price * arg2 / 10^uint8(ext_call.return_data[0]) == stor3
    require 10^stor4
    require stor3 * price * arg2 / 10^uint8(ext_call.return_data[0]) / 10^stor4 <= price * arg2 / 10^uint8(ext_call.return_data[0])
    require rdCollectorAddress
    call rdCollectorAddress with:
       value stor3 * price * arg2 / 10^uint8(ext_call.return_data[0]) / 10^stor4 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call arg1 with:
       value (price * arg2 / 10^uint8(ext_call.return_data[0])) - (stor3 * price * arg2 / 10^uint8(ext_call.return_data[0]) / 10^stor4) wei
         gas 2300 * is_zero(value) wei
    require (price * arg2 / 10^uint8(ext_call.return_data[0])) - (stor3 * price * arg2 / 10^uint8(ext_call.return_data[0]) / 10^stor4) <= price * arg2 / 10^uint8(ext_call.return_data[0])
    emit TokenExchanged(address(arg1), tokenAddress, arg2, (price * arg2 / 10^uint8(ext_call.return_data[0])) - (stor3 * price * arg2 / 10^uint8(ext_call.return_data[0]) / 10^stor4), stor3 * price * arg2 / 10^uint8(ext_call.return_data[0]) / 10^stor4, rdCollectorAddress, price);
}



}

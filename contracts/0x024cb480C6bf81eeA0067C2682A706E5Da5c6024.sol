contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor4;
uint256 stor5;

function _fallback() payable {
    stor4 = 1
    stor5 = 2570735391 * 10^6
    stor0 = msg.sender
    return code.data[65 len 4976]
}



// =====================  Runtime code  =====================


address contractOwner;
address pendingContractOwner;
address assetAddress;
uint8 stor3; offset 160
uint128 stor3; offset 160
address delayedPaymentsAddress;
uint256 buyPrice;
uint256 sellPrice;
uint256 minAmount;
uint256 maxAmount;
address eventsHistoryAddress;

function isActive() {
    return bool(uint8(stor3.field_160))
}

function asset() {
    return assetAddress
}

function sellPrice() {
    return sellPrice
}

function pendingContractOwner() {
    return pendingContractOwner
}

function maxAmount() {
    return maxAmount
}

function buyPrice() {
    return buyPrice
}

function minAmount() {
    return minAmount
}

function contractOwner() {
    return contractOwner
}

function delayedPayments() {
    return delayedPaymentsAddress
}

function eventsHistory() {
    return eventsHistoryAddress
}

function destroy() {
    if contractOwner != msg.sender:
    selfdestruct(msg.sender)
}

function emitError(uint256 arg1) {
    emit Error(arg1);
}

function emitActiveChanged(bool arg1) {
    emit ActiveChanged(arg1, msg.sender);
}

function _fallback() payable {
    require msg.value
    emit ReceivedEther(msg.sender, msg.value);
}

function emitPricesUpdated(uint256 arg1, uint256 arg2) {
    emit PricesUpdated(arg1, arg2, msg.sender);
}

function getEventsHistory() {
    if eventsHistoryAddress:
        return eventsHistoryAddress
    return this.address
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

function setupEventsHistory(address arg1) {
    if contractOwner != msg.sender:
        return 0
    if not eventsHistoryAddress:
        eventsHistoryAddress = arg1
        return 1
    if eventsHistoryAddress:
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.0xdf26ca08 with:
             gas gas_remaining - 710 wei
            args 6001
    else:
        require ext_code.size(this.address)
        call this.address.0xdf26ca08 with:
             gas gas_remaining - 710 wei
            args 6001
    require ext_call.success
    return 6001
}

function setActive(bool arg1) {
    if contractOwner != msg.sender:
        return 0
    if arg1 != bool(uint8(stor3.field_160)):
        if eventsHistoryAddress:
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.0x850a4621 with:
                 gas gas_remaining - 710 wei
                args arg1
        else:
            require ext_code.size(this.address)
            call this.address.0x850a4621 with:
                 gas gas_remaining - 710 wei
                args arg1
        require ext_call.success
    Mask(96, 0, stor3.field_160) = Mask(96, 0, arg1)
    return 1
}

function init(address arg1, address arg2) {
    if contractOwner != msg.sender:
        return 0
    if not assetAddress:
        if not delayedPaymentsAddress:
            assetAddress = arg1
            delayedPaymentsAddress = arg2
            uint8(stor3.field_160) = 1
            return 1
    if eventsHistoryAddress:
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.0xdf26ca08 with:
             gas gas_remaining - 710 wei
            args 6001
    else:
        require ext_code.size(this.address)
        call this.address.0xdf26ca08 with:
             gas gas_remaining - 710 wei
            args 6001
    require ext_call.success
    return 6001
}

function setPrices(uint256 arg1, uint256 arg2) {
    if contractOwner != msg.sender:
        return 0
    if arg2 < arg1:
        if eventsHistoryAddress:
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.0xdf26ca08 with:
                 gas gas_remaining - 710 wei
                args 6003
        else:
            require ext_code.size(this.address)
            call this.address.0xdf26ca08 with:
                 gas gas_remaining - 710 wei
                args 6003
        require ext_call.success
        return 6003
    buyPrice = arg1
    sellPrice = arg2
    if eventsHistoryAddress:
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.0x975be231 with:
             gas gas_remaining - 710 wei
            args arg1, arg2
    else:
        require ext_code.size(this.address)
        call this.address.0x975be231 with:
             gas gas_remaining - 710 wei
            args arg1, arg2
    require ext_call.success
    return 1
}

function withdrawEth(address arg1, uint256 arg2) {
    if contractOwner != msg.sender:
        return 0
    if eth.balance(this.address) < arg2:
        if eventsHistoryAddress:
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.0xdf26ca08 with:
                 gas gas_remaining - 710 wei
                args 6008
        else:
            require ext_code.size(this.address)
            call this.address.0xdf26ca08 with:
                 gas gas_remaining - 710 wei
                args 6008
        require ext_call.success
        return 6008
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
        emit WithdrawEth(arg2, arg1);
        return 1
    if eventsHistoryAddress:
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.0xdf26ca08 with:
             gas gas_remaining - 710 wei
            args 6010
    else:
        require ext_code.size(this.address)
        call this.address.0xdf26ca08 with:
             gas gas_remaining - 710 wei
            args 6010
    require ext_call.success
    return 6010
}

function withdrawAllEth(address arg1) {
    if contractOwner != msg.sender:
        return 0
    if eth.balance(this.address) < eth.balance(this.address):
        if eventsHistoryAddress:
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.0xdf26ca08 with:
                 gas gas_remaining - 710 wei
                args 6008
        else:
            require ext_code.size(this.address)
            call this.address.0xdf26ca08 with:
                 gas gas_remaining - 710 wei
                args 6008
        require ext_call.success
        return 6008
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
        emit WithdrawEth(eth.balance(this.address), arg1);
        return 1
    if eventsHistoryAddress:
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.0xdf26ca08 with:
             gas gas_remaining - 710 wei
            args 6010
    else:
        require ext_code.size(this.address)
        call this.address.0xdf26ca08 with:
             gas gas_remaining - 710 wei
            args 6010
    require ext_call.success
    return 6010
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

function withdrawTokens(address arg1, uint256 arg2) {
    if contractOwner != msg.sender:
        return 0
    require ext_code.size(assetAddress)
    call assetAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if ext_call.return_data[0] < arg2:
        if eventsHistoryAddress:
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.0xdf26ca08 with:
                 gas gas_remaining - 710 wei
                args 6007
        else:
            require ext_code.size(this.address)
            call this.address.0xdf26ca08 with:
                 gas gas_remaining - 710 wei
                args 6007
        require ext_call.success
        return 6007
    require ext_code.size(assetAddress)
    call assetAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    if ext_call.return_data[0]:
        emit WithdrawTokens(arg2, arg1);
        return 1
    if eventsHistoryAddress:
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.0xdf26ca08 with:
             gas gas_remaining - 710 wei
            args 6010
    else:
        require ext_code.size(this.address)
        call this.address.0xdf26ca08 with:
             gas gas_remaining - 710 wei
            args 6010
    require ext_call.success
    return 6010
}

function withdrawAllTokens(address arg1) {
    if contractOwner != msg.sender:
        return 0
    require ext_code.size(assetAddress)
    call assetAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if contractOwner != msg.sender:
        return 0
    require ext_code.size(assetAddress)
    call assetAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if ext_call.return_data[0] < ext_call.return_data[0]:
        if eventsHistoryAddress:
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.0xdf26ca08 with:
                 gas gas_remaining - 710 wei
                args 6007
        else:
            require ext_code.size(this.address)
            call this.address.0xdf26ca08 with:
                 gas gas_remaining - 710 wei
                args 6007
        require ext_call.success
        return 6007
    require ext_code.size(assetAddress)
    call assetAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), ext_call.return_data[0]
    require ext_call.success
    if ext_call.return_data[0]:
        emit WithdrawTokens(ext_call.return_data[0], arg1);
        return 1
    if eventsHistoryAddress:
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.0xdf26ca08 with:
             gas gas_remaining - 710 wei
            args 6010
    else:
        require ext_code.size(this.address)
        call this.address.0xdf26ca08 with:
             gas gas_remaining - 710 wei
            args 6010
    require ext_call.success
    return 6010
}

function withdrawAll(address arg1) {
    if contractOwner != msg.sender:
        return 0
    require ext_code.size(assetAddress)
    call assetAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if contractOwner != msg.sender:
        return 0
    require ext_code.size(assetAddress)
    call assetAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if ext_call.return_data[0] < ext_call.return_data[0]:
        if eventsHistoryAddress:
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.0xdf26ca08 with:
                 gas gas_remaining - 710 wei
                args 6007
        else:
            require ext_code.size(this.address)
            call this.address.0xdf26ca08 with:
                 gas gas_remaining - 710 wei
                args 6007
        require ext_call.success
        return 6007
    require ext_code.size(assetAddress)
    call assetAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), ext_call.return_data[0]
    require ext_call.success
    if ext_call.return_data[0]:
        emit WithdrawTokens(ext_call.return_data[0], arg1);
        if contractOwner != msg.sender:
            return 0
        if eth.balance(this.address) < eth.balance(this.address):
            if eventsHistoryAddress:
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.0xdf26ca08 with:
                     gas gas_remaining - 710 wei
                    args 6008
            else:
                require ext_code.size(this.address)
                call this.address.0xdf26ca08 with:
                     gas gas_remaining - 710 wei
                    args 6008
            require ext_call.success
            return 6008
        call arg1 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
            emit WithdrawEth(eth.balance(this.address), arg1);
            return 1
    if eventsHistoryAddress:
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.0xdf26ca08 with:
             gas gas_remaining - 710 wei
            args 6010
    else:
        require ext_code.size(this.address)
        call this.address.0xdf26ca08 with:
             gas gas_remaining - 710 wei
            args 6010
    require ext_call.success
    return 6010
}

function sell(uint256 arg1, uint256 arg2) {
    if not uint8(stor3.field_160):
        if eventsHistoryAddress:
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.0xdf26ca08 with:
                 gas gas_remaining - 710 wei
                args 6004
        else:
            require ext_code.size(this.address)
            call this.address.0xdf26ca08 with:
                 gas gas_remaining - 710 wei
                args 6004
        require ext_call.success
        return 6004
    if arg2 > buyPrice:
        if eventsHistoryAddress:
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.0xdf26ca08 with:
                 gas gas_remaining - 710 wei
                args 6005
        else:
            require ext_code.size(this.address)
            call this.address.0xdf26ca08 with:
                 gas gas_remaining - 710 wei
                args 6005
        require ext_call.success
        return 6005
    require ext_code.size(assetAddress)
    call assetAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    if ext_call.return_data[0] < arg1:
        if eventsHistoryAddress:
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.0xdf26ca08 with:
                 gas gas_remaining - 710 wei
                args 6007
        else:
            require ext_code.size(this.address)
            call this.address.0xdf26ca08 with:
                 gas gas_remaining - 710 wei
                args 6007
        require ext_call.success
        return 6007
    if arg1:
        require arg1
        require arg2 * arg1 / arg1 == arg2
    if eth.balance(this.address) < arg2 * arg1:
        if eventsHistoryAddress:
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.0xdf26ca08 with:
                 gas gas_remaining - 710 wei
                args 6008
        else:
            require ext_code.size(this.address)
            call this.address.0xdf26ca08 with:
                 gas gas_remaining - 710 wei
                args 6008
        require ext_call.success
        return 6008
    require ext_code.size(assetAddress)
    call assetAddress.0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, address(this.address), arg1
    require ext_call.success
    if not ext_call.return_data[0]:
        if eventsHistoryAddress:
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.0xdf26ca08 with:
                 gas gas_remaining - 710 wei
                args 6009
        else:
            require ext_code.size(this.address)
            call this.address.0xdf26ca08 with:
                 gas gas_remaining - 710 wei
                args 6009
        require ext_call.success
        return 6009
    call delayedPaymentsAddress with:
       value arg2 * arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require ext_code.size(delayedPaymentsAddress)
    call delayedPaymentsAddress.0xd8528af0 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(delayedPaymentsAddress)
    call delayedPaymentsAddress.0xc1733712 with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2 * arg1, 3600
    require ext_call.success
    emit Sell(arg1, arg2 * arg1, msg.sender);
    return 1
}



}

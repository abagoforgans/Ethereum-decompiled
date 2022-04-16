contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 5455]




// =====================  Runtime code  =====================


address stor0;
uint256 market;
address orderbookAddress;
address stor3;
address etherTokenAddress;

function market() {
    return market
}

function etherToken() {
    return etherTokenAddress
}

function orderbook() {
    return orderbookAddress
}

function _fallback() payable {
    revert
}

function setupAmbi2(address arg1) {
    if stor0:
        return 0
    require ext_code.size(arg1)
    call arg1.claimFor(address rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args address(this.address), msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        require ext_code.size(arg1)
        call arg1.isOwner(address rg1, address rg2) with:
             gas gas_remaining - 710 wei
            args address(this.address), msg.sender
        require ext_call.success
        if not ext_call.return_data[0]:
            return 0
    stor0 = arg1
    return 1
}

function recoverTokens(address arg1, address arg2, uint256 arg3) {
    if stor0:
        require ext_code.size(stor0)
        call stor0.hasRole(address rg1, bytes32 rg2, address rg3) with:
             gas gas_remaining - 710 wei
            args address(this.address), 'admin', msg.sender
        require ext_call.success
        if ext_call.return_data[0]:
            require ext_code.size(arg1)
            call arg1.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            require ext_call.return_data[0] >= arg3
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args address(arg2), arg3
            require ext_call.success
            require ext_call.return_data[0]
            emit TokensRecovered(address(arg2), arg3, arg1);
            return 0
        else:
            return 0
    else:
        return 0
}

function init(address arg1, bytes32 arg2, address arg3, address arg4) {
    if not stor0:
        return 0
    require ext_code.size(stor0)
    call stor0.hasRole(address rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 710 wei
        args address(this.address), 'admin', msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if orderbookAddress:
        emit Error('Already initialized');
        return 0
    if not arg1:
        emit Error('Invalid init data');
        return 0
    if not arg2:
        emit Error('Invalid init data');
        return 0
    if not arg4:
        emit Error('Invalid init data');
        return 0
    if not arg3:
        emit Error('Invalid init data');
        return 0
    require ext_code.size(arg1)
    call arg1.getMarketInfo(bytes32 rg1) with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
    if not ext_call.return_data[0]:
        emit Error('Invalid market info');
        return 0
    if ext_call.return_data[44 len 20] != arg3:
        emit Error('Invalid market info');
        return 0
    if ext_call.return_data[76 len 20] != arg4:
        emit Error('Invalid market info');
        return 0
    orderbookAddress = arg1
    market = arg2
    stor3 = arg4
    etherTokenAddress = arg3
    require ext_code.size(etherTokenAddress)
    call etherTokenAddress.approve(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args orderbookAddress, -1
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(etherTokenAddress)
    call etherTokenAddress.0x8bbbbfd3 with:
         gas gas_remaining - 710 wei
        args 0
    require ext_call.success
    require ext_call.return_data[0]
    return 1
}

function buyTokens() payable {
    require msg.value
    require orderbookAddress
    require ext_code.size(orderbookAddress)
    call orderbookAddress.getNextActiveSellDetails(bytes32 rg1, uint64 rg2) with:
         gas gas_remaining - 710 wei
        args market, 0
    require ext_call.success
    require ext_call.return_data[96] * ext_call.return_data[64] / 10^18 >= msg.value
    require ext_call.return_data[64]
    require ext_code.size(etherTokenAddress)
    call etherTokenAddress.0xf340fa01 with:
       value msg.value wei
         gas gas_remaining - 9710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(orderbookAddress)
    call orderbookAddress.submitTotalBuyOrder(bytes32 rg1, uint256 rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args market, ext_call.return_data[64], 10^18 * msg.value / ext_call.return_data[64]
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(stor3)
    call stor3.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(stor3)
    call stor3.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(stor3)
    call stor3.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(etherTokenAddress)
    call etherTokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if ext_call.return_data[0]:
        require ext_code.size(etherTokenAddress)
        call etherTokenAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_code.size(etherTokenAddress)
        call etherTokenAddress.withdraw(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args msg.sender, ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
    emit TokenPurchase(msg.sender, ext_call.return_data[64], 10^18 * msg.value / ext_call.return_data[64]);
    return 1
}

function sub_8b11cc82(?) payable {
    require msg.value
    require orderbookAddress
    require ext_code.size(orderbookAddress)
    call orderbookAddress.getNextActiveSellDetails(bytes32 rg1, uint64 rg2) with:
         gas gas_remaining - 710 wei
        args market, 0
    require ext_call.success
    require ext_call.return_data[96] * ext_call.return_data[64] / 10^18 >= msg.value
    require ext_call.return_data[64]
    require ext_code.size(etherTokenAddress)
    call etherTokenAddress.0xf340fa01 with:
       value msg.value wei
         gas gas_remaining - 9710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(orderbookAddress)
    call orderbookAddress.submitTotalBuyOrder(bytes32 rg1, uint256 rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args market, ext_call.return_data[64], 10^18 * msg.value / ext_call.return_data[64]
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(stor3)
    call stor3.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(stor3)
    call stor3.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(stor3)
    call stor3.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(etherTokenAddress)
    call etherTokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if ext_call.return_data[0]:
        require ext_code.size(etherTokenAddress)
        call etherTokenAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_code.size(etherTokenAddress)
        call etherTokenAddress.withdraw(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args msg.sender, ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
    emit TokenPurchase(address(arg1), ext_call.return_data[64], 10^18 * msg.value / ext_call.return_data[64]);
    return 1
}



}

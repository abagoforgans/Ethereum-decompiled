contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
address stor2;
address stor3;
uint256 stor4;

function _fallback() {
    stor0 = msg.sender
    stor3 = code.data[2173 len 20]
    stor2 = code.data[2205 len 20]
    stor1 = code.data[2225 len 32]
    stor4 = code.data[2257 len 32]
    return code.data[159 len 2002]
}



// =====================  Runtime code  =====================


address owner;
uint256 icoStartBlock;
address crowdSaleAddress;
address executorAddress;
uint256 purchaseCap;

function icoStartBlock() {
    return icoStartBlock
}

function crowdSale() {
    return crowdSaleAddress
}

function owner() {
    return owner
}

function purchaseCap() {
    return purchaseCap
}

function executor() {
    return executorAddress
}

function _fallback() payable {
    emit EtherReceived(msg.value, msg.sender);
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function changeExecutor(address arg1) {
    require owner == msg.sender
    executorAddress = arg1
    emit ExecutorChanged(arg1);
}

function changePurchaseCap(uint256 arg1) {
    require owner == msg.sender
    purchaseCap = arg1
    emit PurchaseCapChanged(arg1);
}

function changeCrowdSale(address arg1) {
    require owner == msg.sender
    crowdSaleAddress = arg1
    emit CrowdSaleChanged(arg1);
}

function changeICOStartBlock(uint256 arg1) {
    require owner == msg.sender
    icoStartBlock = arg1
    emit ICOStartBlockChanged(arg1);
}

function withdrawEther() {
    require owner == msg.sender
    require eth.balance(this.address)
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit EtherWithdrawn(eth.balance(this.address));
}

function withdrawTokens(address arg1) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
    emit TokensWithdrawn(ext_call.return_data[0]);
}

function buyICO() {
    if executorAddress != msg.sender:
        require owner == msg.sender
    if block.number >= icoStartBlock:
        if eth.balance(this.address):
            if eth.balance(this.address) < purchaseCap:
                call crowdSaleAddress with:
                   value eth.balance(this.address) wei
                     gas gas_remaining - 34710 wei
                require ext_call.success
                emit ICOPurchased(eth.balance(this.address));
            else:
                call crowdSaleAddress with:
                   value purchaseCap wei
                     gas gas_remaining - 34710 wei
                require ext_call.success
                emit ICOPurchased(purchaseCap);
}



}

contract main {


// =======================  Init code  ======================


address stor0;
mapping of uint256 stor1;

function _fallback() payable {
    stor0 = 0xbb9bc244d798123fde783fcc1c72d3bb8c189413
    stor1[0x900b1d91f8931e3e1de3076341accb2f6011214f] = 4 * 10^18
    stor1[0x8b3b3b624c3c0397d3da8fd861512393d51dcbac] = 3156 * 10^16
    stor1[0xa869d79a7052c7f1b55a8ebabbea3420f0d1e13] = 275 * 10^13 * 3600
    stor1[0x8b3b3b624c3c0397d3da8fd861512393d51dcbac] = 104 * 10^16
    stor1[0x8b3b3b624c3c0397d3da8fd861512393d51dcbac] = 25 * 10^15 * 3600
    stor1[0xdf21fa922215b1a56f5a6d6294e6e36c85a0acfb] = 4999 * 10^16
    stor1[0xa9de66f5fda96a5b40d1ca9cd18bfb298c67d1c] = 1644 * 10^16
    stor1[0x946c555081313c5e0986c6cd5f6978257a406237] = 10^18
    stor1[0xa869d79a7052c7f1b55a8ebabbea3420f0d1e13] = 29551 * 10^16
    return code.data[818 len 1548]
}



// =====================  Runtime code  =====================


address theDaoAddress;
mapping of uint256 allowedFreeExchanges;

function allowedFreeExchanges(address arg1) payable {
    return allowedFreeExchanges[arg1]
}

function theDao() payable {
    return theDaoAddress
}

function _fallback() payable {
  stop
}

function requestTokensBack() {
    require allowedFreeExchanges[address(msg.sender)]
    call theDaoAddress.0xa9059cbb with:
         gas gas_remaining - 25050 wei
        args msg.sender, allowedFreeExchanges[address(msg.sender)]
    require ext_call.success
    require ext_call.return_data[0]
    allowedFreeExchanges[address(msg.sender)] = 0
}

function buy100DaoFor1Eth() payable {
    call theDaoAddress.0x70a08231 with:
         gas gas_remaining - 25050 wei
        args this.address
    require ext_call.success
    if msg.value > ext_call.return_data[0]:
        emit NotEnoughDaoErrorEvent(msg.value, ext_call.return_data[0]);
        revert 
    if msg.value > eth.balance(this.address):
        emit NotEnoughEthErrorEvent(msg.value, eth.balance(this.address));
        revert 
    call theDaoAddress.0xa9059cbb with:
         gas gas_remaining - 25050 wei
        args msg.sender, msg.value
    require ext_call.success
    require ext_call.return_data[0]
    emit TransferEvent(address(this.address), msg.sender, msg.value);
    call theDaoAddress.receiveEther() with:
       value msg.value wei
         gas gas_remaining - 34050 wei
    require ext_call.success
    require ext_call.return_data[0]
    emit ReturnEvent(msg.value);
}



}

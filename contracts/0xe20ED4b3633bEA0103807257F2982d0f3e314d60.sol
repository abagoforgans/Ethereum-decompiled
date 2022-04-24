contract main {


// =======================  Init code  ======================


address stor0;
address stor2;
address stor3;
uint256 stor4;

function _fallback() {
    stor0 = msg.sender
    require code.data[3197 len 20]
    require code.data[3165 len 20]
    require code.data[3217 len 32] > 0
    stor3 = code.data[3197 len 20]
    stor4 = code.data[3217 len 32]
    stor2 = code.data[3165 len 20]
    return code.data[415 len 2738]
}



// =====================  Runtime code  =====================


address owner;
address newOwner;
address lamdenTauAddress;
address buyerAddress;
uint256 priceInWei;

function lamdenTau() {
    return lamdenTauAddress
}

function priceInWei() {
    return priceInWei
}

function buyer() {
    return buyerAddress
}

function owner() {
    return owner
}

function newOwner() {
    return newOwner
}

function acceptOwnership() {
    if msg.sender == newOwner:
        owner = newOwner
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    newOwner = arg1
}

function endTokenSale() {
    require msg.sender == owner
    require ext_code.size(lamdenTauAddress)
    call lamdenTauAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] > 0
    require ext_code.size(lamdenTauAddress)
    call lamdenTauAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
}

function buyTokens() payable {
    require msg.sender == buyerAddress
    require msg.value >= priceInWei
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require ext_code.size(lamdenTauAddress)
    call lamdenTauAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] > 0
    require ext_code.size(lamdenTauAddress)
    call lamdenTauAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args buyerAddress, ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
    emit IssueTokens(priceInWei, ext_call.return_data[0], buyerAddress);
}

function _fallback() payable {
    require msg.sender == buyerAddress
    require msg.value >= priceInWei
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require ext_code.size(lamdenTauAddress)
    call lamdenTauAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] > 0
    require ext_code.size(lamdenTauAddress)
    call lamdenTauAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args buyerAddress, ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
    emit IssueTokens(priceInWei, ext_call.return_data[0], buyerAddress);
}



}

contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
address stor4;
address stor5;
address stor6;

function _fallback() payable {
    stor1 = 0
    stor2 = 0
    require not msg.value
    stor0 = msg.sender
    require code.data[3646 len 32] > 0
    require code.data[3690 len 20]
    require code.data[3722 len 20]
    require code.data[3754 len 20]
    require msg.sender == stor0
    stor3 = code.data[3646 len 32]
    stor4 = code.data[3690 len 20]
    stor5 = code.data[3722 len 20]
    stor6 = code.data[3754 len 20]
    return code.data[621 len 3025]
}



// =====================  Runtime code  =====================


address owner;
uint256 tokensSold;
uint256 weiRaised;
uint256 startsAt;
address walletAddress;
address stor5;
address stor6;

function weiRaised() {
    return weiRaised
}

function tokensSold() {
    return tokensSold
}

function wallet() {
    return walletAddress
}

function owner() {
    return owner
}

function startsAt() {
    return startsAt
}

function destroy() {
    require msg.sender == owner
    selfdestruct(owner)
}

function destroyAndSend(address arg1) {
    require msg.sender == owner
    selfdestruct(arg1)
}

function setStartsAt(uint256 arg1) {
    require msg.sender == owner
    startsAt = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function withdrawTokens(address arg1) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, ext_call.return_data[0]
    require ext_call.success
}

function _fallback() payable {
    require msg.sender
    require msg.value
    require ext_code.size(stor6)
    call stor6.0x6ee3dbe7 with:
         gas gas_remaining - 710 wei
        args tokensSold, startsAt
    require ext_call.success
    require ext_call.return_data[0] > 0
    require ext_code.size(stor6)
    call stor6.0xcfe9f778 with:
         gas gas_remaining - 710 wei
        args 0, uint32(msg.value), msg.sender, tokensSold, startsAt
    require ext_call.success
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require tokensSold + ext_call.return_data[0] >= tokensSold
    tokensSold += ext_call.return_data[0]
    require ext_code.size(stor5)
    call stor5.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, ext_call.return_data[0]
    require ext_call.success
    emit TokenPurchase(msg.value, ext_call.return_data[0], msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function buyTokens(address arg1) payable {
    require arg1
    require msg.value
    require ext_code.size(stor6)
    call stor6.0x6ee3dbe7 with:
         gas gas_remaining - 710 wei
        args tokensSold, startsAt
    require ext_call.success
    require ext_call.return_data[0] > 0
    require ext_code.size(stor6)
    call stor6.0xcfe9f778 with:
         gas gas_remaining - 710 wei
        args 0, uint32(msg.value), address(arg1), tokensSold, startsAt
    require ext_call.success
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require tokensSold + ext_call.return_data[0] >= tokensSold
    tokensSold += ext_call.return_data[0]
    require ext_code.size(stor5)
    call stor5.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), ext_call.return_data[0]
    require ext_call.success
    emit TokenPurchase(msg.value, ext_call.return_data[0], arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}

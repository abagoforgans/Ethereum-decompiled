contract main {


// =======================  Init code  ======================


address stor0;
address stor4;
address stor5;
address stor6;

function _fallback() {
    stor0 = msg.sender
    stor4 = code.data[2786 len 20]
    stor5 = code.data[2818 len 20]
    stor6 = code.data[2850 len 20]
    return code.data[153 len 2621]
}



// =====================  Runtime code  =====================


const onTransfer(address arg1, address arg2, uint256 arg3) = 0

const onApprove(address arg1, address arg2, uint256 arg3) = 0


address owner;
address newOwner;
mapping of uint256 collected;
uint256 totalCollected;
address sgtAddress;
address sntAddress;
address statusContributionAddress;

function snt() {
    return sntAddress
}

function sgt() {
    return sgtAddress
}

function collected(address arg1) {
    return collected[arg1]
}

function statusContribution() {
    return statusContributionAddress
}

function owner() {
    return owner
}

function newOwner() {
    return newOwner
}

function totalCollected() {
    return totalCollected
}

function _fallback() payable {
    revert
}

function proxyPayment(address arg1) payable {
    revert
}

function acceptOwnership() {
    if newOwner == msg.sender:
        owner = newOwner
}

function changeOwner(address arg1) {
    require owner == msg.sender
    newOwner = arg1
}

function claimTokens(address arg1) {
    require owner == msg.sender
    require sntAddress != arg1
    if not arg1:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
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
    emit ClaimedTokens(ext_call.return_data[0], arg1, owner);
}

function collect() {
    require ext_code.size(statusContributionAddress)
    call statusContributionAddress.0x4084c3ab with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    require block.number > ext_call.return_data[0]
    require ext_code.size(sntAddress)
    call sntAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] + totalCollected >= totalCollected
    require ext_code.size(sgtAddress)
    call sgtAddress.balanceOfAt(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, ext_call.return_data[0]
    require ext_call.success
    require ext_code.size(sgtAddress)
    call sgtAddress.totalSupplyAt(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args ext_call.return_data[0]
    require ext_call.success
    if ext_call.return_data[0] + totalCollected:
        require ext_call.return_data[0] + totalCollected
        require (ext_call.return_data[0] * ext_call.return_data[0]) + (totalCollected * ext_call.return_data[0]) / ext_call.return_data[0] + totalCollected == ext_call.return_data[0]
    require ext_call.return_data[0]
    require collected[address(msg.sender)] <= (ext_call.return_data[0] * ext_call.return_data[0]) + (totalCollected * ext_call.return_data[0]) / ext_call.return_data[0]
    require ((ext_call.return_data[0] * ext_call.return_data[0]) + (totalCollected * ext_call.return_data[0]) / ext_call.return_data[0]) - collected[address(msg.sender)] > 0
    require ((ext_call.return_data[0] * ext_call.return_data[0]) + (totalCollected * ext_call.return_data[0]) / ext_call.return_data[0]) - collected[address(msg.sender)] + totalCollected >= totalCollected
    totalCollected = ((ext_call.return_data[0] * ext_call.return_data[0]) + (totalCollected * ext_call.return_data[0]) / ext_call.return_data[0]) - collected[address(msg.sender)] + totalCollected
    require (ext_call.return_data[0] * ext_call.return_data[0]) + (totalCollected * ext_call.return_data[0]) / ext_call.return_data[0] >= collected[address(msg.sender)]
    collected[address(msg.sender)] = (ext_call.return_data[0] * ext_call.return_data[0]) + (totalCollected * ext_call.return_data[0]) / ext_call.return_data[0]
    require ext_code.size(sntAddress)
    call sntAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, ((ext_call.return_data[0] * ext_call.return_data[0]) + (totalCollected * ext_call.return_data[0]) / ext_call.return_data[0]) - collected[address(msg.sender)]
    require ext_call.success
    require ext_call.return_data[0]
    emit TokensCollected((((ext_call.return_data[0] * ext_call.return_data[0]) + (totalCollected * ext_call.return_data[0]) / ext_call.return_data[0]) - collected[address(msg.sender)]), msg.sender);
}



}

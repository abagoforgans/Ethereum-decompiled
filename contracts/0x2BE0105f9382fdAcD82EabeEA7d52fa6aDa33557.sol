contract main {


// =======================  Init code  ======================


address stor0;
address stor3;
address stor4;
address stor5;

function _fallback() {
    stor0 = msg.sender
    stor3 = code.data[3983 len 20]
    stor4 = code.data[4015 len 20]
    stor5 = code.data[4047 len 20]
    return code.data[341 len 3630]
}



// =====================  Runtime code  =====================


const onTransfer(address arg1, address arg2, uint256 arg3) = 0

const onApprove(address arg1, address arg2, uint256 arg3) = 0


address controllerAddress;
mapping of uint256 collected;
uint256 totalCollected;
address sitAddress;
address mspAddress;
address contributionAddress;

function collected(address arg1) {
    return collected[arg1]
}

function contribution() {
    return contributionAddress
}

function sit() {
    return sitAddress
}

function msp() {
    return mspAddress
}

function totalCollected() {
    return totalCollected
}

function controller() {
    return controllerAddress
}

function _fallback() payable {
    revert
}

function proxyPayment(address arg1) payable {
    revert
}

function changeController(address arg1) {
    require msg.sender == controllerAddress
    controllerAddress = arg1
}

function claimTokens(address arg1) {
    require msg.sender == controllerAddress
    require arg1 != mspAddress
    if not arg1:
        call controllerAddress with:
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
        args controllerAddress, ext_call.return_data[0]
    require ext_call.success
    emit ClaimedTokens(ext_call.return_data[0], arg1, controllerAddress);
}

function collect() {
    require ext_code.size(contributionAddress)
    call contributionAddress.0x48cd4cb1 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require block.number > ext_call.return_data[0]
    require ext_code.size(contributionAddress)
    call contributionAddress.0xada5cf63 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(sitAddress)
    call sitAddress.0x4ee2cd7e with:
         gas gas_remaining - 710 wei
        args msg.sender, ext_call.return_data[0]
    require ext_call.success
    require collected[address(msg.sender)] <= ext_call.return_data[0]
    require ext_call.return_data[0] - collected[address(msg.sender)] > 0
    require totalCollected + ext_call.return_data[0] - collected[address(msg.sender)] >= totalCollected
    totalCollected = totalCollected + ext_call.return_data[0] - collected[address(msg.sender)]
    require ext_call.return_data[0] >= collected[address(msg.sender)]
    collected[address(msg.sender)] = ext_call.return_data[0]
    require ext_code.size(mspAddress)
    call mspAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, ext_call.return_data[0] - collected[address(msg.sender)]
    require ext_call.success
    require ext_call.return_data[0]
    emit TokensCollected((ext_call.return_data[0] - collected[address(msg.sender)]), msg.sender);
}



}

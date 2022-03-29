contract main {


// =======================  Init code  ======================


address stor1;
address stor2;
address stor3;

function _fallback() {
    stor1 = msg.sender
    stor2 = code.data[2775 len 20]
    stor3 = code.data[2807 len 20]
    return code.data[133 len 2630]
}



// =====================  Runtime code  =====================


address stor1;
address roundFactoryAddress;
address curatorAddress;
address currentRoundAddress;
uint256 stor4;

function roundFactory() {
    return roundFactoryAddress
}

function currentRound() {
    return address(currentRoundAddress)
}

function curator() {
    return curatorAddress
}

function shutdown() {
    require stor1 == msg.sender
    selfdestruct(stor1)
}

function _fallback() payable {
    require address(currentRoundAddress) == msg.sender
}

function transferOwnership(address arg1) {
    require stor1 == msg.sender
    stor1 = arg1
}

function deposit() payable {
    require stor1 == msg.sender
    require not address(currentRoundAddress)
}

function setCurator(address arg1) {
    require curatorAddress == msg.sender
    require not address(currentRoundAddress)
    curatorAddress = arg1
}

function isUpgradeAllowed() {
    if address(currentRoundAddress):
        return not bool(address(currentRoundAddress))
    return (eth.balance(this.address) < 10^15)
}

function withdraw() {
    require stor1 == msg.sender
    call stor1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function startRound(bytes32 arg1, bytes32 arg2) {
    require curatorAddress == msg.sender
    require not address(currentRoundAddress)
    require ext_code.size(roundFactoryAddress)
    if eth.balance(this.address) <= 0:
        call roundFactoryAddress.createRound(bytes32 rg1, bytes32 rg2) with:
             gas gas_remaining - 50 wei
            args arg1, arg2
    else:
        call roundFactoryAddress.createRound(bytes32 rg1, bytes32 rg2) with:
           value eth.balance(this.address) wei
             gas gas_remaining - 9050 wei
            args arg1, arg2
    require ext_call.success
    uint256(stor4) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor4))
}

function closeRound(bytes32 arg1, uint8 arg2) {
    require curatorAddress == msg.sender
    require address(currentRoundAddress)
    require ext_code.size(address(currentRoundAddress))
    call address(currentRoundAddress).closingBlock() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require block.number > ext_call.return_data[0]
    require ext_code.size(address(currentRoundAddress))
    call address(currentRoundAddress).winningNumbersPicked() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require bool(ext_call.return_data[0]) != 1
    require ext_code.size(address(currentRoundAddress))
    call address(currentRoundAddress).closeGame(bytes32 rg1, uint8 rg2) with:
         gas gas_remaining - 50 wei
        args arg1, arg2
    require ext_call.success
}

function finalizeRound() {
    require stor1 == msg.sender
    require address(currentRoundAddress)
    require ext_code.size(address(currentRoundAddress))
    call address(currentRoundAddress).winningNumbersPicked() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(address(currentRoundAddress))
    call address(currentRoundAddress).paidOut() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    if ext_call.return_data[0]:
        if eth.balance(address(currentRoundAddress)) > 0:
            require ext_code.size(address(currentRoundAddress))
            call address(currentRoundAddress).0x3ccfd60b with:
                 gas gas_remaining - 50 wei
            require ext_call.success
    else:
        require ext_code.size(address(currentRoundAddress))
        call address(currentRoundAddress).distributeWinnings() with:
             gas gas_remaining - 50 wei
        require ext_call.success
        require ext_code.size(address(currentRoundAddress))
        call address(currentRoundAddress).claimOwnerFee(address rg1) with:
             gas gas_remaining - 50 wei
            args curatorAddress
        require ext_call.success
    require ext_code.size(address(currentRoundAddress))
    call address(currentRoundAddress).0xf2fde38b with:
         gas gas_remaining - 50 wei
        args curatorAddress
    require ext_call.success
    address(currentRoundAddress) = 0
    return address(currentRoundAddress)
}



}

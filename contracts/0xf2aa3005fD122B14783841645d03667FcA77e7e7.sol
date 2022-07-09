contract main {




// =====================  Runtime code  =====================


address owner;
uint256 arbitrationCost;
array of struct currentRuling;

function currentRuling(uint256 arg1) {
    require arg1 < currentRuling.length
    return currentRuling[arg1].field_768
}

function disputes(uint256 arg1) {
    require arg1 < currentRuling.length
    require currentRuling[arg1].field_1024 <= 2
    return currentRuling[arg1].field_0, 
           currentRuling[arg1].field_256,
           currentRuling[arg1].field_512,
           currentRuling[arg1].field_768,
           currentRuling[arg1].field_1024,
           currentRuling[arg1].field_1280,
           currentRuling[arg1].field_1536,
           currentRuling[arg1].field_1792
}

function owner() {
    return owner
}

function appealPeriod(uint256 arg1) {
    require arg1 < currentRuling.length
    return currentRuling[arg1].field_1536, currentRuling[arg1].field_1792
}

function arbitrationCost(bytes arg1) {
    return arbitrationCost
}

function _fallback() payable {
    revert
}

function setArbitrationPrice(uint256 arg1) {
    if owner != msg.sender:
        revert with 0, ' Can only be called by the owner'
    arbitrationCost = arg1
}

function appealCost(uint256 arg1, bytes arg2) {
    require arg1 < currentRuling.length
    require currentRuling[arg1].field_1024 <= 2
    if currentRuling[arg1].field_1024 != 1:
        return 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    return currentRuling[arg1].field_1280
}

function changeAppealFee(uint256 arg1, uint256 arg2) {
    if owner != msg.sender:
        revert with 0, ' Can only be called by the owner'
    require arg1 < currentRuling.length
    require currentRuling[arg1].field_1024 <= 2
    if currentRuling[arg1].field_1024 != 1:
        revert with 0, 'The dispute must be appealable.'
    currentRuling[arg1].field_1280 = arg2
}

function disputeStatus(uint256 arg1) {
    require arg1 < currentRuling.length
    require currentRuling[arg1].field_1024 <= 2
    if currentRuling[arg1].field_1024 == 1:
        if block.timestamp >= currentRuling[arg1].field_1792:
            return 2
    require arg1 < currentRuling.length
    require currentRuling[arg1].field_1024 <= 2
    return currentRuling[arg1].field_1024
}

function createDispute(uint256 arg1, bytes arg2) payable {
    if msg.value < arbitrationCost:
        revert with 0, 'Not enough ETH to cover arbitration costs.'
    currentRuling.length++
    currentRuling[currentRuling.length].field_0 = msg.sender
    currentRuling[currentRuling.length].field_256 = arg1
    currentRuling[currentRuling.length].field_512 = msg.value
    currentRuling[currentRuling.length].field_768 = 0
    currentRuling[currentRuling.length].field_1024 = 0
    currentRuling[currentRuling.length].field_1280 = 0
    currentRuling[currentRuling.length].field_1280 = 0
    currentRuling[currentRuling.length].field_1536 = 0
    currentRuling[currentRuling.length].field_1792 = 0
    emit DisputeCreation(currentRuling.length, msg.sender);
    return currentRuling.length
}

function sub_f02e2ad9(?) {
    if owner != msg.sender:
        revert with 0, ' Can only be called by the owner'
    require arg1 < currentRuling.length
    if arg2 > currentRuling[arg1].field_256:
        revert with 0, 'Invalid ruling.'
    require currentRuling[arg1].field_1024 <= 2
    if currentRuling[arg1].field_1024:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The dispute must be waiting forarbitration.'
    currentRuling[arg1].field_768 = arg2
    currentRuling[arg1].field_1024 = 1
    currentRuling[arg1].field_1280 = arg3
    currentRuling[arg1].field_1536 = block.timestamp
    if arg4 + block.timestamp >= block.timestamp:
        currentRuling[arg1].field_1792 = arg4 + block.timestamp
    else:
        currentRuling[arg1].field_1792 = -1
}

function executeRuling(uint256 arg1) {
    require arg1 < currentRuling.length
    require currentRuling[arg1].field_1024 <= 2
    if currentRuling[arg1].field_1024 != 1:
        revert with 0, '.The dispute must be appealble.'
    if block.timestamp < currentRuling[arg1].field_1792:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'The dispute must be executed after the appeal period has ended.'
    currentRuling[arg1].field_1024 = 2
    call msg.sender with:
       value currentRuling[arg1].field_512 wei
         gas 2300 * is_zero(value) wei
    require ext_code.size(currentRuling[arg1].field_0)
    call currentRuling[arg1].field_0.rule(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg1, currentRuling[arg1].field_768
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function appeal(uint256 arg1, bytes arg2) payable {
    require arg1 < currentRuling.length
    require currentRuling[arg1].field_1024 <= 2
    if currentRuling[arg1].field_1024 != 1:
        if msg.value < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 'Not enough ETH to cover appeal costs.'
    else:
        if msg.value < currentRuling[arg1].field_1280:
            revert with 0, 'Not enough ETH to cover appeal costs.'
    require arg1 < currentRuling.length
    require currentRuling[arg1].field_1024 <= 2
    if currentRuling[arg1].field_1024 != 1:
        revert with 0, '.The dispute must be appealble.'
    if block.timestamp >= currentRuling[arg1].field_1792:
        revert with 0, 'The appeal must occur before the end of the appeal period.'
    currentRuling[arg1].field_512 += msg.value
    currentRuling[arg1].field_1024 = 0
    emit AppealDecision(arg1, msg.sender);
}

function giveRuling(uint256 arg1, uint256 arg2) {
    if owner != msg.sender:
        revert with 0, ' Can only be called by the owner'
    require arg1 < currentRuling.length
    if arg2 > currentRuling[arg1].field_256:
        revert with 0, 'Invalid ruling.'
    require currentRuling[arg1].field_1024 <= 2
    if currentRuling[arg1].field_1024:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The dispute must be waiting forarbitration.'
    currentRuling[arg1].field_768 = arg2
    currentRuling[arg1].field_1024 = 2
    call msg.sender with:
       value currentRuling[arg1].field_512 wei
         gas 2300 * is_zero(value) wei
    require ext_code.size(currentRuling[arg1].field_0)
    call currentRuling[arg1].field_0.rule(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}

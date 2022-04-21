contract main {


// =======================  Init code  ======================


address stor0;
address stor2;
address stor3;

function _fallback() {
    stor0 = msg.sender
    stor0 = code.data[3472 len 20]
    stor2 = code.data[3504 len 20]
    stor3 = code.data[3536 len 20]
    return code.data[337 len 3123]
}



// =====================  Runtime code  =====================


address controllerAddress;
uint256 collectedTokens;
address contributionAddress;
address aixAddress;

function contribution() {
    return contributionAddress
}

function collectedTokens() {
    return collectedTokens
}

function aix() {
    return aixAddress
}

function controller() {
    return controllerAddress
}

function _fallback() payable {
    revert
}

function changeController(address arg1) {
    require msg.sender == controllerAddress
    controllerAddress = arg1
}

function extractableFraction() {
    require ext_code.size(contributionAddress)
    call contributionAddress.finalizedTime() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] > 0
    require ext_call.return_data[0] <= block.timestamp
    if block.timestamp - ext_call.return_data[0] <= 8640 * 24 * 3600:
        return 10
    return 29
}

function claimTokens(address arg1) {
    require msg.sender == controllerAddress
    require arg1 != aixAddress
    if not arg1:
        call controllerAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
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

function collectTokens() {
    require msg.sender == controllerAddress
    require ext_code.size(aixAddress)
    call aixAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require collectedTokens + ext_call.return_data[0] >= collectedTokens
    require ext_code.size(contributionAddress)
    call contributionAddress.finalizedTime() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] > 0
    require ext_call.return_data[0] <= block.timestamp
    if block.timestamp - ext_call.return_data[0] <= 8640 * 24 * 3600:
        if collectedTokens + ext_call.return_data[0]:
            require collectedTokens + ext_call.return_data[0]
            require (10 * collectedTokens) + (10 * ext_call.return_data[0]) / collectedTokens + ext_call.return_data[0] == 10
        require collectedTokens <= (10 * collectedTokens) + (10 * ext_call.return_data[0]) / 29
        if ((10 * collectedTokens) + (10 * ext_call.return_data[0]) / 29) - collectedTokens <= ext_call.return_data[0]:
            require (10 * collectedTokens) + (10 * ext_call.return_data[0]) / 29 >= collectedTokens
            collectedTokens = (10 * collectedTokens) + (10 * ext_call.return_data[0]) / 29
            require ext_code.size(aixAddress)
            call aixAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args controllerAddress, ((10 * collectedTokens) + (10 * ext_call.return_data[0]) / 29) - collectedTokens
            require ext_call.success
            require ext_call.return_data[0]
            emit TokensWithdrawn((((10 * collectedTokens) + (10 * ext_call.return_data[0]) / 29) - collectedTokens), controllerAddress);
        else:
            require collectedTokens + ext_call.return_data[0] >= collectedTokens
            collectedTokens += ext_call.return_data[0]
            require ext_code.size(aixAddress)
            call aixAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args controllerAddress, ext_call.return_data[0]
            require ext_call.success
            require ext_call.return_data[0]
            emit TokensWithdrawn(ext_call.return_data[0], controllerAddress);
    else:
        if collectedTokens + ext_call.return_data[0]:
            require collectedTokens + ext_call.return_data[0]
            require (29 * collectedTokens) + (29 * ext_call.return_data[0]) / collectedTokens + ext_call.return_data[0] == 29
        require collectedTokens <= (29 * collectedTokens) + (29 * ext_call.return_data[0]) / 29
        if ((29 * collectedTokens) + (29 * ext_call.return_data[0]) / 29) - collectedTokens <= ext_call.return_data[0]:
            require (29 * collectedTokens) + (29 * ext_call.return_data[0]) / 29 >= collectedTokens
            collectedTokens = (29 * collectedTokens) + (29 * ext_call.return_data[0]) / 29
            require ext_code.size(aixAddress)
            call aixAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args controllerAddress, ((29 * collectedTokens) + (29 * ext_call.return_data[0]) / 29) - collectedTokens
            require ext_call.success
            require ext_call.return_data[0]
            emit TokensWithdrawn((((29 * collectedTokens) + (29 * ext_call.return_data[0]) / 29) - collectedTokens), controllerAddress);
        else:
            require collectedTokens + ext_call.return_data[0] >= collectedTokens
            collectedTokens += ext_call.return_data[0]
            require ext_code.size(aixAddress)
            call aixAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args controllerAddress, ext_call.return_data[0]
            require ext_call.success
            require ext_call.return_data[0]
            emit TokensWithdrawn(ext_call.return_data[0], controllerAddress);
}



}

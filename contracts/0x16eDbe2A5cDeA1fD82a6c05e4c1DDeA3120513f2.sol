contract main {


// =======================  Init code  ======================


address stor1;

function _fallback() {
    stor1 = msg.sender
    return code.data[95 len 1520]
}



// =====================  Runtime code  =====================


address curatorAddress;
address devAddress;
address tokenAddress;

function dev() {
    return devAddress
}

function tokenAddress() {
    return tokenAddress
}

function curator() {
    return curatorAddress
}

function killContract() {
    require msg.sender == devAddress
    selfdestruct(devAddress)
}

function _fallback() {
    revert
}

function setCurator(address arg1) {
    require msg.sender == devAddress
    curatorAddress = arg1
}

function setTokenContract(address arg1) {
    require msg.sender == curatorAddress
    tokenAddress = arg1
}

function destroy(uint256 arg1) {
    require msg.sender == curatorAddress
    require ext_code.size(tokenAddress)
    call tokenAddress.destroy(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg1
    require ext_call.success
}



}

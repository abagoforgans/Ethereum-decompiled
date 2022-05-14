contract main {




// =====================  Runtime code  =====================


address owner;
uint256 threshold;
address targetAddress;
address stor3;

function threshold() {
    return threshold
}

function owner() {
    return owner
}

function target() {
    return targetAddress
}

function _fallback() payable {
  stop
}

function getTargetBalance() {
    return eth.balance(targetAddress)
}

function changeThreshold(uint256 arg1) {
    require msg.sender == owner
    threshold = arg1
}

function changeTarget(address arg1) {
    require msg.sender == owner
    targetAddress = arg1
}

function withdraw() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_5dda8b48(?) payable {
    require msg.sender == owner
    require block.timestamp >= 424245 * 3600
    require eth.balance(targetAddress) <= threshold
    call targetAddress with:
       value msg.value wei
         gas gas_remaining wei
}

function sub_db8d65f3(?) payable {
    require msg.sender == owner
    require ext_code.size(stor3)
    call stor3.0xe9fad8ee with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}

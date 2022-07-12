contract main {




// =====================  Runtime code  =====================


address owner;
address gasTokenAddress;
uint256 mintRate;

function owner() {
    return owner
}

function gasToken() {
    return gasTokenAddress
}

function mintRate() {
    return mintRate
}

function isOwner() {
    return (msg.sender == owner)
}

function setMintRate(uint256 arg1) {
    require msg.sender == owner
    mintRate = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function mint(uint256 arg1) {
    require ext_code.size(gasTokenAddress)
    call gasTokenAddress.0xa0712d68 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    require ext_code.size(gasTokenAddress)
    call gasTokenAddress.0xa0712d68 with:
         gas gas_remaining wei
        args mintRate
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw() {
    require msg.sender == owner
    require ext_code.size(gasTokenAddress)
    call gasTokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(gasTokenAddress)
    call gasTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}

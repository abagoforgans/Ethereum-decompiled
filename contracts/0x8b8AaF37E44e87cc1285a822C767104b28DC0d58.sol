contract main {




// =====================  Runtime code  =====================


address owner;
address tokenRewardContractAddress;
uint256 totalAirDropToken;
address collectorAddress;
mapping of uint256 balanceOf;

function tokenRewardContract() {
    return tokenRewardContractAddress
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function collectorAddress() {
    return collectorAddress
}

function totalAirDropToken() {
    return totalAirDropToken
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function modifyCollectorAddress(address arg1) {
    require msg.sender == owner
    collectorAddress = arg1
    return 0
}

function burn(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    require arg1 <= totalAirDropToken
    totalAirDropToken -= arg1
    emit Burn(arg1);
}

function additional(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    require arg1 + totalAirDropToken >= totalAirDropToken
    totalAirDropToken += arg1
    emit Additional(arg1);
}

function getTokenBalance(address arg1, address arg2) {
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function collectEtherBack() {
    require msg.sender == owner
    require eth.balance(this.address) > 0
    require collectorAddress
    call collectorAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function collectOtherTokens(address arg1) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args collectorAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function collectAirDropTokenBack(uint256 arg1) {
    require msg.sender == owner
    require 0 < totalAirDropToken
    require collectorAddress
    require ext_code.size(tokenRewardContractAddress)
    if arg1 > 0:
        call tokenRewardContractAddress.0xa9059cbb with:
             gas gas_remaining wei
            args collectorAddress, 10^18 * arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    else:
        call tokenRewardContractAddress.0xa9059cbb with:
             gas gas_remaining wei
            args collectorAddress, 10^18 * totalAirDropToken
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        totalAirDropToken = 0
    emit CollectAirDropTokenBack(collectorAddress, arg1);
}

function _fallback() payable {
    require collectorAddress
    require 0 < totalAirDropToken
    if not msg.value:
        require 0 <= totalAirDropToken
        require ext_code.size(tokenRewardContractAddress)
        call tokenRewardContractAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 0
    else:
        require 23000 * msg.value / msg.value == 23000
        require 23000 * msg.value / 10^18 <= totalAirDropToken
        totalAirDropToken -= 23000 * msg.value / 10^18
        require ext_code.size(tokenRewardContractAddress)
        call tokenRewardContractAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 23000 * msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call collectorAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}

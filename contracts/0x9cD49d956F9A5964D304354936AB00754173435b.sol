contract main {




// =====================  Runtime code  =====================


address owner;
address signerAddress;
uint256 price;
address crowdSaleTokenAddress;

function signer() {
    return signerAddress
}

function owner() {
    return owner
}

function price() {
    return price
}

function crowdSaleToken() {
    return crowdSaleTokenAddress
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function setPrice(uint256 arg1) {
    require msg.sender == owner
    require arg1
    price = arg1
}

function transferSignership(address arg1) {
    require msg.sender == owner
    signerAddress = arg1
}

function withdrawalEth(uint256 arg1) {
    require msg.sender == owner
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawalToken(uint256 arg1) {
    require msg.sender == owner
    require ext_code.size(crowdSaleTokenAddress)
    call crowdSaleTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function _fallback() payable {
    require price
    require msg.value / price
    require msg.value / price
    require 10^18 * msg.value / price / msg.value / price == 10^18
    require ext_code.size(crowdSaleTokenAddress)
    call crowdSaleTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, 10^18 * msg.value / price
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}

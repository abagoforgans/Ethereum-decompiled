contract main {




// =====================  Runtime code  =====================


address contractOwner;
address stor1;
uint256 tokensSold;
uint256 amountRaised;
uint256 stor4;
address stor5;
uint256 stor6;
uint256 stor7;

function tokensSold() {
    return tokensSold
}

function amountRaised() {
    return amountRaised
}

function contractOwner() {
    return contractOwner
}

function endTokenSale() {
    require msg.sender == contractOwner
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining wei
        args contractOwner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    stor7 = block.timestamp
    selfdestruct(contractOwner)
}

function sub_b28ae6ce(?) {
    return (block.timestamp > stor7)
}

function sub_dbe7a82b(?) {
    return (block.timestamp > stor6)
}

function startTokenSale() {
    require msg.sender == contractOwner
    stor6 = block.timestamp
}

function getContractBalance() {
    require msg.sender == contractOwner
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function _fallback() payable {
    require block.timestamp > stor6
    require block.timestamp <= stor7
    if 10^18 * msg.value / 5 * 10^13:
        require 10^18 * msg.value / 5 * 10^13
        require 125 * 10^14 * 3600 * msg.value / 5 * 10^13 / 10^18 * msg.value / 5 * 10^13 == 45
    require (125 * 10^14 * 3600 * msg.value / 5 * 10^13 / 100) + (10^18 * msg.value / 5 * 10^13) >= 10^18 * msg.value / 5 * 10^13
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.value >= stor4
    require ext_call.return_data[0] >= (125 * 10^14 * 3600 * msg.value / 5 * 10^13 / 100) + (10^18 * msg.value / 5 * 10^13)
    if 10^18 * msg.value / 5 * 10^13:
        require 10^18 * msg.value / 5 * 10^13
        require 125 * 10^14 * 3600 * msg.value / 5 * 10^13 / 10^18 * msg.value / 5 * 10^13 == 45
    require (125 * 10^14 * 3600 * msg.value / 5 * 10^13 / 100) + (10^18 * msg.value / 5 * 10^13) >= 10^18 * msg.value / 5 * 10^13
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, (125 * 10^14 * 3600 * msg.value / 5 * 10^13 / 100) + (10^18 * msg.value / 5 * 10^13)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.value + amountRaised >= amountRaised
    amountRaised += msg.value
    require (125 * 10^14 * 3600 * msg.value / 5 * 10^13 / 100) + (10^18 * msg.value / 5 * 10^13) + tokensSold >= tokensSold
    tokensSold = (125 * 10^14 * 3600 * msg.value / 5 * 10^13 / 100) + (10^18 * msg.value / 5 * 10^13) + tokensSold
    call stor5 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}

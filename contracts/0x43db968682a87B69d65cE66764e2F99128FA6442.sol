contract main {




// =====================  Runtime code  =====================


uint256 price;
mapping of uint256 balances;
address stor2;
address sub_1492e88bAddress;

function sub_1492e88b(?) {
    return sub_1492e88bAddress
}

function balances(address arg1) {
    require calldata.size - 4 >= 32
    return balances[arg1]
}

function price() {
    return price
}

function doom() {
    require msg.sender == stor2
    require ext_code.size(sub_1492e88bAddress)
    staticcall sub_1492e88bAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_1492e88bAddress)
    call sub_1492e88bAddress.0xa9059cbb with:
         gas gas_remaining wei
        args stor2, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    selfdestruct(stor2)
}

function _fallback() payable {
  stop
}

function drain(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == stor2
    require ext_code.size(sub_1492e88bAddress)
    staticcall sub_1492e88bAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_1492e88bAddress)
    call sub_1492e88bAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= balances[address(msg.sender)]
    require ext_code.size(sub_1492e88bAddress)
    call sub_1492e88bAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if price <= 0:
        revert with 0, 'SafeMath: division by zero'
    require price
    call msg.sender with:
       value 10^18 * arg1 / price wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 > balances[address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    balances[address(msg.sender)] -= arg1
}



}

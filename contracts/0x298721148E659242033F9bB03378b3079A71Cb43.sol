contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;
address sub_4c7ef9a7Address;
mapping of uint8 stor3;
mapping of uint256 deposits;
uint256 totalAmount;

function totalAmount() {
    return totalAmount
}

function sub_4c7ef9a7(?) {
    return sub_4c7ef9a7Address
}

function owner() {
    return owner
}

function token() {
    return tokenAddress
}

function deposits(address arg1) {
    return deposits[arg1]
}

function _fallback() payable {
    revert
}

function setController(address arg1) {
    require msg.sender == owner
    stor3[address(arg1)] = 1
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

function withdrawETH(address arg1) {
    require msg.sender == owner
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) {
    require arg3 == tokenAddress
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    deposits[address(arg1)] += arg2
    totalAmount += arg2
    emit TokensReceived(arg2, arg1);
}

function withdrawERC20(address arg1, address arg2) {
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
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function tokenTransfer() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0xdd62ed3e with:
         gas gas_remaining wei
        args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    deposits[address(msg.sender)] += ext_call.return_data[0]
    totalAmount += ext_call.return_data[0]
    emit TokensReceived(ext_call.return_data[0], msg.sender);
}

function refund(uint256 arg1) {
    require stor3[address(msg.sender)]
    require ext_code.size(sub_4c7ef9a7Address)
    call sub_4c7ef9a7Address.0x14edb54d with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require totalAmount
    require ext_code.size(sub_4c7ef9a7Address)
    call sub_4c7ef9a7Address.0x14edb54d with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), (2 * 10^16 * arg1) + (10^18 * deposits[ext_call.return_data[12 len 20]] / totalAmount * arg1) / 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_4c7ef9a7Address)
    call sub_4c7ef9a7Address.0xa7f81e6a with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require totalAmount
    require ext_code.size(sub_4c7ef9a7Address)
    call sub_4c7ef9a7Address.0xa7f81e6a with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), (-2 * 10^16 * arg1) + (10^18 * deposits[ext_call.return_data[12 len 20]] / totalAmount * arg1) / 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_4c7ef9a7Address)
    call sub_4c7ef9a7Address.0x14edb54d with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Refunded(((2 * 10^16 * arg1) + (10^18 * deposits[ext_call.return_data[12 len 20]] / totalAmount * arg1) / 10^18), address(ext_call.return_data[0]));
    require ext_code.size(sub_4c7ef9a7Address)
    call sub_4c7ef9a7Address.0xa7f81e6a with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Refunded(((-2 * 10^16 * arg1) + (10^18 * deposits[ext_call.return_data[12 len 20]] / totalAmount * arg1) / 10^18), address(ext_call.return_data[0]));
}



}

contract main {




// =====================  Runtime code  =====================


address tokenAddress;
uint256 amount;
uint8 stor2; offset 160
address payeeAddress;
address stor3;

function payed() {
    return bool(stor2)
}

function amount() {
    return amount
}

function payee() {
    return payeeAddress
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function payout(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == stor3
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= amount
    require not stor2
    amount = arg1
    payeeAddress = arg2
    stor2 = 1
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}



}

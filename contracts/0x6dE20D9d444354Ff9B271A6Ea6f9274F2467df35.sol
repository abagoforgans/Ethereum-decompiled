contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() payable {
    stor1 = 0xd850942ef8811f2a866692a623011bde52a462c1
    require not msg.value
    stor0 = msg.sender
    return code.data[97 len 2142]
}



// =====================  Runtime code  =====================


address owner;
address tokenAddress;
uint256 totalSetCredit;
uint256 totalReturnedCredit;
mapping of struct credit;

function totalSetCredit() {
    return totalSetCredit
}

function getCredit(address arg1) {
    return credit[address(arg1)].field_0, credit[address(arg1)].field_128
}

function owner() {
    return owner
}

function totalReturnedCredit() {
    return totalReturnedCredit
}

function token() {
    return tokenAddress
}

function _fallback() payable {
  stop
}

function setOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function withdrawETH(address arg1, uint256 arg2) {
    require owner == msg.sender
    require arg1
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function withdrawToken(address arg1, uint256 arg2) {
    require owner == msg.sender
    require arg1
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
}

function setCredit(address arg1, uint256 arg2) {
    require owner == msg.sender
    totalSetCredit += arg2
    totalSetCredit = arg2 + totalSetCredit - credit[address(arg1)].field_0
    require arg2 == uint128(arg2)
    credit[address(arg1)].field_0 = uint128(arg2)
    require uint128(arg2) >= credit[address(arg1)].field_128
    emit onSetCredit(address(arg1), arg2);
}

function receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) {
    require tokenAddress == msg.sender
    require credit[address(arg1)].field_0 >= credit[address(arg1)].field_128
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    if arg2 <= uint128(credit[address(arg1)].field_0 - credit[address(arg1)].field_128):
        if arg2 <= ext_call.return_data[0]:
            require arg2 > 0
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining - 710 wei
                args address(arg1), address(this.address), arg2
            require ext_call.success
            require ext_call.return_data[0]
            require arg2 / 4025 > 0
            require arg2 == uint128(arg2)
            credit[address(arg1)].field_128 = uint128(arg2 + credit[address(arg1)].field_128)
            totalReturnedCredit += arg2
            call arg1 with:
               value arg2 / 4025 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit onReturned(address(arg1), arg2, arg2 / 4025);
        else:
            require ext_call.return_data[0] > 0
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining - 710 wei
                args address(arg1), address(this.address), ext_call.return_data[0]
            require ext_call.success
            require ext_call.return_data[0]
            require ext_call.return_data[0] / 4025 > 0
            require ext_call.return_data[0] == uint128(ext_call.return_data[0])
            credit[address(arg1)].field_128 = uint128(ext_call.return_data[0] + credit[address(arg1)].field_128)
            totalReturnedCredit += ext_call.return_data[0]
            call arg1 with:
               value ext_call.return_data[0] / 4025 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit onReturned(address(arg1), ext_call.return_data[0], ext_call.return_data[0] / 4025);
    else:
        if uint128(credit[address(arg1)].field_0 - credit[address(arg1)].field_128) <= ext_call.return_data[0]:
            require uint128(credit[address(arg1)].field_0 - credit[address(arg1)].field_128) > 0
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining - 710 wei
                args address(arg1), address(this.address), uint128(credit[address(arg1)].field_0 - credit[address(arg1)].field_128)
            require ext_call.success
            require ext_call.return_data[0]
            require uint128(credit[address(arg1)].field_0 - credit[address(arg1)].field_128) / 4025 > 0
            require uint128(credit[address(arg1)].field_0 - credit[address(arg1)].field_128) == uint128(credit[address(arg1)].field_0 - credit[address(arg1)].field_128)
            credit[address(arg1)].field_128 = uint128(uint128(credit[address(arg1)].field_0 - credit[address(arg1)].field_128) + credit[address(arg1)].field_128)
            totalReturnedCredit += uint128(credit[address(arg1)].field_0 - credit[address(arg1)].field_128)
            call arg1 with:
               value uint128(credit[address(arg1)].field_0 - credit[address(arg1)].field_128) / 4025 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit onReturned(address(arg1), credit[address(arg1)].field_0 - credit[address(arg1)].field_128 << 128, uint128(credit[address(arg1)].field_0 - credit[address(arg1)].field_128) / 4025);
        else:
            require ext_call.return_data[0] > 0
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining - 710 wei
                args address(arg1), address(this.address), ext_call.return_data[0]
            require ext_call.success
            require ext_call.return_data[0]
            require ext_call.return_data[0] / 4025 > 0
            require ext_call.return_data[0] == uint128(ext_call.return_data[0])
            credit[address(arg1)].field_128 = uint128(ext_call.return_data[0] + credit[address(arg1)].field_128)
            totalReturnedCredit += ext_call.return_data[0]
            call arg1 with:
               value ext_call.return_data[0] / 4025 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit onReturned(address(arg1), ext_call.return_data[0], ext_call.return_data[0] / 4025);
}



}

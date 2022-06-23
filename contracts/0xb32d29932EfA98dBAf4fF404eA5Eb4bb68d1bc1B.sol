contract main {




// =====================  Runtime code  =====================


uint8 stor0;
address erc20ContractAddress; offset 8
uint256 minimumAmount;
uint256 startTime;
uint256 sub_f01db8f7;

function closed() {
    return bool(stor0)
}

function startTime() {
    return startTime
}

function erc20Contract() {
    return erc20ContractAddress
}

function minimumAmount() {
    return minimumAmount
}

function sub_f01db8f7(?) {
    return sub_f01db8f7
}

function _fallback() payable {
    revert
}

function sub_7fc3ac1a(?) {
    return (sub_f01db8f7 - block.timestamp / 24 * 3600)
}

function close() {
    if stor0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'This BlackHole contract's active period has expired.'
    if block.timestamp < sub_f01db8f7:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BlackHole hasn't reached the critical mass'
    stor0 = 1
    emit Closed()
}

function teleport(string arg1) {
    if stor0:
        revert with 0, 'blackHole closed'
    require ext_code.size(erc20ContractAddress)
    call erc20ContractAddress.0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(erc20ContractAddress)
    call erc20ContractAddress.0xdd62ed3e with:
         gas gas_remaining wei
        args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < minimumAmount:
        revert with 0, 'less than minimum amount'
    if ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 'blackHole must attract all your tokens'
    require ext_code.size(erc20ContractAddress)
    call erc20ContractAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'blackHole can't attract your tokens'
    emit 0x57d19c46: ext_call.return_data[0], Array(len=arg1.length, data=arg1[all])
}



}

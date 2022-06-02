contract main {




// =====================  Runtime code  =====================


#
#  - sub_8a750df3(?)
#
address stor0;
address stor2;

function destroyContract() {
    require msg.sender == stor2
    selfdestruct(stor2)
}

function _fallback() payable {
  stop
}

function withdraw() {
    require msg.sender == stor2
    call stor2 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function storeGas(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == stor2
    require ext_code.size(0xb3f879cb30fe243b4dfee438691c04)
    call 0x0000000000b3f879cb30fe243b4dfee438691c04.mint(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function deltaWithdrawAllEth() {
    require msg.sender == stor2
    require ext_code.size(stor0)
    call stor0.balanceOf(address arg1, address arg2) with:
         gas gas_remaining wei
        args 0, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(stor0)
        call stor0.0x2e1a7d4d with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0]
}

function withdrawToken(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == stor2
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
        args stor2, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not arg2:
    else:
        require return_data.size >= 32
}

function deltaWithdrawAllTokens(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == stor2
    require ext_code.size(stor0)
    call stor0.balanceOf(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(arg1), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(stor0)
        call stor0.withdrawToken(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0]
}



}

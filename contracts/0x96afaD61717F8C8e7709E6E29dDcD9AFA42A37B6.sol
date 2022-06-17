contract main {




// =====================  Runtime code  =====================


address stor10;
address stor11;
mapping of uint256 stor1000;

function _fallback() payable {
    revert
}

function sub_0cfbfcde(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(stor10)
    staticcall stor10.'!Dn{' with:
            gas gas_remaining wei
           args call.func_hash, msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Declined by Permission Module.'
    require ext_code.size(stor11)
    staticcall stor11.0xcb43067b with:
            gas gas_remaining wei
           args 0, 0, address(arg2), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Transfer was declined.'
    if not arg2:
        revert with 0, 'Invalid recipient address.'
    if arg3 <= 0:
        revert with 0, 'Invalid number of the tokens.'
    if stor3E8[address(arg1)] < arg3:
        revert with 0, 'Insufficiency funds on the balance.'
    require stor3E8[address(arg2)] + arg3 >= stor3E8[address(arg2)]
    stor3E8[address(arg1)] -= arg3
    stor3E8[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    emit 0x4145fe9a: arg3, arg1, arg2
}



}

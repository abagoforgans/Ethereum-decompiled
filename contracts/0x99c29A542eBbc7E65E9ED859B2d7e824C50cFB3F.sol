contract main {




// =====================  Runtime code  =====================


uint256 stor3;
address stor10;
mapping of uint256 stor1000;

function _fallback() payable {
    revert
}

function mint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(stor10)
    staticcall stor10.'!Dn{' with:
            gas gas_remaining wei
           args call.func_hash, msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Declined by Permission Module.'
    require stor3 + arg2 >= stor3
    stor3E8[address(arg1)] += arg2
    stor3 += arg2
    emit Transfer(arg2, 0, arg1);
    emit Mint(arg2, arg1);
}



}

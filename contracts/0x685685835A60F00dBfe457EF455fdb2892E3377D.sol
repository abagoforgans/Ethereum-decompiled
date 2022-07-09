contract main {




// =====================  Runtime code  =====================


address stor0;

function changeHolder(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == stor0
    stor0 = arg1
}

function _fallback() payable {
    if msg.value <= 0:
        revert with 0, 'Zero txs not allowed'
    emit Tx(eth.balance(this.address));
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}

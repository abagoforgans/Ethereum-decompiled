contract main {




// =====================  Runtime code  =====================


address stor1;
address stor2;
mapping of uint256 balances;

function balances(address arg1) {
    return balances[arg1]
}

function _fallback() payable {
    require msg.value > 0
    call stor1 with:
       value 99 * msg.value / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit EthValueLog(stor1, 99 * msg.value / 100, block.timestamp);
    call stor2 with:
       value msg.value / 100 wei
         gas 2300 * is_zero(value) wei
    emit EthValueLog(stor2, msg.value / 100, block.timestamp);
}



}

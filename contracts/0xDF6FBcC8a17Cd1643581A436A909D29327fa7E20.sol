contract main {




// =====================  Runtime code  =====================


address netAddress;
address otherAddress;
uint256 stor2;
uint256 stor3;
uint256 stor4;

function otherAddress() {
    return otherAddress
}

function netAddress() {
    return netAddress
}

function _fallback() payable {
    require msg.value > 0
    if not msg.value:
        require stor4
        call netAddress with:
           value 0 / stor4 wei
             gas 2300 * is_zero(value) wei
    else:
        require stor2 * msg.value / msg.value == stor2
        require stor4
        call netAddress with:
           value stor2 * msg.value / stor4 wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not msg.value:
        require stor4
        call otherAddress with:
           value 0 / stor4 wei
             gas 2300 * is_zero(value) wei
    else:
        require stor3 * msg.value / msg.value == stor3
        require stor4
        call otherAddress with:
           value stor3 * msg.value / stor4 wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}

contract main {




// =====================  Runtime code  =====================


mapping of uint256 stor0;

function _fallback() payable {
    revert
}

function withdraw() {
    call msg.sender with:
       value stor0[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
        stor0[address(msg.sender)] = 0
}



}

contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 lastBlock;

function lastBlock() {
    return lastBlock
}

function _fallback() payable {
    revert
}

function LetsGo() payable {
    require block.number > lastBlock
    lastBlock = block.number
    require ext_code.size(stor0)
    call stor0.0xfeba894c with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}

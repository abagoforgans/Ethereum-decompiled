contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    require not msg.value
    return code.data[57 len 541]
}



// =====================  Runtime code  =====================


address _owner;

function _owner() {
    return _owner
}

function _fallback() payable {
    revert
}

function transferAllTokens(address arg1, address arg2) {
    if _owner != msg.sender:
        return 0
    require ext_code.size(arg1)
    call arg1.balanceOf(address rg1) with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if ext_call.return_data[0] <= 0:
        return 0
    if arg2 == this.address:
        return 0
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg2), ext_call.return_data[0]
    require ext_call.success
    return bool(ext_call.return_data[0])
}



}

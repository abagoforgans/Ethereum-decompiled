contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function transferToken(address arg1, address arg2) {
    if stor0 != msg.sender:
        revert with 0, 'only for admin'
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(arg1)
        call arg1.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}

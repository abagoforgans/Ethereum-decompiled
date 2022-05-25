contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function generate(address arg1, address arg2, uint256 arg3) {
    require msg.sender == 0x877bf08ed5b4deed06305e77b2fd1d6df08ed6de
    create contract with 0 wei
                    code: code.data[608 len 1523]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).init(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return address(create.new_address)
}



}

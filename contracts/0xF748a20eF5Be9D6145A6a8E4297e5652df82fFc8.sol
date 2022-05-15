contract main {




// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
}

function _fallback() payable {
  stop
}

function transferEther(address arg1, uint256 arg2) {
    require owner == msg.sender
    call arg1 with:
       value arg2 wei
         gas gas_remaining wei
    return bool(ext_call.success)
}

function transferERC20Token(address arg1, address arg2, uint256 arg3) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}



}

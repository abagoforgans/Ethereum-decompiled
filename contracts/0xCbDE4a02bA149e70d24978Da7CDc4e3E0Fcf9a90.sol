contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_14fd4ccb(?) {
    require ext_code.size(arg1)
    call arg1.0xd87574e0 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= 17 * 10^17
    call arg2 with:
       funct Mask(32, 224, sha3('run(address,uint256,uint256)')) >> 224
         gas gas_remaining wei
        args address(arg1), 10^17, 1
}



}

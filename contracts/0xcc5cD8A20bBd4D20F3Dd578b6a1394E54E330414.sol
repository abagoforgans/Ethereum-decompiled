contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function run(address arg1) {
    require ext_code.size(arg1)
    call arg1.update(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3('DinhTuan8(')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}

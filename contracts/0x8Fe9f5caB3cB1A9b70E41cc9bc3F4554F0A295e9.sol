contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_f5cd91f2(?) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require msg.value == 1
    require ext_code.size(arg1)
    staticcall arg1.getReturnByPath(address[] arg1, uint256 arg2) with:
            gas gas_remaining wei
           args Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)]), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}



}

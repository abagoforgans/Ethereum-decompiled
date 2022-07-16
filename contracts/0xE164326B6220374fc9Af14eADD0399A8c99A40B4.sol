contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function multisend(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg2.length == arg1.length
    idx = 0
    while arg1.length > uint64(idx):
        require uint64(idx) < arg1.length
        require uint64(idx) < arg2.length
        call address(cd[((32 * uint64(idx)) + arg1 + 36)]) with:
           value cd[((32 * uint64(idx)) + arg2 + 36)] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}



}

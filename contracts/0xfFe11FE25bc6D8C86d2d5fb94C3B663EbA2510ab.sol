contract main {




// =====================  Runtime code  =====================


uint256 res;

function res() {
    return res
}

function _fallback() payable {
    revert
}

function sub_0d477cf5(?) {
    idx = 0
    while idx < arg1:
        res += block.timestamp
        idx = idx + 1
        continue 
    return 0
}

function sub_27055835(?) {
    require ext_code.size(0xdd9fd6b6f8f7ea932997992bbe67eabb3e316f3c)
    call 0xdd9fd6b6f8f7ea932997992bbe67eabb3e316f3c.getCurrentRoundInfo() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 416
    if ext_call.return_data[96] >= block.timestamp:
        if ext_call.return_data[96] - block.timestamp <= arg1:
            idx = 0
            while idx < 99999:
                res += block.timestamp
                idx = idx + 1
                continue 
}



}

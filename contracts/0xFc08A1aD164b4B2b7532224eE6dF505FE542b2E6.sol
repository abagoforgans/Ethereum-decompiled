contract main {




// =====================  Runtime code  =====================


address owner;
uint8 sub_8faaf90f; offset 160
uint8 receiversCount; offset 168
address tokenAddress;

function receiversCount() {
    return receiversCount
}

function owner() {
    return owner
}

function sub_8faaf90f(?) {
    return sub_8faaf90f
}

function receivers(uint256 arg1) {
    require arg1 < 250
    return stor[arg1]
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function setRewardToken(address arg1) {
    require msg.sender == owner
    tokenAddress = arg1
}

function withdraw(uint256 arg1) {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_20e96ddf(?) {
    idx = 0
    while uint8(idx) < arg1:
        if receiversCount < sub_8faaf90f:
            require receiversCount < 250
            mem[100] = stor251
            mem[132] = 2 * 10^6
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args stor251, 2 * 10^6
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            receiversCount = uint8(receiversCount + 1)
        idx = idx + 1
        continue 
}



}

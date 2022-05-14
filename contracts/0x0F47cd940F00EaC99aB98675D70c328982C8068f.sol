contract main {




// =====================  Runtime code  =====================


const currentTime = block.timestamp


address tokenAddress;
address beneficiaryAddress;
uint256 releaseTime;
bool stor3; offset 255
uint256 stor3;
uint256 previousWithdrawal;
uint256 year;

function beneficiary() {
    return beneficiaryAddress
}

function previousWithdrawal() {
    return previousWithdrawal
}

function releaseTime() {
    return releaseTime
}

function year() {
    return year
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function balanceOf() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function release() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    if previousWithdrawal:
        if block.timestamp >= releaseTime:
            previousWithdrawal = ext_call.return_data[0]
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args beneficiaryAddress, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
    else:
        uint255(stor3.field_0) = ext_call.return_data[0] / 2
        bool(stor3.field_255) = 0
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args beneficiaryAddress, ext_call.return_data[0] / 2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
    revert
}



}

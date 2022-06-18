contract main {




// =====================  Runtime code  =====================


address tokenAddress;
array of address beneficiaries;
array of uint256 tokenValues;
uint256 releaseTime;
uint8 stor4;

function tokenValues(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < tokenValues.length
    return tokenValues[arg1]
}

function releaseTime() {
    return releaseTime
}

function beneficiaries(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < beneficiaries.length
    return beneficiaries[arg1]
}

function distributed() {
    return bool(stor4)
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function getTimeLeft() {
    if releaseTime <= block.timestamp:
        return 0
    return (releaseTime - block.timestamp)
}

function release() {
    require block.timestamp >= releaseTime
    require not stor4
    idx = 0
    while idx < beneficiaries.length:
        require idx < tokenValues.length
        mem[0] = 2
        require tokenValues[idx] > 0
        mem[100] = beneficiaries[idx]
        mem[132] = tokenValues[idx]
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args beneficiaries[idx], tokenValues[idx]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        idx = idx + 1
        continue 
    stor4 = 1
}



}

contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;
uint256 totalToken;
uint256 startingTime;
uint256 nStages;
uint256 period;
uint256 vestInterval;
address beneficiaryAddress;

function nStages() {
    return nStages
}

function beneficiary() {
    return beneficiaryAddress
}

function startingTime() {
    return startingTime
}

function totalToken() {
    return totalToken
}

function owner() {
    return owner
}

function period() {
    return period
}

function vestInterval() {
    return vestInterval
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function initialize(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6) {
    require msg.sender == owner
    require not tokenAddress
    tokenAddress = arg1
    startingTime = arg2
    nStages = arg3
    period = arg4
    vestInterval = arg5
    beneficiaryAddress = arg6
    require ext_code.size(tokenAddress)
    call tokenAddress.0xdd62ed3e with:
         gas gas_remaining wei
        args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    totalToken = ext_call.return_data[0]
}

function claim() {
    require msg.sender == beneficiaryAddress
    require nStages
    require block.timestamp - startingTime / 720 * 24 * 3600 >= period / nStages
    if not totalToken:
        require period
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] - (0 / period) > 0
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args beneficiaryAddress, ext_call.return_data[0] - (0 / period)
    else:
        require totalToken
        require totalToken * block.timestamp - startingTime / 720 * 24 * 3600 / totalToken == block.timestamp - startingTime / 720 * 24 * 3600
        require period
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] - (totalToken * block.timestamp - startingTime / 720 * 24 * 3600 / period) > 0
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args beneficiaryAddress, ext_call.return_data[0] - (totalToken * block.timestamp - startingTime / 720 * 24 * 3600 / period)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}

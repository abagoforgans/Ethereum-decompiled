contract main {




// =====================  Runtime code  =====================


address owner;
address beneficiaryAddress;
uint256 startFrom;
uint256 period;
uint256 tokensReleasedPerPeriod;
uint256 elapsedPeriods;
address tokenAddress;

function tokensReleasedPerPeriod() {
    return tokensReleasedPerPeriod
}

function startFrom() {
    return startFrom
}

function getToken() {
    return tokenAddress
}

function beneficiary() {
    return beneficiaryAddress
}

function elapsedPeriods() {
    return elapsedPeriods
}

function owner() {
    return owner
}

function period() {
    return period
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function release() {
    if owner != msg.sender:
        require msg.sender == beneficiaryAddress
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= 0
    require block.timestamp >= startFrom
    require startFrom <= block.timestamp
    require period
    require elapsedPeriods <= block.timestamp - startFrom / period
    if not (block.timestamp - startFrom / period) - elapsedPeriods:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0 > ext_call.return_data[0]
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] > 0
        require block.timestamp - startFrom / period >= elapsedPeriods
        elapsedPeriods = block.timestamp - startFrom / period
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args beneficiaryAddress, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit Released(ext_call.return_data[0]);
    else:
        require (block.timestamp - startFrom / period * tokensReleasedPerPeriod) - (elapsedPeriods * tokensReleasedPerPeriod) / (block.timestamp - startFrom / period) - elapsedPeriods == tokensReleasedPerPeriod
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (block.timestamp - startFrom / period * tokensReleasedPerPeriod) - (elapsedPeriods * tokensReleasedPerPeriod) <= ext_call.return_data[0]:
            require (block.timestamp - startFrom / period * tokensReleasedPerPeriod) - (elapsedPeriods * tokensReleasedPerPeriod) > 0
            require block.timestamp - startFrom / period >= elapsedPeriods
            elapsedPeriods = block.timestamp - startFrom / period
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args beneficiaryAddress, (block.timestamp - startFrom / period * tokensReleasedPerPeriod) - (elapsedPeriods * tokensReleasedPerPeriod)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit Released(((block.timestamp - startFrom / period * tokensReleasedPerPeriod) - (elapsedPeriods * tokensReleasedPerPeriod)));
        else:
            require ext_code.size(tokenAddress)
            call tokenAddress.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] > 0
            require block.timestamp - startFrom / period >= elapsedPeriods
            elapsedPeriods = block.timestamp - startFrom / period
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args beneficiaryAddress, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit Released(ext_call.return_data[0]);
}



}

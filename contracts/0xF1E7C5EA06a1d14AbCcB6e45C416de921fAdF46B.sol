contract main {




// =====================  Runtime code  =====================


address dreamTokenAddress;
address withdrawalAddress;
array of uint256 stor2;
array of uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 initialTokensBalance;
uint256 tokensSent;
uint256 vestingStartUnixTimestamp;
address deployerAddress;

function tokensSent() {
    return tokensSent
}

function initialTokensBalance() {
    return initialTokensBalance
}

function dreamToken() {
    return dreamTokenAddress
}

function deployer() {
    return deployerAddress
}

function withdrawalAddress() {
    return withdrawalAddress
}

function vestingStartUnixTimestamp() {
    return vestingStartUnixTimestamp
}

function _fallback() {
    require withdrawalAddress
    idx = 0
    s = 0
    while uint8(idx) < 2:
        if block.timestamp < stor2[2 * uint8(idx)]:
            idx = idx + 1
            s = s
            continue 
        require uint8(idx) < 2
        idx = idx + 1
        s = stor3[2 * uint8(idx)]
        continue 
    if s < 100:
        if not initialTokensBalance:
            require tokensSent <= 0
            if -tokensSent:
                require 0 >= tokensSent
                tokensSent = 0
                require ext_code.size(dreamTokenAddress)
                call dreamTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args withdrawalAddress, -tokensSent
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit Withdraw(-tokensSent, block.timestamp);
        else:
            require s * initialTokensBalance / initialTokensBalance == s
            require tokensSent <= s * initialTokensBalance / 100
            if (s * initialTokensBalance / 100) - tokensSent:
                require s * initialTokensBalance / 100 >= tokensSent
                tokensSent = s * initialTokensBalance / 100
                require ext_code.size(dreamTokenAddress)
                call dreamTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args withdrawalAddress, (s * initialTokensBalance / 100) - tokensSent
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit Withdraw((s * initialTokensBalance / 100) - tokensSent, block.timestamp);
    else:
        require ext_code.size(dreamTokenAddress)
        call dreamTokenAddress.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_call.return_data[0] + tokensSent >= tokensSent
            tokensSent += ext_call.return_data[0]
            require ext_code.size(dreamTokenAddress)
            call dreamTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args withdrawalAddress, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit Withdraw(ext_call.return_data[0], block.timestamp);
    require ext_code.size(dreamTokenAddress)
    call dreamTokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
    selfdestruct(withdrawalAddress)
}

function stages(uint256 arg1) {
    require arg1 < 2
    return stor2[arg1], stor3[arg1]
}

function initializeVestingFor(address arg1) {
    require msg.sender == deployerAddress
    require not withdrawalAddress
    require ext_code.size(dreamTokenAddress)
    call dreamTokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    initialTokensBalance = ext_call.return_data[0]
    require ext_call.return_data[0]
    withdrawalAddress = arg1
    vestingStartUnixTimestamp = block.timestamp
    stor2.length = vestingStartUnixTimestamp + (4392 * 24 * 3600)
    stor4 = vestingStartUnixTimestamp + (8784 * 24 * 3600)
    stor3.length = 50
    stor5 = 100
}

function getAvailableTokensToWithdraw() {
    idx = 0
    s = 0
    while uint8(idx) < 2:
        if block.timestamp < stor2[2 * uint8(idx)]:
            idx = idx + 1
            s = s
            continue 
        require uint8(idx) < 2
        idx = idx + 1
        s = stor3[2 * uint8(idx)]
        continue 
    if s < 100:
        if not initialTokensBalance:
            require tokensSent <= 0
            return -tokensSent
        require s * initialTokensBalance / initialTokensBalance == s
        require tokensSent <= s * initialTokensBalance / 100
        return ((s * initialTokensBalance / 100) - tokensSent)
    require ext_code.size(dreamTokenAddress)
    call dreamTokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}



}

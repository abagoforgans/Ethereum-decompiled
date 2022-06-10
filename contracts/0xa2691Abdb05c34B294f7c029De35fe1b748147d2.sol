contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;
array of address beneficiaries;
uint256 sub_bd25f3a7;
uint256 sub_ba493d52;

function owner() {
    return owner
}

function getBeneficiaryCount() {
    return beneficiaries.length
}

function sub_ba493d52(?) {
    return sub_ba493d52
}

function sub_bd25f3a7(?) {
    return sub_bd25f3a7
}

function beneficiaries(uint256 arg1) {
    require arg1 < beneficiaries.length
    return beneficiaries[arg1]
}

function token() {
    return tokenAddress
}

function destruct(address arg1) {
    require msg.sender == owner
    selfdestruct(arg1)
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function sub_84b0d470(?) {
    require msg.sender == owner
    require arg1
    sub_bd25f3a7 = arg1
}

function setToken(address arg1) {
    require msg.sender == owner
    require arg1
    tokenAddress = arg1
}

function setBeneficiary(uint256 arg1, address arg2) {
    require msg.sender == owner
    require arg1 < beneficiaries.length
    beneficiaries[arg1] = arg2
}

function claimTokens(address arg1) {
    require msg.sender == owner
    if not arg1:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function release() {
    require beneficiaries.length
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] + sub_ba493d52 >= ext_call.return_data[0]
    require sub_bd25f3a7 + (4392 * 24 * 3600) >= sub_bd25f3a7
    require sub_bd25f3a7 + (8760 * 24 * 3600) >= sub_bd25f3a7
    require block.timestamp >= sub_bd25f3a7 + (4392 * 24 * 3600)
    if block.timestamp < sub_bd25f3a7 + (8760 * 24 * 3600):
        if ext_call.return_data[0] + sub_ba493d52:
            require ext_call.return_data[0] + sub_ba493d52
            require (50 * ext_call.return_data[0]) + (50 * sub_ba493d52) / ext_call.return_data[0] + sub_ba493d52 == 50
        require sub_ba493d52 <= (50 * ext_call.return_data[0]) + (50 * sub_ba493d52) / 100
        require ((50 * ext_call.return_data[0]) + (50 * sub_ba493d52) / 100) - sub_ba493d52 > 0
        require (50 * ext_call.return_data[0]) + (50 * sub_ba493d52) / 100 >= sub_ba493d52
        sub_ba493d52 = (50 * ext_call.return_data[0]) + (50 * sub_ba493d52) / 100
        require beneficiaries.length
        idx = 0
        while idx < beneficiaries.length:
            mem[0] = 2
            mem[100] = beneficiaries[idx]
            mem[132] = ((50 * ext_call.return_data[0]) + (50 * sub_ba493d52) / 100) - sub_ba493d52 / beneficiaries.length
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args beneficiaries[idx], ((50 * ext_call.return_data[0]) + (50 * sub_ba493d52) / 100) - sub_ba493d52 / beneficiaries.length
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            idx = idx + 1
            continue 
    else:
        if ext_call.return_data[0] + sub_ba493d52:
            require ext_call.return_data[0] + sub_ba493d52
            require (100 * ext_call.return_data[0]) + (100 * sub_ba493d52) / ext_call.return_data[0] + sub_ba493d52 == 100
        require sub_ba493d52 <= (100 * ext_call.return_data[0]) + (100 * sub_ba493d52) / 100
        require ((100 * ext_call.return_data[0]) + (100 * sub_ba493d52) / 100) - sub_ba493d52 > 0
        require (100 * ext_call.return_data[0]) + (100 * sub_ba493d52) / 100 >= sub_ba493d52
        sub_ba493d52 = (100 * ext_call.return_data[0]) + (100 * sub_ba493d52) / 100
        require beneficiaries.length
        idx = 0
        while idx < beneficiaries.length:
            mem[0] = 2
            mem[100] = beneficiaries[idx]
            mem[132] = ((100 * ext_call.return_data[0]) + (100 * sub_ba493d52) / 100) - sub_ba493d52 / beneficiaries.length
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args beneficiaries[idx], ((100 * ext_call.return_data[0]) + (100 * sub_ba493d52) / 100) - sub_ba493d52 / beneficiaries.length
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            idx = idx + 1
            continue 
}



}

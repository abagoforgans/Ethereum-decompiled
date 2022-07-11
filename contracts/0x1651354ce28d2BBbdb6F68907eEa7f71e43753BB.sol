contract main {




// =====================  Runtime code  =====================


address controllerAddress;
address tokenAddress;
array of address beneficiaries;
uint256 sub_bd25f3a7;
uint256 sub_ba493d52;

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

function controller() {
    return controllerAddress
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function sub_84b0d470(?) {
    require msg.sender == controllerAddress
    require arg1
    sub_bd25f3a7 = arg1
}

function changeController(address arg1) {
    require msg.sender == controllerAddress
    controllerAddress = arg1
}

function setToken(address arg1) {
    require msg.sender == controllerAddress
    require arg1
    tokenAddress = arg1
}

function setBeneficiary(uint256 arg1, address arg2) {
    require msg.sender == controllerAddress
    require arg1 < beneficiaries.length
    beneficiaries[arg1] = arg2
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
    require sub_bd25f3a7 + (6552 * 24 * 3600) >= sub_bd25f3a7
    require sub_bd25f3a7 + (8760 * 24 * 3600) >= sub_bd25f3a7
    require sub_bd25f3a7 + (10944 * 24 * 3600) >= sub_bd25f3a7
    require block.timestamp >= sub_bd25f3a7 + (4392 * 24 * 3600)
    if block.timestamp < sub_bd25f3a7 + (6552 * 24 * 3600):
        if ext_call.return_data[0] + sub_ba493d52:
            require ext_call.return_data[0] + sub_ba493d52
            require (25 * ext_call.return_data[0]) + (25 * sub_ba493d52) / ext_call.return_data[0] + sub_ba493d52 == 25
        require sub_ba493d52 <= (25 * ext_call.return_data[0]) + (25 * sub_ba493d52) / 100
        require ((25 * ext_call.return_data[0]) + (25 * sub_ba493d52) / 100) - sub_ba493d52 > 0
        require (25 * ext_call.return_data[0]) + (25 * sub_ba493d52) / 100 >= sub_ba493d52
        sub_ba493d52 = (25 * ext_call.return_data[0]) + (25 * sub_ba493d52) / 100
        require beneficiaries.length
        idx = 0
        while idx < beneficiaries.length:
            mem[0] = 2
            mem[100] = beneficiaries[idx]
            mem[132] = ((25 * ext_call.return_data[0]) + (25 * sub_ba493d52) / 100) - sub_ba493d52 / beneficiaries.length
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args beneficiaries[idx], ((25 * ext_call.return_data[0]) + (25 * sub_ba493d52) / 100) - sub_ba493d52 / beneficiaries.length
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            idx = idx + 1
            continue 
    else:
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
            if block.timestamp < sub_bd25f3a7 + (10944 * 24 * 3600):
                if ext_call.return_data[0] + sub_ba493d52:
                    require ext_call.return_data[0] + sub_ba493d52
                    require (75 * ext_call.return_data[0]) + (75 * sub_ba493d52) / ext_call.return_data[0] + sub_ba493d52 == 75
                require sub_ba493d52 <= (75 * ext_call.return_data[0]) + (75 * sub_ba493d52) / 100
                require ((75 * ext_call.return_data[0]) + (75 * sub_ba493d52) / 100) - sub_ba493d52 > 0
                require (75 * ext_call.return_data[0]) + (75 * sub_ba493d52) / 100 >= sub_ba493d52
                sub_ba493d52 = (75 * ext_call.return_data[0]) + (75 * sub_ba493d52) / 100
                require beneficiaries.length
                idx = 0
                while idx < beneficiaries.length:
                    mem[0] = 2
                    mem[100] = beneficiaries[idx]
                    mem[132] = ((75 * ext_call.return_data[0]) + (75 * sub_ba493d52) / 100) - sub_ba493d52 / beneficiaries.length
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args beneficiaries[idx], ((75 * ext_call.return_data[0]) + (75 * sub_ba493d52) / 100) - sub_ba493d52 / beneficiaries.length
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

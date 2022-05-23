contract main {




// =====================  Runtime code  =====================


address tokenAddress;
address multisigAddress;
uint256 ethToTokenRate;
array of struct payees;
array of address admins;
uint256 tokenMultiplier;
uint256 ethToWei;

function admins(uint256 arg1) {
    require arg1 < admins.length
    return admins[arg1]
}

function multisig() {
    return multisigAddress
}

function payees(uint256 arg1) {
    require arg1 < payees.length
    return payees[arg1].field_0, payees[arg1].field_256, bool(payees[arg1].field_512)
}

function tokenMultiplier() {
    return tokenMultiplier
}

function ethToTokenRate() {
    return ethToTokenRate
}

function ethToWei() {
    return ethToWei
}

function token() {
    return tokenAddress
}

function abort() {
    idx = 0
    s = 0
    while uint8(idx) < admins.length:
        mem[0] = 4
        if admins[uint8(idx)] != msg.sender:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1 or s
        continue 
    require uint8(s) == 1
    idx = 0
    s = 0
    while uint8(idx) < admins.length:
        mem[0] = 4
        if admins[uint8(idx)] != msg.sender:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1 or s
        continue 
    require uint8(s) == 1
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args multisigAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    call multisigAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    selfdestruct(multisigAddress)
}

function _fallback() payable {
    revert
}

function tokensDue(uint256 arg1) {
    require ethToWei
    return (arg1 * ethToTokenRate / ethToWei)
}

function changeToken(address arg1) {
    idx = 0
    s = 0
    while uint8(idx) < admins.length:
        mem[0] = 4
        if admins[uint8(idx)] != msg.sender:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1 or s
        continue 
    require uint8(s) == 1
    tokenAddress = arg1
}

function returnToSender() {
    idx = 0
    s = 0
    while uint8(idx) < admins.length:
        mem[0] = 4
        if admins[uint8(idx)] != msg.sender:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1 or s
        continue 
    require uint8(s) == 1
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args multisigAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    call multisigAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return 1
}

function validate() {
    idx = 0
    s = 0
    while idx < payees.length:
        mem[0] = 3
        if payees[idx].field_512:
            idx = idx + 1
            s = s
            continue 
        require idx < payees.length
        mem[0] = 3
        require ethToWei
        idx = idx + 1
        s = s + (payees[idx].field_256 * ethToTokenRate / ethToWei * tokenMultiplier)
        continue 
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args multisigAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= s:
        require ext_code.size(tokenAddress)
        call tokenAddress.0xdd62ed3e with:
             gas gas_remaining wei
            args multisigAddress, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    return ext_call.return_data[0] >= s
}

function withdrawAll() {
    idx = 0
    s = 0
    while uint8(idx) < admins.length:
        mem[0] = 4
        if admins[uint8(idx)] != msg.sender:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1 or s
        continue 
    require uint8(s) == 1
    idx = 0
    s = 0
    while idx < payees.length:
        mem[0] = 3
        if payees[idx].field_512:
            idx = idx + 1
            s = s
            continue 
        require idx < payees.length
        mem[0] = 3
        require ethToWei
        idx = idx + 1
        s = s + (payees[idx].field_256 * ethToTokenRate / ethToWei * tokenMultiplier)
        continue 
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args multisigAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= s
    require ext_code.size(tokenAddress)
    call tokenAddress.0xdd62ed3e with:
         gas gas_remaining wei
        args multisigAddress, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= s
    idx = 0
    while idx < payees.length:
        mem[0] = 3
        if not payees[idx].field_512:
            if gas_remaining > 150000:
                require idx < payees.length
                require ethToWei
                mem[100] = multisigAddress
                mem[132] = payees[idx].field_0
                mem[164] = payees[idx].field_256 * ethToTokenRate / ethToWei * tokenMultiplier
                require ext_code.size(tokenAddress)
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args multisigAddress, payees[idx].field_0, payees[idx].field_256 * ethToTokenRate / ethToWei * tokenMultiplier
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require idx < payees.length
                mem[0] = 3
                payees[idx].field_512 = 1
        idx = idx + 1
        continue 
}



}

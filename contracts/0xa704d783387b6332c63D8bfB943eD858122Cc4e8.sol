contract main {


// =======================  Init code  ======================


#
#  - _fallback()
#


// =====================  Runtime code  =====================


address tokenAddress;
uint256 ethToTokenRate;
address multisigAddress;
uint256 withhold;
array of struct payees;
array of address admins;
uint256 tokenMultiplier;
uint256 ethToWei;
uint8 stor8;

function admins(uint256 arg1) {
    require arg1 < admins.length
    return admins[arg1]
}

function withdrawalDeployed() {
    return bool(stor8)
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

function withhold() {
    return withhold
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
        mem[0] = 5
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
        mem[0] = 5
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
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args multisigAddress, ext_call.return_data[0]
    require ext_call.success
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
        mem[0] = 5
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

function validate() {
    idx = 0
    s = 0
    while idx < payees.length:
        mem[0] = 4
        if payees[idx].field_512:
            idx = idx + 1
            s = s
            continue 
        require idx < payees.length
        mem[0] = 4
        require ethToWei
        idx = idx + 1
        s = s + (payees[idx].field_256 * ethToTokenRate / ethToWei * tokenMultiplier)
        continue 
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args multisigAddress
    require ext_call.success
    if ext_call.return_data[0] >= s:
        require ext_code.size(tokenAddress)
        call tokenAddress.0xdd62ed3e with:
             gas gas_remaining - 710 wei
            args multisigAddress, this.address
        require ext_call.success
    return ext_call.return_data[0] >= s
}

function returnToSender() {
    idx = 0
    s = 0
    while uint8(idx) < admins.length:
        mem[0] = 5
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
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args multisigAddress, ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
    call multisigAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return 1
}

function withdrawAll() {
    idx = 0
    s = 0
    while uint8(idx) < admins.length:
        mem[0] = 5
        if admins[uint8(idx)] != msg.sender:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1 or s
        continue 
    require uint8(s) == 1
    require not stor8
    idx = 0
    s = 0
    while idx < payees.length:
        mem[0] = 4
        if payees[idx].field_512:
            idx = idx + 1
            s = s
            continue 
        require idx < payees.length
        mem[0] = 4
        require ethToWei
        idx = idx + 1
        s = s + (payees[idx].field_256 * ethToTokenRate / ethToWei * tokenMultiplier)
        continue 
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args multisigAddress
    require ext_call.success
    require ext_call.return_data[0] >= s
    require ext_code.size(tokenAddress)
    call tokenAddress.0xdd62ed3e with:
         gas gas_remaining - 710 wei
        args multisigAddress, this.address
    require ext_call.success
    require ext_call.return_data[0] >= s
    stor8 = 1
    s = 0
    idx = 0
    while idx < payees.length:
        mem[0] = 4
        if payees[idx].field_512:
            s = s
            idx = idx + 1
            continue 
        require idx < payees.length
        mem[0] = 4
        require ethToWei
        if payees[idx].field_256 * ethToTokenRate / ethToWei < withhold:
            s = s
            idx = idx + 1
            continue 
        require idx < payees.length
        require ethToWei
        require idx < payees.length
        mem[100] = multisigAddress
        mem[132] = payees[idx].field_0
        mem[164] = (payees[idx].field_256 * ethToTokenRate / ethToWei * tokenMultiplier) - (withhold * tokenMultiplier)
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining - 710 wei
            args multisigAddress, payees[idx].field_0, (payees[idx].field_256 * ethToTokenRate / ethToWei * tokenMultiplier) - (withhold * tokenMultiplier)
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
        require idx < payees.length
        mem[0] = 4
        payees[idx].field_512 = 1
        s = (payees[idx].field_256 * ethToTokenRate / ethToWei) - withhold
        idx = idx + 1
        continue 
}



}

contract main {




// =====================  Runtime code  =====================


address staffContractAddress;
address crowdsaleAddress;
mapping of struct promoCodes;

function promoCodes(bytes32 arg1) {
    return promoCodes[arg1].field_0, promoCodes[arg1].field_256, promoCodes[arg1].field_512
}

function crowdsale() {
    return crowdsaleAddress
}

function staffContract() {
    return staffContractAddress
}

function _fallback() payable {
    revert
}

function calculateBonusAmount(address arg1, uint256 arg2, bytes32 arg3) {
    if promoCodes[arg3].field_0:
        if not promoCodes[arg3][3][address(arg1)].field_0:
            if promoCodes[arg3].field_256 != promoCodes[arg3].field_512:
                return (arg2 * promoCodes[arg3].field_0 / 100)
            else:
                return 0
        else:
            return 0
    else:
        return 0
}

function applyBonusAmount(address arg1, uint256 arg2, bytes32 arg3) {
    require msg.sender == crowdsaleAddress
    if not promoCodes[arg3].field_0:
        return 0
    if promoCodes[arg3][3][address(arg1)].field_0:
        return 0
    if promoCodes[arg3].field_256 == promoCodes[arg3].field_512:
        return 0
    promoCodes[arg3][3][address(arg1)].field_0 = 1
    promoCodes[arg3].field_256++
    emit PromoCodeUsed(address(arg1), block.timestamp, arg3);
    return (arg2 * promoCodes[arg3].field_0 / 100)
}

function setCrowdsale(address arg1) {
    require ext_code.size(staffContractAddress)
    call staffContractAddress.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require not crowdsaleAddress
    require ext_code.size(arg1)
    call arg1.0xfc28bc8f with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == staffContractAddress
    crowdsaleAddress = arg1
}

function removePromoCode(bytes32 arg1) {
    require ext_code.size(staffContractAddress)
    call staffContractAddress.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(staffContractAddress)
        call staffContractAddress.isStaff(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    promoCodes[arg1].field_0 = 0
    promoCodes[arg1].field_256 = 0
    promoCodes[arg1].field_512 = 0
    emit PromoCodeRemoved(block.timestamp, msg.sender, arg1);
}

function addPromoCode(string arg1, bytes32 arg2, uint256 arg3, uint8 arg4) {
    require ext_code.size(staffContractAddress)
    call staffContractAddress.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        require return_data.size >= 32
        if msg.sender == ext_call.return_data[12 len 20]:
            require arg1.length <= 0
            revert
        else:
            require ext_code.size(staffContractAddress)
            call staffContractAddress.isStaff(address arg1) with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                require return_data.size >= 32
                require ext_call.return_data[0]
                require arg1.length <= 0
                revert
}



}

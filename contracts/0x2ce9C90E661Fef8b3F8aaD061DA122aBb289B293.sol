contract main {




// =====================  Runtime code  =====================


address staffContractAddress;
array of struct discountPhases;

function discountPhases(uint256 arg1) {
    require arg1 < discountPhases.length
    return discountPhases[arg1].field_0, discountPhases[arg1].field_256, discountPhases[arg1].field_512
}

function staffContract() {
    return staffContractAddress
}

function _fallback() payable {
    revert
}

function calculateBonusAmount(uint256 arg1) {
    idx = 0
    while idx < discountPhases.length:
        mem[0] = 1
        if block.timestamp < discountPhases[idx].field_256:
            idx = idx + 1
            continue 
        require idx < discountPhases.length
        mem[0] = 1
        if block.timestamp > discountPhases[idx].field_512:
            idx = idx + 1
            continue 
        require idx < discountPhases.length
        return (arg1 * discountPhases[idx].field_0 / 100)
    return 0
}

function removeDiscountPhase(uint256 arg1) {
    require ext_code.size(staffContractAddress)
    call staffContractAddress.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(staffContractAddress)
        call staffContractAddress.0xcb510e97 with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    require arg1 < discountPhases.length
    require block.timestamp < discountPhases[arg1].field_512
    require arg1 < discountPhases.length
    discountPhases[arg1].field_0 = 0
    discountPhases[arg1].field_256 = 0
    discountPhases[arg1].field_512 = 0
    emit DiscountPhaseRemoved(arg1, block.timestamp, msg.sender);
}

function addDiscountPhase(string arg1, uint8 arg2, uint256 arg3, uint256 arg4) {
    require ext_code.size(staffContractAddress)
    call staffContractAddress.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(staffContractAddress)
        call staffContractAddress.0xcb510e97 with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    require arg1.length > 0
    require arg2 > 0
    if block.timestamp <= arg3:
        require arg3 < arg4
        idx = 0
        while idx < discountPhases.length:
            mem[0] = 1
            if arg3 <= discountPhases[idx].field_512:
                require idx < discountPhases.length
                mem[0] = 1
                require arg4 < discountPhases[idx].field_256
            idx = idx + 1
            continue 
        discountPhases.length++
        discountPhases[discountPhases.length].field_0 = arg2
        discountPhases[discountPhases.length].field_256 = arg3
        discountPhases[discountPhases.length].field_512 = arg4
        emit DiscountPhaseAdded(discountPhases.length, Array(len=arg1.length, data=arg1[all]), arg2 << 248, arg3, arg4, block.timestamp, msg.sender);
    else:
        require block.timestamp < arg4
        idx = 0
        while idx < discountPhases.length:
            mem[0] = 1
            if block.timestamp <= discountPhases[idx].field_512:
                require idx < discountPhases.length
                mem[0] = 1
                require arg4 < discountPhases[idx].field_256
            idx = idx + 1
            continue 
        discountPhases.length++
        discountPhases[discountPhases.length].field_0 = arg2
        discountPhases[discountPhases.length].field_256 = block.timestamp
        discountPhases[discountPhases.length].field_512 = arg4
        emit DiscountPhaseAdded(discountPhases.length, Array(len=arg1.length, data=arg1[all]), arg2 << 248, block.timestamp, arg4, block.timestamp, msg.sender);
}



}

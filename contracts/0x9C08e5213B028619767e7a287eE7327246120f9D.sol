contract main {




// =====================  Runtime code  =====================


address staffContractAddress;
address crowdsaleAddress;
array of struct discountStructs;
array of struct discountSteps;

function discountStructs(uint256 arg1) {
    require arg1 < discountStructs.length
    return discountStructs[arg1].field_0, 
           discountStructs[arg1].field_256,
           discountStructs[arg1].field_512,
           discountStructs[arg1].field_768
}

function discountSteps(uint256 arg1, uint256 arg2) {
    require arg2 < discountSteps[arg1].field_0
    return discountSteps[arg1][arg2].field_0, discountSteps[arg1][arg2].field_256, discountSteps[arg1][arg2].field_512
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

function removeDiscountStruct(uint256 arg1) {
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
    require arg1 < discountStructs.length
    require block.timestamp < discountStructs[arg1].field_768
    require arg1 < discountStructs.length
    discountStructs[arg1].field_0 = 0
    discountStructs[arg1].field_256 = 0
    discountStructs[arg1].field_512 = 0
    discountStructs[arg1].field_768 = 0
    discountSteps[arg1].field_0 = 0
    idx = 0
    while 3 * discountSteps[arg1].field_0 > idx:
        discountSteps[arg1][idx].field_0 = 0
        discountSteps[arg1][idx].field_256 = 0
        discountSteps[arg1][idx].field_512 = 0
        idx = idx + 3
        continue 
    emit DiscountStructRemoved(arg1, block.timestamp, msg.sender);
}

function calculateBonus(uint256 arg1, uint256 arg2) {
    idx = 0
    while idx < discountStructs.length:
        mem[0] = 2
        if block.timestamp < discountStructs[idx].field_512:
            idx = idx + 1
            continue 
        require idx < discountStructs.length
        mem[0] = 2
        if block.timestamp > discountStructs[idx].field_768:
            idx = idx + 1
            continue 
        require idx < discountStructs.length
        if discountStructs[idx].field_256 < discountStructs[idx].field_0:
            s = 0
            while s < discountSteps[idx].field_0:
                require s < discountSteps[idx].field_0
                if arg2 < discountSteps[idx][s].field_0:
                    mem[0] = idx
                    mem[32] = 3
                    s = s + 1
                    continue 
                require s < discountSteps[idx].field_0
                require s < discountSteps[idx].field_0
                if arg2 >= discountSteps[idx][s].field_256:
                    if discountSteps[idx][s].field_256:
                        mem[0] = idx
                        mem[32] = 3
                        s = s + 1
                        continue 
                require idx < discountStructs.length
                require discountStructs[idx].field_256 + (arg1 * discountSteps[idx][s].field_512 / 100) >= discountStructs[idx].field_256
                if discountStructs[idx].field_256 + (arg1 * discountSteps[idx][s].field_512 / 100) <= discountStructs[idx].field_0:
                    return (arg1 * discountSteps[idx][s].field_512 / 100)
                else:
                    return 0
            return 0
        else:
            return 0
    return 0
}

function getBonus(address arg1, uint256 arg2, uint256 arg3) {
    require msg.sender == crowdsaleAddress
    idx = 0
    while idx < discountStructs.length:
        mem[0] = 2
        if block.timestamp < discountStructs[idx].field_512:
            idx = idx + 1
            continue 
        require idx < discountStructs.length
        mem[0] = 2
        if block.timestamp > discountStructs[idx].field_768:
            idx = idx + 1
            continue 
        require idx < discountStructs.length
        if discountStructs[idx].field_256 < discountStructs[idx].field_0:
            s = 0
            while s < discountSteps[idx].field_0:
                require s < discountSteps[idx].field_0
                if arg3 < discountSteps[idx][s].field_0:
                    mem[0] = idx
                    mem[32] = 3
                    s = s + 1
                    continue 
                require s < discountSteps[idx].field_0
                require s < discountSteps[idx].field_0
                if arg3 >= discountSteps[idx][s].field_256:
                    if discountSteps[idx][s].field_256:
                        mem[0] = idx
                        mem[32] = 3
                        s = s + 1
                        continue 
                require idx < discountStructs.length
                require discountStructs[idx].field_256 + (arg2 * discountSteps[idx][s].field_512 / 100) >= discountStructs[idx].field_256
                if discountStructs[idx].field_256 + (arg2 * discountSteps[idx][s].field_512 / 100) > discountStructs[idx].field_0:
                    return 0
                require idx < discountStructs.length
                require discountStructs[idx].field_256 + (arg2 * discountSteps[idx][s].field_512 / 100) >= discountStructs[idx].field_256
                require idx < discountStructs.length
                discountStructs[idx].field_256 += arg2 * discountSteps[idx][s].field_512 / 100
                emit DiscountStructUsed(idx, s, address(arg1), arg2 * discountSteps[idx][s].field_512 / 100, block.timestamp);
                return (arg2 * discountSteps[idx][s].field_512 / 100)
            return 0
        else:
            return 0
    return 0
}

function addDiscountStruct(bytes32 arg1, uint256 arg2, uint256[2] arg3, uint256[] arg4, uint256[] arg5, uint256[] arg6) {
    require ext_code.size(staffContractAddress)
    call staffContractAddress.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if msg.sender == ext_call.return_data[12 len 20]:
        require arg2 > 0
        require arg3 < arg4
        require arg5.length > 0
        require arg5.length == arg6.length
        require arg5.length == ('cd', 196).length
        idx = 0
        while idx < discountStructs.length:
            mem[0] = 2
            if arg3 <= discountStructs[idx].field_512:
                require idx < discountStructs.length
                mem[0] = 2
                require arg4 < discountStructs[idx].field_768
            idx = idx + 1
            continue 
        mem[64] = 352
        discountStructs.length++
        discountStructs[discountStructs.length].field_0 = arg2
        discountStructs[discountStructs.length].field_256 = 0
        discountStructs[discountStructs.length].field_512 = arg3
        discountStructs[discountStructs.length].field_768 = arg4
        idx = 0
        while idx < arg5.length:
            if cd[((32 * idx) + arg5 + 36)] > 0:
                require idx < ('cd', 196).length
                require cd[((32 * idx) + cd[196] + 36)] > 0
                mem[0] = discountStructs.length
                mem[32] = 3
                _103 = mem[64]
                mem[64] = mem[64] + 96
                require idx < arg5.length
                mem[_103] = cd[((32 * idx) + arg5 + 36)]
                require idx < arg6.length
                mem[_103 + 32] = cd[((32 * idx) + arg6 + 36)]
                require idx < ('cd', 196).length
                mem[_103 + 64] = cd[((32 * idx) + cd[196] + 36)]
            else:
                require idx < arg6.length
                require cd[((32 * idx) + arg6 + 36)] > 0
                require idx < ('cd', 196).length
                require cd[((32 * idx) + cd[196] + 36)] > 0
                mem[0] = discountStructs.length
                mem[32] = 3
                _107 = mem[64]
                mem[64] = mem[64] + 96
                require idx < arg5.length
                mem[_107] = cd[((32 * idx) + arg5 + 36)]
                require idx < arg6.length
                mem[_107 + 32] = cd[((32 * idx) + arg6 + 36)]
                require idx < ('cd', 196).length
                mem[_107 + 64] = cd[((32 * idx) + cd[196] + 36)]
            discountSteps[stor2.length].field_0++
            mem[0] = sha3(discountStructs.length, 3)
            discountSteps[stor2.length][discountSteps[stor2.length].field_0].field_0 = cd[((32 * idx) + arg5 + 36)]
            discountSteps[stor2.length][discountSteps[stor2.length].field_0].field_256 = cd[((32 * idx) + arg6 + 36)]
            discountSteps[stor2.length][discountSteps[stor2.length].field_0].field_512 = cd[((32 * idx) + cd[196] + 36)]
            idx = idx + 1
            continue 
    else:
        require ext_code.size(staffContractAddress)
        call staffContractAddress.isStaff(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require arg2 > 0
        require arg3 < arg4
        require arg5.length > 0
        require arg5.length == arg6.length
        require arg5.length == ('cd', 196).length
        idx = 0
        while idx < discountStructs.length:
            mem[0] = 2
            if arg3 <= discountStructs[idx].field_512:
                require idx < discountStructs.length
                mem[0] = 2
                require arg4 < discountStructs[idx].field_768
            idx = idx + 1
            continue 
        mem[64] = 352
        discountStructs.length++
        discountStructs[discountStructs.length].field_0 = arg2
        discountStructs[discountStructs.length].field_256 = 0
        discountStructs[discountStructs.length].field_512 = arg3
        discountStructs[discountStructs.length].field_768 = arg4
        idx = 0
        while idx < arg5.length:
            if cd[((32 * idx) + arg5 + 36)] > 0:
                require idx < ('cd', 196).length
                require cd[((32 * idx) + cd[196] + 36)] > 0
                mem[0] = discountStructs.length
                mem[32] = 3
                _105 = mem[64]
                mem[64] = mem[64] + 96
                require idx < arg5.length
                mem[_105] = cd[((32 * idx) + arg5 + 36)]
                require idx < arg6.length
                mem[_105 + 32] = cd[((32 * idx) + arg6 + 36)]
                require idx < ('cd', 196).length
                mem[_105 + 64] = cd[((32 * idx) + cd[196] + 36)]
            else:
                require idx < arg6.length
                require cd[((32 * idx) + arg6 + 36)] > 0
                require idx < ('cd', 196).length
                require cd[((32 * idx) + cd[196] + 36)] > 0
                mem[0] = discountStructs.length
                mem[32] = 3
                _109 = mem[64]
                mem[64] = mem[64] + 96
                require idx < arg5.length
                mem[_109] = cd[((32 * idx) + arg5 + 36)]
                require idx < arg6.length
                mem[_109 + 32] = cd[((32 * idx) + arg6 + 36)]
                require idx < ('cd', 196).length
                mem[_109 + 64] = cd[((32 * idx) + cd[196] + 36)]
            discountSteps[stor2.length].field_0++
            mem[0] = sha3(discountStructs.length, 3)
            discountSteps[stor2.length][discountSteps[stor2.length].field_0].field_0 = cd[((32 * idx) + arg5 + 36)]
            discountSteps[stor2.length][discountSteps[stor2.length].field_0].field_256 = cd[((32 * idx) + arg6 + 36)]
            discountSteps[stor2.length][discountSteps[stor2.length].field_0].field_512 = cd[((32 * idx) + cd[196] + 36)]
            idx = idx + 1
            continue 
    emit DiscountStructAdded(uint256 arg1, bytes32 arg2, uint256 arg3, uint256[2] arg4, uint256[] arg5, uint256[] arg6, uint256[] arg7, uint256 arg8, address arg9):
                             discountStructs.length,
                             arg1,
                             arg2,
                             call.data[68 len 64],
                             Array(len=call.data[arg5 + 36 len 32 * arg5.length], data=arg6.length, call.data[arg6 + 36 len 32 * arg6.length], ('cd', 196).length, call.data[cd[196] + 36 len 32 * ('cd', 196).length]),
                             (32 * arg5.length) + 352,
                             (32 * arg5.length) + (32 * arg6.length) + 384,
                             block.timestamp,
                             msg.sender,
                             arg5.length,
}



}

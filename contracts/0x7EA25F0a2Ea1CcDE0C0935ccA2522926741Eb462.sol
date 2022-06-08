contract main {




// =====================  Runtime code  =====================


uint8 stor0;
address rootAddress; offset 8
array of struct offChainAddreses;
mapping of uint256 stor2;
address ownerValidator;
address tokenContractAddress;

function isWorking() {
    return bool(stor0)
}

function offChainAddreses(uint256 arg1) {
    require arg1 < offChainAddreses.length
    return offChainAddreses[arg1].field_0
}

function tokenContract() {
    return tokenContractAddress
}

function getOffChainRootAddress() {
    return rootAddress
}

function rootAddress() {
    return rootAddress
}

function ownerValidator() {
    return ownerValidator
}

function _fallback() payable {
    revert
}

function isToOffChainAddress(address arg1) {
    return (stor2[address(arg1)] > 0)
}

function offChainAddresesValidCount() {
    idx = 0
    s = 0
    while idx < offChainAddreses.length:
        mem[0] = 1
        if not offChainAddreses[idx].field_0:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function ownerValidate(address arg1) {
    require ext_code.size(ownerValidator)
    call ownerValidator.0x207c64fb with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function setWorking(bool arg1) {
    require ext_code.size(ownerValidator)
    call ownerValidator.0x207c64fb with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    stor0 = uint8(arg1)
}

function setTokenContract(address arg1) {
    require ext_code.size(ownerValidator)
    call ownerValidator.0x207c64fb with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        tokenContractAddress = arg1
}

function setRootAddress(address arg1) {
    require stor0
    require ext_code.size(ownerValidator)
    call ownerValidator.0x207c64fb with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        rootAddress = arg1
}

function setOwnerValidatorAddress(address arg1) {
    require stor0
    require ext_code.size(ownerValidator)
    call ownerValidator.0x207c64fb with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        ownerValidator = arg1
}

function isToOffChainAddresses(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        if stor2[mem[(32 * idx) + 140 len 20]] > 0:
            idx = idx + 1
            continue 
        else:
            return 0
    return 1
}

function sendFromOwn(address arg1, uint256 arg2) {
    require ext_code.size(ownerValidator)
    call ownerValidator.0x207c64fb with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return 1
}

function transferFromSender(address arg1, uint256 arg2) {
    require ext_code.size(ownerValidator)
    call ownerValidator.0x207c64fb with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0xbae804a7 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function getOffChainAddresses() {
    if not offChainAddreses.length:
        mem[(32 * offChainAddreses.length) + 128] = 32
        mem[(32 * offChainAddreses.length) + 160] = offChainAddreses.length
        mem[(32 * offChainAddreses.length) + 192 len floor32(offChainAddreses.length)] = mem[128 len floor32(offChainAddreses.length)]
        return memory
          from (32 * offChainAddreses.length) + 128
           len (96 * offChainAddreses.length) + 64
    mem[128] = address(offChainAddreses.field_0)
    idx = 128
    s = 0
    while (32 * offChainAddreses.length) + 96 > idx:
        mem[idx + 32] = offChainAddreses[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * offChainAddreses.length) + 192 len floor32(offChainAddreses.length)] = mem[128 len floor32(offChainAddreses.length)]
    return Array(len=offChainAddreses.length, data=mem[128 len floor32(offChainAddreses.length)], mem[(32 * offChainAddreses.length) + floor32(offChainAddreses.length) + 192 len (32 * offChainAddreses.length) - floor32(offChainAddreses.length)]), 
}

function addOffChainAddresses(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require stor0
    mem[(32 * arg1.length) + 132] = msg.sender
    require ext_code.size(ownerValidator)
    call ownerValidator.0x207c64fb with:
         gas gas_remaining wei
        args msg.sender
    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 2
            if stor2[mem[(32 * idx) + 140 len 20]] <= 0:
                offChainAddreses.length++
                offChainAddreses[offChainAddreses.length].field_0 = mem[(32 * idx) + 140 len 20]
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 2
                stor2[address(mem[(32 * idx) + 128])] = offChainAddreses.length
            idx = idx + 1
            continue 
}

function removeOffChainAddresses(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require stor0
    mem[(32 * arg1.length) + 132] = msg.sender
    require ext_code.size(ownerValidator)
    call ownerValidator.0x207c64fb with:
         gas gas_remaining wei
        args msg.sender
    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 2
            if stor2[mem[(32 * idx) + 140 len 20]] > 0:
                require stor2[mem[(32 * idx) + 140 len 20]] - 1 < offChainAddreses.length
                offChainAddreses[stor2[mem[(32 * idx) + 140 len 20]]].field_0 = 0
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 2
                stor2[address(mem[(32 * idx) + 128])] = 0
            idx = idx + 1
            continue 
}



}

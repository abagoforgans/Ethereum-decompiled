contract main {




// =====================  Runtime code  =====================


uint8 stor0;
array of struct owners;
address tokenContractAddress;

function owners(uint256 arg1) {
    require arg1 < owners.length
    return owners[arg1].field_0
}

function isWorking() {
    return bool(stor0)
}

function tokenContract() {
    return tokenContractAddress
}

function _fallback() payable {
    revert
}

function validate(address arg1) {
    idx = 0
    while idx < owners.length:
        mem[0] = 1
        if owners[idx].field_0 != arg1:
            idx = idx + 1
            continue 
        return bool(idx + 1)
    return 0
}

function ownerValidate(address arg1) {
    idx = 0
    while idx < owners.length:
        mem[0] = 1
        if owners[idx].field_0 != arg1:
            idx = idx + 1
            continue 
        return bool(idx + 1)
    return 0
}

function setWorking(bool arg1) {
    require 0 < owners.length
    idx = 0
    while owners[idx].field_0 != msg.sender:
        require idx + 1 < owners.length
        mem[0] = 1
        idx = idx + 1
        continue 
    require None + 3
    stor0 = uint8(arg1)
}

function setTokenContract(address arg1) {
    require stor0
    idx = 0
    while idx < owners.length:
        mem[0] = 1
        if owners[idx].field_0 != msg.sender:
            idx = idx + 1
            continue 
        if idx + 1:
            tokenContractAddress = arg1
}

function sendFromOwn(address arg1, uint256 arg2) {
    require 0 < owners.length
    idx = 0
    while owners[idx].field_0 != msg.sender:
        require idx + 1 < owners.length
        mem[0] = 1
        idx = idx + 1
        continue 
    require None + 3
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return 1
}

function removeOwner(address arg1) {
    require stor0
    idx = 0
    while idx < owners.length:
        mem[0] = 1
        if owners[idx].field_0 != msg.sender:
            idx = idx + 1
            continue 
        if idx + 1:
            idx = 0
            while idx < owners.length:
                mem[0] = 1
                if owners[idx].field_0 != arg1:
                    idx = idx + 1
                    continue 
                if idx + 1 > 0:
                    require idx < owners.length
                    owners[idx].field_0 = 0
}

function transferFromSender(address arg1, uint256 arg2) {
    require 0 < owners.length
    idx = 0
    while owners[idx].field_0 != msg.sender:
        require idx + 1 < owners.length
        mem[0] = 1
        idx = idx + 1
        continue 
    require None + 3
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0xbae804a7 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function addOwner(address arg1) {
    require stor0
    idx = 0
    while idx < owners.length:
        mem[0] = 1
        if owners[idx].field_0 != msg.sender:
            idx = idx + 1
            continue 
        if idx + 1:
            idx = 0
            while idx < owners.length:
                mem[0] = 1
                if owners[idx].field_0 != arg1:
                    idx = idx + 1
                    continue 
                if not idx + 1:
                    owners.length++
                    owners[owners.length].field_0 = arg1
            owners.length++
            owners[owners.length].field_0 = arg1
}

function getOwners() {
    if not owners.length:
        mem[(32 * owners.length) + 128] = 32
        mem[(32 * owners.length) + 160] = owners.length
        mem[(32 * owners.length) + 192 len floor32(owners.length)] = mem[128 len floor32(owners.length)]
        return memory
          from (32 * owners.length) + 128
           len (96 * owners.length) + 64
    mem[128] = address(owners.field_0)
    idx = 128
    s = 0
    while (32 * owners.length) + 96 > idx:
        mem[idx + 32] = owners[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * owners.length) + 192 len floor32(owners.length)] = mem[128 len floor32(owners.length)]
    return Array(len=owners.length, data=mem[128 len floor32(owners.length)], mem[(32 * owners.length) + floor32(owners.length) + 192 len (32 * owners.length) - floor32(owners.length)]), 
}



}

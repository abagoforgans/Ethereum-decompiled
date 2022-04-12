contract main {


// =======================  Init code  ======================


uint8 stor0;
array of address stor1;

function _fallback() {
    stor0 = 1
    stor1.length++
    if not stor1.length <= stor1.length + 1:
        idx = stor1.length + 1
        while stor1.length > idx:
            uint256(stor1[idx]) = 0
            idx = idx + 1
            continue 
    address(stor1[stor1.length]) = msg.sender
    return code.data[186 len 1814]
}



// =====================  Runtime code  =====================


uint8 stor0;
array of struct owners;
address tokenContractAddress;

function owners(uint256 arg1) {
    require arg1 < owners.length
    return address(owners[arg1].field_0)
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
        if address(owners[idx].field_0) != arg1:
            idx = idx + 1
            continue 
        return bool(idx + 1)
    return 0
}

function ownerValidate(address arg1) {
    idx = 0
    while idx < owners.length:
        mem[0] = 1
        if address(owners[idx].field_0) != arg1:
            idx = idx + 1
            continue 
        return bool(idx + 1)
    return 0
}

function setWorking(bool arg1) {
    require 0 < owners.length
    idx = 0
    while address(owners[idx].field_0) != msg.sender:
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
        if address(owners[idx].field_0) != msg.sender:
            idx = idx + 1
            continue 
        if idx + 1:
            tokenContractAddress = arg1
}

function sendFromOwn(address arg1, uint256 arg2) {
    require 0 < owners.length
    idx = 0
    while address(owners[idx].field_0) != msg.sender:
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

function transferFromSender(address arg1, uint256 arg2) {
    require 0 < owners.length
    idx = 0
    while address(owners[idx].field_0) != msg.sender:
        require idx + 1 < owners.length
        mem[0] = 1
        idx = idx + 1
        continue 
    require None + 3
    if ext_code.size(tokenContractAddress):
        call tokenContractAddress.0xbae804a7 with:
             gas gas_remaining - 710 wei
            args address(arg1), arg2
        if ext_call.success:
            return bool(ext_call.return_data[0])
    revert
}

function removeOwner(address arg1) {
    require stor0
    idx = 0
    while idx < owners.length:
        mem[0] = 1
        if address(owners[idx].field_0) != msg.sender:
            idx = idx + 1
            continue 
        if idx + 1:
            idx = 0
            while idx < owners.length:
                mem[0] = 1
                if address(owners[idx].field_0) != arg1:
                    idx = idx + 1
                    continue 
                if idx + 1 > 0:
                    require idx < owners.length
                    address(owners[idx].field_0) = 0
}

function getOwners() {
    if owners.length:
        mem[160] = address(owners.field_0)
        idx = 160
        s = 0
        while (32 * owners.length) + 128 > idx:
            mem[idx + 32] = address(owners[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * owners.length) + 160] = 32
    mem[(32 * owners.length) + 192] = owners.length
    if Mask(251, 0, owners.length):
        mem[(32 * owners.length) + 224] = mem[160]
        mem[(32 * owners.length) + 256 len floor32((32 * owners.length) - 1)] = mem[192 len floor32((32 * owners.length) - 1)]
    return Array(len=owners.length, data=mem[(32 * owners.length) + 224 len 32 * owners.length])
}

function addOwner(address arg1) {
    require stor0
    idx = 0
    while idx < owners.length:
        mem[0] = 1
        if address(owners[idx].field_0) != msg.sender:
            idx = idx + 1
            continue 
        if idx + 1:
            idx = 0
            while idx < owners.length:
                mem[0] = 1
                if address(owners[idx].field_0) != arg1:
                    idx = idx + 1
                    continue 
                if not idx + 1:
                    owners.length++
                    if not owners.length <= owners.length + 1:
                        idx = owners.length + sha3(1) + 1
                        while sha3(1) + owners.length > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    address(owners[owners.length].field_0) = arg1
            owners.length++
            if not owners.length <= owners.length + 1:
                idx = owners.length + sha3(1) + 1
                while sha3(1) + owners.length > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
            address(owners[owners.length].field_0) = arg1
}



}

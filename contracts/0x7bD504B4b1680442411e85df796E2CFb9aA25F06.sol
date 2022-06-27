contract main {




// =====================  Runtime code  =====================


const getType = sha3(Mask(80, 176, 'title-deed') >> 176)


address contractOwner;
address pendingContractOwner;
address propertyAddress;
uint256 price;
uint8 sub_ee24c5f7;
array of address sellers;
array of address buyers;
address sub_1f4339d8Address;

function property() {
    return propertyAddress
}

function sub_1f4339d8(?) {
    return sub_1f4339d8Address
}

function pendingContractOwner() {
    return pendingContractOwner
}

function price() {
    return price
}

function contractOwner() {
    return contractOwner
}

function sellers(uint256 arg1) {
    require arg1 < sellers.length
    return address(sellers[arg1])
}

function sub_ee24c5f7(?) {
    return sub_ee24c5f7
}

function buyers(uint256 arg1) {
    require arg1 < buyers.length
    return address(buyers[arg1])
}

function _fallback() payable {
    revert
}

function init(address arg1) {
    if contractOwner == msg.sender:
        propertyAddress = arg1
    else:
        if not contractOwner:
            propertyAddress = arg1
}

function forceChangeContractOwnership(address arg1) {
    if contractOwner != msg.sender:
        if contractOwner:
            return 0
    contractOwner = arg1
    return 1
}

function changeContractOwnership(address arg1) {
    if contractOwner != msg.sender:
        if contractOwner:
            return 0
    pendingContractOwner = arg1
    return 1
}

function claimContractOwnership() {
    if pendingContractOwner != msg.sender:
        return 0
    contractOwner = pendingContractOwner
    pendingContractOwner = 0
    return 1
}

function sub_160f78cc(?) {
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + 128] = arg5.length
    mem[(32 * arg4.length) + 160 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    if contractOwner == msg.sender:
        if arg4.length > 10:
            revert with 0, 'Too many users'
        if arg5.length > 10:
            revert with 0, 'Too many users'
        sellers.length = 0
        idx = 0
        while sellers.length > idx:
            uint256(sellers[idx]) = 0
            idx = idx + 1
            continue 
        buyers.length = 0
        idx = 0
        while buyers.length > idx:
            uint256(buyers[idx]) = 0
            idx = idx + 1
            continue 
        price = arg2
        sub_1f4339d8Address = arg1
        sub_ee24c5f7 = arg3
        idx = 0
        while idx < arg4.length:
            require idx < arg4.length
            sellers.length++
            mem[0] = 5
            address(sellers[sellers.length]) = mem[(32 * idx) + 140 len 20]
            idx = idx + 1
            continue 
        idx = 0
        while idx < arg5.length:
            require idx < arg5.length
            buyers.length++
            mem[0] = 6
            address(buyers[buyers.length]) = mem[(32 * idx) + (32 * arg4.length) + 172 len 20]
            idx = idx + 1
            continue 
    else:
        if not contractOwner:
            if arg4.length > 10:
                revert with 0, 'Too many users'
            if arg5.length > 10:
                revert with 0, 'Too many users'
            sellers.length = 0
            idx = 0
            while sellers.length > idx:
                uint256(sellers[idx]) = 0
                idx = idx + 1
                continue 
            buyers.length = 0
            idx = 0
            while buyers.length > idx:
                uint256(buyers[idx]) = 0
                idx = idx + 1
                continue 
            price = arg2
            sub_1f4339d8Address = arg1
            sub_ee24c5f7 = arg3
            idx = 0
            while idx < arg4.length:
                require idx < arg4.length
                sellers.length++
                mem[0] = 5
                address(sellers[sellers.length]) = mem[(32 * idx) + 140 len 20]
                idx = idx + 1
                continue 
            idx = 0
            while idx < arg5.length:
                require idx < arg5.length
                buyers.length++
                mem[0] = 6
                address(buyers[buyers.length]) = mem[(32 * idx) + (32 * arg4.length) + 172 len 20]
                idx = idx + 1
                continue 
}



}

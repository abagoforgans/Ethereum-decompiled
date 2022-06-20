contract main {




// =====================  Runtime code  =====================


const getType = sha3(Mask(80, 176, 'grant-deed') >> 176)


address contractOwner;
address pendingContractOwner;
address sub_1f4339d8Address;
address propertyAddress;
uint256 price;
array of address sellers;
array of address buyers;
uint8 sub_ee24c5f7;

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
    return sellers[arg1]
}

function sub_ee24c5f7(?) {
    return sub_ee24c5f7
}

function buyers(uint256 arg1) {
    require arg1 < buyers.length
    return buyers[arg1]
}

function _fallback() payable {
    revert
}

function setPrice(uint256 arg1) {
    if contractOwner == msg.sender:
        price = arg1
    else:
        if not contractOwner:
            price = arg1
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
        sellers.length = arg4.length
        if not arg4.length:
            idx = 0
            while sellers.length > idx:
                sellers[idx] = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 128
            while (32 * arg4.length) + 128 > idx:
                sellers[s] = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg4.length) + 31) >> 5
            while sellers.length > idx:
                sellers[idx] = 0
                idx = idx + 1
                continue 
        buyers.length = arg5.length
        if not arg5.length:
            idx = 0
            while buyers.length > idx:
                buyers[idx] = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = (32 * arg4.length) + 160
            while (32 * arg4.length) + (32 * arg5.length) + 160 > idx:
                buyers[s] = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg5.length) + 31) >> 5
            while buyers.length > idx:
                buyers[idx] = 0
                idx = idx + 1
                continue 
        price = arg2
        sub_1f4339d8Address = arg1
        sub_ee24c5f7 = arg3
    else:
        if not contractOwner:
            sellers.length = arg4.length
            if not arg4.length:
                idx = 0
                while sellers.length > idx:
                    sellers[idx] = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 128
                while (32 * arg4.length) + 128 > idx:
                    sellers[s] = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * arg4.length) + 31) >> 5
                while sellers.length > idx:
                    sellers[idx] = 0
                    idx = idx + 1
                    continue 
            buyers.length = arg5.length
            if not arg5.length:
                idx = 0
                while buyers.length > idx:
                    buyers[idx] = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = (32 * arg4.length) + 160
                while (32 * arg4.length) + (32 * arg5.length) + 160 > idx:
                    buyers[s] = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * arg5.length) + 31) >> 5
                while buyers.length > idx:
                    buyers[idx] = 0
                    idx = idx + 1
                    continue 
            price = arg2
            sub_1f4339d8Address = arg1
            sub_ee24c5f7 = arg3
}



}

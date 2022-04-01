contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
array of uint256 stor4;
array of uint256 stor5;
array of uint256 stor6;

function _fallback() payable {
    stor2 = 0x79056e9bb24f897d7f885dacdb2d506599944c0cdfd6b7495eb7f3ea624ac5af
    require not msg.value
    mem[96 len -1340] = code.data[1964 len -1340]
    mem[64] = -1244
    stor0 = mem[108 len 20]
    stor1 = block.timestamp
    stor4[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor5.length = (2 * mem[mem[160] + 96]) + 1
    s = 0
    idx = mem[160] + 128
    while mem[160] + mem[mem[160] + 96] + 128 > idx:
        stor5[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    if stor5.length + 31 / 32 > Mask(251, 0, mem[mem[160] + 96] + 31) >> 5:
        stor5[Mask(251, 0, mem[mem[160] + 96] + 31) >> 5] = 0
        idx = (Mask(251, 0, mem[mem[160] + 96] + 31) >> 5) + 1
        while stor5.length + 31 / 32 > idx:
            stor5[idx] = 0
            idx = idx + 1
            continue 
    stor6.length = (2 * mem[mem[192] + 96]) + 1
    s = 0
    idx = mem[192] + 128
    while mem[192] + mem[mem[192] + 96] + 128 > idx:
        stor6[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    if stor6.length + 31 / 32 > Mask(251, 0, mem[mem[192] + 96] + 31) >> 5:
        stor6[Mask(251, 0, mem[mem[192] + 96] + 31) >> 5] = 0
        idx = (Mask(251, 0, mem[mem[192] + 96] + 31) >> 5) + 1
        while stor6.length + 31 / 32 > idx:
            stor6[idx] = 0
            idx = idx + 1
            continue 
    return code.data[624 len 1340]
}



// =====================  Runtime code  =====================


address stor0;
uint256 createdAt;
uint256 interfaceID;
address nextAddress;
array of uint256 firstName;
array of uint256 lastName;
array of uint256 companyName;

function firstName() {
    return firstName[0 len firstName.length]
}

function next() {
    return nextAddress
}

function lastName() {
    return lastName[0 len lastName.length]
}

function interfaceID() {
    return interfaceID
}

function createdAt() {
    return createdAt
}

function companyName() {
    return companyName[0 len companyName.length]
}

function _fallback() payable {
    revert 
}

function append(address arg1) {
    require stor0 == msg.sender
    nextAddress = arg1
}

function transferOwnershipTo(address arg1) {
    require stor0 == msg.sender
    stor0 = arg1
}



}

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
    mem[96 len -1437] = code.data[1827 len -1437]
    mem[64] = -1341
    stor0 = mem[108 len 20]
    stor1 = block.timestamp
    stor4[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor5[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    stor6[] = Array(len=mem[mem[192] + 96], data=mem[mem[192] + 128 len mem[mem[192] + 96]])
    return code.data[390 len 1437]
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

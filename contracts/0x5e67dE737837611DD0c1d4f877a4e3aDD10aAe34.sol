contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
array of uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
array of uint256 stor8;

function _fallback() payable {
    stor2 = 0x79056e9bb24f897d7f885dacdb2d506599944c0cdfd6b7495eb7f3ea624ac5af
    require not msg.value
    mem[96 len -1680] = code.data[2150 len -1680]
    mem[64] = -1584
    stor0 = mem[108 len 20]
    stor1 = block.timestamp
    stor4[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor5 = mem[160]
    stor6 = mem[192]
    stor7 = mem[224]
    stor8[] = Array(len=mem[mem[256] + 96], data=mem[mem[256] + 128 len mem[mem[256] + 96]])
    return code.data[470 len 1680]
}



// =====================  Runtime code  =====================


address stor0;
uint256 createdAt;
uint256 interfaceID;
address nextAddress;
array of uint256 sub_3aa89aec;
uint256 sub_8a7be8e5;
uint256 sub_abc0bbe7;
uint256 sub_654c1c38;
array of uint256 details;

function sub_3aa89aec(?) {
    return sub_3aa89aec[0 len sub_3aa89aec.length]
}

function next() {
    return nextAddress
}

function details() {
    return details[0 len details.length]
}

function sub_654c1c38(?) {
    return sub_654c1c38
}

function sub_8a7be8e5(?) {
    return sub_8a7be8e5
}

function sub_abc0bbe7(?) {
    return sub_abc0bbe7
}

function timestamp() {
    return createdAt
}

function interfaceID() {
    return interfaceID
}

function createdAt() {
    return createdAt
}

function _fallback() payable {
    revert
}

function append(address arg1) {
    require msg.sender == stor0
    nextAddress = arg1
}

function transferOwnershipTo(address arg1) {
    require msg.sender == stor0
    stor0 = arg1
}



}

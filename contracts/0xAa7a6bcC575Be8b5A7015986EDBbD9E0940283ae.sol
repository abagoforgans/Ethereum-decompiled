contract main {


// =======================  Init code  ======================


array of uint256 stor-5442482557903504250613150719145357533886713417884903185095341029921719619869;
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
    mem[96 len -1190] = code.data[1719 len -1190]
    mem[64] = -1094
    stor0 = mem[108 len 20]
    stor1 = block.timestamp
    stor4[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor5 = mem[160]
    stor6 = mem[192]
    stor7 = mem[224]
    stor8.length = (2 * mem[mem[256] + 96]) + 1
    s = 0xf3f7a9fe364faab93b216da50a3214154f22a0a2b415b23a84c8169e8b636ee3
    idx = mem[256] + 128
    while mem[256] + mem[mem[256] + 96] + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    if (stor8.length + 31 / 32) - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911d > (Mask(251, 0, mem[mem[256] + 96] + 31) >> 5) - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911d:
        stor-5442482557903504250613150719145357533886713417884903185095341029921719619869[Mask(251, 0, mem[mem[256] + 96] + 31) >> 5] = 0
        idx = (Mask(251, 0, mem[mem[256] + 96] + 31) >> 5) - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c
        while (stor8.length + 31 / 32) - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911d > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
    return code.data[529 len 1190]
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
    require stor0 == msg.sender
    nextAddress = arg1
}

function transferOwnershipTo(address arg1) {
    require stor0 == msg.sender
    stor0 = arg1
}



}

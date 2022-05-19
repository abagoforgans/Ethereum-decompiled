contract main {




// =====================  Runtime code  =====================


#
#  - voteProposal(address arg1, address arg2, uint256 arg3, string arg4, bytes arg5)
#
uint8 stor0;
uint256 platformName;
uint256 tokenSymbol;
address adminAddress;
array of struct stor5;
uint256 trustPlatform;
uint256 weight;
array of struct stor9;
mapping of struct stor10;
array of address stor1546678032441257452667456735582814959992782782816731922691272282333561699760;

function getTrustPlatform() {
    return trustPlatform
}

function getStatus() {
    return bool(stor0)
}

function countOfPublicKey() {
    return stor9.length
}

function getAdmin() {
    return adminAddress
}

function getWeight() {
    return weight
}

function getPlatformName() {
    return platformName
}

function getTokenSymbol() {
    return tokenSymbol
}

function _fallback() payable {
    revert
}

function stop() {
    require msg.sender == adminAddress
    if stor0:
        stor0 = 0
}

function start() {
    require msg.sender == adminAddress
    if not stor0:
        stor0 = 1
}

function setWeight(uint256 arg1) {
    require msg.sender == adminAddress
    require arg1 > 0
    if arg1 != weight:
        weight = arg1
}

function setAdmin(address arg1) {
    require msg.sender == adminAddress
    require arg1
    if adminAddress != arg1:
        adminAddress = arg1
}

function existCaller(address arg1) {
    idx = 0
    while idx < stor5.length:
        mem[0] = 5
        if address(stor5[idx].field_0) != arg1:
            idx = idx + 1
            continue 
        return 1
    return 0
}

function addCaller(address arg1) {
    require msg.sender == adminAddress
    require arg1
    idx = 0
    while idx < stor5.length:
        mem[0] = 5
        if address(stor5[idx].field_0) != arg1:
            idx = idx + 1
            continue 
    stor5.length++
    stor36B6[stor5.length] = arg1
}

function addPublicKey(address arg1) {
    require msg.sender == adminAddress
    require arg1
    idx = 0
    while idx < stor9.length:
        mem[0] = 9
        if address(stor9[idx].field_0) != arg1:
            idx = idx + 1
            continue 
    stor9.length++
    address(stor9[stor9.length].field_0) = arg1
}

function deleteProposal(string arg1) {
    require msg.sender == adminAddress
    Mask(168, 0, stor10[arg1[all]].field_0) = 0
    address(stor10[arg1[all]].field_256) = 0
    stor10[arg1[all]].field_512 = 0
    stor10[arg1[all]].field_768 = 0
    idx = 0
    while stor10[arg1[all]].field_768 > idx:
        stor10[arg1[all]][idx + 3].field_0 = 0
        idx = idx + 1
        continue 
    stor10[arg1[all]].field_1024 = 0
}

function verifyProposal(address arg1, address arg2, uint256 arg3, string arg4) {
    if uint8(stor10[arg4[all]].field_0):
        return 1, stor10[arg4[all]].field_768 >= stor10[arg4[all]].field_1024
    if not stor10[arg4[all]].field_512:
        return 0
    require address(stor10[arg4[all]].field_8) == arg1
    require address(stor10[arg4[all]].field_256) == arg2
    require stor10[arg4[all]].field_512 == arg3
    return 0, stor10[arg4[all]].field_768 >= weight
}

function existPublicKey(address arg1) {
    if stor9.length:
        mem[128] = address(stor9.field_0)
        idx = 128
        s = 0
        while (32 * stor9.length) + 96 > idx:
            mem[idx + 32] = address(stor9[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    idx = 0
    while idx < stor9.length:
        require idx < stor9.length
        if mem[(32 * idx) + 140 len 20] != arg1:
            idx = idx + 1
            continue 
        return 1
    return 0
}

function commitProposal(string arg1) {
    if stor0:
        idx = 0
        while idx < stor5.length:
            mem[0] = 5
            if address(stor5[idx].field_0) != msg.sender:
                idx = idx + 1
                continue 
            require not uint8(stor10[arg1[all]].field_0)
            uint8(stor10[arg1[all]].field_0) = 1
            stor10[arg1[all]].field_1024 = stor10[arg1[all]].field_768
            return 1
    require msg.sender == adminAddress
    require not uint8(stor10[arg1[all]].field_0)
    uint8(stor10[arg1[all]].field_0) = 1
    stor10[arg1[all]].field_1024 = stor10[arg1[all]].field_768
    return 1
}

function publicKeys() {
    if stor9.length:
        mem[128] = address(stor9.field_0)
        if (32 * stor9.length) + 32 > 64:
            mem[160] = address(stor9.field_256)
            idx = 160
            s = 1
            while (32 * stor9.length) + 96 > idx:
                mem[idx + 32] = address(stor9[s].field_256)
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * stor9.length) + 128] = 32
    mem[(32 * stor9.length) + 160] = stor9.length
    mem[(32 * stor9.length) + 192 len floor32(stor9.length)] = mem[128 len floor32(stor9.length)]
    return memory
      from (32 * stor9.length) + 128
       len (96 * stor9.length) + 64
}

function deleteCaller(address arg1) {
    require msg.sender == adminAddress
    require arg1
    idx = 0
    while idx < stor5.length:
        mem[0] = 5
        if address(stor5[idx].field_0) != arg1:
            idx = idx + 1
            continue 
        if idx != stor5.length - 1:
            require stor5.length - 1 < stor5.length
            require idx < stor5.length
            address(stor5[idx].field_0) = address(stor5[stor5.length].field_0)
        stor5.length--
        if stor5.length > stor5.length - 1:
            idx = stor5.length + sha3(5) - 1
            while sha3(5) + stor5.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
}

function deletePublicKey(address arg1) {
    require msg.sender == adminAddress
    require arg1
    idx = 0
    while idx < stor9.length:
        mem[0] = 9
        if address(stor9[idx].field_0) != arg1:
            idx = idx + 1
            continue 
        if idx != stor9.length - 1:
            require stor9.length - 1 < stor9.length
            require idx < stor9.length
            address(stor9[idx].field_0) = address(stor9[stor9.length].field_0)
        stor9.length--
        if stor9.length > stor9.length - 1:
            idx = stor9.length + sha3(9) - 1
            while sha3(9) + stor9.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
}

function getCallers() {
    if not stor5.length:
        mem[(32 * stor5.length) + 128] = 32
        mem[(32 * stor5.length) + 160] = stor5.length
        mem[(32 * stor5.length) + 192 len floor32(stor5.length)] = mem[128 len floor32(stor5.length)]
        return memory
          from (32 * stor5.length) + 128
           len (96 * stor5.length) + 64
    mem[128] = address(stor5.field_0)
    idx = 128
    s = 0
    while (32 * stor5.length) + 96 > idx:
        mem[idx + 32] = address(stor5[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor5.length) + 192 len floor32(stor5.length)] = mem[128 len floor32(stor5.length)]
    return Array(len=stor5.length, data=mem[128 len floor32(stor5.length)], mem[(32 * stor5.length) + floor32(stor5.length) + 192 len (32 * stor5.length) - floor32(stor5.length)]), 
}

function getProposal(string arg1) {
    mem[96 len arg1.length] = arg1[all]
    mem[arg1.length + 96] = 10
    if stor10[arg1[all]].field_768:
        mem[128] = address(stor10[arg1[all]][3].field_0)
        idx = 128
        s = 0
        while (32 * stor10[arg1[all]].field_768) + 96 > idx:
            mem[idx + 32] = address(stor10[arg1[all]][s + 3].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * stor10[arg1[all]].field_768) + 128 len arg1.length] = arg1[all]
    mem[(32 * stor10[arg1[all]].field_768) + arg1.length + 128] = 10
    mem[(32 * stor10[arg1[all]].field_768) + 352 len floor32(stor10[arg1[all]].field_768)] = mem[128 len floor32(stor10[arg1[all]].field_768)]
    return bool(uint8(stor10[arg1[all]].field_0)), 
           address(stor10[arg1[all]].field_0),
           address(stor10[arg1[all]].field_256),
           stor10[arg1[all]].field_512,
           Array(len=stor10[arg1[all]].field_768, data=mem[128 len floor32(stor10[arg1[all]].field_768)], mem[(32 * stor10[arg1[all]].field_768) + floor32(stor10[arg1[all]].field_768) + 352 len (32 * stor10[arg1[all]].field_768) - floor32(stor10[arg1[all]].field_768)]),
           stor10[arg1[all]].field_1024
}



}

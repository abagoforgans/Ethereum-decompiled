contract main {


// =======================  Init code  ======================


uint256 stor2;
uint32 stor3;
uint256 stor4;
address stor6;

function _fallback() {
    stor6 = msg.sender
    stor4 = 10 * 10^6
    stor2 = 0
    stor3 = 0
    return code.data[85 len 6023]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint8 stor3;
uint8 stor3; offset 8
uint8 stor3; offset 16
uint8 stor3; offset 24
uint256 maxSupply;
address upgradedContractAddress;
address contractOwner;
array of struct accounts;
array of uint256 proofIds;
mapping of uint8 stor9;
mapping of uint8 stor99;

function totalSupply() {
    return totalSupply
}

function upgradedContract() {
    return upgradedContractAddress
}

function isLockedOpen() {
    return bool(uint8(stor3.field_16))
}

function balanceOf(address arg1) {
    require msg.value <= 0
    return balanceOf[address(arg1)]
}

function accountExists(address arg1) {
    return bool(stor9[arg1])
}

function isMaxSupplyLocked() {
    return bool(uint8(stor3.field_8))
}

function isClosed() {
    return bool(uint8(stor3.field_0))
}

function proofIds(uint256 arg1) {
    return proofIds[arg1][0 len proofIds[arg1].length]
}

function contractOwner() {
    return contractOwner
}

function maxSupply() {
    return maxSupply
}

function allowance(address arg1, address arg2) {
    require msg.value <= 0
    return allowance[address(arg1)][address(arg2)]
}

function isContractOwnerLocked() {
    return bool(uint8(stor3.field_24))
}

function accounts(uint256 arg1) {
    require arg1 < accounts.length
    return address(accounts[arg1].field_0)
}

function destroyContract() {
    require not uint8(stor3.field_16)
    require contractOwner == msg.sender
    require msg.value <= 0
    selfdestruct(contractOwner)
}

function _fallback() {
    revert
}

function lockOpen() {
    require not uint8(stor3.field_0)
    require contractOwner == msg.sender
    require msg.value <= 0
    uint8(stor3.field_16) = 1
    emit LockOpen(msg.sender);
    return 1
}

function lockContractOwner() {
    require not uint8(stor3.field_0)
    require contractOwner == msg.sender
    require msg.value <= 0
    uint8(stor3.field_24) = 1
    emit LockContractOwner(msg.sender);
    return 1
}

function lockMaxSupply() {
    require not uint8(stor3.field_0)
    require contractOwner == msg.sender
    require msg.value <= 0
    uint8(stor3.field_8) = 1
    emit MaxSupply(maxSupply, 1, msg.sender);
    return 1
}

function approve(address arg1, uint256 arg2) {
    require not uint8(stor3.field_0)
    require msg.value <= 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function close() {
    require not uint8(stor3.field_16)
    require not uint8(stor3.field_0)
    require contractOwner == msg.sender
    require msg.value <= 0
    uint8(stor3.field_0) = 1
    emit Close(msg.sender);
    return 1
}

function transferContractOwnership(address arg1) {
    require not uint8(stor3.field_0)
    require contractOwner == msg.sender
    require msg.value <= 0
    require not uint8(stor3.field_24)
    contractOwner = arg1
    emit TransferContractOwnership(msg.sender, arg1);
    return 1
}

function setMaxSupply(uint256 arg1) {
    require not uint8(stor3.field_0)
    require contractOwner == msg.sender
    require msg.value <= 0
    require arg1 >= totalSupply
    if uint8(stor3.field_8):
        return 0
    maxSupply = arg1
    emit MaxSupply(arg1, bool(uint8(stor3.field_8)), msg.sender);
    return 1
}

function burn(uint256 arg1) {
    require not uint8(stor3.field_0)
    require msg.value <= 0
    if arg1 > balanceOf[address(msg.sender)]:
        return 0
    require arg1 <= totalSupply
    require balanceOf[address(msg.sender)] - arg1 <= balanceOf[address(msg.sender)]
    require totalSupply - arg1 <= totalSupply
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function upgrade(address arg1) {
    require not uint8(stor3.field_16)
    require not uint8(stor3.field_0)
    require contractOwner == msg.sender
    require msg.value <= 0
    upgradedContractAddress = arg1
    require not uint8(stor3.field_16)
    require not uint8(stor3.field_0)
    require contractOwner == msg.sender
    require msg.value <= 0
    uint8(stor3.field_0) = 1
    emit Close(msg.sender);
    emit Upgrade(arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor3.field_0)
    require msg.value <= 0
    require not uint8(stor3.field_0)
    if arg2 > balanceOf[address(msg.sender)]:
        return 0
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(msg.sender)] - arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(arg1)] += arg2
    balanceOf[msg.sender] -= arg2
    require not uint8(stor3.field_0)
    if not stor9[address(arg1)]:
        stor9[address(arg1)] = 1
        accounts.length++
        if not accounts.length <= accounts.length + 1:
            idx = accounts.length + 1
            while accounts.length > idx:
                uint256(accounts[idx].field_0) = 0
                idx = idx + 1
                continue 
        address(accounts[accounts.length].field_0) = arg1
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function getAccounts() {
    require msg.value <= 0
    if not accounts.length:
        mem[(32 * accounts.length) + 160] = 32
        mem[(32 * accounts.length) + 192] = accounts.length
        mem[(32 * accounts.length) + 224 len floor32(accounts.length)] = mem[160 len floor32(accounts.length)]
        return memory
          from (32 * accounts.length) + 160
           len (96 * accounts.length) + 64
    mem[160] = address(accounts.field_0)
    idx = 160
    s = 0
    while (32 * accounts.length) + 128 > idx:
        mem[idx + 32] = address(accounts[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * accounts.length) + 224 len floor32(accounts.length)] = mem[160 len floor32(accounts.length)]
    return Array(len=accounts.length, data=mem[160 len floor32(accounts.length)], mem[(32 * accounts.length) + floor32(accounts.length) + 224 len (32 * accounts.length) - floor32(accounts.length)]), 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor3.field_0)
    require msg.value <= 0
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        return 0
    require allowance[address(arg1)][address(msg.sender)] - arg3 <= allowance[address(arg1)][address(msg.sender)]
    require not uint8(stor3.field_0)
    if arg3 > balanceOf[address(arg1)]:
        return 0
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require balanceOf[address(arg1)] - arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg2)] += arg3
    balanceOf[arg1] -= arg3
    require not uint8(stor3.field_0)
    if not stor9[address(arg2)]:
        stor9[address(arg2)] = 1
        accounts.length++
        if not accounts.length <= accounts.length + 1:
            idx = accounts.length + 1
            while accounts.length > idx:
                uint256(accounts[idx].field_0) = 0
                idx = idx + 1
                continue 
        address(accounts[accounts.length].field_0) = arg2
    emit Transfer(arg3, arg1, arg2);
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit TransferFrom(arg3, arg1, arg2, msg.sender);
    return 1
}

function issue(address arg1, uint256 arg2, string arg3) {
    mem[128 len arg3.length] = arg3[all]
    require not uint8(stor3.field_0)
    require contractOwner == msg.sender
    require msg.value <= 0
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require totalSupply + arg2 >= totalSupply
    mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32] = mem[-(arg3.length % 32) + floor32(arg3.length) + 160 len arg3.length % 32]
    mem[arg3.length + ceil32(arg3.length) + 128] = 10
    if uint8(stor[mem[ceil32(arg3.length) + floor32(arg3.length) + 128 len (arg3.length % 32) + 32]][call.data[arg3 + 36 len floor32(arg3.length)]]):
        return 0
    if totalSupply + arg2 > maxSupply:
        return 0
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    require not uint8(stor3.field_0)
    if not stor9[address(arg1)]:
        stor9[address(arg1)] = 1
        accounts.length++
        if not accounts.length <= accounts.length + 1:
            idx = accounts.length + 1
            while accounts.length > idx:
                uint256(accounts[idx].field_0) = 0
                idx = idx + 1
                continue 
        address(accounts[accounts.length].field_0) = arg1
    require not uint8(stor3.field_0)
    mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32] = mem[-(arg3.length % 32) + floor32(arg3.length) + 160 len arg3.length % 32]
    mem[arg3.length + ceil32(arg3.length) + 128] = 10
    if not uint8(stor[mem[ceil32(arg3.length) + floor32(arg3.length) + 128 len (arg3.length % 32) + 32]][call.data[arg3 + 36 len floor32(arg3.length)]]):
        mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        mem[ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32] = mem[-(arg3.length % 32) + floor32(arg3.length) + 160 len arg3.length % 32]
        mem[arg3.length + ceil32(arg3.length) + 128] = 10
        uint8(stor[mem[ceil32(arg3.length) + floor32(arg3.length) + 128 len (arg3.length % 32) + 32]][call.data[arg3 + 36 len floor32(arg3.length)]]) = 1
        proofIds.length++
        if not proofIds.length <= proofIds.length + 1:
            mem[0] = 8
            idx = proofIds.length + 1
            while sha3(8) + proofIds.length > idx + sha3(mem[0]):
                uint256(stor[idx + sha3(mem[0])]) = 0
                if 31 < stor[idx + sha3(mem[0])].length:
                    mem[0] = idx + sha3(mem[0])
                    s = sha3(idx + sha3(mem[0]))
                    while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                idx = idx + 1
                continue 
        proofIds[proofIds.length][] = Array(len=arg3.length, data=arg3[all])
    emit Issue(arg2, Array(len=arg3.length, data=arg3[all]), msg.sender, arg1);
    return 1
}



}

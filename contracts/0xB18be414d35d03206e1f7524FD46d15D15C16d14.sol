contract main {


// =======================  Init code  ======================


uint256 stor2;
uint32 stor3;
uint256 stor4;
uint256 stor6;

function _fallback() payable {
    stor6 = msg.sender or Mask(96, 160, stor6)
    stor4 = 10 * 10^6
    stor2 = 0
    stor3 = 0
    return code.data[61 len 4737]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint8 isClosed;
uint8 isMaxSupplyLocked; offset 8
uint8 isLockedOpen; offset 16
uint8 isContractOwnerLocked; offset 24
uint256 maxSupply;
address upgradedContractAddress;
uint256 stor5;
address contractOwner;
uint256 stor6;
array of struct accounts;
array of uint256 proofIds;
mapping of uint8 stor9;
mapping of uint8 stor10;

function totalSupply() payable {
    return totalSupply
}

function upgradedContract() payable {
    return address(upgradedContractAddress)
}

function isLockedOpen() payable {
    return bool(isLockedOpen)
}

function balanceOf(address arg1) payable {
    require msg.value <= 0
    return balanceOf[address(arg1)]
}

function accountExists(address arg1) payable {
    return bool(stor9[arg1])
}

function isMaxSupplyLocked() payable {
    return bool(isMaxSupplyLocked)
}

function isClosed() payable {
    return bool(isClosed)
}

function proofIds(uint256 arg1) payable {
    return proofIds[arg1][0 len proofIds[arg1].length]
}

function contractOwner() payable {
    return address(contractOwner)
}

function maxSupply() payable {
    return maxSupply
}

function allowance(address arg1, address arg2) payable {
    require msg.value <= 0
    return allowance[address(arg1)][address(arg2)]
}

function isContractOwnerLocked() payable {
    return bool(isContractOwnerLocked)
}

function accounts(uint256 arg1) payable {
    require arg1 < accounts.length
    return address(accounts[arg1].field_0)
}

function destroyContract() payable {
    require not isLockedOpen
    require msg.sender == address(contractOwner)
    require msg.value <= 0
    selfdestruct(address(contractOwner))
}

function _fallback() payable {
    revert 
}

function lockOpen() payable {
    require not isClosed
    require msg.sender == address(contractOwner)
    require msg.value <= 0
    isLockedOpen = 1
    emit LockOpen(msg.sender);
    return 1
}

function close() payable {
    require not isLockedOpen
    require not isClosed
    require msg.sender == address(contractOwner)
    require msg.value <= 0
    isClosed = 1
    emit Close(msg.sender);
    return 1
}

function approve(address arg1, uint256 arg2) payable {
    require not isClosed
    require msg.value <= 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function lockMaxSupply() payable {
    require not isClosed
    require address(contractOwner) == msg.sender
    require msg.value <= 0
    isMaxSupplyLocked = 1
    emit MaxSupply(maxSupply, 1, msg.sender);
    return 1
}

function lockContractOwner() payable {
    require not isClosed
    require msg.sender == address(contractOwner)
    require msg.value <= 0
    isContractOwnerLocked = 1
    emit LockContractOwner(msg.sender);
    return 1
}

function setMaxSupply(uint256 arg1) payable {
    require not isClosed
    require msg.sender == address(contractOwner)
    require msg.value <= 0
    require arg1 >= totalSupply
    if isMaxSupplyLocked:
        return 0
    maxSupply = arg1
    emit MaxSupply(arg1, bool(isMaxSupplyLocked), msg.sender);
    return 1
}

function transferContractOwnership(address arg1) payable {
    require not isClosed
    require msg.sender == address(contractOwner)
    require msg.value <= 0
    require not isContractOwnerLocked
    uint256(stor6) = arg1 or Mask(96, 160, uint256(stor6))
    emit TransferContractOwnership(msg.sender, arg1);
    return 1
}

function getAccounts() payable {
    require msg.value <= 0
    if accounts.length:
        mem[160] = address(accounts.field_0)
        idx = 160
        s = 0
        while (32 * accounts.length) + 128 > idx:
            mem[idx + 32] = address(accounts[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=accounts.length, data=mem[160 len 32 * accounts.length])
}

function burn(uint256 arg1) payable {
    require not isClosed
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

function upgrade(address arg1) payable {
    require not isLockedOpen
    require not isClosed
    require msg.sender == address(contractOwner)
    require msg.value <= 0
    uint256(stor5) = arg1 or Mask(96, 160, uint256(stor5))
    require not isLockedOpen
    require not isClosed
    require msg.sender == address(contractOwner)
    require msg.value <= 0
    isClosed = 1
    emit Close(msg.sender);
    emit Upgrade(arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require not isClosed
    require msg.value <= 0
    require not isClosed
    if arg2 > balanceOf[address(msg.sender)]:
        return 0
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    require balanceOf[address(msg.sender)] - arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(arg1)] += arg2
    balanceOf[msg.sender] -= arg2
    require not isClosed
    if not stor9[address(arg1)]:
        stor9[address(arg1)] = 1
        accounts.length++
        if not accounts.length <= accounts.length + 1:
            idx = accounts.length + 1
            while accounts.length > idx:
                accounts[idx].field_0 = 0
                idx = idx + 1
                continue 
        accounts[accounts.length].field_0 = arg1 or Mask(96, 160, accounts[accounts.length].field_0)
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require not isClosed
    require msg.value <= 0
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        return 0
    require allowance[address(arg1)][address(msg.sender)] - arg3 <= allowance[address(arg1)][address(msg.sender)]
    require not isClosed
    if arg3 > balanceOf[address(arg1)]:
        return 0
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    require balanceOf[address(arg1)] - arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg2)] += arg3
    balanceOf[arg1] -= arg3
    require not isClosed
    if not stor9[address(arg2)]:
        stor9[address(arg2)] = 1
        accounts.length++
        if not accounts.length <= accounts.length + 1:
            idx = accounts.length + 1
            while accounts.length > idx:
                accounts[idx].field_0 = 0
                idx = idx + 1
                continue 
        accounts[accounts.length].field_0 = arg2 or Mask(96, 160, accounts[accounts.length].field_0)
    emit Transfer(arg3, arg1, arg2);
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit TransferFrom(arg3, arg1, arg2, msg.sender);
    return 1
}

function issue(address arg1, uint256 arg2, string arg3) payable {
    require not isClosed
    require msg.sender == address(contractOwner)
    require msg.value <= 0
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require totalSupply + arg2 >= totalSupply
    if stor10[arg3[all]]:
        return 0
    if arg2 + totalSupply > maxSupply:
        return 0
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    require not isClosed
    if not stor9[address(arg1)]:
        stor9[address(arg1)] = 1
        accounts.length++
        if not accounts.length <= accounts.length + 1:
            idx = accounts.length + 1
            while accounts.length > idx:
                accounts[idx].field_0 = 0
                idx = idx + 1
                continue 
        accounts[accounts.length].field_0 = arg1 or Mask(96, 160, accounts[accounts.length].field_0)
    require not isClosed
    if not stor10[arg3[all]]:
        stor10[arg3[all]] = 1
        proofIds.length++
        if not proofIds.length <= proofIds.length + 1:
            mem[0] = 8
            idx = proofIds.length + 1
            while sha3(8) + proofIds.length > idx + sha3(mem[0]):
                stor[idx + sha3(mem[0])] = 0
                if 31 < stor[idx + sha3(mem[0])].length:
                    mem[0] = idx + sha3(mem[0])
                    s = sha3(idx + sha3(mem[0]))
                    while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                idx = idx + 1
                continue 
        proofIds[proofIds.length][] = Array(len=arg3.length, data=arg3[all])
    emit Issue(arg2, Array(len=arg3.length, data=arg3[all]), msg.sender, arg1);
    return 1
}



}

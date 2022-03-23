contract main {


// =======================  Init code  ======================


uint256 stor2;
uint256 stor3;
uint256 stor8;
uint8 stor9;

function _fallback() payable {
    stor3 = msg.sender or Mask(96, 160, stor3)
    stor9 = 0
    stor8 = 10 * 10^6
    stor2 = 0
    return code.data[112 len 6454]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
address owner;
uint256 stor3;
array of struct accounts;
mapping of uint8 stor5;
array of uint256 proofIds;
mapping of uint8 stor7;
uint256 maxSupply;
uint8 closed;
address upgradedContractAddress; offset 8
uint256 stor9; offset 8

function totalSupply() payable {
    return totalSupply
}

function upgradedContract() payable {
    return upgradedContractAddress
}

function closed() payable {
    return bool(closed)
}

function balanceOf(address arg1) payable {
    require msg.value <= 0
    return balanceOf[address(arg1)]
}

function accountExists(address arg1) payable {
    return bool(stor5[arg1])
}

function owner() payable {
    return address(owner)
}

function proofIds(uint256 arg1) payable {
    return proofIds[arg1][0 len proofIds[arg1].length]
}

function maxSupply() payable {
    return maxSupply
}

function allowance(address arg1, address arg2) payable {
    require msg.value <= 0
    return allowance[address(arg1)][address(arg2)]
}

function accounts(uint256 arg1) payable {
    require arg1 < accounts.length
    return address(accounts[arg1].field_0)
}

function destroyContract() payable {
    require msg.sender == address(owner)
    require msg.value <= 0
    selfdestruct(address(owner))
}

function _fallback() payable {
    revert 
}

function close() payable {
    require not closed
    require msg.sender == address(owner)
    require msg.value <= 0
    closed = 1
    emit Close(address(owner));
    return 0
}

function setMaxSupply(uint256 arg1) payable {
    require not closed
    require msg.sender == address(owner)
    require msg.value <= 0
    require arg1 >= totalSupply
    maxSupply = arg1
}

function transferContractOwnership(address arg1) payable {
    require not closed
    require msg.sender == address(owner)
    require msg.value <= 0
    uint256(stor3) = arg1 or Mask(96, 160, uint256(stor3))
}

function approve(address arg1, uint256 arg2) payable {
    require not closed
    require msg.value <= 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function upgrade(address arg1) payable {
    require not closed
    require msg.sender == address(owner)
    require msg.value <= 0
    stor9 = Mask(248, 0, arg1)
    require not closed
    require msg.sender == address(owner)
    require msg.value <= 0
    closed = 1
    emit Close(address(owner));
    emit Upgrade(arg1);
    return 1
}

function burn(address arg1, uint256 arg2) payable {
    require not closed
    require msg.value <= 0
    if arg1 != msg.sender:
        require msg.sender == address(owner)
    if balanceOf[address(arg1)] < arg2:
        return 0
    balanceOf[address(arg1)] -= arg2
    totalSupply -= arg2
    emit Burn(address(arg1), arg2, address(owner));
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

function transfer(address arg1, uint256 arg2) payable {
    require not closed
    require msg.value <= 0
    require not closed
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    balanceOf[address(arg1)] += arg2
    balanceOf[address(msg.sender)] -= arg2
    if not stor5[address(arg1)]:
        stor5[address(arg1)] = 1
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
    require not closed
    require msg.value <= 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    require not closed
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    if balanceOf[address(arg1)] < arg3:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    if not stor5[address(arg2)]:
        stor5[address(arg2)] = 1
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
    require not closed
    require msg.sender == address(owner)
    require msg.value <= 0
    if not stor7[arg3[all]]:
        require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
        if totalSupply + arg2 <= maxSupply:
            balanceOf[address(arg1)] += arg2
            totalSupply += arg2
            if stor5[address(arg1)]:
                if not stor7[arg3[all]]:
                    stor7[arg3[all]] = 1
                    proofIds.length++
                    if not proofIds.length <= proofIds.length + 1:
                        mem[0] = 6
                        idx = proofIds.length + 1
                        while sha3(6) + proofIds.length > idx + sha3(mem[0]):
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
            else:
                stor5[address(arg1)] = 1
                accounts.length++
                if not accounts.length <= accounts.length + 1:
                    idx = accounts.length + 1
                    while accounts.length > idx:
                        accounts[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                accounts[accounts.length].field_0 = arg1 or Mask(96, 160, accounts[accounts.length].field_0)
                if not stor7[arg3[all]]:
                    stor7[arg3[all]] = 1
                    proofIds.length++
                    if not proofIds.length <= proofIds.length + 1:
                        mem[0] = 6
                        idx = proofIds.length + 1
                        while sha3(6) + proofIds.length > idx + sha3(mem[0]):
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
            emit Issue(address(owner), address(arg1), arg2, Array(len=arg3.length, data=arg3[all]));
}



}

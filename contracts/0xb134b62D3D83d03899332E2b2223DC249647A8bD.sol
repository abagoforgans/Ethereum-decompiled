contract main {




// =====================  Runtime code  =====================


const name = 'HCREDIT'

const decimals = 18

const symbol = 'HCR'


uint256 totalSupply;
mapping of uint256 lockAccount;
array of struct allLockAccounts;
address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function getLockAccount(address arg1) {
    require calldata.size - 4 >= 32
    return lockAccount[address(arg1)]
}

function totalSupply() {
    return totalSupply
}

function AllLockAccounts(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < allLockAccounts.length
    return allLockAccounts[arg1].field_0
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function unLockAccount(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    lockAccount[address(arg1)] = 0
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setLockAccount(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    lockAccount[address(arg1)] = 1
    allLockAccounts.length++
    allLockAccounts[allLockAccounts.length].field_0 = arg1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function getLockAccounts() {
    if not allLockAccounts.length:
        mem[(32 * allLockAccounts.length) + 128] = 32
        mem[(32 * allLockAccounts.length) + 160] = allLockAccounts.length
        mem[(32 * allLockAccounts.length) + 192 len floor32(allLockAccounts.length)] = mem[128 len floor32(allLockAccounts.length)]
        return memory
          from (32 * allLockAccounts.length) + 128
           len (96 * allLockAccounts.length) + 64
    mem[128] = address(allLockAccounts.field_0)
    idx = 128
    s = 0
    while (32 * allLockAccounts.length) + 96 > idx:
        mem[idx + 32] = allLockAccounts[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * allLockAccounts.length) + 192 len floor32(allLockAccounts.length)] = mem[128 len floor32(allLockAccounts.length)]
    return Array(len=allLockAccounts.length, data=mem[128 len floor32(allLockAccounts.length)], mem[(32 * allLockAccounts.length) + floor32(allLockAccounts.length) + 192 len (32 * allLockAccounts.length) - floor32(allLockAccounts.length)]), 
}



}

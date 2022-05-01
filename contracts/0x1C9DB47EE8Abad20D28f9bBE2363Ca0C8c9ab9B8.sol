contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
uint256 stor3;
mapping of uint256 stor4;
address stor6;

function _fallback() payable {
    stor3 = 10^15
    require not msg.value
    bool(stor0.length) = 0
    stor0.length.field_1 = 4
    stor0.length.field_8 = 'BINS' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 8
    stor1.length.field_8 = 'Bitsense' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 8
    stor3 = 10^15
    stor4[address(msg.sender)] = 10^15
    stor6 = msg.sender
    return code.data[447 len 4136]
}



// =====================  Runtime code  =====================


array of uint256 symbol;
array of uint256 name;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address stor6;
mapping of uint256 lockAccount;
array of struct allLockAccounts;
mapping of uint256 reward;
array of address rewardsAccounts;

function name() {
    return name[0 len name.length]
}

function getLockAccount(address arg1) {
    return lockAccount[address(arg1)]
}

function totalSupply() {
    return totalSupply
}

function rewardsAccounts(uint256 arg1) {
    require arg1 < rewardsAccounts.length
    return address(rewardsAccounts[arg1])
}

function AllLockAccounts(uint256 arg1) {
    require arg1 < allLockAccounts.length
    return allLockAccounts[arg1].field_0
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function getReward(address arg1) {
    return reward[address(arg1)]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function unLockAccount(address arg1) {
    require stor6 == msg.sender
    lockAccount[address(arg1)] = 0
}

function approve(address arg1, uint256 arg2) {
    require arg2 + allowance[address(msg.sender)][address(arg1)] >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setLockAccount(address arg1) {
    require stor6 == msg.sender
    lockAccount[address(arg1)] = 1
    allLockAccounts.length++
    if not allLockAccounts.length <= allLockAccounts.length + 1:
        idx = allLockAccounts.length + 1
        while allLockAccounts.length > idx:
            allLockAccounts[idx].field_0 = 0
            idx = idx + 1
            continue 
    allLockAccounts[allLockAccounts.length].field_0 = arg1
}

function setReward(address arg1, uint256 arg2) {
    require stor6 == msg.sender
    reward[address(arg1)] += arg2
    rewardsAccounts.length++
    if not rewardsAccounts.length <= rewardsAccounts.length + 1:
        idx = rewardsAccounts.length + 1
        while rewardsAccounts.length > idx:
            uint256(rewardsAccounts[idx]) = 0
            idx = idx + 1
            continue 
    address(rewardsAccounts[rewardsAccounts.length]) = arg1
}

function transfer(address arg1, uint256 arg2) {
    if arg2 <= 0:
        return 0
    if arg2 > balanceOf[address(msg.sender)]:
        return 0
    if ext_code.size(arg1) > 0:
        return 0
    if lockAccount[address(msg.sender)] == 1:
        return 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function claimReward(address arg1) {
    if reward[address(arg1)] <= 0:
        reward[address(arg1)] = 0
        return 0
    if reward[address(arg1)] > balanceOf[stor6]:
        reward[address(arg1)] = 0
        return 0
    if ext_code.size(arg1) > 0:
        reward[address(arg1)] = 0
        return 0
    require reward[address(arg1)] <= balanceOf[stor6]
    balanceOf[stor6] -= reward[address(arg1)]
    require reward[address(arg1)] + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = reward[address(arg1)] + balanceOf[arg1]
    emit Transfer(reward[address(arg1)], msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if allowance[address(arg1)][address(msg.sender)] <= 0:
        return 0
    if arg3 <= 0:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if balanceOf[address(arg1)] < arg3:
        return 0
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function getLockAccounts() {
    if not allLockAccounts.length:
        mem[(32 * allLockAccounts.length) + 160] = 32
        mem[(32 * allLockAccounts.length) + 192] = allLockAccounts.length
        mem[(32 * allLockAccounts.length) + 224 len floor32(allLockAccounts.length)] = mem[160 len floor32(allLockAccounts.length)]
        return memory
          from (32 * allLockAccounts.length) + 160
           len (96 * allLockAccounts.length) + 64
    mem[160] = address(allLockAccounts.field_0)
    idx = 160
    s = 0
    while (32 * allLockAccounts.length) + 128 > idx:
        mem[idx + 32] = allLockAccounts[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * allLockAccounts.length) + 224 len floor32(allLockAccounts.length)] = mem[160 len floor32(allLockAccounts.length)]
    return Array(len=allLockAccounts.length, data=mem[160 len floor32(allLockAccounts.length)], mem[(32 * allLockAccounts.length) + floor32(allLockAccounts.length) + 224 len (32 * allLockAccounts.length) - floor32(allLockAccounts.length)]), 
}

function transfer(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    if arg2 <= 0:
        return 0
    if arg2 > balanceOf[address(msg.sender)]:
        return 0
    if ext_code.size(arg1) <= 0:
        return 0
    if lockAccount[address(msg.sender)] == 1:
        return 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    mem[ceil32(arg3.length) + 128] = 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + 132] = msg.sender
    mem[ceil32(arg3.length) + 164] = arg2
    mem[ceil32(arg3.length) + 196] = 96
    mem[ceil32(arg3.length) + 228] = arg3.length
    mem[ceil32(arg3.length) + 260 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    require ext_code.size(arg1)
    call arg1.0xc0ee0b8a with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32] = mem[-(arg3.length % 32) + floor32(arg3.length) + 160 len arg3.length % 32]
    emit Transfer(arg2, msg.sender, arg1, sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + floor32(arg3.length) + 128 len arg3.length % 32]));
    return 1
}



}

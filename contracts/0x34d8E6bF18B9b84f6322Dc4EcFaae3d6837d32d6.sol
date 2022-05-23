contract main {




// =====================  Runtime code  =====================


const name = 'AcietyTAP'

const decimals = 15

const symbol = 'TAP'

const INITIAL_SUPPLY = 10000 * 10^18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint8 stor3; offset 160
address owner;
mapping of address pools;
array of struct tokenHolders;
mapping of uint256 stor6;
array of address stor1546678032441257452667456735582814959992782782816731922691272282333561699760;
address stor4CDE;
address stor1A1E;
address stor2E17;
address stor91DA;

function totalSupply() {
    return totalSupply
}

function paused() {
    return bool(stor3)
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function tokenHolders(uint256 arg1) {
    require arg1 < tokenHolders.length
    return tokenHolders[arg1].field_0
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function sub_e6409027(?) {
    return balanceOf[stor4[arg1 << 248]]
}

function pools(uint8 arg1) {
    return pools[arg1]
}

function _fallback() payable {
    revert
}

function getPoolAddresses() {
    return pools[1], stor91DA, stor2E17, stor1A1E, stor4CDE
}

function unpause() {
    require msg.sender == owner
    require stor3
    stor3 = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not stor3
    stor3 = 1
    emit Pause()
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require not stor3
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require not stor3
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require not stor3
    if arg2 >= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] = 0
    else:
        require arg2 <= allowance[msg.sender][address(arg1)]
        allowance[msg.sender][address(arg1)] -= arg2
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor3
    require arg2 <= balanceOf[msg.sender]
    require arg1
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    if arg2 > 0:
        if not arg1:
            stor6[address(arg1)] = tokenHolders.length
            tokenHolders.length++
            stor36B6[stor5.length] = arg1
        else:
            if stor6[address(arg1)] <= 0:
                stor6[address(arg1)] = tokenHolders.length
                tokenHolders.length++
                stor36B6[stor5.length] = arg1
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor3
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    if arg3 > 0:
        if not arg2:
            stor6[address(arg2)] = tokenHolders.length
            tokenHolders.length++
            stor36B6[stor5.length] = arg2
        else:
            if stor6[address(arg2)] <= 0:
                stor6[address(arg2)] = tokenHolders.length
                tokenHolders.length++
                stor36B6[stor5.length] = arg2
    return 1
}

function getTokenHolders() {
    if not tokenHolders.length:
        mem[(32 * tokenHolders.length) + 128] = 32
        mem[(32 * tokenHolders.length) + 160] = tokenHolders.length
        mem[(32 * tokenHolders.length) + 192 len floor32(tokenHolders.length)] = mem[128 len floor32(tokenHolders.length)]
        return memory
          from (32 * tokenHolders.length) + 128
           len (96 * tokenHolders.length) + 64
    mem[128] = address(tokenHolders.field_0)
    idx = 128
    s = 0
    while (32 * tokenHolders.length) + 96 > idx:
        mem[idx + 32] = tokenHolders[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * tokenHolders.length) + 192 len floor32(tokenHolders.length)] = mem[128 len floor32(tokenHolders.length)]
    return Array(len=tokenHolders.length, data=mem[128 len floor32(tokenHolders.length)], mem[(32 * tokenHolders.length) + floor32(tokenHolders.length) + 192 len (32 * tokenHolders.length) - floor32(tokenHolders.length)]), 
}



}

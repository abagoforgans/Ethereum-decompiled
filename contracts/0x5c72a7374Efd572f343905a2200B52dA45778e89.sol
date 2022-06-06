contract main {


// =======================  Init code  ======================


uint128 stor3; offset 168
uint128 stor3; offset 160
address stor3;
uint256 stor5;
uint256 stor6; offset 3
uint256 stor6; offset 2
uint256 stor6; offset 1
uint256 stor6;
uint256 stor7;
uint256 stor8;

function _fallback() payable {
    Mask(96, 0, stor3.field_160) = 0
    Mask(88, 0, stor3.field_168) = 0
    stor7 = 600
    require not msg.value
    address(stor3.field_0) = msg.sender
    stor5 = 18
    stor8 = 10^9 * 10^stor5
    uint256(stor6.field_0) = 425000 * 10^stor5
    mem[96] = uint256(stor6.field_0)
    mem[128] = uint255(stor6.field_1)
    mem[160] = Mask(254, 0, stor6.field_2)
    mem[192] = Mask(253, 0, stor6.field_3)
    mem[224] = Mask(253, 0, stor6.field_3)
    s = 9
    idx = 96
    while 256 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 14
    while 15 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    return code.data[438 len 8235]
}



// =====================  Runtime code  =====================


const name = 'UKT Token'

const decimals = 18

const symbol = 'UKT'


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
uint8 stor3; offset 160
uint8 stor3; offset 168
uint128 stor3; offset 168
uint128 stor3; offset 160
address owner;
uint256 blockHeight;
uint256 coinbaseInit;
uint256 halvingPeriod;
uint256 maxSupply;
array of uint256 stor9;

function mintingFinished() {
    return bool(uint8(stor3.field_160))
}

function totalSupply() {
    return totalSupply
}

function coinbaseInit() {
    return coinbaseInit
}

function halvingPeriod() {
    return halvingPeriod
}

function paused() {
    return bool(uint8(stor3.field_168))
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function maxSupply() {
    return maxSupply
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function blockHeight() {
    return blockHeight
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function unpause() {
    require msg.sender == owner
    require uint8(stor3.field_168)
    Mask(88, 0, stor3.field_168) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor3.field_168)
    Mask(88, 0, stor3.field_168) = 1
    emit Pause()
}

function nextBlock() {
    require msg.sender == owner
    require blockHeight + 1 >= blockHeight
    blockHeight++
    emit LogBlockHeight(blockHeight);
}

function approve(address arg1, uint256 arg2) {
    require not uint8(stor3.field_168)
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require not uint8(stor3.field_168)
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function finishMinting() {
    require msg.sender == owner
    require not uint8(stor3.field_160)
    require not uint8(stor3.field_168)
    require msg.sender == owner
    require not uint8(stor3.field_160)
    Mask(96, 0, stor3.field_160) = 1
    emit MintFinished()
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require not uint8(stor3.field_168)
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not uint8(stor3.field_160)
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require not uint8(stor3.field_168)
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor3.field_168)
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor3.field_168)
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function coinbase() {
    require msg.sender == owner
    require not uint8(stor3.field_160)
    require not uint8(stor3.field_168)
    require msg.sender == owner
    require blockHeight + 1 >= blockHeight
    blockHeight++
    emit LogBlockHeight(blockHeight);
    require 1 <= blockHeight
    require halvingPeriod
    if blockHeight - 1 / halvingPeriod > 4:
        require msg.sender == owner
        require not uint8(stor3.field_160)
        require not uint8(stor3.field_168)
        require msg.sender == owner
        require not uint8(stor3.field_160)
        Mask(96, 0, stor3.field_160) = 1
        emit MintFinished()
        return 0
    if blockHeight - 1 / halvingPeriod < 0:
        require msg.sender == owner
        require not uint8(stor3.field_160)
        require not uint8(stor3.field_168)
        require msg.sender == owner
        require not uint8(stor3.field_160)
        Mask(96, 0, stor3.field_160) = 1
        emit MintFinished()
        return 0
    require blockHeight - 1 / halvingPeriod < 6
    require msg.sender == owner
    require not uint8(stor3.field_160)
    if not stor9[stor4 - 1 / stor7]:
        require not uint8(stor3.field_168)
        require msg.sender == owner
        require not uint8(stor3.field_160)
        Mask(96, 0, stor3.field_160) = 1
        emit MintFinished()
        return 0
    require totalSupply + stor9[stor4 - 1 / stor7] >= totalSupply
    totalSupply += stor9[stor4 - 1 / stor7]
    require balanceOf[address(stor3.field_0)] + stor9[stor4 - 1 / stor7] >= balanceOf[address(stor3.field_0)]
    balanceOf[address(stor3.field_0)] += stor9[stor4 - 1 / stor7]
    emit Mint(stor9[stor4 - 1 / stor7], owner);
    emit Transfer(stor9[stor4 - 1 / stor7], 0, owner);
    return 1
}



}

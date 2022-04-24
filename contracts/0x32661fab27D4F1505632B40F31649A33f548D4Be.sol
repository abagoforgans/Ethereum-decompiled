contract main {


// =======================  Init code  ======================


address stor1;
uint256 stor2;
address stor3;
address stor4;
uint256 stor8;
array of uint256 stor9;
array of uint256 stor10;
uint8 stor11;
uint256 stor11; offset 8

function _fallback() payable {
    stor2 = 2 * 3600
    stor3 = 0x64aba00510fec9a0fe4b236648879f35030b7d9b
    stor4 = 0x13828fa672c52226071f27ea1869463bdef2eccb
    stor8 = 1000000000 * 10^18
    bool(stor9.length) = 0
    stor9.length.field_1 = 10
    stor9.length.field_176 = 923341138831608635942254
    idx = 0
    while stor9.length + 31 / 32 > idx:
        stor9[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor10.length) = 0
    stor10.length.field_1 = 7
    stor10.length.field_8 = 'ELFTEST' / 256
    idx = 0
    while stor10.length + 31 / 32 > idx:
        stor10[idx].field_0 = 0
        idx = idx + 1
        continue 
    uint8(stor11.field_0) = 18
    Mask(248, 0, stor11.field_8) = 0
    stor1 = msg.sender
    return code.data[669 len 9982]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
address owner;
uint256 durationOfLock;
address aelfDevMultisigAddress;
address aelfCommunityMultisigAddress;
mapping of uint256 balanceOf;
mapping of struct lockTokens;
mapping of uint256 allowance;
uint256 totalSupplyCap;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint8 mintingFinished; offset 8
uint256 stor11; offset 8

function mintingFinished() {
    return bool(mintingFinished)
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function aelfDevMultisig() {
    return aelfDevMultisigAddress
}

function durationOfLock() {
    return durationOfLock
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function getLockTokens(address arg1) {
    require arg1
    return lockTokens[address(arg1)].field_0, lockTokens[address(arg1)].field_256
}

function totalSupplyCap() {
    return totalSupplyCap
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function aelfCommunityMultisig() {
    return aelfCommunityMultisigAddress
}

function _fallback() payable {
    revert
}

function setAElfMultisig(address arg1) {
    require msg.sender == aelfDevMultisigAddress
    require arg1
    aelfDevMultisigAddress = arg1
}

function mintTokens(address arg1) {
    require not mintingFinished
    require msg.sender == aelfDevMultisigAddress
    require not arg1
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setAElfCommunityMultisig(address arg1) {
    require msg.sender == aelfCommunityMultisigAddress
    require arg1
    aelfCommunityMultisigAddress = arg1
}

function finishMinting() {
    require msg.sender == aelfDevMultisigAddress
    require not mintingFinished
    stor11 = 1
    emit MintFinished(msg.sender);
    return 1
}

function setDurationOfLock(uint256 arg1) {
    require not mintingFinished
    require msg.sender == aelfCommunityMultisigAddress
    require arg1 >= 2 * 3600
    durationOfLock = arg1
    emit SetDurationOfLock(msg.sender);
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function destroyTokens(address arg1, uint256 arg2) {
    require msg.sender == aelfDevMultisigAddress
    require arg1
    require arg2 > 0
    require totalSupply >= arg2
    require balanceOf[address(arg1)] >= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    emit 0x5800808f: arg2, arg1
    emit Transfer(arg2, arg1, 0);
    return 1
}

function withdrawMintTokens(address arg1, uint256 arg2) {
    require not mintingFinished
    require msg.sender == aelfCommunityMultisigAddress
    require arg1
    require arg2 > 0
    require lockTokens[address(arg1)].field_0 - arg2 >= 0
    require arg2 <= lockTokens[address(arg1)].field_0
    lockTokens[address(arg1)].field_0 -= arg2
    if not lockTokens[address(arg1)].field_0 - arg2:
        lockTokens[address(arg1)].field_256 = 0
    emit WithdrawMintTokens(arg2, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
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

function approveMintTokens(address arg1, uint256 arg2) {
    require not mintingFinished
    require msg.sender == aelfCommunityMultisigAddress
    require arg1
    require arg2 > 0
    require lockTokens[address(arg1)].field_0 + arg2 >= lockTokens[address(arg1)].field_0
    require totalSupply + arg2 >= totalSupply
    require totalSupply + arg2 <= totalSupplyCap
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require lockTokens[address(arg1)].field_0 + arg2 >= lockTokens[address(arg1)].field_0
    lockTokens[address(arg1)].field_0 += arg2
    require block.number + durationOfLock >= block.number
    lockTokens[address(arg1)].field_256 = block.number + durationOfLock
    emit ApproveMintTokens(arg2, arg1);
    return 1
}



}

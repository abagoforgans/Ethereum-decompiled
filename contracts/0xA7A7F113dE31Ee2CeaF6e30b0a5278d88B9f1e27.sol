contract main {




// =====================  Runtime code  =====================


const TIMETHRESHOLD = (2 * 3600)

const MINTTIME = (60 * 3600)


uint256 totalSupply;
address owner;
address sub_1d6e852bAddress;
address sub_54be0b4fAddress;
mapping of uint256 balanceOf;
mapping of struct lockTokens;
mapping of uint256 allowance;
uint256 totalSupplyCap;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint8 mintingFinished; offset 8
uint256 stor10; offset 8
uint256 deployBlockNumber;
uint256 durationOfLock;
uint8 transferable;
uint8 canSetTransferable; offset 8
uint256 stor13; offset 8

function mintingFinished() {
    return bool(mintingFinished)
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function sub_1d6e852b(?) {
    return sub_1d6e852bAddress
}

function deployBlockNumber() {
    return deployBlockNumber
}

function decimals() {
    return decimals
}

function durationOfLock() {
    return durationOfLock
}

function sub_54be0b4f(?) {
    return sub_54be0b4fAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function transferable() {
    return bool(transferable)
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

function canSetTransferable() {
    return bool(canSetTransferable)
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_0de0e5fa(?) {
    require msg.sender == sub_54be0b4fAddress
    require arg1
    sub_54be0b4fAddress = arg1
    emit 0xe84ec16b: msg.sender, arg1
}

function sub_e294af5e(?) {
    require msg.sender == sub_1d6e852bAddress
    require arg1
    sub_1d6e852bAddress = arg1
    emit 0xd48349fc: msg.sender, arg1
}

function disableSetTransferable() {
    require msg.sender == sub_1d6e852bAddress
    transferable = 1
    stor13 = 0
    emit DisableSetTransferable(0, msg.sender);
}

function finishMinting() {
    require msg.sender == sub_1d6e852bAddress
    require not mintingFinished
    stor10 = 1
    emit MintFinished(msg.sender);
    return 1
}

function approve(address arg1, uint256 arg2) {
    require bool(transferable) == 1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setTransferable(bool arg1) {
    require msg.sender == sub_1d6e852bAddress
    require bool(canSetTransferable) == 1
    transferable = uint8(arg1)
    emit SetTransferable(arg1, msg.sender);
}

function setDurationOfLock(uint256 arg1) {
    require not mintingFinished
    require msg.sender == sub_54be0b4fAddress
    require arg1 >= 2 * 3600
    durationOfLock = arg1
    emit SetDurationOfLock(msg.sender);
}

function increaseApproval(address arg1, uint256 arg2) {
    require bool(transferable) == 1
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require bool(transferable) == 1
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function burnTokens(uint256 arg1) {
    require arg1 > 0
    require totalSupply >= arg1
    require balanceOf[address(msg.sender)] >= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    emit BurnTokens(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require bool(transferable) == 1
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function withdrawMintTokens(address arg1, uint256 arg2) {
    require arg1
    require not mintingFinished
    require msg.sender == sub_54be0b4fAddress
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
    require bool(transferable) == 1
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

function mintTokensWithinTime(address arg1, uint256 arg2) {
    require arg1
    require not mintingFinished
    require msg.sender == sub_1d6e852bAddress
    require arg2 > 0
    require block.number < deployBlockNumber + (60 * 3600)
    require totalSupply + arg2 >= totalSupply
    require totalSupply + arg2 <= totalSupplyCap
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit MintTokens(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function approveMintTokens(address arg1, uint256 arg2) {
    require arg1
    require not mintingFinished
    require msg.sender == sub_54be0b4fAddress
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

function mintTokens(address arg1) {
    require not mintingFinished
    require msg.sender == sub_1d6e852bAddress
    require arg1
    require lockTokens[address(arg1)].field_256 <= block.number
    require totalSupply + lockTokens[address(arg1)].field_0 >= totalSupply
    require totalSupply + lockTokens[address(arg1)].field_0 <= totalSupplyCap
    require balanceOf[address(arg1)] + lockTokens[address(arg1)].field_0 >= balanceOf[address(arg1)]
    require totalSupply + lockTokens[address(arg1)].field_0 >= totalSupply
    totalSupply += lockTokens[address(arg1)].field_0
    require balanceOf[address(arg1)] + lockTokens[address(arg1)].field_0 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += lockTokens[address(arg1)].field_0
    lockTokens[address(arg1)].field_0 = 0
    lockTokens[address(arg1)].field_256 = 0
    emit MintTokens(lockTokens[address(arg1)].field_0, arg1);
    emit Transfer(lockTokens[address(arg1)].field_0, 0, arg1);
    return 1
}

function transferForMultiAddresses(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require bool(transferable) == 1
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require mem[(32 * idx) + 140 len 20]
        require idx < arg2.length
        require mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(msg.sender)]
        require idx < arg2.length
        require mem[(32 * idx) + (32 * arg1.length) + 160] > 0
        require idx < arg2.length
        require mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg2.length
        require idx < arg1.length
        require balanceOf[mem[(32 * idx) + 140 len 20]] + mem[(32 * idx) + (32 * arg1.length) + 160] >= balanceOf[mem[(32 * idx) + 140 len 20]]
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        balanceOf[mem[(32 * idx) + 140 len 20]] += mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg1.length
        _54 = mem[(32 * idx) + 128]
        require idx < arg2.length
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], msg.sender, address(_54));
        idx = idx + 1
        continue 
    return 1
}



}

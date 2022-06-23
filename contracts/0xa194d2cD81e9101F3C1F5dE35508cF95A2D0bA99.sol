contract main {




// =====================  Runtime code  =====================


array of uint256 stor0;
mapping of struct stor1;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor8; offset 160
uint8 stor8; offset 168
uint128 stor8; offset 168
uint128 stor8; offset 160
address owner;
mapping of uint8 stor9;

function mintingFinished() {
    return bool(uint8(stor8.field_160))
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

function sub_5c3d69a9(?) {
    return bool(uint8(stor8.field_168))
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function finishMinting() {
    require msg.sender == owner
    require not uint8(stor8.field_160)
    Mask(96, 0, stor8.field_160) = 1
    emit MintFinished()
    return 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function tokensLocked(address arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    if stor1[address(arg1)][arg2].field_512:
        return 0
    return stor1[address(arg1)][arg2].field_0
}

function freezeAccount(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    stor9[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function renounceOwnership(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1 == 'Contract is to be disowned. _@_@'
    emit OwnershipRenounced(owner);
    owner = 0
}

function tokensLockedAtTime(address arg1, bytes32 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if stor1[address(arg1)][arg2].field_256 <= arg3:
        return 0
    return stor1[address(arg1)][arg2].field_0
}

function tokensUnlockable(address arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    if stor1[address(arg1)][arg2].field_256 > block.timestamp:
        return 0
    if stor1[address(arg1)][arg2].field_512:
        return 0
    return stor1[address(arg1)][arg2].field_0
}

function freezeToken(bool arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require bool(uint8(stor8.field_168)) != arg1
    Mask(88, 0, stor8.field_168) = Mask(88, 0, arg1)
    emit 0xf4546aef: bool(uint8(stor8.field_168)), this.address
    return 0
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require not uint8(stor8.field_168)
    require not stor9[address(msg.sender)]
    require not stor9[address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    require totalSupply >= arg1
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
    emit Burn(arg1, msg.sender);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require allowance[address(msg.sender)][address(arg1)] >= arg2
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require not uint8(stor8.field_160)
    require arg1
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, this.address);
    emit Transfer(arg2, this.address, arg1);
    emit Mint(arg2, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require not uint8(stor8.field_168)
    require not stor9[address(msg.sender)]
    require not stor9[address(arg1)]
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require allowance[address(arg1)][address(msg.sender)] >= arg2
    allowance[address(arg1)][address(msg.sender)] -= arg2
    require arg1
    require balanceOf[address(arg1)] >= arg2
    balanceOf[address(arg1)] -= arg2
    require totalSupply >= arg2
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
    emit Approval(allowance[address(arg1)][address(msg.sender)], arg1, msg.sender);
    emit Burn(arg2, arg1);
    return 1
}

function sub_9040b20e(?) {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    if stor1[address(arg1)][arg2].field_512:
        revert with 0, 'No tokens locked'
    if stor1[address(arg1)][arg2].field_0 <= 0:
        revert with 0, 'No tokens locked'
    require stor1[address(arg1)][arg2].field_256 + arg3 >= stor1[address(arg1)][arg2].field_256
    stor1[address(arg1)][arg2].field_256 += arg3
    emit Locked(stor1[address(arg1)][arg2].field_0, stor1[address(arg1)][arg2].field_256, arg1, arg2);
    return 1
}

function extendLock(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor1[address(msg.sender)][arg1].field_512:
        revert with 0, 'No tokens locked'
    if stor1[address(msg.sender)][arg1].field_0 <= 0:
        revert with 0, 'No tokens locked'
    require stor1[address(msg.sender)][arg1].field_256 + arg2 >= stor1[address(msg.sender)][arg1].field_256
    stor1[address(msg.sender)][arg1].field_256 += arg2
    emit Locked(stor1[address(msg.sender)][arg1].field_0, stor1[address(msg.sender)][arg1].field_256, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require not uint8(stor8.field_168)
    require not stor9[address(msg.sender)]
    require not stor9[address(arg1)]
    require not stor9[address(arg2)]
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require balanceOf[address(arg1)] >= arg3
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function totalBalanceOf(address arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    s = balanceOf[address(arg1)]
    while idx < stor0[address(arg1)]:
        require idx < stor0[address(arg1)]
        if stor1[address(arg1)][stor0[address(arg1)][idx]].field_512:
            require s >= s
            mem[0] = arg1
            mem[32] = 0
            idx = idx + 1
            s = s
            continue 
        require s + stor1[address(arg1)][stor0[address(arg1)][idx]].field_0 >= s
        mem[0] = arg1
        mem[32] = 0
        idx = idx + 1
        s = s + stor1[address(arg1)][stor0[address(arg1)][idx]].field_0
        continue 
    return s
}

function sub_ccb77f9a(?) {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    if stor1[address(arg1)][arg2].field_512:
        revert with 0, 'No tokens locked'
    if stor1[address(arg1)][arg2].field_0 <= 0:
        revert with 0, 'No tokens locked'
    require this.address
    require balanceOf[address(arg1)] >= arg3
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(this.address)] + arg3 >= balanceOf[address(this.address)]
    balanceOf[address(this.address)] += arg3
    emit Transfer(arg3, arg1, this.address);
    require stor1[address(arg1)][arg2].field_0 + arg3 >= stor1[address(arg1)][arg2].field_0
    stor1[address(arg1)][arg2].field_0 += arg3
    emit Locked(stor1[address(arg1)][arg2].field_0, stor1[address(arg1)][arg2].field_256, arg1, arg2);
    return 1
}

function getUnlockableTokens(address arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    s = 0
    while idx < stor0[address(arg1)]:
        require idx < stor0[address(arg1)]
        if stor1[address(arg1)][stor0[address(arg1)][idx]].field_256 > block.timestamp:
            require s >= s
            mem[0] = arg1
            mem[32] = 0
            idx = idx + 1
            s = s
            continue 
        if stor1[address(arg1)][stor0[address(arg1)][idx]].field_512:
            require s >= s
            mem[0] = arg1
            mem[32] = 0
            idx = idx + 1
            s = s
            continue 
        require s + stor1[address(arg1)][stor0[address(arg1)][idx]].field_0 >= s
        mem[0] = arg1
        mem[32] = 0
        idx = idx + 1
        s = s + stor1[address(arg1)][stor0[address(arg1)][idx]].field_0
        continue 
    return s
}

function increaseLockAmount(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor1[address(msg.sender)][arg1].field_512:
        revert with 0, 'No tokens locked'
    if stor1[address(msg.sender)][arg1].field_0 <= 0:
        revert with 0, 'No tokens locked'
    require not uint8(stor8.field_168)
    require not stor9[address(msg.sender)]
    require not stor9[address(this.address)]
    require this.address
    require balanceOf[address(msg.sender)] >= arg2
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(this.address)] + arg2 >= balanceOf[address(this.address)]
    balanceOf[address(this.address)] += arg2
    emit Transfer(arg2, msg.sender, this.address);
    require stor1[address(msg.sender)][arg1].field_0 + arg2 >= stor1[address(msg.sender)][arg1].field_0
    stor1[address(msg.sender)][arg1].field_0 += arg2
    emit Locked(stor1[address(msg.sender)][arg1].field_0, stor1[address(msg.sender)][arg1].field_256, msg.sender, arg1);
    return 1
}

function sub_6263e8ec(?) {
    require calldata.size - 4 >= 128
    require msg.sender == owner
    require block.timestamp + arg4 >= block.timestamp
    if not stor1[address(arg1)][arg2].field_512:
        if stor1[address(arg1)][arg2].field_0:
            revert with 0, 'Tokens already locked'
    if not arg3:
        revert with 0, 'Amount can not be 0'
    if not stor1[address(arg1)][arg2].field_0:
        stor0[address(arg1)]++
        stor0[address(arg1)][stor0[address(arg1)]] = arg2
    require this.address
    require balanceOf[address(arg1)] >= arg3
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(this.address)] + arg3 >= balanceOf[address(this.address)]
    balanceOf[address(this.address)] += arg3
    emit Transfer(arg3, arg1, this.address);
    stor1[address(arg1)][arg2].field_0 = arg3
    stor1[address(arg1)][arg2].field_256 = block.timestamp + arg4
    stor1[address(arg1)][arg2].field_512 = 0
    emit Locked(arg3, block.timestamp + arg4, arg1, arg2);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require not uint8(stor8.field_168)
    require not stor9[address(msg.sender)]
    require not stor9[address(arg1)]
    require not uint8(stor8.field_168)
    require not stor9[address(msg.sender)]
    require not stor9[address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    mem[ceil32(arg3.length) + 128] = arg2
    emit Approval(address arg1, address arg2, uint256 arg3):
                  Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0),
                  mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)],
                  msg.sender,
                  arg1,
    require ext_code.size(arg1)
    call arg1 with:
         gas gas_remaining wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 0, 1
}

function transferWithLock(address arg1, bytes32 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require block.timestamp + arg4 >= block.timestamp
    if not stor1[address(arg1)][arg2].field_512:
        if stor1[address(arg1)][arg2].field_0:
            revert with 0, 'Tokens already locked'
    if not arg3:
        revert with 0, 'Amount can not be 0'
    if not stor1[address(arg1)][arg2].field_0:
        stor0[address(arg1)]++
        stor0[address(arg1)][stor0[address(arg1)]] = arg2
    require not uint8(stor8.field_168)
    require not stor9[address(msg.sender)]
    require not stor9[address(this.address)]
    require this.address
    require balanceOf[address(msg.sender)] >= arg3
    balanceOf[address(msg.sender)] -= arg3
    require balanceOf[address(this.address)] + arg3 >= balanceOf[address(this.address)]
    balanceOf[address(this.address)] += arg3
    emit Transfer(arg3, msg.sender, this.address);
    stor1[address(arg1)][arg2].field_0 = arg3
    stor1[address(arg1)][arg2].field_256 = block.timestamp + arg4
    stor1[address(arg1)][arg2].field_512 = 0
    emit Locked(arg3, block.timestamp + arg4, arg1, arg2);
    return 1
}

function lock(bytes32 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require block.timestamp + arg3 >= block.timestamp
    if not stor1[address(msg.sender)][arg1].field_512:
        if stor1[address(msg.sender)][arg1].field_0:
            revert with 0, 'Tokens already locked'
    if not arg2:
        revert with 0, 'Amount can not be 0'
    if not stor1[address(msg.sender)][arg1].field_0:
        stor0[address(msg.sender)]++
        stor0[address(msg.sender)][stor0[address(msg.sender)]] = arg1
    require not uint8(stor8.field_168)
    require not stor9[address(msg.sender)]
    require not stor9[address(this.address)]
    require this.address
    require balanceOf[address(msg.sender)] >= arg2
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(this.address)] + arg2 >= balanceOf[address(this.address)]
    balanceOf[address(this.address)] += arg2
    emit Transfer(arg2, msg.sender, this.address);
    stor1[address(msg.sender)][arg1].field_0 = arg2
    stor1[address(msg.sender)][arg1].field_256 = block.timestamp + arg3
    stor1[address(msg.sender)][arg1].field_512 = 0
    emit Locked(arg2, block.timestamp + arg3, msg.sender, arg1);
    return 1
}

function unlock(address arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    s = 0
    s = 0
    while idx < stor0[address(arg1)]:
        require idx < stor0[address(arg1)]
        if stor1[address(arg1)][stor0[address(arg1)][idx]].field_256 > block.timestamp:
            mem[0] = arg1
            mem[32] = 0
            idx = idx + 1
            s = 0
            s = s
            continue 
        if stor1[address(arg1)][stor0[address(arg1)][idx]].field_512:
            mem[0] = arg1
            mem[32] = 0
            idx = idx + 1
            s = 0
            s = s
            continue 
        if stor1[address(arg1)][stor0[address(arg1)][idx]].field_0 <= 0:
            mem[0] = arg1
            mem[32] = 0
            idx = idx + 1
            s = stor1[address(arg1)][stor0[address(arg1)][idx]].field_0
            s = s
            continue 
        require s + stor1[address(arg1)][stor0[address(arg1)][idx]].field_0 >= s
        require idx < stor0[address(arg1)]
        stor1[address(arg1)][stor0[address(arg1)][idx]].field_512 = 1
        require idx < stor0[address(arg1)]
        mem[96] = stor1[address(arg1)][stor0[address(arg1)][idx]].field_0
        emit Unlocked(stor1[address(arg1)][stor0[address(arg1)][idx]].field_0, arg1, stor0[address(arg1)][idx]);
        mem[0] = arg1
        mem[32] = 0
        idx = idx + 1
        s = stor1[address(arg1)][stor0[address(arg1)][idx]].field_0
        s = s + stor1[address(arg1)][stor0[address(arg1)][idx]].field_0
        continue 
    if s > 0:
        require ext_code.size(this.address)
        call this.address.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), s
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    return s
}

function changeNameAndSymbol(string arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[64] = ceil32(arg1.length) + ceil32(arg2.length) + 160
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    require msg.sender == owner
    name[] = Array(len=arg1.length, data=arg1[all])
    mem[0] = 3
    symbol[] = Array(len=arg2.length, data=arg2[all])
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 64
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] = arg1.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 256 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = arg1.length + 96
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 256] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 288 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
        if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
            emit TokenNameChanged(string arg1, string arg2):
                                  mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + arg1.length + 128],
        else:
            mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 288] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 320 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
            emit TokenNameChanged(string arg1, string arg2):
                                  mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + 160],
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 256] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg1.length % 32) + 288 len arg1.length % 32]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = floor32(arg1.length) + 128
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 288] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 320 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
        if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
            emit TokenNameChanged(string arg1, string arg2):
                                  mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + floor32(arg1.length) + 160],
        else:
            mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 320] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 352 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
            emit TokenNameChanged(string arg1, string arg2):
                                  mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + 192],
}



}

contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
address owner;
address operatorAddress;
address CEOAddress;
address CTOAddress;
uint8 stor7; offset 160
uint8 stor7; offset 168
uint8 stor7; offset 176
uint8 stor7; offset 184
uint128 stor7; offset 184
uint128 stor7; offset 176
uint128 stor7; offset 168
uint128 stor7; offset 160
address CMOAddress;
mapping of uint8 stor8;
uint8 stor9;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;

function mintingFinished() {
    return bool(stor9)
}

function name() {
    return name[0 len name.length]
}

function CTO_Signature() {
    return bool(uint8(stor7.field_168))
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function CTO() {
    return CTOAddress
}

function blackList(address arg1) {
    return bool(stor8[arg1])
}

function operator() {
    return operatorAddress
}

function paused() {
    return bool(uint8(stor7.field_184))
}

function CMO() {
    return CMOAddress
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

function CEO() {
    return CEOAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function CEO_Signature() {
    return bool(uint8(stor7.field_160))
}

function CMO_Signature() {
    return bool(uint8(stor7.field_176))
}

function _fallback() payable {
    revert
}

function CTOSignature() {
    require msg.sender == CTOAddress
    Mask(88, 0, stor7.field_168) = 1
}

function CEOSignature() {
    require msg.sender == CEOAddress
    Mask(96, 0, stor7.field_160) = 1
}

function CMOSignature() {
    require msg.sender == CMOAddress
    Mask(80, 0, stor7.field_176) = 1
}

function finishMinting() {
    require msg.sender == owner
    require not stor9
    stor9 = 1
    emit MintFinished()
    return 1
}

function unpause() {
    require msg.sender == owner
    require uint8(stor7.field_184)
    Mask(72, 0, stor7.field_184) = 0
    emit Unpause()
}

function UnLockAddress(address arg1) {
    require msg.sender == owner
    require stor8[address(arg1)]
    stor8[address(arg1)] = 0
    emit Unlock(arg1);
    return 1
}

function transferOperator(address arg1) {
    require msg.sender == owner
    require arg1
    emit OperatorTransferred(operatorAddress, arg1);
    operatorAddress = arg1
}

function pause() {
    if owner != msg.sender:
        require msg.sender == operatorAddress
    require not uint8(stor7.field_184)
    Mask(72, 0, stor7.field_184) = 1
    emit Pause()
}

function SignatureInvalidity() {
    if owner != msg.sender:
        require msg.sender == operatorAddress
    Mask(96, 0, stor7.field_160) = 0
    Mask(88, 0, stor7.field_168) = 0
    Mask(80, 0, stor7.field_176) = 0
}

function approve(address arg1, uint256 arg2) {
    require not uint8(stor7.field_184)
    require bool(stor8[address(msg.sender)]) != 1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function SetLockAddress(address arg1) {
    if owner != msg.sender:
        require msg.sender == operatorAddress
    require arg1
    require arg1 != owner
    require bool(stor8[address(arg1)]) != 1
    stor8[address(arg1)] = 1
    emit Lock(arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not stor9
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function burnAdminAmount(uint256 arg1) {
    require msg.sender == owner
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit BurnAdminAmount(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
}

function transferCMO(address arg1) {
    require msg.sender == owner
    require uint8(stor7.field_160)
    require uint8(stor7.field_168)
    require uint8(stor7.field_176)
    require arg1
    Mask(96, 0, stor7.field_160) = 0
    Mask(88, 0, stor7.field_168) = 0
    Mask(80, 0, stor7.field_176) = 0
    emit CMOTransferred(CMOAddress, arg1);
    CMOAddress = arg1
}

function transferCTO(address arg1) {
    require msg.sender == owner
    require uint8(stor7.field_160)
    require uint8(stor7.field_168)
    require uint8(stor7.field_176)
    require arg1
    Mask(96, 0, stor7.field_160) = 0
    Mask(88, 0, stor7.field_168) = 0
    Mask(80, 0, stor7.field_176) = 0
    emit CTOTransferred(CTOAddress, arg1);
    CTOAddress = arg1
}

function transferCEO(address arg1) {
    require msg.sender == owner
    require uint8(stor7.field_160)
    require uint8(stor7.field_168)
    require uint8(stor7.field_176)
    require arg1
    Mask(96, 0, stor7.field_160) = 0
    Mask(88, 0, stor7.field_168) = 0
    Mask(80, 0, stor7.field_176) = 0
    emit CEOTransferred(CEOAddress, arg1);
    CEOAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require uint8(stor7.field_160)
    require uint8(stor7.field_168)
    require uint8(stor7.field_176)
    require arg1
    Mask(96, 0, stor7.field_160) = 0
    Mask(88, 0, stor7.field_168) = 0
    Mask(80, 0, stor7.field_176) = 0
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function restartMinting(string arg1) {
    require msg.sender == owner
    require uint8(stor7.field_160)
    require uint8(stor7.field_168)
    require uint8(stor7.field_176)
    require stor9
    Mask(96, 0, stor7.field_160) = 0
    Mask(88, 0, stor7.field_168) = 0
    Mask(80, 0, stor7.field_176) = 0
    stor9 = 0
    emit MintRestarted(Array(len=arg1.length, data=arg1[all]));
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require not uint8(stor7.field_184)
    require bool(stor8[address(msg.sender)]) != 1
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require not uint8(stor7.field_184)
    require bool(stor8[address(msg.sender)]) != 1
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor7.field_184)
    require bool(stor8[address(msg.sender)]) != 1
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
    require not uint8(stor7.field_184)
    require bool(stor8[address(msg.sender)]) != 1
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

function burnHackingAmount(address arg1, string arg2) {
    require msg.sender == owner
    require uint8(stor7.field_160)
    require uint8(stor7.field_168)
    require uint8(stor7.field_176)
    Mask(96, 0, stor7.field_160) = 0
    Mask(88, 0, stor7.field_168) = 0
    Mask(80, 0, stor7.field_176) = 0
    require balanceOf[address(arg1)] > 0
    require balanceOf[address(arg1)] <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] = 0
    require balanceOf[address(arg1)] <= totalSupply
    totalSupply -= balanceOf[address(arg1)]
    emit BurnHackerAmount(balanceOf[address(arg1)], Array(len=arg2.length, data=arg2[all]), arg1);
    emit Transfer(balanceOf[address(arg1)], arg1, 0);
}

function MultiTransfer(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    require arg1.length == arg2.length
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require mem[(32 * idx) + 140 len 20]
        require idx < arg2.length
        require s + mem[(32 * idx) + (32 * arg1.length) + 160] >= s
        s = s + mem[(32 * idx) + (32 * arg1.length) + 160]
        idx = idx + 1
        continue 
    require s * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length <= balanceOf[address(msg.sender)]
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg2.length
        require idx < arg1.length
        require balanceOf[mem[(32 * idx) + 140 len 20]] + mem[(32 * idx) + (32 * arg1.length) + 160] >= balanceOf[mem[(32 * idx) + 140 len 20]]
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 0
        balanceOf[mem[(32 * idx) + 140 len 20]] += mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg1.length
        _75 = mem[(32 * idx) + 128]
        require idx < arg2.length
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], msg.sender, address(_75));
        idx = idx + 1
        continue 
    return 1
}



}

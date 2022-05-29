contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
uint8 stor3; offset 160
uint8 stor3; offset 168
address owner;
uint256 whitelistExpiration;
mapping of uint8 stor5;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint8 stor9;

function mintingFinished() {
    return bool(uint8(stor3.field_160))
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

function paused() {
    return bool(uint8(stor3.field_168))
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

function whitelistExpiration() {
    return whitelistExpiration
}

function allowedTransactors(address arg1) {
    return bool(stor5[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function callSpenderWhitelist(address arg1) {
    return bool(stor9[arg1])
}

function _fallback() payable {
    revert
}

function whitelistActive() {
    return (block.timestamp < whitelistExpiration)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function unpause() {
    require msg.sender == owner
    require uint8(stor3.field_168)
    uint8(stor3.field_168) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor3.field_168)
    uint8(stor3.field_168) = 1
    emit Pause()
}

function addAllowedTransactor(address arg1) {
    require msg.sender == owner
    emit AllowedTransactorAdded(arg1);
    stor5[address(arg1)] = 1
}

function removeAllowedTransactor(address arg1) {
    require msg.sender == owner
    emit AllowedTransactorRemoved(arg1);
    stor5[address(arg1)] = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function addCallSpenderWhitelist(address arg1) {
    require msg.sender == owner
    stor9[address(arg1)] = 1
    emit AddCallSpenderWhitelist(msg.sender, arg1);
}

function finishMinting() {
    require msg.sender == owner
    require not uint8(stor3.field_160)
    uint8(stor3.field_160) = 1
    emit MintFinished()
    return 1
}

function removeCallSpenderWhitelist(address arg1) {
    require msg.sender == owner
    stor9[address(arg1)] = 0
    emit RemoveCallSpenderWhitelist(msg.sender, arg1);
}

function approve(address arg1, uint256 arg2) {
    require not uint8(stor3.field_168)
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 <= balanceOf[address(arg1)]
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    emit Transfer(arg2, arg1, 0);
}

function burn(uint256 arg1) {
    require msg.sender == owner
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
}

function increaseApproval(address arg1, uint256 arg2) {
    require not uint8(stor3.field_168)
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require not uint8(stor3.field_168)
    if arg2 <= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] -= arg2
    else:
        allowance[msg.sender][address(arg1)] = 0
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not uint8(stor3.field_160)
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function setWhitelistExpiration(uint256 arg1) {
    require msg.sender == owner
    if whitelistExpiration:
        if block.timestamp >= whitelistExpiration:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'an expired whitelist cannot be extended'
    if arg1 < block.timestamp + (24 * 3600):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'whitelist expiration not far enough into the future'
    emit SetWhitelistExpiration(arg1);
    whitelistExpiration = arg1
}

function transfer(address arg1, uint256 arg2) {
    if block.timestamp < whitelistExpiration:
        if not stor5[address(msg.sender)]:
            if not stor5[address(arg1)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'neither sender nor recipient are allowed'
    require not uint8(stor3.field_168)
    require arg1
    require arg2 <= balanceOf[msg.sender]
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if block.timestamp < whitelistExpiration:
        if not stor5[address(arg1)]:
            if not stor5[address(arg2)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'neither sender nor recipient are allowed'
    require not uint8(stor3.field_168)
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function approveAndCallWithSender(address arg1, uint256 arg2, bytes4 arg3, bytes arg4) payable {
    mem[128 len arg4.length] = arg4[all]
    if this.address == arg1:
        revert with 0, 'token contract can't be approved'
    if not stor9[address(arg1)]:
        revert with 0, 'spender not in whitelist'
    require not uint8(stor3.field_168)
    allowance[msg.sender][address(arg1)] = arg2
    mem[ceil32(arg4.length) + 128] = arg2
    emit Approval(arg2, msg.sender, arg1);
    mem[ceil32(arg4.length) + 160] = Mask(32, 224, arg3)
    mem[ceil32(arg4.length) + 196 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    mem[ceil32(arg4.length) + floor32(arg4.length) + -(arg4.length % 32) + 228 len arg4.length % 32] = mem[floor32(arg4.length) + -(arg4.length % 32) + 160 len arg4.length % 32]
    mem[arg4.length + ceil32(arg4.length) + 196 len floor32(arg4.length + 67)] = arg3, msg.sender, call.data[arg4 + 36 len floor32(arg4.length)], mem[ceil32(arg4.length) + floor32(arg4.length) + 196 len floor32(arg4.length + 67) + -floor32(arg4.length) - 36]
    if not arg4.length + 36 % 32:
        call arg1.mem[arg4.length + ceil32(arg4.length) + 196 len 4] with:
           value msg.value wei
             gas gas_remaining wei
            args mem[arg4.length + ceil32(arg4.length) + 200 len arg4.length + 32]
    else:
        mem[floor32(arg4.length + 36) + arg4.length + ceil32(arg4.length) + 196] = mem[floor32(arg4.length + 36) + arg4.length + ceil32(arg4.length) + -(arg4.length + 36 % 32) + 228 len arg4.length + 36 % 32]
        call arg1.mem[arg4.length + ceil32(arg4.length) + 196 len 4] with:
           value msg.value wei
             gas gas_remaining wei
            args mem[arg4.length + ceil32(arg4.length) + 200 len floor32(arg4.length + 36) + 28]
    if not ext_call.success:
        revert with 0, 'proxied call failed'
    return 1
}



}

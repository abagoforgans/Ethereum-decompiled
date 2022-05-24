contract main {




// =====================  Runtime code  =====================


const ROLE_MINTER = 'minter'

const ROLE_SUPERUSER = 'superuser'


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
address owner;
mapping of uint8 stor4;
uint8 stor5;
uint8 stor5; offset 8
uint256 stor5; offset 8
uint256 cap;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
mapping of uint8 stor99;

function mintingFinished() {
    return bool(uint8(stor5.field_8))
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

function cap() {
    return cap
}

function paused() {
    return bool(uint8(stor5.field_0))
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

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
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
    require uint8(stor5.field_0)
    uint8(stor5.field_0) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor5.field_0)
    uint8(stor5.field_0) = 1
    emit Pause()
}

function isSuperuser(address arg1) {
    mem[160 len 0] = None
    mem[160] = bool(stor4[mem[160 len 9]][address(arg1)])
    return memory
      from 160
       len 32
}

function finishMinting() {
    require msg.sender == owner
    require not uint8(stor5.field_8)
    Mask(248, 0, stor5.field_8) = 1
    emit MintFinished()
    return 1
}

function approve(address arg1, uint256 arg2) {
    require not uint8(stor5.field_0)
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        mem[160 len 0] = None
        require stor4[mem[160 len 9]][address(msg.sender)]
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function addMinter(address arg1) {
    mem[160 len 0] = None
    if msg.sender == owner:
        stor4[mem[160 len 6]][address(arg1)] = 1
    else:
        require stor4[mem[160 len 9]][address(msg.sender)]
        mem[224 len 0] = None
        stor4[mem[224 len 6]][address(arg1)] = 1
    emit RoleAdded('minter', arg1);
}

function removeMinter(address arg1) {
    mem[160 len 0] = None
    if msg.sender == owner:
        stor4[mem[160 len 6]][address(arg1)] = 0
    else:
        require stor4[mem[160 len 9]][address(msg.sender)]
        mem[224 len 0] = None
        stor4[mem[224 len 6]][address(arg1)] = 0
    emit RoleRemoved('minter', arg1);
}

function transferSuperuser(address arg1) {
    mem[160 len 0] = None
    require stor4[mem[160 len 9]][address(msg.sender)]
    require arg1
    mem[224 len 0] = None
    stor4[mem[224 len 9]][address(msg.sender)] = 0
    emit RoleRemoved('superuser', msg.sender);
    stor4[Mask(72, 0, 'superuser')][address(arg1)] = 1
    emit RoleAdded('superuser', arg1);
}

function increaseApproval(address arg1, uint256 arg2) {
    require not uint8(stor5.field_0)
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require not uint8(stor5.field_0)
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor5.field_0)
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    mem[160 len 0] = None
    require stor4[mem[160 len 6]][address(msg.sender)]
    require not uint8(stor5.field_8)
    require totalSupply + arg2 >= totalSupply
    require totalSupply + arg2 <= cap
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function checkRole(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + 128] = 4
    require stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor5.field_0)
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

function hasRole(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + 128] = 4
    mem[ceil32(arg2.length) + 128] = bool(stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)])
    return memory
      from ceil32(arg2.length) + 128
       len 32
}



}

contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
mapping of uint8 stor6;
uint8 stor7;
mapping of uint8 stor8;
mapping of uint8 stor9;
mapping of uint8 stor10;

function name() {
    return name[0 len name.length]
}

function isBlacklistAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor9[address(arg1)])
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function isPauser(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor6[address(arg1)])
}

function paused() {
    return bool(stor7)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function isMinter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor8[address(arg1)])
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function isBlacklisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor10[address(arg1)])
}

function _fallback() payable {
    revert
}

function unpause() {
    require msg.sender
    require stor6[address(msg.sender)]
    require stor7
    stor7 = 0
    emit Unpaused(msg.sender);
}

function pause() {
    require msg.sender
    require stor6[address(msg.sender)]
    require not stor7
    stor7 = 1
    emit Paused(msg.sender);
}

function renouncePauser() {
    require msg.sender
    require stor6[address(msg.sender)]
    stor6[address(msg.sender)] = 0
    emit PauserRemoved(msg.sender);
}

function renounceMinter() {
    require msg.sender
    require stor8[address(msg.sender)]
    stor8[address(msg.sender)] = 0
    emit MinterRemoved(msg.sender);
}

function addPauser(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor6[address(msg.sender)]
    require arg1
    require not stor6[address(arg1)]
    stor6[address(arg1)] = 1
    emit PauserAdded(arg1);
}

function addMinter(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor8[address(msg.sender)]
    require arg1
    require not stor8[address(arg1)]
    stor8[address(arg1)] = 1
    emit MinterAdded(arg1);
}

function addBlacklisted(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor9[address(msg.sender)]
    require arg1
    require not stor10[address(arg1)]
    stor10[address(arg1)] = 1
    emit BlacklistedAdded(arg1);
}

function removeBlacklisted(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor9[address(msg.sender)]
    require arg1
    require stor10[address(arg1)]
    stor10[address(arg1)] = 0
    emit BlacklistedRemoved(arg1);
}

function addBlacklistAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor9[address(msg.sender)]
    require arg1
    require not stor9[address(arg1)]
    stor9[address(arg1)] = 1
    emit BlacklistAdminAdded(arg1);
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender
    require not stor10[address(msg.sender)]
    require not stor7
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sudoBurnFrom(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender
    require not stor10[address(msg.sender)]
    require msg.sender
    require stor8[address(msg.sender)]
    require arg1
    require arg2 <= totalSupply
    totalSupply -= arg2
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    emit Transfer(arg2, arg1, 0);
}

function mint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender
    require not stor10[address(msg.sender)]
    require msg.sender
    require stor8[address(msg.sender)]
    require arg1
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender
    require not stor10[address(msg.sender)]
    require not stor7
    require arg2 <= allowance[address(msg.sender)][address(arg1)]
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function sudoRetrieveFrom(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender
    require not stor10[address(msg.sender)]
    require msg.sender
    require stor8[address(msg.sender)]
    require msg.sender
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require balanceOf[address(msg.sender)] + arg2 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += arg2
    emit Transfer(arg2, arg1, msg.sender);
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender
    require not stor10[address(msg.sender)]
    require not stor7
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender
    require not stor10[address(msg.sender)]
    require arg1
    require not stor10[address(arg1)]
    require not stor7
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require msg.sender
    require not stor10[address(msg.sender)]
    require arg1
    require not stor10[address(arg1)]
    require arg2
    require not stor10[address(arg2)]
    require not stor7
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require msg.sender
    require arg1
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function sub_60b37347(?) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require msg.sender
    require not stor10[address(msg.sender)]
    require not stor7
    require arg1 != this.address
    require msg.sender
    require not stor10[address(msg.sender)]
    require not stor7
    require arg1
    require msg.sender
    mem[0] = arg1
    mem[32] = sha3(address(msg.sender), 4)
    allowance[address(msg.sender)][address(arg1)] = arg2
    mem[ceil32(arg3.length) + 128] = arg2
    emit Approval(address arg1, address arg2, uint256 arg3):
                  Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0),
                  mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)],
                  msg.sender,
                  arg1,
    mem[ceil32(arg3.length) + 160 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 192 len arg3.length % 32] = mem[floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
    mem[arg3.length + ceil32(arg3.length) + 160] = '(address,uint256)'
    mem[arg3.length + ceil32(arg3.length) + 213] = msg.sender
    mem[arg3.length + ceil32(arg3.length) + 245] = arg2
    mem[arg3.length + ceil32(arg3.length) + 177] = 68
    mem[64] = arg3.length + ceil32(arg3.length) + 277
    mem[arg3.length + ceil32(arg3.length) + 277 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
    mem[arg3.length + ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 309 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32] = mem[ceil32(arg3.length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 192 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
    mem[arg3.length + ceil32(arg3.length) + 277 len 64] = Mask(32, 224, sha3(mem[arg3.length + ceil32(arg3.length) + 277 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]])) >> 224, msg.sender, Mask(224, 32, arg2) >> 32
    call arg1.mem[arg3.length + ceil32(arg3.length) + 277 len 4] with:
         gas gas_remaining wei
        args mem[arg3.length + ceil32(arg3.length) + 281 len 64]
    return 1
}



}

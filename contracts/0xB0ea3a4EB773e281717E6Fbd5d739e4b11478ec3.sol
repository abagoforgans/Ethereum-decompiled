contract main {




// =====================  Runtime code  =====================


address adminAddress;
mapping of uint256 stor1;
uint8 stor2;
uint8 stor2; offset 8
uint256 stor2; offset 8
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor6;
array of uint256 name;
uint8 decimals;
array of uint256 symbol;
array of uint256 version;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function version() {
    return version[0 len version.length]
}

function paused() {
    return bool(uint8(stor2.field_8))
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function isGlobalLock() {
    return bool(uint8(stor2.field_0))
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function admin() {
    return adminAddress
}

function _fallback() {
    revert
}

function AllLock() {
    require msg.sender == adminAddress
    uint8(stor2.field_0) = 1
    return 1
}

function AllUnLock() {
    require msg.sender == adminAddress
    uint8(stor2.field_0) = 0
    return 1
}

function isLocked(address arg1) {
    if stor1[address(arg1)] <= block.timestamp:
        return 0
    return 1
}

function unLock(address arg1) {
    require msg.sender == adminAddress
    stor1[address(arg1)] = 0
    return 1
}

function unpause() {
    require msg.sender == adminAddress
    require uint8(stor2.field_8)
    Mask(248, 0, stor2.field_8) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == adminAddress
    require not uint8(stor2.field_8)
    Mask(248, 0, stor2.field_8) = 1
    emit Pause()
}

function transferAdminship(address arg1) {
    require msg.sender == adminAddress
    require arg1
    adminAddress = arg1
    emit TransferAdminship(adminAddress);
}

function setLocked(address arg1, uint256 arg2) {
    require msg.sender == adminAddress
    stor1[address(arg1)] = arg2
    emit LockStatus(address(arg1), arg2);
    return 1
}

function setFrozen(address arg1, bool arg2) {
    require msg.sender == adminAddress
    require not uint8(stor2.field_8)
    stor6[address(arg1)] = uint8(arg2)
    emit FrozenStatus(address(arg1), arg2);
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require msg.sender == adminAddress
    require not uint8(stor2.field_8)
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor2.field_8)
    require arg1
    require not stor6[address(msg.sender)]
    if bool(uint8(stor2.field_0)) == 1:
        if stor1[address(msg.sender)] > block.timestamp:
            revert with 0, 'Tokens locked as single'
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function externalTokensRecovery(address arg1) {
    require msg.sender == adminAddress
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor2.field_8)
    require arg2
    require not stor6[address(arg1)]
    if bool(uint8(stor2.field_0)) == 1:
        if stor1[address(msg.sender)] > block.timestamp:
            revert with 0, 'Tokens locked as single'
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sendBatches(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == adminAddress
    require arg1.length == arg2.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _38 = mem[(32 * idx) + 128]
        require idx < arg2.length
        require not uint8(stor2.field_8)
        require mem[(32 * idx) + 140 len 20]
        require not stor6[address(msg.sender)]
        if bool(uint8(stor2.field_0)) == 1:
            if stor1[address(msg.sender)] > block.timestamp:
                revert with 0, 'Tokens locked as single'
        require mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
        require balanceOf[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg1.length) + 160] >= balanceOf[address(mem[(32 * idx) + 128])]
        balanceOf[address(mem[(32 * idx) + 128])] += mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], msg.sender, address(_38));
        require idx < arg1.length
        require msg.sender == adminAddress
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        stor1[mem[(32 * idx) + 140 len 20]] = 4708628725000
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg1.length) + (32 * arg2.length) + 192] = 4708628725000
        emit LockStatus(mem[(32 * arg1.length) + (32 * arg2.length) + 160], 4708628725000);
        idx = idx + 1
        continue 
}



}

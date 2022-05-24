contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 sellPrice;
uint256 buyPrice;
address migrationAgentAddress;
uint256 totalMigrated;
address migrationMasterAddress;
address sub_0d655d97Address;
array of uint256 lockReason;
mapping of struct locked;

function name() {
    return name[0 len name.length]
}

function sub_0d655d97(?) {
    return sub_0d655d97Address
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function sellPrice() {
    return sellPrice
}

function migrationMaster() {
    return migrationMasterAddress
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function lockReason(address arg1, uint256 arg2) {
    require arg2 < lockReason[arg1]
    return lockReason[arg1][arg2]
}

function migrationAgent() {
    return migrationAgentAddress
}

function buyPrice() {
    return buyPrice
}

function owner() {
    return owner
}

function totalMigrated() {
    return totalMigrated
}

function symbol() {
    return symbol[0 len symbol.length]
}

function locked(address arg1, bytes32 arg2) {
    return locked[arg1][arg2].field_0, locked[arg1][arg2].field_256
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function setCrowdAddress(address arg1) {
    require msg.sender == owner
    sub_0d655d97Address = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    return 1
}

function setPrices(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    sellPrice = arg1
    buyPrice = arg2
}

function setMigrationMaster(address arg1) {
    require msg.sender == migrationMasterAddress
    require arg1
    migrationMasterAddress = arg1
}

function setMigrationAgent(address arg1) {
    require not migrationAgentAddress
    require msg.sender == migrationMasterAddress
    migrationAgentAddress = arg1
}

function burn(uint256 arg1) {
    require arg1 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function tokensLocked(address arg1, bytes32 arg2, uint256 arg3) {
    if arg3 >= locked[address(arg1)][arg2].field_256:
        return 0
    return locked[address(arg1)][arg2].field_0
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    return 1
}

function mintToken(address arg1, uint256 arg2) {
    require msg.sender == owner
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, this.address);
    emit Transfer(arg2, this.address, arg1);
}

function extendLock(bytes32 arg1, uint256 arg2) {
    require block.timestamp < locked[address(msg.sender)][arg1].field_256
    require locked[address(msg.sender)][arg1].field_0 > 0
    locked[msg.sender][arg1].field_256 += arg2
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(arg1)]
    require arg2 <= allowance[address(arg1)][msg.sender]
    balanceOf[address(arg1)] -= arg2
    allowance[address(arg1)][msg.sender] -= arg2
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[msg.sender][address(arg1)] = arg2
    require ext_code.size(arg1)
    call arg1.0x8f4ffcb1 with:
         gas gas_remaining wei
        args msg.sender, arg2, this.address, Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function transferableBalanceOf(address arg1) {
    idx = 0
    s = 0
    while idx < lockReason[address(arg1)]:
        require idx < lockReason[address(arg1)]
        mem[0] = arg1
        mem[32] = 13
        if block.timestamp >= locked[address(arg1)][stor13[address(arg1)][idx]].field_256:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + locked[address(arg1)][stor13[address(arg1)][idx]].field_0
        continue 
    if s <= balanceOf[address(arg1)]:
        return (balanceOf[address(arg1)] - s)
    revert
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    idx = 0
    s = 0
    while idx < lockReason[address(msg.sender)]:
        require idx < lockReason[address(msg.sender)]
        mem[0] = msg.sender
        mem[32] = 13
        if block.timestamp >= locked[address(msg.sender)][stor13[address(msg.sender)][idx]].field_256:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + locked[address(msg.sender)][stor13[address(msg.sender)][idx]].field_0
        continue 
    if s <= balanceOf[address(msg.sender)]:
        require balanceOf[address(msg.sender)] - s >= arg2
        require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
        balanceOf[msg.sender] -= arg2
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
        if balanceOf[address(arg1)] + balanceOf[msg.sender] == balanceOf[msg.sender] + balanceOf[address(arg1)]:
    revert
}

function lock(address arg1, bytes32 arg2, uint256 arg3, uint256 arg4) {
    require msg.sender == sub_0d655d97Address
    require arg4 + block.timestamp >= block.timestamp
    idx = 0
    s = 0
    while idx < lockReason[address(arg1)]:
        require idx < lockReason[address(arg1)]
        mem[0] = arg1
        mem[32] = 13
        if block.timestamp >= locked[address(arg1)][stor13[address(arg1)][idx]].field_256:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + locked[address(arg1)][stor13[address(arg1)][idx]].field_0
        continue 
    require s <= balanceOf[address(arg1)]
    require arg3 <= balanceOf[address(arg1)] - s
    if not locked[address(arg1)][arg2].field_0:
        lockReason[address(arg1)]++
        lockReason[address(arg1)][lockReason[address(arg1)]] = arg2
    if block.timestamp >= locked[address(arg1)][arg2].field_256:
        locked[address(arg1)][arg2].field_0 = arg3
        locked[address(arg1)][arg2].field_256 = arg4 + block.timestamp
    else:
        if locked[address(arg1)][arg2].field_0:
            locked[address(arg1)][arg2].field_0 += arg3
        else:
            locked[address(arg1)][arg2].field_0 = arg3
            locked[address(arg1)][arg2].field_256 = arg4 + block.timestamp
    return 1
}



}

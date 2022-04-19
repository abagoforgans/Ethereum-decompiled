contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
array of uint256 stor4;
uint8 stor5;
array of uint256 stor6;
array of uint256 stor7;
uint256 stor8;

function _fallback() payable {
    bool(stor4.length) = 0
    stor4.length.field_1 = 12
    stor4.length.field_8 = 'Redeem Token' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor5 = 18
    bool(stor6.length) = 0
    stor6.length.field_1 = 4
    stor6.length.field_8 = 'DEEM' / 256
    idx = 0
    while stor6.length + 31 / 32 > idx:
        stor6[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor7.length) = 0
    stor7.length.field_1 = 1
    stor7.length.field_8 = '1' / 256
    idx = 0
    while stor7.length + 31 / 32 > idx:
        stor7[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor8 = 0
    require not msg.value
    stor0 = msg.sender
    emit Admined(stor0);
    stor1 = stor8
    emit Transfer(stor8, 0, this.address);
    return code.data[767 len 5555]
}



// =====================  Runtime code  =====================


address adminAddress;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
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

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
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

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferAdminship(address arg1) {
    require msg.sender == adminAddress
    require arg1
    adminAddress = arg1
    emit TransferAdminship(adminAddress);
}

function burnToken(address arg1, uint256 arg2) {
    require msg.sender == adminAddress
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
}

function mintToken(address arg1, uint256 arg2) {
    require msg.sender == adminAddress
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    emit Transfer(arg2, 0, this.address);
    emit Transfer(arg2, this.address, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_99a4bb62(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == adminAddress
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require balanceOf[mem[(32 * idx) + 140 len 20]] + 10^18 >= balanceOf[mem[(32 * idx) + 140 len 20]]
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        balanceOf[mem[(32 * idx) + 140 len 20]] += 10^18
        idx = idx + 1
        continue 
    require totalSupply + (10^18 * arg1.length) >= totalSupply
    totalSupply += 10^18 * arg1.length
    emit 0x6490153f: (10^18 * arg1.length)
}



}

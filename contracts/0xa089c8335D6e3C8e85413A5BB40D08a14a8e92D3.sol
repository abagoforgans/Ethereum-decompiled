contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
mapping of uint256 stor3;
array of uint256 stor6;
uint8 stor7;
array of uint256 stor8;
array of uint256 stor9;
uint256 stor7C30;
uint256 storFB7B;

function _fallback() payable {
    bool(stor6.length) = 0
    uint255(stor6.length.field_1) = 6
    Mask(248, 0, stor6.length.field_8) = 'OMEGON' / 256
    idx = 0
    while stor6.length + 31 / 32 > idx:
        stor6[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor7 = 18
    bool(stor8.length) = 0
    uint255(stor8.length.field_1) = 4
    Mask(248, 0, stor8.length.field_8) = 'OMGN' / 256
    idx = 0
    while stor8.length + 31 / 32 > idx:
        stor8[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor9.length) = 0
    uint255(stor9.length.field_1) = 1
    Mask(248, 0, stor9.length.field_8) = '1' / 256
    idx = 0
    while stor9.length + 31 / 32 > idx:
        stor9[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    stor0 = msg.sender
    emit Admined(msg.sender);
    stor2 = 2 * 10^9 * 10^stor7
    storFB7B = 10^9 * 10^stor7
    stor[code.data[3983 len 32]] = 4 * 10^6 * 10^stor7
    stor3[msg.sender] = 996 * 10^6 * 10^stor7
    emit code.data[3951 len 32]: stor2, 0, this.address
    emit code.data[3951 len 32]: stor7C30, this.address, 0x1789bd78712815e7fc955dbba6803303f4ef15ac
    emit code.data[3951 len 32]: stor[code.data[3983 len 32]], this.address, 0xfab6368b0f7be60c573a6562d82469b5ed9e7ee6
    emit code.data[3951 len 32]: stor3[address(msg.sender)], this.address, msg.sender
    return code.data[963 len 2988]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address adminAddress;
address allowedAddress;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor5;
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

function lockTransfer() {
    return bool(uint8(stor0.field_160))
}

function decimals() {
    return decimals
}

function allowedAddress() {
    return allowedAddress
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

function frozen(address arg1) {
    return bool(stor5[arg1])
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

function setAllowedAddress(address arg1) {
    allowedAddress = arg1
    emit AllowedSet(arg1);
}

function transferAdminship(address arg1) {
    require adminAddress == msg.sender
    adminAddress = arg1
    emit TransferAdminship(arg1);
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setTransferLock(bool arg1) {
    require adminAddress == msg.sender
    Mask(96, 0, stor0.field_160) = Mask(96, 0, arg1)
    emit SetTransferLock(arg1);
}

function setFrozen(address arg1, bool arg2) {
    require adminAddress == msg.sender
    stor5[address(arg1)] = uint8(arg2)
    emit FrozenStatus(address(arg1), arg2);
}

function transfer(address arg1, uint256 arg2) {
    if uint8(stor0.field_160):
        require allowedAddress == msg.sender
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require not stor5[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if uint8(stor0.field_160):
        require allowedAddress == msg.sender
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require not stor5[address(arg1)]
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}

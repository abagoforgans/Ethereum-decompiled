contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor2;
array of uint256 stor3;
bool stor4; offset 256
uint8 stor4; offset 176
uint8 stor4; offset 184
uint8 stor4; offset 192
uint64 stor4; offset 200
uint256 stor4;
uint256 stor4;
uint256 stor5;

function _fallback() payable {
    stor0 = msg.sender
    Mask(184, 0, stor4.field_0) = Mask(184, 0, 0xffffffffffffffffff00ffffffffffffffffffffffffffffffffffffffff0000 and uint256(stor4.field_0))
    uint8(stor4.field_176) = 1
    uint8(stor4.field_184) = 1
    uint8(stor4.field_192) = 18
    stor4.field_200 % 72057594037927936 = Mask(56, 200, 0xffffffffffffffffff00ffffffffffffffffffffffffffffffffffffffff0000 and uint256(stor4.field_0)) >> 200
    stor4.field_256 % 1 = 0
    stor4.field_256 % 1 = 0
    stor5 = 0
    require not msg.value
    mem[96 len -5316] = code.data[5849 len -5316]
    mem[64] = -5220
    require mem[mem[96] + 96] > 1
    require mem[mem[128] + 96] > 1
    stor2[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor3[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    uint8(stor4.field_192) = mem[191 len 1]
    return code.data[533 len 5316]
}



// =====================  Runtime code  =====================


address owner;
address crowdsaleContractAddress;
array of uint256 name;
array of uint256 symbol;
bool stor4; offset 256
uint8 stor4;
uint8 stor4; offset 8
uint8 stor4; offset 176
uint8 stor4; offset 184
uint8 decimals; offset 192
uint128 stor4; offset 176
address upgraderAddress; offset 16
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function upgraderSet() {
    return bool(uint8(stor4.field_8))
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

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function mintingAllowed() {
    return bool(uint8(stor4.field_184))
}

function crowdsaleContractAddress() {
    return crowdsaleContractAddress
}

function upgrader() {
    return upgraderAddress
}

function locked() {
    return bool(uint8(stor4.field_176))
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function upgradable() {
    return bool(uint8(stor4.field_0))
}

function setCrowdsale(address arg1) {
    require owner == msg.sender
    crowdsaleContractAddress = arg1
    return 1
}

function allowUpgrading(bool arg1) {
    require owner == msg.sender
    uint8(stor4.field_0) = uint8(arg1)
    return 1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
    return 1
}

function disableMinting() {
    if owner != msg.sender:
        require crowdsaleContractAddress == msg.sender
    require uint8(stor4.field_184)
    uint8(stor4.field_184) = 0
    return 1
}

function setLock(bool arg1) {
    if owner != msg.sender:
        require crowdsaleContractAddress == msg.sender
    require arg1 != bool(uint8(stor4.field_176))
    Mask(80, 0, stor4.field_176) = Mask(80, 0, arg1)
    return 1
}

function setUpgrader(address arg1) {
    require owner == msg.sender
    require not uint8(stor4.field_8)
    require arg1
    uint8(stor4.field_8) = 1
    upgraderAddress = arg1
    Mask(80, 0, stor4.field_176) = 0
    stor4.field_256 % 1 = 0
    return 1
}

function setNameAndTicker(string arg1, string arg2) {
    require owner == msg.sender
    require arg1.length > 1
    require arg2.length > 1
    name[] = Array(len=arg1.length, data=arg1[all])
    symbol[] = Array(len=arg2.length, data=arg2[all])
    return 1
}

function approve(address arg1, uint256 arg2) {
    require not uint8(stor4.field_176)
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function demint(address arg1, uint256 arg2) {
    require crowdsaleContractAddress == msg.sender
    require uint8(stor4.field_184)
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require crowdsaleContractAddress == msg.sender
    require uint8(stor4.field_184)
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    emit Transfer(arg2, 0, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor4.field_176)
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require not uint8(stor4.field_176)
    require arg2 + allowance[address(msg.sender)][address(arg1)] >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require not uint8(stor4.field_176)
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor4.field_176)
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function upgrade() {
    require uint8(stor4.field_0)
    require uint8(stor4.field_8)
    require upgraderAddress
    require balanceOf[address(msg.sender)] > 0
    balanceOf[address(msg.sender)] = 0
    require balanceOf[address(msg.sender)] <= totalSupply
    totalSupply -= balanceOf[address(msg.sender)]
    require ext_code.size(upgraderAddress)
    call upgraderAddress.0x829ebdcd with:
         gas gas_remaining - 710 wei
        args msg.sender, balanceOf[address(msg.sender)]
    require ext_call.success
    require ext_call.return_data[0]
    return 1
}

function _fallback() {
    require uint8(stor4.field_0)
    require uint8(stor4.field_0)
    require uint8(stor4.field_8)
    require upgraderAddress
    require balanceOf[address(msg.sender)] > 0
    balanceOf[address(msg.sender)] = 0
    require balanceOf[address(msg.sender)] <= totalSupply
    totalSupply -= balanceOf[address(msg.sender)]
    require ext_code.size(upgraderAddress)
    call upgraderAddress.0x829ebdcd with:
         gas gas_remaining - 710 wei
        args msg.sender, balanceOf[address(msg.sender)]
    require ext_call.success
    require ext_call.return_data[0]
}

function upgradeFor(address arg1, uint256 arg2) {
    require uint8(stor4.field_0)
    require uint8(stor4.field_8)
    require upgraderAddress
    require allowance[address(arg1)][address(msg.sender)] > 0
    require allowance[address(arg1)][address(msg.sender)] >= arg2
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    require ext_code.size(upgraderAddress)
    call upgraderAddress.upgradeFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args msg.sender, address(arg1), arg2
    require ext_call.success
    require ext_call.return_data[0]
    return 1
}



}

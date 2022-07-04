contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
uint8 stor3; offset 160
uint128 stor3; offset 160
address owner;
array of uint256 name;
uint8 decimals;
array of uint256 symbol;
address minterAddress;
address burnerAddress;
address treasurerAddress;
mapping of uint8 stor10;
address reserveAddress;
address sub_c3cf52beAddress;
uint8 sub_51ae380c; offset 160
address sub_2c2b077eAddress;

function name() {
    return name[0 len name.length].field_0
}

function minter() {
    return minterAddress
}

function initialized() {
    return bool(uint8(stor3.field_160))
}

function totalSupply() {
    return totalSupply
}

function burner() {
    return burnerAddress
}

function sub_2c2b077e(?) {
    return sub_2c2b077eAddress
}

function decimals() {
    return decimals
}

function sub_51ae380c(?) {
    return bool(sub_51ae380c)
}

function isIntermediary(address arg1) {
    return bool(stor10[address(arg1)])
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length].field_0
}

function sub_c3cf52be(?) {
    return sub_c3cf52beAddress
}

function reserve() {
    return reserveAddress
}

function sub_d32b0c45(?) {
    return bool(stor10[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function treasurer() {
    return treasurerAddress
}

function _fallback() payable {
    revert
}

function sub_afd52b06(?) {
    require msg.sender == owner
    sub_c3cf52beAddress = arg1
}

function sub_f4fe2556(?) {
    require not sub_51ae380c
    sub_51ae380c = 1
    owner = arg1
}

function changeReserve(address arg1) {
    require msg.sender == owner
    reserveAddress = arg1
}

function sub_cca87bc8(?) {
    require msg.sender == sub_c3cf52beAddress
    treasurerAddress = arg1
}

function sub_7cd3a289(?) {
    require msg.sender == sub_2c2b077eAddress
    stor10[address(arg1)] = 1
}

function sub_526c7d87(?) {
    require msg.sender == sub_c3cf52beAddress
    sub_2c2b077eAddress = arg1
}

function changeMinter(address arg1) {
    require msg.sender == sub_c3cf52beAddress
    minterAddress = arg1
}

function changeBurner(address arg1) {
    require msg.sender == sub_c3cf52beAddress
    burnerAddress = arg1
}

function removeIntermediary(address arg1) {
    require msg.sender == sub_2c2b077eAddress
    stor10[address(arg1)] = 0
}

function approve(address arg1, uint256 arg2) {
    require reserveAddress != msg.sender
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require msg.sender == burnerAddress
    require arg1 <= balanceOf[stor11]
    balanceOf[stor11] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, reserveAddress);
}

function mint(uint256 arg1) {
    require msg.sender == minterAddress
    require arg1 + balanceOf[stor11] >= balanceOf[stor11]
    balanceOf[stor11] += arg1
    require arg1 + totalSupply >= totalSupply
    totalSupply += arg1
    emit Mint(arg1, reserveAddress);
}

function sub_2c0206ba(?) {
    require 1 == bool(stor10[msg.sender])
    require arg1 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg1
    require arg1 + balanceOf[stor11] >= balanceOf[stor11]
    balanceOf[stor11] += arg1
    emit Transfer(arg1, msg.sender, reserveAddress);
    return 0
}

function sub_54fdd638(?) {
    require msg.sender == treasurerAddress
    require 1 == bool(stor10[address(arg1)])
    require arg2 <= balanceOf[stor11]
    balanceOf[stor11] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, reserveAddress, arg1);
    return 0
}

function transfer(address arg1, uint256 arg2) {
    require reserveAddress != msg.sender
    require arg1
    require reserveAddress != arg1
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require reserveAddress != arg1
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function init(address arg1) {
    require not uint8(stor3.field_160)
    totalSupply = 0
    reserveAddress = arg1
    owner = arg1
    uint8(stor3.field_160) = 1
    Mask(96, 0, stor3.field_160) = 0
    balanceOf[address(arg1)] = 0
    uint8(name.length) = 18
    name.length.field_8 = 'VND Token' / 256
    idx = 0
    while name.length + 31 / 32 > idx:
        name[idx].field_0 = 0
        idx = idx + 1
        continue 
    decimals = 0
    uint8(symbol.length) = 8
    symbol.length.field_8 = 'VNDT' / 256
    idx = 0
    while symbol.length + 31 / 32 > idx:
        symbol[idx].field_0 = 0
        idx = idx + 1
        continue 
    emit Transfer(totalSupply, 0, reserveAddress);
}



}

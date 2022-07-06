contract main {




// =====================  Runtime code  =====================


address owner;
uint8 stor1; offset 160
uint128 stor1; offset 160
address pauserAddress;
address blacklisterAddress;
mapping of uint8 stor3;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of uint256 currency;
uint8 stor8; offset 160
uint128 stor8; offset 160
address masterMinterAddress;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
mapping of uint8 stor12;
mapping of uint256 minterAllowance;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function masterMinter() {
    return masterMinterAddress
}

function paused() {
    return bool(uint8(stor1.field_160))
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function minterAllowance(address arg1) {
    return minterAllowance[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function pauser() {
    return pauserAddress
}

function isMinter(address arg1) {
    return bool(stor12[address(arg1)])
}

function blacklister() {
    return blacklisterAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function currency() {
    return currency[0 len currency.length]
}

function isBlacklisted(address arg1) {
    return bool(stor3[address(arg1)])
}

function _fallback() payable {
    revert
}

function pause() {
    require msg.sender == pauserAddress
    Mask(96, 0, stor1.field_160) = 1
    emit Pause()
}

function unpause() {
    require msg.sender == pauserAddress
    Mask(96, 0, stor1.field_160) = 0
    emit Unpause()
}

function blacklist(address arg1) {
    require msg.sender == blacklisterAddress
    stor3[address(arg1)] = 1
    emit Blacklisted(arg1);
}

function unBlacklist(address arg1) {
    require msg.sender == blacklisterAddress
    stor3[address(arg1)] = 0
    emit UnBlacklisted(arg1);
}

function updatePauser(address arg1) {
    require msg.sender == owner
    require arg1
    pauserAddress = arg1
    emit PauserChanged(pauserAddress);
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function updateBlacklister(address arg1) {
    require msg.sender == owner
    require arg1
    blacklisterAddress = arg1
    emit BlacklisterChanged(blacklisterAddress);
}

function updateMasterMinter(address arg1) {
    require msg.sender == owner
    require arg1
    masterMinterAddress = arg1
    emit MasterMinterChanged(masterMinterAddress);
}

function removeMinter(address arg1) {
    require msg.sender == masterMinterAddress
    stor12[address(arg1)] = 0
    minterAllowance[address(arg1)] = 0
    emit MinterRemoved(arg1);
    return 1
}

function configureMinter(address arg1, uint256 arg2) {
    require not uint8(stor1.field_160)
    require msg.sender == masterMinterAddress
    stor12[address(arg1)] = 1
    minterAllowance[address(arg1)] = arg2
    emit MinterConfigured(arg2, arg1);
    return 1
}

function approve(address arg1, uint256 arg2) {
    require not uint8(stor1.field_160)
    require not stor3[address(msg.sender)]
    require not stor3[address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_55acb5a0(?) {
    require msg.sender == masterMinterAddress
    require not stor3[address(arg2)]
    require stor3[address(arg1)]
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function burn(uint256 arg1) {
    require not uint8(stor1.field_160)
    require bool(stor12[address(msg.sender)]) == 1
    require not stor3[address(msg.sender)]
    require arg1 > 0
    require balanceOf[address(msg.sender)] >= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor1.field_160)
    require not stor3[address(msg.sender)]
    require not stor3[address(arg1)]
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function initialize(string arg1, string arg2, string arg3, uint8 arg4, address arg5, address arg6, address arg7, address arg8) {
    require not uint8(stor8.field_160)
    require arg5
    require arg6
    require arg7
    require arg8
    name[] = Array(len=arg1.length, data=arg1[all])
    symbol[] = Array(len=arg2.length, data=arg2[all])
    currency[] = Array(len=arg3.length, data=arg3[all])
    decimals = arg4
    masterMinterAddress = arg5
    pauserAddress = arg6
    blacklisterAddress = arg7
    owner = arg8
    Mask(96, 0, stor8.field_160) = 1
}

function mint(address arg1, uint256 arg2) {
    require not uint8(stor1.field_160)
    require bool(stor12[address(msg.sender)]) == 1
    require not stor3[address(msg.sender)]
    require not stor3[address(arg1)]
    require arg1
    require arg2 > 0
    require arg2 <= minterAllowance[address(msg.sender)]
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require arg2 <= minterAllowance[address(msg.sender)]
    minterAllowance[address(msg.sender)] -= arg2
    emit Mint(arg2, msg.sender, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor1.field_160)
    require not stor3[address(arg2)]
    require not stor3[address(msg.sender)]
    require not stor3[address(arg1)]
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



}

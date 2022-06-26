contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
array of uint256 standard;
uint8 decimals;
uint256 totalSupply;
array of uint256 trustedIPNS;
address upgradeContractAddress;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function upgradeContract() {
    return upgradeContractAddress
}

function decimals() {
    return decimals
}

function standard() {
    return standard[0 len standard.length]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function trustedIPNS() {
    return trustedIPNS[0 len trustedIPNS.length]
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function isOwner() {
    return (msg.sender == owner)
}

function _fallback() payable {
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This SmartContract is not payable'
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Only owner can do that'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setUpgradeContract(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Only owner can do that'
    upgradeContractAddress = arg1
    emit UpgradeContractChange(msg.sender, upgradeContractAddress);
    return 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Only owner can do that'
    if not arg1:
        revert with 0, 'newOwner parameter must be set'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0, '_spender address has to be set'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ''_value' parameter has to greater than 0'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0, ''_to' address has to be set'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'Insufficient balance'
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function safeApprove(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if allowance[address(msg.sender)][address(arg1)] != arg2:
        return 0
    if not arg1:
        revert with 0, '_spender address has to be set'
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ''_value' parameter has to greater than 0'
    allowance[address(msg.sender)][address(arg1)] = arg3
    emit Approval(arg3, msg.sender, arg1);
    return 1
}

function sub_6a03de16(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Only owner can do that'
    trustedIPNS[] = Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + 128] = 1
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function burnAfterUpgrade(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not upgradeContractAddress:
        revert with 0, 'upgradeContract is not set'
    if upgradeContractAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only upgradeContract can execute token burning'
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 'Insufficient balance'
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    emit UpgradeBurn(arg1, msg.sender);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0, ''_from' address has to be set'
    if not arg2:
        revert with 0, ''_to' address has to be set'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 'Insufficient balance'
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 'Insufficient allowance'
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}

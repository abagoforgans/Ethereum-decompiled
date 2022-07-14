contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
uint256 stor1;
address stor3;
uint128 stor5; offset 168

function _fallback() payable {
    stor5 = 0
    require not msg.value
    stor3 = msg.sender
    stor1 = 10^10
    stor0[address(msg.sender)] = stor1
    emit Transfer(stor1, 0, msg.sender);
    return code.data[290 len 8490]
}



// =====================  Runtime code  =====================


const name = 'Orienstoken'

const decimals = 8

const symbol = 'ONS'

const INITIAL_SUPPLY = 10^10


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
address owner;
mapping of uint8 stor4;
uint8 stor5; offset 160
uint8 stor5; offset 168
uint128 stor5; offset 168
uint128 stor5; offset 160
address distributionContractAddress;

function totalSupply() {
    return totalSupply
}

function distributionContract() {
    return distributionContractAddress
}

function paused() {
    return bool(uint8(stor5.field_168))
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function frozenAccounts(address arg1) {
    return bool(stor4[arg1])
}

function owner() {
    return owner
}

function frozen(address arg1) {
    return bool(stor4[address(arg1)])
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function freezeAccount(address arg1) {
    require msg.sender == owner
    stor4[address(arg1)] = 1
    emit FrozenFunds(address(arg1), 1);
}

function unFreezeAccount(address arg1) {
    require msg.sender == owner
    stor4[address(arg1)] = 0
    emit FrozenFunds(address(arg1), 0);
}

function unpause() {
    require msg.sender == owner
    require uint8(stor5.field_168)
    Mask(88, 0, stor5.field_168) = 0
    emit Unpause()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function addDistributionContract(address arg1) {
    require arg1
    require not uint8(stor5.field_160)
    distributionContractAddress = arg1
    Mask(96, 0, stor5.field_160) = 1
}

function pause() {
    require msg.sender == owner
    if distributionContractAddress != msg.sender:
        require not uint8(stor5.field_168)
    Mask(88, 0, stor5.field_168) = 1
    emit Pause()
}

function approve(address arg1, uint256 arg2) {
    if distributionContractAddress != msg.sender:
        require not uint8(stor5.field_168)
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
}

function increaseApproval(address arg1, uint256 arg2) {
    if distributionContractAddress != msg.sender:
        require not uint8(stor5.field_168)
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if distributionContractAddress != msg.sender:
        require not uint8(stor5.field_168)
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if distributionContractAddress != msg.sender:
        require not uint8(stor5.field_168)
    require not stor4[address(msg.sender)]
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if distributionContractAddress != msg.sender:
        require not uint8(stor5.field_168)
    require not stor4[address(arg1)]
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

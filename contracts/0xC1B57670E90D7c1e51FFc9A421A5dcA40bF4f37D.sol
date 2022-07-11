contract main {




// =====================  Runtime code  =====================


const name = ''

const decimals = 18

const symbol = ''

const INITIAL_SUPPLY = 1000000000 * 10^18


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
address owner;
mapping of uint256 sub_313a41c0;
mapping of uint8 stor5;
uint8 stor6; offset 160
uint8 stor6; offset 168
address distributionContractAddress;

function totalSupply() payable {
    return totalSupply
}

function sub_313a41c0(?) payable {
    require calldata.size - 4 >= 32
    return sub_313a41c0[arg1]
}

function distributionContract() payable {
    return distributionContractAddress
}

function paused() payable {
    return bool(uint8(stor6.field_168))
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function frozenAccounts(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor5[arg1])
}

function owner() payable {
    return owner
}

function releasetime(address arg1) payable {
    require calldata.size - 4 >= 32
    return sub_313a41c0[address(arg1)]
}

function frozen(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor5[address(arg1)])
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function unpause() payable {
    require msg.sender == owner
    require uint8(stor6.field_168)
    uint8(stor6.field_168) = 0
    emit Unpause()
}

function freezeAccount(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor5[address(arg1)] = 1
    emit FrozenFunds(address(arg1), 1);
}

function unFreezeAccount(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor5[address(arg1)] = 0
    emit FrozenFunds(address(arg1), 0);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function pause() payable {
    require msg.sender == owner
    if distributionContractAddress != msg.sender:
        require not uint8(stor6.field_168)
    uint8(stor6.field_168) = 1
    emit Pause()
}

function addDistributionContract(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1
    require not uint8(stor6.field_160)
    distributionContractAddress = arg1
    uint8(stor6.field_160) = 1
}

function timeunlockAccount(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_313a41c0[address(arg1)] = block.timestamp
    emit TimeLockFunds(address(arg1), block.timestamp);
}

function timelockAccount(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    sub_313a41c0[address(arg1)] = (24 * 3600 * arg2) + block.timestamp
    emit TimeLockFunds(address(arg1), (24 * 3600 * arg2) + block.timestamp);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if distributionContractAddress != msg.sender:
        require not uint8(stor6.field_168)
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= balanceOf[msg.sender]
    require arg1 <= balanceOf[msg.sender]
    balanceOf[address(msg.sender)] = balanceOf[msg.sender] - arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
}

function increaseApproval(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if distributionContractAddress != msg.sender:
        require not uint8(stor6.field_168)
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if distributionContractAddress != msg.sender:
        require not uint8(stor6.field_168)
    if arg2 <= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] -= arg2
    else:
        allowance[msg.sender][address(arg1)] = 0
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if distributionContractAddress != msg.sender:
        require not uint8(stor6.field_168)
    require not stor5[msg.sender]
    require block.timestamp >= sub_313a41c0[msg.sender]
    require arg1
    require arg2 <= balanceOf[msg.sender]
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if distributionContractAddress != msg.sender:
        require not uint8(stor6.field_168)
    require not stor5[address(arg1)]
    require block.timestamp >= sub_313a41c0[address(arg1)]
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}

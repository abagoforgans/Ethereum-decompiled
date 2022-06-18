contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
mapping of uint8 stor6;
uint8 stor7;
mapping of uint8 stor8;
address owner;
uint256 deploymentTime;
uint256 month;
uint256 inflationRate;
uint256 maxInflationRate;
address sub_5a2172deAddress;
address sub_75db2a1fAddress;
address sub_9ecb6b60Address;
address sub_406ef989Address;
address sub_aab3e558Address;
address sub_a62e5098Address;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function inflationRate() payable {
    return inflationRate
}

function sub_406ef989(?) payable {
    return sub_406ef989Address
}

function isPauser(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor6[address(arg1)])
}

function sub_5a2172de(?) payable {
    return sub_5a2172deAddress
}

function paused() payable {
    return bool(stor7)
}

function month() payable {
    return month
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function sub_75db2a1f(?) payable {
    return sub_75db2a1fAddress
}

function maxInflationRate() payable {
    return maxInflationRate
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function sub_9ecb6b60(?) payable {
    return sub_9ecb6b60Address
}

function sub_a62e5098(?) payable {
    return sub_a62e5098Address
}

function isMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor8[address(arg1)])
}

function sub_aab3e558(?) payable {
    return sub_aab3e558Address
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function deploymentTime() payable {
    return deploymentTime
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_11056f16(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_5a2172deAddress = arg1
}

function unpause() payable {
    require msg.sender
    require stor6[address(msg.sender)]
    require stor7
    stor7 = 0
    emit Unpaused(msg.sender);
}

function pause() payable {
    require msg.sender
    require stor6[address(msg.sender)]
    require not stor7
    stor7 = 1
    emit Paused(msg.sender);
}

function renouncePauser() payable {
    require msg.sender
    require stor6[address(msg.sender)]
    stor6[address(msg.sender)] = 0
    emit PauserRemoved(msg.sender);
}

function renounceMinter() payable {
    require msg.sender
    require stor8[address(msg.sender)]
    stor8[address(msg.sender)] = 0
    emit MinterRemoved(msg.sender);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not stor7
    require arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function addPauser(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor6[address(msg.sender)]
    require arg1
    require not stor6[address(arg1)]
    stor6[address(arg1)] = 1
    emit PauserAdded(arg1);
}

function addMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor8[address(msg.sender)]
    require arg1
    require not stor8[address(arg1)]
    stor8[address(arg1)] = 1
    emit MinterAdded(arg1);
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not stor7
    require arg1
    require arg2 <= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] -= arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not stor7
    require arg1
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not stor7
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                32,
                51,
                0x25746f6b656e732063616e6e6f74206265206d696e746564206f74686572207468616e20696e666c6174696f6e20746f6b656e,
                mem[215 len 13]
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not stor7
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function changeInflationRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if arg1 > maxInflationRate:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    60,
                    0xfe596561726c7920696e666c6174696f6e2072617465206d757374206265206c657373207468616e206f7220657175616c20746f2031302e30303030,
                    mem[224 len 4]
    inflationRate = arg1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require not stor7
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    emit Approval(allowance[address(arg1)][msg.sender], arg1, msg.sender);
    return 1
}

function sub_6fb4a45b(?) payable {
    if block.timestamp < deploymentTime + month:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x736e657720696e666c6174696f6e20746f6b656e732063616e6e6f74206265206d696e746564207965,
                    mem[205 len 23]
    require msg.sender
    require stor8[address(msg.sender)]
    require sub_5a2172deAddress
    require (totalSupply * inflationRate / 12 * 10^6) + totalSupply >= totalSupply
    totalSupply += totalSupply * inflationRate / 12 * 10^6
    require (totalSupply * inflationRate / 12 * 10^6) + balanceOf[stor14] >= balanceOf[stor14]
    balanceOf[stor14] += totalSupply * inflationRate / 12 * 10^6
    emit Transfer((totalSupply * inflationRate / 12 * 10^6), 0, sub_5a2172deAddress);
    deploymentTime += month
}



}

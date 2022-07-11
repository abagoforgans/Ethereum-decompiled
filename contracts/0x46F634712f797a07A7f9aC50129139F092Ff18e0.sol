contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint256 totalSupply;
uint8 stor5;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor8;

function getSymbol() {
    return symbol[0 len symbol.length]
}

function getName() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function paused() {
    return bool(stor5)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function frozenAccount(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor8[arg1])
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function isOwner() {
    return (msg.sender == owner)
}

function _fallback() payable {
    require msg.sender == owner
}

function pause() {
    if owner != msg.sender:
        revert with 0, 'YOUR NOT OWNER'
    require not stor5
    stor5 = 1
    emit Paused(msg.sender);
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'YOUR NOT OWNER'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function freezeAccount(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'YOUR NOT OWNER'
    stor8[address(arg1)] = 1
    emit FrozenFunds(address(arg1), 1);
}

function unfreezeAccount(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'YOUR NOT OWNER'
    stor8[address(arg1)] = 0
    emit FrozenFunds(address(arg1), 0);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'YOUR NOT OWNER'
    if not arg1:
        revert with 0, 'It's not a normal approach.'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0, 'be not a normal approach'
    if not msg.sender:
        revert with 0, 'be not a normal approach'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function unpause() {
    if owner != msg.sender:
        revert with 0, 'YOUR NOT OWNER'
    if not stor5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x5d5468697320636f6e747261637420686173206265656e2073757370656e646564,
                    mem[197 len 31]
    stor5 = 0
    emit Unpaused(msg.sender);
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    require not stor5
    if not msg.sender:
        revert with 0, 'be not a normal approach'
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 'be short of balance'
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    emit Transfer(arg1, msg.sender, 0);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= allowance[address(msg.sender)][address(arg1)]
    if not arg1:
        revert with 0, 'be not a normal approach'
    if not msg.sender:
        revert with 0, 'be not a normal approach'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function mint(uint256 arg1) {
    require calldata.size - 4 >= 32
    require not stor5
    if owner != msg.sender:
        revert with 0, 'YOUR NOT OWNER'
    if not msg.sender:
        revert with 0, 'be not a normal approach'
    require totalSupply + arg1 >= totalSupply
    totalSupply += arg1
    require balanceOf[address(msg.sender)] + arg1 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += arg1
    emit Transfer(arg1, 0, msg.sender);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    if not arg1:
        revert with 0, 'be not a normal approach'
    if not msg.sender:
        revert with 0, 'be not a normal approach'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0, 'be not a normal approach'
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 'be short of balance'
    require arg2 <= totalSupply
    totalSupply -= arg2
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    emit Transfer(arg2, arg1, 0);
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    if not msg.sender:
        revert with 0, 'be not a normal approach'
    if not arg1:
        revert with 0, 'be not a normal approach'
    allowance[address(arg1)][address(msg.sender)] -= arg2
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
    return 1
}

function sub_44b37e95(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    if owner != msg.sender:
        revert with 0, 'YOUR NOT OWNER'
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 6
        balanceOf[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg1.length) + 160]
        idx = idx + 1
        continue 
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require not stor5
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0, 'be short of balance'
    if not arg1:
        revert with 0, 'be not a normal approach'
    if arg1 == msg.sender:
        revert with 0, 'You can't send it alone.'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'be short of balance'
    if stor8[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x5d54686973206163636f756e7420686173206265656e2066726f7a656e2e205b53656e646572,
                    mem[202 len 26]
    if stor8[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0xfe54686973206163636f756e7420686173206265656e2066726f7a656e2e205b526563697069656e74,
                    mem[205 len 23]
    if stor8[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x2e54686973206163636f756e7420686173206265656e2066726f7a656e2e205b57616c6c6574,
                    mem[202 len 26]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require not stor5
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        revert with 0, 'be short of balance'
    if not arg2:
        revert with 0, 'be not a normal approach'
    if arg2 == arg1:
        revert with 0, 'You can't send it alone.'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 'be short of balance'
    if stor8[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x5d54686973206163636f756e7420686173206265656e2066726f7a656e2e205b53656e646572,
                    mem[202 len 26]
    if stor8[address(arg2)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0xfe54686973206163636f756e7420686173206265656e2066726f7a656e2e205b526563697069656e74,
                    mem[205 len 23]
    if stor8[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x2e54686973206163636f756e7420686173206265656e2066726f7a656e2e205b57616c6c6574,
                    mem[202 len 26]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    if not msg.sender:
        revert with 0, 'be not a normal approach'
    if not arg1:
        revert with 0, 'be not a normal approach'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}

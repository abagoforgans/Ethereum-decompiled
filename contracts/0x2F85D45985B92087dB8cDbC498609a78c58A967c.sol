contract main {




// =====================  Runtime code  =====================


const name = 'Fancoin'

const decimals = 18

const symbol = 'FANCO'

const INITIAL_SUPPLY = 100000000000 * 10^18


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
address owner;
mapping of uint8 stor4;
uint8 stor5;

function totalSupply() {
    return totalSupply
}

function paused() {
    return bool(stor5)
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function freezeAddresses(address arg1) {
    return bool(stor4[arg1])
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Sender is not the owner'
    emit OwnershipRenounced(owner);
    owner = 0
}

function pause() {
    if owner != msg.sender:
        revert with 0, 'Sender is not the owner'
    if stor5:
        revert with 0, 'Contract has been paused'
    stor5 = 1
    emit Pause()
}

function unpause() {
    if owner != msg.sender:
        revert with 0, 'Sender is not the owner'
    if not stor5:
        revert with 0, 'Contract has not been paused'
    stor5 = 0
    emit Unpause()
}

function approve(address arg1, uint256 arg2) {
    if stor5:
        revert with 0, 'Contract has been paused'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function addFreezableAddress(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Sender is not the owner'
    if stor4[address(arg1)]:
        return 0
    stor4[address(arg1)] = 1
    emit FreezableAddressAdded(arg1);
    return 1
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Sender is not the owner'
    if not arg1:
        revert with 0, 'New owner address is invalid'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function removeFreezableAddress(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Sender is not the owner'
    if not stor4[address(arg1)]:
        return 0
    stor4[address(arg1)] = 0
    emit FreezableAddressRemoved(arg1);
    return 1
}

function burn(uint256 arg1) {
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 'Not enough tokens to burn'
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
}

function mint(address arg1, uint256 arg2) {
    if owner != msg.sender:
        revert with 0, 'Sender is not the owner'
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    if stor5:
        revert with 0, 'Contract has been paused'
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if stor5:
        revert with 0, 'Contract has been paused'
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    if stor5:
        revert with 0, 'Contract has been paused'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if stor5:
        revert with 0, 'Contract has been paused'
    if stor4[address(msg.sender)]:
        revert with 0, 'Sender's address has been frozen'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Trying to transfer tokens to an invalid address'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sender's balance is too low for this transfer'
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function addFreezableAddresses(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if owner != msg.sender:
        revert with 0, 'Sender is not the owner'
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        if owner != msg.sender:
            revert with 0, 'Sender is not the owner'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        if stor4[mem[(32 * idx) + 140 len 20]]:
            idx = idx + 1
            s = s
            continue 
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        stor4[address(mem[(32 * idx) + 128])] = 1
        emit FreezableAddressAdded(mem[(32 * idx) + 140 len 20]);
        idx = idx + 1
        s = 1
        continue 
    return bool(s)
}

function removeFreezableAddresses(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if owner != msg.sender:
        revert with 0, 'Sender is not the owner'
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        if owner != msg.sender:
            revert with 0, 'Sender is not the owner'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        if not stor4[mem[(32 * idx) + 140 len 20]]:
            idx = idx + 1
            s = s
            continue 
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        stor4[address(mem[(32 * idx) + 128])] = 0
        emit FreezableAddressRemoved(mem[(32 * idx) + 140 len 20]);
        idx = idx + 1
        s = 1
        continue 
    return bool(s)
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if stor5:
        revert with 0, 'Contract has been paused'
    if stor4[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Address to transfer from has been frozen'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Address to transfer to is invalid'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 'Not enough balance'
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 'Not enough allowance'
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

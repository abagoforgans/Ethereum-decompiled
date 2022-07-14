contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint8 stor4;
address creatorAddress; offset 8
address owner;
address stor6;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor9;

function creator() {
    return creatorAddress
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
    return balanceOf[arg1]
}

function lockAll() {
    return bool(stor4)
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function frozens(address arg1) {
    return bool(stor9[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function _fallback() payable {
  stop
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setLockAll(bool arg1) {
    if owner != msg.sender:
        revert with 0, 32, 21, 0xe99d9ee6b395e59088e7baa6e689a7e8a18ce8808500000000000000000000
    stor4 = uint8(arg1)
    return 1
}

function setFreezeAddress(address arg1, bool arg2) {
    if owner != msg.sender:
        revert with 0, 32, 21, 0xe99d9ee6b395e59088e7baa6e689a7e8a18ce8808500000000000000000000
    stor9[address(arg1)] = uint8(arg2)
    emit FreezeAddress(arg2, arg1);
    return 1
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        revert with 0, 32, 21, 0xe99d9ee6b395e59088e7baa6e689a7e8a18ce8808500000000000000000000
    if owner == arg1:
        revert with 0, 32, 24, 0xe697a0e69588e59088e7baa6e696b0e68980e69c89e880850000000000000000
    stor6 = arg1
    return 1
}

function acceptOwnership() {
    if stor6 != msg.sender:
        revert with 0, 32, 24, 0xe697a0e69588e59088e7baa6e696b0e68980e69c89e880850000000000000000
    if not stor6:
        revert with 0, 32, 24, 0xe697a0e69588e59088e7baa6e696b0e68980e69c89e880850000000000000000
    owner = stor6
    stor6 = 0
    emit OwnerChanged(owner, stor6);
    return 1
}

function offer(uint256 arg1) {
    if owner != msg.sender:
        revert with 0, 32, 21, 0xe99d9ee6b395e59088e7baa6e689a7e8a18ce8808500000000000000000000
    if arg1 <= 0:
        revert with 0, 32, 12, 0xe697a0e69588e695b0e9878f00000000000000000000000000000000000000
    totalSupply += 10 * 10^6 * arg1 * 10^decimals
    balanceOf[msg.sender] += 10 * 10^6 * arg1 * 10^decimals
    emit Offer(arg1);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, arg2, this.address, Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function burn(uint256 arg1) {
    if arg1 <= 0:
        revert with 0, 32, 12, 0xe697a0e69588e695b0e9878f00000000000000000000000000000000000000
    if stor4:
        revert with 0, 32, 24, 0xe59088e7baa6e5a484e4ba8ee99481e5ae9ae78ab6e680810000000000000000
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 21, 0xe68c81e69c89e696b9e4bd99e9a29de4b88de8b6b30000000000000000000000
    if stor9[address(msg.sender)]:
        revert with 0, 32, 27, 0xe68c81e69c89e696b9e5a484e4ba8ee586bbe7bb93e78ab6e680810000000000
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    if arg2 > allowance[address(arg1)][msg.sender]:
        revert with 0, 32, 18, 0xe68e88e69d83e9a29de5baa6e4b88de8b6b30000000000000000000000000000
    if arg2 <= 0:
        revert with 0, 32, 12, 0xe697a0e69588e695b0e9878f00000000000000000000000000000000000000
    allowance[address(arg1)][msg.sender] -= arg2
    if stor4:
        revert with 0, 32, 24, 0xe59088e7baa6e5a484e4ba8ee99481e5ae9ae78ab6e680810000000000000000
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 32, 21, 0xe68c81e69c89e696b9e4bd99e9a29de4b88de8b6b30000000000000000000000
    if stor9[address(arg1)]:
        revert with 0, 32, 27, 0xe68c81e69c89e696b9e5a484e4ba8ee586bbe7bb93e78ab6e680810000000000
    balanceOf[address(arg1)] -= arg2
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if stor4:
        revert with 0, 32, 24, 0xe59088e7baa6e5a484e4ba8ee99481e5ae9ae78ab6e680810000000000000000
    if not arg1:
        revert with 0, 32, 18, 0xe697a0e69588e68ea5e694b6e59cb0e59d800000000000000000000000000000
    if arg2 <= 0:
        revert with 0, 32, 12, 0xe697a0e69588e695b0e9878f00000000000000000000000000000000000000
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 27, 0xe68c81e69c89e696b9e8bdace7a7bbe695b0e9878fe4b88de8b6b30000000000
    if stor9[address(msg.sender)]:
        revert with 0, 32, 27, 0xe68c81e69c89e696b9e5a484e4ba8ee586bbe7bb93e78ab6e680810000000000
    balanceOf[msg.sender] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require balanceOf[address(arg1)] + balanceOf[msg.sender] == balanceOf[msg.sender] + balanceOf[address(arg1)]
    return 1
}

function transferExtra(address arg1, uint256 arg2, bytes arg3) {
    if stor4:
        revert with 0, 32, 24, 0xe59088e7baa6e5a484e4ba8ee99481e5ae9ae78ab6e680810000000000000000
    if not arg1:
        revert with 0, 32, 18, 0xe697a0e69588e68ea5e694b6e59cb0e59d800000000000000000000000000000
    if arg2 <= 0:
        revert with 0, 32, 12, 0xe697a0e69588e695b0e9878f00000000000000000000000000000000000000
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 27, 0xe68c81e69c89e696b9e8bdace7a7bbe695b0e9878fe4b88de8b6b30000000000
    if stor9[address(msg.sender)]:
        revert with 0, 32, 27, 0xe68c81e69c89e696b9e5a484e4ba8ee586bbe7bb93e78ab6e680810000000000
    balanceOf[msg.sender] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require balanceOf[address(arg1)] + balanceOf[msg.sender] == balanceOf[msg.sender] + balanceOf[address(arg1)]
    emit 0x13ac6524: arg2, Array(len=arg3.length, data=arg3[all]), msg.sender, arg1
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if arg3 > allowance[address(arg1)][msg.sender]:
        revert with 0, 32, 18, 0xe68e88e69d83e9a29de5baa6e4b88de8b6b30000000000000000000000000000
    allowance[address(arg1)][msg.sender] -= arg3
    if stor4:
        revert with 0, 32, 24, 0xe59088e7baa6e5a484e4ba8ee99481e5ae9ae78ab6e680810000000000000000
    if not arg2:
        revert with 0, 32, 18, 0xe697a0e69588e68ea5e694b6e59cb0e59d800000000000000000000000000000
    if arg3 <= 0:
        revert with 0, 32, 12, 0xe697a0e69588e695b0e9878f00000000000000000000000000000000000000
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 32, 27, 0xe68c81e69c89e696b9e8bdace7a7bbe695b0e9878fe4b88de8b6b30000000000
    if stor9[address(arg1)]:
        revert with 0, 32, 27, 0xe68c81e69c89e696b9e5a484e4ba8ee586bbe7bb93e78ab6e680810000000000
    balanceOf[arg1] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    require balanceOf[address(arg2)] + balanceOf[arg1] == balanceOf[arg1] + balanceOf[address(arg2)]
    return 1
}



}

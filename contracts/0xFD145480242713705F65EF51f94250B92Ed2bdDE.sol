contract main {




// =====================  Runtime code  =====================


const decimals = 3

const getNullAddress = 0


mapping of uint256 balances;
uint256 totalSupply;
mapping of uint256 allowance;
uint8 stor3; offset 160
uint128 stor3; offset 160
address owner;
array of uint256 name;
array of uint256 symbol;
address comissionListAddress;
address moderListAddress;
mapping of uint256 stor8;
address stakerAddress;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function comissionList() {
    return comissionListAddress
}

function balances(address arg1) {
    return balances[arg1]
}

function paused() {
    return bool(uint8(stor3.field_160))
}

function staker() {
    return stakerAddress
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function moderList() {
    return moderListAddress
}

function _fallback() payable {
    revert
}

function changeStaker(address arg1) {
    require msg.sender == owner
    stakerAddress = arg1
    return 0
}

function unpause() {
    require msg.sender == owner
    require uint8(stor3.field_160)
    Mask(96, 0, stor3.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor3.field_160)
    Mask(96, 0, stor3.field_160) = 1
    emit Pause()
}

function setComissionList(address arg1, address arg2) {
    require msg.sender == owner
    comissionListAddress = arg1
    moderListAddress = arg2
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function changeName(string arg1, string arg2) {
    require msg.sender == owner
    name[] = Array(len=arg1.length, data=arg1[all])
    symbol[] = Array(len=arg2.length, data=arg2[all])
}

function approve(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require arg1 <= balances[address(msg.sender)]
    require arg1 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
}

function increaseApproval(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    require arg1
    require arg2 <= balances[address(msg.sender)]
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor3.field_160)
    require arg2
    require arg3 <= balances[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balances[address(arg1)]
    balances[address(arg1)] -= arg3
    require balances[address(arg2)] + arg3 >= balances[address(arg2)]
    balances[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function refill(address arg1, uint256 arg2, string arg3) {
    require ext_code.size(moderListAddress)
    call moderListAddress.onList(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(comissionListAddress)
    call comissionListAddress.calcRefill(string arg1, uint256 arg2) with:
         gas gas_remaining wei
        args Array(len=arg3.length, data=arg3[all]), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= arg2
    require balances[address(arg1)] + arg2 - ext_call.return_data[0] >= balances[address(arg1)]
    balances[address(arg1)] = balances[address(arg1)] + arg2 - ext_call.return_data[0]
    require balances[stor9] + ext_call.return_data[0] >= balances[stor9]
    balances[stor9] += ext_call.return_data[0]
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    emit Transfer((arg2 - ext_call.return_data[0]), 0, arg1);
    emit Mint((arg2 - ext_call.return_data[0]), arg1);
    return 1
}

function withdrawOnBehalf(uint256 arg1, string arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6) {
    require ext_code.size(moderListAddress)
    call moderListAddress.onList(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    signer = erecover(sha3(0, arg1, arg3, this.address), arg4 << 248, arg5, arg6) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require stor8[address(signer)] < arg3
    require arg1 <= balances[address(signer)]
    require ext_code.size(comissionListAddress)
    call comissionListAddress.calcWidthraw(string arg1, uint256 arg2) with:
         gas gas_remaining wei
        args Array(len=arg2.length, data=arg2[all]), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= arg1
    require arg1 <= balances[address(signer)]
    balances[address(signer)] -= arg1
    require balances[stor9] + ext_call.return_data[0] >= balances[stor9]
    balances[stor9] += ext_call.return_data[0]
    require arg1 - ext_call.return_data[0] <= totalSupply
    totalSupply = totalSupply - arg1 + ext_call.return_data[0]
    emit Transfer((arg1 - ext_call.return_data[0]), address(signer), 0);
    emit Burn((arg1 - ext_call.return_data[0]), address(signer));
    return 1
}

function transferOnBehalf(address arg1, uint256 arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6) {
    require ext_code.size(moderListAddress)
    call moderListAddress.onList(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    signer = erecover(sha3(arg1, arg2, arg3, this.address), arg4 << 248, arg5, arg6) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require stor8[address(signer)] < arg3
    require arg2 <= balances[address(signer)]
    require ext_code.size(comissionListAddress)
    call comissionListAddress.calcTransfer(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= arg2
    require arg2 <= balances[address(signer)]
    balances[address(signer)] -= arg2
    require balances[address(arg1)] + arg2 - ext_call.return_data[0] >= balances[address(arg1)]
    balances[address(arg1)] = balances[address(arg1)] + arg2 - ext_call.return_data[0]
    require balances[stor9] + ext_call.return_data[0] >= balances[stor9]
    balances[stor9] += ext_call.return_data[0]
    stor8[address(signer)] = arg3
    emit Transfer(arg2, address(signer), arg1);
    emit Transfer(ext_call.return_data[0], address(signer), 0);
    return 1
}



}

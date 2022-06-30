contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
mapping of struct stor1;
array of struct stor2;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function paused() {
    return bool(uint8(stor0.field_160))
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

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sorry, you are not the contract owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_ea055733(?) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sorry, you are not the contract owner'
    if uint8(stor0.field_160):
        revert with 0, 'Contract is paused'
    Mask(96, 0, stor0.field_160) = 1
    emit Paused()
    return 1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0, 'Invalud spender address'
    if not msg.sender:
        revert with 0, 'Invalid owner address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_2f7e168a(?) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sorry, you are not the contract owner'
    if bool(uint8(stor0.field_160)) != 1:
        revert with 0, 'Contract is not paused'
    Mask(96, 0, stor0.field_160) = 0
    emit Unpaused()
    return 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sorry, you are not the contract owner'
    if not arg1:
        revert with 0, 'Invalid newOwner address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    if not arg1:
        revert with 0, 'Invalud spender address'
    if not msg.sender:
        revert with 0, 'Invalid owner address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function addToWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sorry, you are not the contract owner'
    if bool(stor1[address(arg1)].field_256) == 1:
        revert with 0, 'Holder is on whitelist'
    stor1[address(arg1)].field_0 = stor2.length
    stor1[address(arg1)].field_256 = 1
    stor2.length++
    stor2[stor2.length].field_0 = arg1
    emit AddedToWhiteList(arg1);
    return 1
}

function transferAnyERC20Token(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sorry, you are not the contract owner'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if allowance[address(msg.sender)][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Allowance is smaller than intended reduction'
    require arg2 <= allowance[address(msg.sender)][address(arg1)]
    if not arg1:
        revert with 0, 'Invalud spender address'
    if not msg.sender:
        revert with 0, 'Invalid owner address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sorry, you are not the contract owner'
    if uint8(stor0.field_160):
        revert with 0, 'Contract is paused'
    if bool(stor1[address(arg1)].field_256) != 1:
        revert with 0, 'Holder not on whitelist'
    if not arg1:
        revert with 0, 'Invalid account address'
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    emit Minted(address(arg1), arg2);
    return 1
}

function removeFromWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sorry, you are not the contract owner'
    if bool(stor1[address(arg1)].field_256) != 1:
        revert with 0, 'Holder not on whitelist'
    require stor2.length - 1 < stor2.length
    require stor1[address(arg1)].field_0 < stor2.length
    stor2[stor1[address(arg1)].field_0].field_0 = stor2[stor2.length].field_0
    stor1[stor2[stor2.length].field_0].field_0 = stor1[address(arg1)].field_0
    require stor2.length
    stor2[stor2.length].field_0 = 0
    stor2.length--
    stor1[address(arg1)].field_0 = 0
    stor1[address(arg1)].field_256 = 0
    emit RemovedFromWhiteList(arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if uint8(stor0.field_160):
        revert with 0, 'Contract is paused'
    if bool(stor1[address(arg1)].field_256) != 1:
        revert with 0, 'Holder not on whitelist'
    if arg2 <= 0:
        revert with 0, 'Must transfer more than 0 tokens'
    if not arg1:
        revert with 0, 'Invalid to address'
    if msg.sender == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'From and to addresses are the same'
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_d6d1d5ab(?) {
    if not stor2.length:
        mem[(32 * stor2.length) + 128] = 32
        mem[(32 * stor2.length) + 160] = stor2.length
        mem[(32 * stor2.length) + 192 len floor32(stor2.length)] = mem[128 len floor32(stor2.length)]
        return memory
          from (32 * stor2.length) + 128
           len (96 * stor2.length) + 64
    mem[128] = address(stor2.field_0)
    idx = 128
    s = 0
    while (32 * stor2.length) + 96 > idx:
        mem[idx + 32] = stor2[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor2.length) + 192 len floor32(stor2.length)] = mem[128 len floor32(stor2.length)]
    return Array(len=stor2.length, data=mem[128 len floor32(stor2.length)], mem[(32 * stor2.length) + floor32(stor2.length) + 192 len (32 * stor2.length) - floor32(stor2.length)]), 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Not authorised to send so many tokens on behalf of the sender'
    if uint8(stor0.field_160):
        revert with 0, 'Contract is paused'
    if bool(stor1[address(arg2)].field_256) != 1:
        revert with 0, 'Holder not on whitelist'
    if arg3 <= 0:
        revert with 0, 'Must transfer more than 0 tokens'
    if not arg2:
        revert with 0, 'Invalid to address'
    if arg1 == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'From and to addresses are the same'
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    if not msg.sender:
        revert with 0, 'Invalud spender address'
    if not arg1:
        revert with 0, 'Invalid owner address'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}

contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
mapping of uint8 stor7;
mapping of uint256 addressIndex;
array of struct sub_08f092ed;
uint8 stor10; offset 160
uint128 stor10; offset 160
address stor10;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;

function name() {
    return name[0 len name.length]
}

function sub_07bca709(?) {
    return bool(stor7[arg1])
}

function sub_08f092ed(?) {
    require arg1 < sub_08f092ed.length
    return sub_08f092ed[arg1].field_0
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function addressIndex(address arg1) {
    return addressIndex[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_aea84e40(?) {
    return bool(uint8(stor10.field_160))
}

function sub_c64dfbcc(?) {
    return bool(uint8(stor10.field_160))
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function addAddress(address arg1) {
    require msg.sender == owner
    require not stor7[address(arg1)]
    stor7[address(arg1)] = 1
    addressIndex[address(arg1)] = sub_08f092ed.length
    sub_08f092ed.length++
    sub_08f092ed[sub_08f092ed.length].field_0 = arg1
}

function removeAddress(address arg1) {
    require msg.sender == owner
    require stor7[address(arg1)]
    stor7[address(arg1)] = 0
    require addressIndex[address(arg1)] < sub_08f092ed.length
    sub_08f092ed[stor8[address(arg1)]].field_0 = 0
    addressIndex[address(arg1)] = 0
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require stor7[address(arg1)]
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 0
}

function setSwapContract(address arg1) {
    require msg.sender == owner
    require arg1
    address(stor10.field_0) = arg1
    require msg.sender == owner
    require not stor7[address(stor10.field_0)]
    stor7[address(stor10.field_0)] = 1
    addressIndex[address(stor10.field_0)] = sub_08f092ed.length
    sub_08f092ed.length++
    sub_08f092ed[sub_08f092ed.length].field_0 = address(stor10.field_0)
    Mask(96, 0, stor10.field_160) = 1
}

function sub_ee401351(?) {
    require uint8(stor10.field_160)
    allowance[address(msg.sender)][address(stor10.field_0)] = balanceOf[address(msg.sender)]
    emit Approval(balanceOf[address(msg.sender)], msg.sender, address(stor10.field_0));
    require ext_code.size(address(stor10.field_0))
    call address(stor10.field_0).0x9d82cef0 with:
         gas gas_remaining wei
        args address(this.address), msg.sender, balanceOf[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
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

function sub_3c6e7161(?) {
    if not sub_08f092ed.length:
        mem[(32 * sub_08f092ed.length) + 128] = 32
        mem[(32 * sub_08f092ed.length) + 160] = sub_08f092ed.length
        mem[(32 * sub_08f092ed.length) + 192 len floor32(sub_08f092ed.length)] = mem[128 len floor32(sub_08f092ed.length)]
        return memory
          from (32 * sub_08f092ed.length) + 128
           len (96 * sub_08f092ed.length) + 64
    mem[128] = address(sub_08f092ed.field_0)
    idx = 128
    s = 0
    while (32 * sub_08f092ed.length) + 96 > idx:
        mem[idx + 32] = sub_08f092ed[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_08f092ed.length) + 192 len floor32(sub_08f092ed.length)] = mem[128 len floor32(sub_08f092ed.length)]
    return Array(len=sub_08f092ed.length, data=mem[128 len floor32(sub_08f092ed.length)], mem[(32 * sub_08f092ed.length) + floor32(sub_08f092ed.length) + 192 len (32 * sub_08f092ed.length) - floor32(sub_08f092ed.length)]), 
}



}

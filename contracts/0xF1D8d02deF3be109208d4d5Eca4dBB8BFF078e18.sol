contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - sub_52979e71(?)
#  - transfer(address arg1, uint256 arg2)
#
mapping of uint256 stor0;
uint256 stor1;
mapping of uint256 allowance;
uint8 stor3; offset 160
uint8 stor3; offset 168
address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 scaleFactor;
mapping of uint256 stor8;
uint256 sub_081c471c;
uint256 transferFeeNumerator;
mapping of uint8 stor11;
array of struct sub_a8d120de;
mapping of uint8 stor13;
mapping of uint8 stor14;
address sub_0666b66bAddress;
mapping of uint8 stor16;

function mintingFinished() {
    return bool(uint8(stor3.field_168))
}

function sub_0666b66b(?) {
    return sub_0666b66bAddress
}

function name() {
    return name[0 len name.length]
}

function sub_081c471c(?) {
    return sub_081c471c
}

function decimals() {
    return decimals
}

function paused() {
    return bool(uint8(stor3.field_160))
}

function scaleFactor() {
    return scaleFactor
}

function sub_76028896(?) {
    return bool(stor14[arg1])
}

function sub_8cfcc839(?) {
    return bool(stor11[arg1])
}

function owner() {
    return owner
}

function transferFeeNumerator() {
    return transferFeeNumerator
}

function sub_93640679(?) {
    return bool(stor16[arg1])
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_a8d120de(?) {
    require arg1 < sub_a8d120de.length
    return sub_a8d120de[arg1].field_0
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function sub_e88b5f0b(?) {
    return bool(stor13[arg1])
}

function selfdestruct() {
    if owner != msg.sender:
        if sub_0666b66bAddress != msg.sender:
            revert with 0, 'sender is owner or superowner'
    selfdestruct(0)
}

function _fallback() payable {
    revert
}

function finishMinting() {
    revert with 0, 'is disabled'
}

function burn(uint256 arg1) {
    revert with 0, 'is disabled'
}

function renounceOwnership() {
    revert with 0, 'is disabled'
}

function computeFee(uint256 arg1) {
    if not arg1:
        return 0
    require transferFeeNumerator * arg1 / arg1 == transferFeeNumerator
    return (transferFeeNumerator * arg1 / 10^18)
}

function unpause() {
    if owner != msg.sender:
        if sub_0666b66bAddress != msg.sender:
            revert with 0, 'sender is owner or superowner'
    require uint8(stor3.field_160)
    uint8(stor3.field_160) = 0
    emit Unpause()
}

function pause() {
    if owner != msg.sender:
        if sub_0666b66bAddress != msg.sender:
            revert with 0, 'sender is owner or superowner'
    require not uint8(stor3.field_160)
    uint8(stor3.field_160) = 1
    emit Pause()
}

function sub_f59ac5e5(?) {
    if owner != msg.sender:
        if sub_0666b66bAddress != msg.sender:
            revert with 0, 'sender is owner or superowner'
    if not arg1:
        revert with 0, 'gas price limit cannot be null'
    emit 0x3d95bc75: sub_081c471c, arg1
    sub_081c471c = arg1
}

function sub_7625c95d(?) {
    if not arg1:
        revert with 0, 32, 31, 0xef6163636f756e74206973206e6f7420746865207a65726f2061646472657373
    if owner != msg.sender:
        if sub_0666b66bAddress != msg.sender:
            revert with 0, 'sender is owner or superowner'
    if not stor13[address(arg1)]:
        revert with 0, 'TAP is whitlisted'
    emit 0xe53a799a: arg1
    stor13[address(arg1)] = 0
}

function sub_1d84b0e8(?) {
    if not arg1:
        revert with 0, 32, 31, 0xef6163636f756e74206973206e6f7420746865207a65726f2061646472657373
    if owner != msg.sender:
        if sub_0666b66bAddress != msg.sender:
            revert with 0, 'sender is owner or superowner'
    if not stor14[address(arg1)]:
        revert with 0, 'account is blacklisted'
    emit 0xd5ffe653: arg1
    stor14[address(arg1)] = 0
}

function blacklist(address arg1) {
    if not arg1:
        revert with 0, 32, 31, 0xef6163636f756e74206973206e6f7420746865207a65726f2061646472657373
    if owner != msg.sender:
        if sub_0666b66bAddress != msg.sender:
            revert with 0, 'sender is owner or superowner'
    if stor14[address(arg1)]:
        revert with 0, 'account is not blacklisted'
    emit 0x5504bc07: arg1
    stor14[address(arg1)] = 1
}

function sub_01b05c6a(?) {
    if owner != msg.sender:
        if sub_0666b66bAddress != msg.sender:
            revert with 0, 'sender is owner or superowner'
    if arg1 > 5 * 10^16:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'transfer fee numerator is less than its upper bound'
    emit 0x814527eb: transferFeeNumerator, arg1
    transferFeeNumerator = arg1
}

function balanceOf(address arg1) {
    if not stor8[address(arg1)]:
        return 0
    if stor8[address(arg1)] == scaleFactor:
        return stor0[address(arg1)]
    if not stor0[address(arg1)]:
        if stor8[address(arg1)]:
            return (0 / stor8[address(arg1)])
    else:
        if scaleFactor * stor0[address(arg1)] / stor0[address(arg1)] == scaleFactor:
            if stor8[address(arg1)]:
                return (scaleFactor * stor0[address(arg1)] / stor8[address(arg1)])
    revert
}

function sub_f9534555(?) {
    if not arg1:
        revert with 0, 32, 31, 0xef6163636f756e74206973206e6f7420746865207a65726f2061646472657373
    if owner != msg.sender:
        if sub_0666b66bAddress != msg.sender:
            revert with 0, 'sender is owner or superowner'
    if stor11[address(arg1)]:
        revert with 0, 'account has fees'
    if 100 <= sub_a8d120de.length:
        revert with 0, 'array is not full'
    emit 0xe05ec931: arg1
    stor11[address(arg1)] = 1
    sub_a8d120de.length++
    sub_a8d120de[sub_a8d120de.length].field_0 = arg1
}

function whitelist(address arg1) {
    if not arg1:
        revert with 0, 32, 31, 0xef6163636f756e74206973206e6f7420746865207a65726f2061646472657373
    if owner != msg.sender:
        if sub_0666b66bAddress != msg.sender:
            revert with 0, 'sender is owner or superowner'
    if owner == arg1:
        revert with 0, 'TAP is not owner or superowner'
    if arg1 == sub_0666b66bAddress:
        revert with 0, 'TAP is not owner or superowner'
    if stor13[address(arg1)]:
        revert with 0, 'TAP cannot be whitlisted'
    emit 0xcdedbb60: arg1
    stor13[address(arg1)] = 1
}

function reclaimToken(address arg1, address arg2) {
    if owner != msg.sender:
        if sub_0666b66bAddress != msg.sender:
            revert with 0, 'sender is owner or superowner'
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function sub_b94d3f1e(?) {
    if not arg1:
        revert with 0, 32, 31, 0xef6163636f756e74206973206e6f7420746865207a65726f2061646472657373
    if owner != msg.sender:
        if sub_0666b66bAddress != msg.sender:
            revert with 0, 'sender is owner or superowner'
    if not stor11[address(arg1)]:
        revert with 0, 'account avoids fees'
    emit 0x5d758c9a: arg1
    stor11[address(arg1)] = 0
    require sub_a8d120de.length
    require 0 < sub_a8d120de.length
    idx = 0
    while sub_a8d120de[idx].field_0 != arg1:
        require idx + 1 < sub_a8d120de.length
        mem[0] = 12
        idx = idx + 1
        continue 
    require 1 <= sub_a8d120de.length
    require sub_a8d120de.length - 1 < sub_a8d120de.length
    require None + 2 < sub_a8d120de.length
    sub_a8d120de[None].field_512 = sub_a8d120de[sub_a8d120de.length].field_0
    sub_a8d120de.length--
    if sub_a8d120de.length > sub_a8d120de.length - 1:
        idx = sub_a8d120de.length - 1
        while sub_a8d120de.length > idx:
            sub_a8d120de[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function approve(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    if not stor8[address(arg1)]:
        if scaleFactor != stor8[address(arg1)]:
            stor8[address(arg1)] = scaleFactor
        if stor0[address(arg1)] != 0:
            stor0[address(arg1)] = 0
    else:
        if stor8[address(arg1)] == scaleFactor:
            if scaleFactor != stor8[address(arg1)]:
                stor8[address(arg1)] = scaleFactor
        else:
            if not stor0[address(arg1)]:
                require stor8[address(arg1)]
                if scaleFactor != stor8[address(arg1)]:
                    stor8[address(arg1)] = scaleFactor
                if 0 / stor8[address(arg1)] != stor0[address(arg1)]:
                    stor0[address(arg1)] = 0 / stor8[address(arg1)]
            else:
                require scaleFactor * stor0[address(arg1)] / stor0[address(arg1)] == scaleFactor
                require stor8[address(arg1)]
                if scaleFactor != stor8[address(arg1)]:
                    stor8[address(arg1)] = scaleFactor
                if scaleFactor * stor0[address(arg1)] / stor8[address(arg1)] != stor0[address(arg1)]:
                    stor0[address(arg1)] = scaleFactor * stor0[address(arg1)] / stor8[address(arg1)]
    require not uint8(stor3.field_160)
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    if stor14[address(arg1)]:
        revert with 0, 'to address is not blacklisted'
    if not stor8[address(arg1)]:
        if scaleFactor != stor8[address(arg1)]:
            stor8[address(arg1)] = scaleFactor
        if stor0[address(arg1)] != 0:
            stor0[address(arg1)] = 0
    else:
        if stor8[address(arg1)] == scaleFactor:
            if scaleFactor != stor8[address(arg1)]:
                stor8[address(arg1)] = scaleFactor
        else:
            if not stor0[address(arg1)]:
                require stor8[address(arg1)]
                if scaleFactor != stor8[address(arg1)]:
                    stor8[address(arg1)] = scaleFactor
                if 0 / stor8[address(arg1)] != stor0[address(arg1)]:
                    stor0[address(arg1)] = 0 / stor8[address(arg1)]
            else:
                require scaleFactor * stor0[address(arg1)] / stor0[address(arg1)] == scaleFactor
                require stor8[address(arg1)]
                if scaleFactor != stor8[address(arg1)]:
                    stor8[address(arg1)] = scaleFactor
                if scaleFactor * stor0[address(arg1)] / stor8[address(arg1)] != stor0[address(arg1)]:
                    stor0[address(arg1)] = scaleFactor * stor0[address(arg1)] / stor8[address(arg1)]
    if not arg1:
        emit 0xec60acf7: 0, 0, arg2, 0, arg1
    else:
        if owner == arg1:
            emit 0xec60acf7: 0, 1, arg2, 0, arg1
        else:
            if sub_0666b66bAddress == arg1:
                emit 0xec60acf7: 0, 2, arg2, 0, arg1
            else:
                if not stor13[address(arg1)]:
                    emit 0xec60acf7: 0, 4, arg2, 0, arg1
                else:
                    emit 0xec60acf7: 0, 3, arg2, 0, arg1
    if owner != msg.sender:
        if sub_0666b66bAddress != msg.sender:
            revert with 0, 'sender is owner or superowner'
    require not uint8(stor3.field_168)
    require arg2 + stor1 >= stor1
    stor1 += arg2
    require arg2 + stor0[address(arg1)] >= stor0[address(arg1)]
    stor0[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function sub_ede5663a(?) {
    if not arg1:
        revert with 0, 32, 31, 0xef6163636f756e74206973206e6f7420746865207a65726f2061646472657373
    if sub_0666b66bAddress != msg.sender:
        revert with 0, 'only superowner'
    if stor16[address(arg1)]:
        revert with 0, 'owner was not used before'
    stor16[address(arg1)] = 1
    if stor8[stor15]:
        if stor8[stor15] == scaleFactor:
            if stor0[stor15] > 0:
                require stor0[stor15] <= stor0[stor15]
                require stor0[stor15] <= stor0[stor15]
                stor0[stor15] = 0
                require stor0[stor15] <= stor1
                stor1 -= stor0[stor15]
                emit Burn(stor0[stor15], sub_0666b66bAddress);
                emit Transfer(stor0[stor15], sub_0666b66bAddress, 0);
                emit 0xec60acf7: 2, 0, stor0[stor15], sub_0666b66bAddress, 0
        else:
            if not stor0[stor15]:
                require stor8[stor15]
                if 0 / stor8[stor15] > 0:
                    require 0 / stor8[stor15] <= stor0[stor15]
                    require 0 / stor8[stor15] <= stor0[stor15]
                    stor0[stor15] -= 0 / stor8[stor15]
                    require 0 / stor8[stor15] <= stor1
                    stor1 -= 0 / stor8[stor15]
                    emit Burn((0 / stor8[stor15]), sub_0666b66bAddress);
                    emit Transfer((0 / stor8[stor15]), sub_0666b66bAddress, 0);
                    emit 0xec60acf7: 2, 0, 0 / stor8[stor15], sub_0666b66bAddress, 0
            else:
                require scaleFactor * stor0[stor15] / stor0[stor15] == scaleFactor
                require stor8[stor15]
                if scaleFactor * stor0[stor15] / stor8[stor15] > 0:
                    require scaleFactor * stor0[stor15] / stor8[stor15] <= stor0[stor15]
                    require scaleFactor * stor0[stor15] / stor8[stor15] <= stor0[stor15]
                    stor0[stor15] -= scaleFactor * stor0[stor15] / stor8[stor15]
                    require scaleFactor * stor0[stor15] / stor8[stor15] <= stor1
                    stor1 -= scaleFactor * stor0[stor15] / stor8[stor15]
                    emit Burn((scaleFactor * stor0[stor15] / stor8[stor15]), sub_0666b66bAddress);
                    emit Transfer((scaleFactor * stor0[stor15] / stor8[stor15]), sub_0666b66bAddress, 0);
                    emit 0xec60acf7: 2, 0, scaleFactor * stor0[stor15] / stor8[stor15], sub_0666b66bAddress, 0
    emit 0xa060f1dd: sub_0666b66bAddress, arg1
    sub_0666b66bAddress = arg1
}

function increaseApproval(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    if not stor8[address(msg.sender)]:
        if scaleFactor != stor8[address(msg.sender)]:
            stor8[address(msg.sender)] = scaleFactor
        if stor0[address(msg.sender)] != 0:
            stor0[address(msg.sender)] = 0
    else:
        if stor8[address(msg.sender)] == scaleFactor:
            if scaleFactor != stor8[address(msg.sender)]:
                stor8[address(msg.sender)] = scaleFactor
        else:
            if not stor0[address(msg.sender)]:
                require stor8[address(msg.sender)]
                if scaleFactor != stor8[address(msg.sender)]:
                    stor8[address(msg.sender)] = scaleFactor
                if 0 / stor8[address(msg.sender)] != stor0[address(msg.sender)]:
                    stor0[address(msg.sender)] = 0 / stor8[address(msg.sender)]
            else:
                require scaleFactor * stor0[address(msg.sender)] / stor0[address(msg.sender)] == scaleFactor
                require stor8[address(msg.sender)]
                if scaleFactor != stor8[address(msg.sender)]:
                    stor8[address(msg.sender)] = scaleFactor
                if scaleFactor * stor0[address(msg.sender)] / stor8[address(msg.sender)] != stor0[address(msg.sender)]:
                    stor0[address(msg.sender)] = scaleFactor * stor0[address(msg.sender)] / stor8[address(msg.sender)]
    if not stor8[address(arg1)]:
        if scaleFactor != stor8[address(arg1)]:
            stor8[address(arg1)] = scaleFactor
        if stor0[address(arg1)] != 0:
            stor0[address(arg1)] = 0
    else:
        if stor8[address(arg1)] == scaleFactor:
            if scaleFactor != stor8[address(arg1)]:
                stor8[address(arg1)] = scaleFactor
        else:
            if not stor0[address(arg1)]:
                require stor8[address(arg1)]
                if scaleFactor != stor8[address(arg1)]:
                    stor8[address(arg1)] = scaleFactor
                if 0 / stor8[address(arg1)] != stor0[address(arg1)]:
                    stor0[address(arg1)] = 0 / stor8[address(arg1)]
            else:
                require scaleFactor * stor0[address(arg1)] / stor0[address(arg1)] == scaleFactor
                require stor8[address(arg1)]
                if scaleFactor != stor8[address(arg1)]:
                    stor8[address(arg1)] = scaleFactor
                if scaleFactor * stor0[address(arg1)] / stor8[address(arg1)] != stor0[address(arg1)]:
                    stor0[address(arg1)] = scaleFactor * stor0[address(arg1)] / stor8[address(arg1)]
    require not uint8(stor3.field_160)
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    if not stor8[address(msg.sender)]:
        if scaleFactor != stor8[address(msg.sender)]:
            stor8[address(msg.sender)] = scaleFactor
        if stor0[address(msg.sender)] != 0:
            stor0[address(msg.sender)] = 0
    else:
        if stor8[address(msg.sender)] == scaleFactor:
            if scaleFactor != stor8[address(msg.sender)]:
                stor8[address(msg.sender)] = scaleFactor
        else:
            if not stor0[address(msg.sender)]:
                require stor8[address(msg.sender)]
                if scaleFactor != stor8[address(msg.sender)]:
                    stor8[address(msg.sender)] = scaleFactor
                if 0 / stor8[address(msg.sender)] != stor0[address(msg.sender)]:
                    stor0[address(msg.sender)] = 0 / stor8[address(msg.sender)]
            else:
                require scaleFactor * stor0[address(msg.sender)] / stor0[address(msg.sender)] == scaleFactor
                require stor8[address(msg.sender)]
                if scaleFactor != stor8[address(msg.sender)]:
                    stor8[address(msg.sender)] = scaleFactor
                if scaleFactor * stor0[address(msg.sender)] / stor8[address(msg.sender)] != stor0[address(msg.sender)]:
                    stor0[address(msg.sender)] = scaleFactor * stor0[address(msg.sender)] / stor8[address(msg.sender)]
    if not stor8[address(arg1)]:
        if scaleFactor != stor8[address(arg1)]:
            stor8[address(arg1)] = scaleFactor
        if stor0[address(arg1)] != 0:
            stor0[address(arg1)] = 0
    else:
        if stor8[address(arg1)] == scaleFactor:
            if scaleFactor != stor8[address(arg1)]:
                stor8[address(arg1)] = scaleFactor
        else:
            if not stor0[address(arg1)]:
                require stor8[address(arg1)]
                if scaleFactor != stor8[address(arg1)]:
                    stor8[address(arg1)] = scaleFactor
                if 0 / stor8[address(arg1)] != stor0[address(arg1)]:
                    stor0[address(arg1)] = 0 / stor8[address(arg1)]
            else:
                require scaleFactor * stor0[address(arg1)] / stor0[address(arg1)] == scaleFactor
                require stor8[address(arg1)]
                if scaleFactor != stor8[address(arg1)]:
                    stor8[address(arg1)] = scaleFactor
                if scaleFactor * stor0[address(arg1)] / stor8[address(arg1)] != stor0[address(arg1)]:
                    stor0[address(arg1)] = scaleFactor * stor0[address(arg1)] / stor8[address(arg1)]
    require not uint8(stor3.field_160)
    if arg2 >= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] = 0
    else:
        require arg2 <= allowance[msg.sender][address(arg1)]
        allowance[msg.sender][address(arg1)] -= arg2
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        if sub_0666b66bAddress != msg.sender:
            revert with 0, 'sender is owner or superowner'
    if stor16[address(arg1)]:
        revert with 0, 'owner was not used before'
    stor16[address(arg1)] = 1
    if stor8[address(stor3.field_0)]:
        if stor8[address(stor3.field_0)] == scaleFactor:
            if stor0[address(stor3.field_0)] > 0:
                require stor0[address(stor3.field_0)] <= stor0[address(stor3.field_0)]
                require stor0[address(stor3.field_0)] <= stor0[address(stor3.field_0)]
                stor0[address(stor3.field_0)] = 0
                require stor0[address(stor3.field_0)] <= stor1
                stor1 -= stor0[address(stor3.field_0)]
                emit Burn(stor0[address(stor3.field_0)], owner);
                emit Transfer(stor0[address(stor3.field_0)], owner, 0);
                emit 0xec60acf7: 1, 0, stor0[address(stor3.field_0)], owner, 0
        else:
            if not stor0[address(stor3.field_0)]:
                require stor8[address(stor3.field_0)]
                if 0 / stor8[address(stor3.field_0)] > 0:
                    require 0 / stor8[address(stor3.field_0)] <= stor0[address(stor3.field_0)]
                    require 0 / stor8[address(stor3.field_0)] <= stor0[address(stor3.field_0)]
                    stor0[address(stor3.field_0)] -= 0 / stor8[address(stor3.field_0)]
                    require 0 / stor8[address(stor3.field_0)] <= stor1
                    stor1 -= 0 / stor8[address(stor3.field_0)]
                    emit Burn((0 / stor8[address(stor3.field_0)]), owner);
                    emit Transfer((0 / stor8[address(stor3.field_0)]), owner, 0);
                    emit 0xec60acf7: 1, 0, 0 / stor8[address(stor3.field_0)], owner, 0
            else:
                require scaleFactor * stor0[address(stor3.field_0)] / stor0[address(stor3.field_0)] == scaleFactor
                require stor8[address(stor3.field_0)]
                if scaleFactor * stor0[address(stor3.field_0)] / stor8[address(stor3.field_0)] > 0:
                    require scaleFactor * stor0[address(stor3.field_0)] / stor8[address(stor3.field_0)] <= stor0[address(stor3.field_0)]
                    require scaleFactor * stor0[address(stor3.field_0)] / stor8[address(stor3.field_0)] <= stor0[address(stor3.field_0)]
                    stor0[address(stor3.field_0)] -= scaleFactor * stor0[address(stor3.field_0)] / stor8[address(stor3.field_0)]
                    require scaleFactor * stor0[address(stor3.field_0)] / stor8[address(stor3.field_0)] <= stor1
                    stor1 -= scaleFactor * stor0[address(stor3.field_0)] / stor8[address(stor3.field_0)]
                    emit Burn((scaleFactor * stor0[address(stor3.field_0)] / stor8[address(stor3.field_0)]), owner);
                    emit Transfer((scaleFactor * stor0[address(stor3.field_0)] / stor8[address(stor3.field_0)]), owner, 0);
                    emit 0xec60acf7: 1, 0, scaleFactor * stor0[address(stor3.field_0)] / stor8[address(stor3.field_0)], owner, 0
    if owner != msg.sender:
        if sub_0666b66bAddress != msg.sender:
            revert with 0, 'sender is owner or superowner'
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function seize(address arg1) {
    if not arg1:
        revert with 0, 32, 31, 0xef6163636f756e74206973206e6f7420746865207a65726f2061646472657373
    if owner != msg.sender:
        if sub_0666b66bAddress != msg.sender:
            revert with 0, 'sender is owner or superowner'
    if not stor14[address(arg1)]:
        revert with 0, 'account has been blacklisted'
    if not stor8[address(arg1)]:
        if scaleFactor != stor8[address(arg1)]:
            stor8[address(arg1)] = scaleFactor
        if stor0[address(arg1)] != 0:
            stor0[address(arg1)] = 0
    else:
        if stor8[address(arg1)] == scaleFactor:
            if scaleFactor != stor8[address(arg1)]:
                stor8[address(arg1)] = scaleFactor
        else:
            if not stor0[address(arg1)]:
                require stor8[address(arg1)]
                if scaleFactor != stor8[address(arg1)]:
                    stor8[address(arg1)] = scaleFactor
                if 0 / stor8[address(arg1)] != stor0[address(arg1)]:
                    stor0[address(arg1)] = 0 / stor8[address(arg1)]
            else:
                require scaleFactor * stor0[address(arg1)] / stor0[address(arg1)] == scaleFactor
                require stor8[address(arg1)]
                if scaleFactor != stor8[address(arg1)]:
                    stor8[address(arg1)] = scaleFactor
                if scaleFactor * stor0[address(arg1)] / stor8[address(arg1)] != stor0[address(arg1)]:
                    stor0[address(arg1)] = scaleFactor * stor0[address(arg1)] / stor8[address(arg1)]
    if not stor8[address(arg1)]:
        if not arg1:
            emit 0x18e2ff21: 0, arg1
        else:
            if owner == arg1:
                emit 0x18e2ff21: 1, 0, arg1
            else:
                if sub_0666b66bAddress == arg1:
                    emit 0x18e2ff21: 2, 0, arg1
                else:
                    if not stor13[address(arg1)]:
                        emit 0x18e2ff21: 4, 0, arg1
                    else:
                        emit 0x18e2ff21: 3, 0, arg1
        require 0 <= stor0[address(arg1)]
        require 0 <= stor0[address(arg1)]
        require 0 <= stor1
        emit Burn(0, arg1);
        emit Transfer(0, arg1, 0);
    else:
        if stor8[address(arg1)] == scaleFactor:
            if not arg1:
                emit 0x18e2ff21: 0, stor0[address(arg1)], arg1
            else:
                if owner == arg1:
                    emit 0x18e2ff21: 1, stor0[address(arg1)], arg1
                else:
                    if sub_0666b66bAddress == arg1:
                        emit 0x18e2ff21: 2, stor0[address(arg1)], arg1
                    else:
                        if not stor13[address(arg1)]:
                            emit 0x18e2ff21: 4, stor0[address(arg1)], arg1
                        else:
                            emit 0x18e2ff21: 3, stor0[address(arg1)], arg1
            require stor0[address(arg1)] <= stor0[address(arg1)]
            require stor0[address(arg1)] <= stor0[address(arg1)]
            stor0[address(arg1)] = 0
            require stor0[address(arg1)] <= stor1
            stor1 -= stor0[address(arg1)]
            emit Burn(stor0[address(arg1)], arg1);
            emit Transfer(stor0[address(arg1)], arg1, 0);
        else:
            if not stor0[address(arg1)]:
                require stor8[address(arg1)]
                if not arg1:
                    emit 0x18e2ff21: 0, 0 / stor8[address(arg1)], arg1
                else:
                    if owner == arg1:
                        emit 0x18e2ff21: 1, 0 / stor8[address(arg1)], arg1
                    else:
                        if sub_0666b66bAddress == arg1:
                            emit 0x18e2ff21: 2, 0 / stor8[address(arg1)], arg1
                        else:
                            if not stor13[address(arg1)]:
                                emit 0x18e2ff21: 4, 0 / stor8[address(arg1)], arg1
                            else:
                                emit 0x18e2ff21: 3, 0 / stor8[address(arg1)], arg1
                require 0 / stor8[address(arg1)] <= stor0[address(arg1)]
                require 0 / stor8[address(arg1)] <= stor0[address(arg1)]
                stor0[address(arg1)] -= 0 / stor8[address(arg1)]
                require 0 / stor8[address(arg1)] <= stor1
                stor1 -= 0 / stor8[address(arg1)]
                emit Burn((0 / stor8[address(arg1)]), arg1);
                emit Transfer((0 / stor8[address(arg1)]), arg1, 0);
            else:
                require scaleFactor * stor0[address(arg1)] / stor0[address(arg1)] == scaleFactor
                require stor8[address(arg1)]
                if not arg1:
                    emit 0x18e2ff21: 0, scaleFactor * stor0[address(arg1)] / stor8[address(arg1)], arg1
                else:
                    if owner == arg1:
                        emit 0x18e2ff21: 1, scaleFactor * stor0[address(arg1)] / stor8[address(arg1)], arg1
                    else:
                        if sub_0666b66bAddress == arg1:
                            emit 0x18e2ff21: 2, scaleFactor * stor0[address(arg1)] / stor8[address(arg1)], arg1
                        else:
                            if not stor13[address(arg1)]:
                                emit 0x18e2ff21: 4, scaleFactor * stor0[address(arg1)] / stor8[address(arg1)], arg1
                            else:
                                emit 0x18e2ff21: 3, scaleFactor * stor0[address(arg1)] / stor8[address(arg1)], arg1
                require scaleFactor * stor0[address(arg1)] / stor8[address(arg1)] <= stor0[address(arg1)]
                require scaleFactor * stor0[address(arg1)] / stor8[address(arg1)] <= stor0[address(arg1)]
                stor0[address(arg1)] -= scaleFactor * stor0[address(arg1)] / stor8[address(arg1)]
                require scaleFactor * stor0[address(arg1)] / stor8[address(arg1)] <= stor1
                stor1 -= scaleFactor * stor0[address(arg1)] / stor8[address(arg1)]
                emit Burn((scaleFactor * stor0[address(arg1)] / stor8[address(arg1)]), arg1);
                emit Transfer((scaleFactor * stor0[address(arg1)] / stor8[address(arg1)]), arg1, 0);
}

function totalSupply() {
    if not stor8[address(stor3.field_0)]:
        if sub_0666b66bAddress == owner:
            if 0 <= stor1:
                return stor1
        else:
            if not stor8[stor15]:
                if 0 <= stor1:
                    return stor1
            else:
                if stor8[stor15] == scaleFactor:
                    if stor0[stor15] >= 0:
                        if stor0[stor15] <= stor1:
                            return (stor1 - stor0[stor15])
                else:
                    if not stor0[stor15]:
                        if stor8[stor15]:
                            if 0 / stor8[stor15] >= 0:
                                if 0 / stor8[stor15] <= stor1:
                                    return (stor1 - (0 / stor8[stor15]))
                    else:
                        if scaleFactor * stor0[stor15] / stor0[stor15] == scaleFactor:
                            if stor8[stor15]:
                                if scaleFactor * stor0[stor15] / stor8[stor15] >= 0:
                                    if scaleFactor * stor0[stor15] / stor8[stor15] <= stor1:
                                        return (stor1 - (scaleFactor * stor0[stor15] / stor8[stor15]))
    else:
        if stor8[address(stor3.field_0)] == scaleFactor:
            if sub_0666b66bAddress == owner:
                if stor0[address(stor3.field_0)] <= stor1:
                    return (stor1 - stor0[address(stor3.field_0)])
            else:
                if not stor8[stor15]:
                    if stor0[address(stor3.field_0)] >= stor0[address(stor3.field_0)]:
                        if stor0[address(stor3.field_0)] <= stor1:
                            return (stor1 - stor0[address(stor3.field_0)])
                else:
                    if stor8[stor15] == scaleFactor:
                        if stor0[stor15] + stor0[address(stor3.field_0)] >= stor0[address(stor3.field_0)]:
                            if stor0[stor15] + stor0[address(stor3.field_0)] <= stor1:
                                return (stor1 - stor0[stor15] - stor0[address(stor3.field_0)])
                    else:
                        if not stor0[stor15]:
                            if stor8[stor15]:
                                if (0 / stor8[stor15]) + stor0[address(stor3.field_0)] >= stor0[address(stor3.field_0)]:
                                    if (0 / stor8[stor15]) + stor0[address(stor3.field_0)] <= stor1:
                                        return (stor1 - (0 / stor8[stor15]) - stor0[address(stor3.field_0)])
                        else:
                            if scaleFactor * stor0[stor15] / stor0[stor15] == scaleFactor:
                                if stor8[stor15]:
                                    if (scaleFactor * stor0[stor15] / stor8[stor15]) + stor0[address(stor3.field_0)] >= stor0[address(stor3.field_0)]:
                                        if (scaleFactor * stor0[stor15] / stor8[stor15]) + stor0[address(stor3.field_0)] <= stor1:
                                            return (stor1 - (scaleFactor * stor0[stor15] / stor8[stor15]) - stor0[address(stor3.field_0)])
        else:
            if not stor0[address(stor3.field_0)]:
                if stor8[address(stor3.field_0)]:
                    if sub_0666b66bAddress == owner:
                        if 0 / stor8[address(stor3.field_0)] <= stor1:
                            return (stor1 - (0 / stor8[address(stor3.field_0)]))
                    else:
                        if not stor8[stor15]:
                            if 0 / stor8[address(stor3.field_0)] >= 0 / stor8[address(stor3.field_0)]:
                                if 0 / stor8[address(stor3.field_0)] <= stor1:
                                    return (stor1 - (0 / stor8[address(stor3.field_0)]))
                        else:
                            if stor8[stor15] == scaleFactor:
                                if stor0[stor15] + (0 / stor8[address(stor3.field_0)]) >= 0 / stor8[address(stor3.field_0)]:
                                    if stor0[stor15] + (0 / stor8[address(stor3.field_0)]) <= stor1:
                                        return (stor1 - stor0[stor15] - (0 / stor8[address(stor3.field_0)]))
                            else:
                                if not stor0[stor15]:
                                    if stor8[stor15]:
                                        if (0 / stor8[stor15]) + (0 / stor8[address(stor3.field_0)]) >= 0 / stor8[address(stor3.field_0)]:
                                            if (0 / stor8[stor15]) + (0 / stor8[address(stor3.field_0)]) <= stor1:
                                                return (stor1 - (0 / stor8[stor15]) - (0 / stor8[address(stor3.field_0)]))
                                else:
                                    if scaleFactor * stor0[stor15] / stor0[stor15] == scaleFactor:
                                        if stor8[stor15]:
                                            if (scaleFactor * stor0[stor15] / stor8[stor15]) + (0 / stor8[address(stor3.field_0)]) >= 0 / stor8[address(stor3.field_0)]:
                                                if (scaleFactor * stor0[stor15] / stor8[stor15]) + (0 / stor8[address(stor3.field_0)]) <= stor1:
                                                    return (stor1 - (scaleFactor * stor0[stor15] / stor8[stor15]) - (0 / stor8[address(stor3.field_0)]))
            else:
                if scaleFactor * stor0[address(stor3.field_0)] / stor0[address(stor3.field_0)] == scaleFactor:
                    if stor8[address(stor3.field_0)]:
                        if sub_0666b66bAddress == owner:
                            if scaleFactor * stor0[address(stor3.field_0)] / stor8[address(stor3.field_0)] <= stor1:
                                return (stor1 - (scaleFactor * stor0[address(stor3.field_0)] / stor8[address(stor3.field_0)]))
                        else:
                            if not stor8[stor15]:
                                if scaleFactor * stor0[address(stor3.field_0)] / stor8[address(stor3.field_0)] >= scaleFactor * stor0[address(stor3.field_0)] / stor8[address(stor3.field_0)]:
                                    if scaleFactor * stor0[address(stor3.field_0)] / stor8[address(stor3.field_0)] <= stor1:
                                        return (stor1 - (scaleFactor * stor0[address(stor3.field_0)] / stor8[address(stor3.field_0)]))
                            else:
                                if stor8[stor15] == scaleFactor:
                                    if stor0[stor15] + (scaleFactor * stor0[address(stor3.field_0)] / stor8[address(stor3.field_0)]) >= scaleFactor * stor0[address(stor3.field_0)] / stor8[address(stor3.field_0)]:
                                        if stor0[stor15] + (scaleFactor * stor0[address(stor3.field_0)] / stor8[address(stor3.field_0)]) <= stor1:
                                            return (stor1 - stor0[stor15] - (scaleFactor * stor0[address(stor3.field_0)] / stor8[address(stor3.field_0)]))
                                else:
                                    if not stor0[stor15]:
                                        if stor8[stor15]:
                                            if (0 / stor8[stor15]) + (scaleFactor * stor0[address(stor3.field_0)] / stor8[address(stor3.field_0)]) >= scaleFactor * stor0[address(stor3.field_0)] / stor8[address(stor3.field_0)]:
                                                if (0 / stor8[stor15]) + (scaleFactor * stor0[address(stor3.field_0)] / stor8[address(stor3.field_0)]) <= stor1:
                                                    return (stor1 - (0 / stor8[stor15]) - (scaleFactor * stor0[address(stor3.field_0)] / stor8[address(stor3.field_0)]))
                                    else:
                                        if scaleFactor * stor0[stor15] / stor0[stor15] == scaleFactor:
                                            if stor8[stor15]:
                                                if (scaleFactor * stor0[stor15] / stor8[stor15]) + (scaleFactor * stor0[address(stor3.field_0)] / stor8[address(stor3.field_0)]) >= scaleFactor * stor0[address(stor3.field_0)] / stor8[address(stor3.field_0)]:
                                                    if (scaleFactor * stor0[stor15] / stor8[stor15]) + (scaleFactor * stor0[address(stor3.field_0)] / stor8[address(stor3.field_0)]) <= stor1:
                                                        return (stor1 - (scaleFactor * stor0[stor15] / stor8[stor15]) - (scaleFactor * stor0[address(stor3.field_0)] / stor8[address(stor3.field_0)]))
    revert
}



}

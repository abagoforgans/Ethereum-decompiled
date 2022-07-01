contract main {




// =====================  Runtime code  =====================


uint256 sub_18f21806;
uint256 sub_913e2969;
uint256 sub_d57b9b9f;
uint8 stor3;
uint8 stor3; offset 8
uint256 stor3; offset 8
mapping of struct stor4;
array of address stor5;
mapping of uint8 stor6;
address stor7;

function sub_18f21806(?) {
    if stor7 != msg.sender:
        revert with 0, 'only_owner'
    return sub_18f21806
}

function sub_2c7b1ae7(?) {
    if stor7 != msg.sender:
        revert with 0, 'only_owner'
    return bool(uint8(stor3.field_8))
}

function sub_5d40ef3b(?) {
    if stor7 != msg.sender:
        revert with 0, 'only_owner'
    return bool(uint8(stor3.field_0))
}

function sub_8c59afc6(?) {
    return bool(stor6[address(msg.sender)])
}

function sub_913e2969(?) {
    if stor7 != msg.sender:
        revert with 0, 'only_owner'
    return sub_913e2969
}

function sub_d57b9b9f(?) {
    if stor7 != msg.sender:
        revert with 0, 'only_owner'
    return sub_d57b9b9f
}

function sub_fe2e81d4(?) {
    require calldata.size - 4 >= 32
    if stor7 != msg.sender:
        revert with 0, 'only_owner'
    if not arg1:
        revert with 0, 'bad_address'
    return bool(stor6[address(arg1)])
}

function fund() payable {
  stop
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == stor7)
}

function sub_d1abe4e9(?) {
    require calldata.size - 4 >= 32
    if stor7 != msg.sender:
        revert with 0, 'only_owner'
    uint8(stor3.field_0) = uint8(arg1)
}

function sub_c20b7206(?) {
    require calldata.size - 4 >= 32
    if stor7 != msg.sender:
        revert with 0, 'only_owner'
    Mask(248, 0, stor3.field_8) = Mask(248, 0, arg1)
}

function sub_06d6cb76(?) {
    require calldata.size - 4 >= 32
    if stor7 != msg.sender:
        revert with 0, 'only_owner'
    if not arg1:
        revert with 0, 'bad_address'
    stor6[address(arg1)] = 1
    emit 0x98f3b974: arg1
}

function hasDeposit(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0, 'bad_address'
    if not stor5.length:
        return 0
    require stor4[address(arg1)].field_768 < stor5.length
    return (stor5[stor4[address(arg1)].field_768] == arg1)
}

function sub_a2483a93(?) {
    require calldata.size - 4 >= 32
    if stor7 != msg.sender:
        revert with 0, 'only_owner'
    if not arg1:
        revert with 0, 'bad_address'
    if stor7 != msg.sender:
        revert with 0, 'only_owner'
    if not arg1:
        revert with 0, 'bad_address'
    if not stor6[address(arg1)]:
        revert with 0, 'not_a_dealer'
    stor6[address(arg1)] = 0
    emit 0x70c780c5: arg1
}

function isLocked(address arg1) {
    require calldata.size - 4 >= 32
    if stor7 != msg.sender:
        if not stor6[address(msg.sender)]:
            revert with 0, 'only_dealer'
    if not arg1:
        revert with 0, 'bad_address'
    if not stor5.length:
        revert with 0, 'no_deposit'
    require stor4[address(arg1)].field_768 < stor5.length
    if stor5[stor4[address(arg1)].field_768] != arg1:
        revert with 0, 'no_deposit'
    if not arg1:
        revert with 0, 'bad_address'
    return not bool(stor4[address(arg1)].field_512)
}

function getDeposit(address arg1) {
    require calldata.size - 4 >= 32
    if stor7 != msg.sender:
        if not stor6[address(msg.sender)]:
            revert with 0, 'only_dealer'
    if not arg1:
        revert with 0, 'bad_address'
    if not stor5.length:
        revert with 0, 'no_deposit'
    require stor4[address(arg1)].field_768 < stor5.length
    if stor5[stor4[address(arg1)].field_768] != arg1:
        revert with 0, 'no_deposit'
    return stor4[address(arg1)].field_0, stor4[address(arg1)].field_256, bool(stor4[address(arg1)].field_512)
}

function payout(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor7 != msg.sender:
        revert with 0, 'only_owner'
    if not arg1:
        revert with 0, 'bad_address'
    if not stor5.length:
        revert with 0, 'no_deposit'
    require stor4[address(arg1)].field_768 < stor5.length
    if stor5[stor4[address(arg1)].field_768] != arg1:
        revert with 0, 'no_deposit'
    if not arg1:
        revert with 0, 'bad_address'
    if not stor4[address(arg1)].field_512:
        revert with 0, 'is_locked'
    if stor4[address(arg1)].field_0 - stor4[address(arg1)].field_256 < arg2:
        revert with 0, 'balance_exceeded'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor4[address(arg1)].field_0 -= arg2
    sub_913e2969 += arg2
    emit 0x7b4c04a6: arg2, stor4[address(arg1)].field_0, arg1
}

function sub_e1e0ba04(?) {
    require calldata.size - 4 >= 32
    if stor7 != msg.sender:
        revert with 0, 'only_owner'
    if not arg1:
        revert with 0, 'bad_address'
    if not stor5.length:
        revert with 0, 'no_deposit'
    require stor4[address(arg1)].field_768 < stor5.length
    if stor5[stor4[address(arg1)].field_768] != arg1:
        revert with 0, 'no_deposit'
    if stor7 != msg.sender:
        if not stor6[address(msg.sender)]:
            revert with 0, 'only_dealer'
    if not arg1:
        revert with 0, 'bad_address'
    if not stor5.length:
        revert with 0, 'no_deposit'
    require stor4[address(arg1)].field_768 < stor5.length
    if stor5[stor4[address(arg1)].field_768] != arg1:
        revert with 0, 'no_deposit'
    if not arg1:
        revert with 0, 'bad_address'
    if stor4[address(arg1)].field_512:
        revert with 0, 'already_unlocked'
    stor4[address(arg1)].field_512 = 1
    emit 0x19a59250: arg1
}

function unlock(address arg1) {
    require calldata.size - 4 >= 32
    if stor7 != msg.sender:
        if not stor6[address(msg.sender)]:
            revert with 0, 'only_dealer'
    if not arg1:
        revert with 0, 'bad_address'
    if not stor5.length:
        revert with 0, 'no_deposit'
    require stor4[address(arg1)].field_768 < stor5.length
    if stor5[stor4[address(arg1)].field_768] != arg1:
        revert with 0, 'no_deposit'
    if stor7 != msg.sender:
        if not stor6[address(msg.sender)]:
            revert with 0, 'only_dealer'
    if not arg1:
        revert with 0, 'bad_address'
    if not stor5.length:
        revert with 0, 'no_deposit'
    require stor4[address(arg1)].field_768 < stor5.length
    if stor5[stor4[address(arg1)].field_768] != arg1:
        revert with 0, 'no_deposit'
    if not arg1:
        revert with 0, 'bad_address'
    if stor4[address(arg1)].field_512:
        revert with 0, 'already_unlocked'
    stor4[address(arg1)].field_512 = 1
    emit 0xb9704798: arg1
}

function lock(address arg1) {
    require calldata.size - 4 >= 32
    if stor7 != msg.sender:
        if not stor6[address(msg.sender)]:
            revert with 0, 'only_dealer'
    if not arg1:
        revert with 0, 'bad_address'
    if not stor5.length:
        revert with 0, 'no_deposit'
    require stor4[address(arg1)].field_768 < stor5.length
    if stor5[stor4[address(arg1)].field_768] != arg1:
        revert with 0, 'no_deposit'
    if stor7 != msg.sender:
        if not stor6[address(msg.sender)]:
            revert with 0, 'only_dealer'
    if not arg1:
        revert with 0, 'bad_address'
    if not stor5.length:
        revert with 0, 'no_deposit'
    require stor4[address(arg1)].field_768 < stor5.length
    if stor5[stor4[address(arg1)].field_768] != arg1:
        revert with 0, 'no_deposit'
    if not arg1:
        revert with 0, 'bad_address'
    if not stor4[address(arg1)].field_512:
        revert with 0, 'already_locked'
    stor4[address(arg1)].field_512 = 0
    emit 0x72a4533d: arg1
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not uint8(stor3.field_8):
        revert with 0, 'withdrawing_not_allowed'
    if not msg.sender:
        revert with 0, 'bad_address'
    if not stor5.length:
        revert with 0, 'no_deposit'
    require stor4[address(msg.sender)].field_768 < stor5.length
    if stor5[stor4[address(msg.sender)].field_768] != msg.sender:
        revert with 0, 'no_deposit'
    if not msg.sender:
        revert with 0, 'bad_address'
    if not stor4[address(msg.sender)].field_512:
        revert with 0, 'is_locked'
    if stor4[address(msg.sender)].field_0 - stor4[address(msg.sender)].field_256 < arg1:
        revert with 0, 'balance_exceeded'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor4[address(msg.sender)].field_0 -= arg1
    sub_913e2969 += arg1
    emit 0x7b4c04a6: arg1, stor4[address(msg.sender)].field_0, msg.sender
}

function setDeposit(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if stor7 != msg.sender:
        if not stor6[address(msg.sender)]:
            revert with 0, 'only_dealer'
    if not arg1:
        revert with 0, 'bad_address'
    if not stor5.length:
        require arg1
        stor4[address(arg1)].field_0 = arg2
        stor4[address(arg1)].field_256 = arg3
        stor4[address(arg1)].field_512 = 1
        stor5.length++
        stor5[stor5.length] = arg1
        stor4[address(arg1)].field_768 = stor5.length
        emit DepositCreated(arg2, arg3, arg1);
    else:
        require stor4[address(arg1)].field_768 < stor5.length
        if stor5[stor4[address(arg1)].field_768] == arg1:
            stor4[address(arg1)].field_0 = arg2
            stor4[address(arg1)].field_256 = arg3
            stor4[address(arg1)].field_512 = 1
            emit 0xc41d9f7e: arg2, arg3, arg1
        else:
            require arg1
            stor4[address(arg1)].field_0 = arg2
            stor4[address(arg1)].field_256 = arg3
            stor4[address(arg1)].field_512 = 1
            stor5.length++
            stor5[stor5.length] = arg1
            stor4[address(arg1)].field_768 = stor5.length
            emit DepositCreated(arg2, arg3, arg1);
    return stor4[address(arg1)].field_768
}

function deposit() payable {
    if not uint8(stor3.field_0):
        revert with 0, 'depositing_not_allowed'
    if not msg.sender:
        revert with 0, 'bad_address'
    if not msg.value:
        revert with 0, 'Wei amount should be more than 0'
    sub_18f21806 += msg.value
    if not msg.sender:
        revert with 0, 'bad_address'
    if not stor5.length:
        require msg.sender
        stor4[address(msg.sender)].field_0 = msg.value
        stor4[address(msg.sender)].field_256 = 0
        stor4[address(msg.sender)].field_512 = 1
        stor5.length++
        stor5[stor5.length] = msg.sender
        stor4[address(msg.sender)].field_768 = stor5.length
        emit DepositCreated(msg.value, 0, msg.sender);
        emit 0x6e4f90d1: msg.value, 0, msg.sender
    else:
        require stor4[address(msg.sender)].field_768 < stor5.length
        if stor5[stor4[address(msg.sender)].field_768] == msg.sender:
            stor4[address(msg.sender)].field_0 += msg.value
            emit 0x6e4f90d1: msg.value, 1, msg.sender
        else:
            require msg.sender
            stor4[address(msg.sender)].field_0 = msg.value
            stor4[address(msg.sender)].field_256 = 0
            stor4[address(msg.sender)].field_512 = 1
            stor5.length++
            stor5[stor5.length] = msg.sender
            stor4[address(msg.sender)].field_768 = stor5.length
            emit DepositCreated(msg.value, 0, msg.sender);
            emit 0x6e4f90d1: msg.value, 0, msg.sender
}

function allDeposits() {
    if stor7 != msg.sender:
        revert with 0, 'only_owner'
    idx = 0
    s = 0
    while idx < stor5.length:
        mem[0] = stor5[idx]
        mem[32] = 4
        idx = idx + 1
        s = s + stor4[stor5[idx]].field_0 - stor4[stor5[idx]].field_256
        continue 
    return (s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length)
}

function sub_69ff4dd1(?) {
    if stor7 != msg.sender:
        revert with 0, 'only_owner'
    idx = 0
    s = 0
    while idx < stor5.length:
        mem[0] = stor5[idx]
        mem[32] = 4
        idx = idx + 1
        s = s + stor4[stor5[idx]].field_0 - stor4[stor5[idx]].field_256
        continue 
    return (eth.balance(this.address) - (s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length))
}

function payback(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor7 != msg.sender:
        revert with 0, 'only_owner'
    if not arg1:
        revert with 0, 'bad_address'
    if stor7 != msg.sender:
        revert with 0, 'only_owner'
    idx = 0
    s = 0
    while idx < stor5.length:
        mem[0] = stor5[idx]
        mem[32] = 4
        idx = idx + 1
        s = s + stor4[stor5[idx]].field_0 - stor4[stor5[idx]].field_256
        continue 
    if eth.balance(this.address) - (s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length) <= 0:
        revert with 0, 'payback_less_0'
    if stor7 != msg.sender:
        revert with 0, 'only_owner'
    idx = 0
    s = 0
    while idx < stor5.length:
        mem[0] = stor5[idx]
        mem[32] = 4
        idx = idx + 1
        s = s + stor4[stor5[idx]].field_0 - stor4[stor5[idx]].field_256
        continue 
    if arg2 >= eth.balance(this.address) - (s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length):
        revert with 0, 'maximum_payback_exceeded'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_d57b9b9f += arg2
    emit EthTransferred(arg2, arg1);
}



}

contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor4;

function _fallback() payable {
    stor4 = 1
    require not msg.value
    stor0 = msg.sender
    stor1 = msg.sender
    stor2 = code.data[2820 len 20]
    return code.data[122 len 2686]
}



// =====================  Runtime code  =====================


address owner;
address treasuryAddress;
uint8 stor2; offset 160
uint128 stor2; offset 160
address sub_8d006d0eAddress;
uint256 sub_3154e0c7;
uint256 currentEpoch;
mapping of uint256 stor5;
mapping of uint256 sub_b4fed28d;

function payoutsPaused() {
    return bool(uint8(stor2.field_160))
}

function sub_3154e0c7(?) {
    return sub_3154e0c7
}

function treasury() {
    return treasuryAddress
}

function currentEpoch() {
    return currentEpoch
}

function sub_8d006d0e(?) {
    return sub_8d006d0eAddress
}

function owner() {
    return owner
}

function sub_b4fed28d(?) {
    return sub_b4fed28d[address(arg1)]
}

function ownerkill() {
    require owner == msg.sender
    selfdestruct(owner)
}

function sub_d462b8b5(?) {
    require owner == msg.sender
    sub_3154e0c7 = arg1
}

function ownerChangeOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function ownerSetTreasury(address arg1) {
    require owner == msg.sender
    treasuryAddress = arg1
}

function ownerPausePayouts(bool arg1) {
    require owner == msg.sender
    Mask(96, 0, stor2.field_160) = Mask(96, 0, arg1)
}

function _fallback() payable {
    require treasuryAddress == msg.sender
    require sub_3154e0c7 + msg.value >= sub_3154e0c7
    sub_3154e0c7 += msg.value
}

function sub_0948498e(?) {
    require owner == msg.sender
    currentEpoch++
    sub_3154e0c7 = 0
    uint8(stor2.field_160) = 1
    emit 0xe39bd356: currentEpoch + 1
}

function sub_01fd4ac8(?) {
    require ext_code.size(sub_8d006d0eAddress)
    call sub_8d006d0eAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function ownerTransferEther(address arg1, uint256 arg2) {
    require owner == msg.sender
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit LogOwnerTransfer(arg1, arg2);
}

function sub_98eca55f(?) {
    require ext_code.size(sub_8d006d0eAddress)
    call sub_8d006d0eAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(sub_8d006d0eAddress)
    call sub_8d006d0eAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    if not sub_3154e0c7:
        if ext_call.return_data[0]:
            return (sub_3154e0c7 * ext_call.return_data[0] / ext_call.return_data[0])
    else:
        if sub_3154e0c7:
            require ext_call.return_data[0] * sub_3154e0c7 / sub_3154e0c7 == ext_call.return_data[0]
            if ext_call.return_data[0]:
                return (sub_3154e0c7 * ext_call.return_data[0] / ext_call.return_data[0])
    revert
}

function getMyReward() {
    require ext_code.size(sub_8d006d0eAddress)
    call sub_8d006d0eAddress.tokensFrozen() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    require bool(uint8(stor2.field_160)) != 1
    require ext_code.size(sub_8d006d0eAddress)
    call sub_8d006d0eAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    require sub_b4fed28d[address(msg.sender)] != currentEpoch
    sub_b4fed28d[address(msg.sender)] = currentEpoch
    require ext_code.size(sub_8d006d0eAddress)
    call sub_8d006d0eAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(sub_8d006d0eAddress)
    call sub_8d006d0eAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    if sub_3154e0c7:
        require sub_3154e0c7
        require ext_call.return_data[0] * sub_3154e0c7 / sub_3154e0c7 == ext_call.return_data[0]
    require ext_call.return_data[0]
    stor5[address(msg.sender)] = sub_3154e0c7 * ext_call.return_data[0] / ext_call.return_data[0]
    call msg.sender with:
       value sub_3154e0c7 * ext_call.return_data[0] / ext_call.return_data[0] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require ext_code.size(sub_8d006d0eAddress)
    call sub_8d006d0eAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    emit 0x4791c509: sub_3154e0c7, currentEpoch, msg.sender, stor5[address(msg.sender)], ext_call.return_data[0]
}



}

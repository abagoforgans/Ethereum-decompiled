contract main {




// =====================  Runtime code  =====================


#
#  - submitTransactionToken(address arg1, address arg2, string arg3, string arg4, uint8[] arg5, bytes32[] arg6, bytes32[] arg7)
#  - submitTransaction(address arg1, string arg2, string arg3, uint8[] arg4, bytes32[] arg5, bytes32[] arg6)
#
mapping of uint8 stor0;
uint8 stor3; offset 160
uint8 stor3; offset 168
uint8 stor3; offset 176
uint128 stor3; offset 160
address stor3;
address stor4;

function confirmTransaction(address arg1) {
    require uint8(stor3.field_160)
    require stor0[address(msg.sender)]
    require stor0[address(arg1)]
    if not stor4:
        stor4 = arg1
    require stor4 == arg1
    uint8(stor3.field_176) = uint8(uint8(stor3.field_176) + 1)
    stor0[address(msg.sender)] = 0
    if uint8(stor3.field_176) < uint8(stor3.field_168):
    emit Kill(stor4, eth.balance(this.address));
    selfdestruct(stor4)
}

function _fallback() payable {
    if msg.value > 0:
        emit Deposit(msg.sender, msg.value);
}

function activateSafeMode() {
    require address(stor3.field_0) == msg.sender
    Mask(96, 0, stor3.field_160) = 1
    emit SafeModeActivated(msg.sender);
}



}

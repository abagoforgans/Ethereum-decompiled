contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[57 len 613]
}



// =====================  Runtime code  =====================


address creatorAddress;
mapping of struct stor1;

function creator() {
    return creatorAddress
}

function kill() {
    require creatorAddress == msg.sender
    selfdestruct(creatorAddress)
}

function pay() payable {
  stop
}

function _fallback() payable {
    revert
}

function sub_cb3bd613(?) {
    stor1[arg1].field_0 = msg.sender
    stor1[arg1].field_256 = arg2
    emit 0x51537672: msg.sender, arg1
}

function payout(bytes32 arg1) {
    require creatorAddress == msg.sender
    call stor1[arg1].field_0 with:
       value stor1[arg1].field_256 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}

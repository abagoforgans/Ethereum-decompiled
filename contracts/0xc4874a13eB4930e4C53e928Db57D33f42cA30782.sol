contract main {


// =======================  Init code  ======================


address stor1;
address stor2;

function _fallback() {
    require not stor1
    stor1 = 0x56947ac048452f75a64e2411ca140336cf939f7d
    stor2 = 0x56947ac048452f75a64e2411ca140336cf939f7d
    return code.data[293 len 1870]
}



// =====================  Runtime code  =====================


array of struct stor0;
address stor1;
address stor2;

function _fallback() payable {
    revert
}

function getSender() {
    if stor1 != msg.sender:
        require msg.sender == stor2
    return stor2
}

function getInfo(uint256 arg1) {
    if stor1 != msg.sender:
        require msg.sender == stor2
    require arg1 < stor0[address(msg.sender)].field_0
    require arg1 < stor0[address(msg.sender)].field_0
    return stor0[address(msg.sender)][arg1].field_256, stor0[address(msg.sender)][arg1].field_0, block.timestamp
}

function transferFunds(address arg1) payable {
    if stor1 != msg.sender:
        require msg.sender == stor2
    require msg.value > 0
    require arg1
    require stor2 == msg.sender
    stor0[address(msg.sender)].field_0++
    if not stor0[address(msg.sender)].field_0 <= stor0[address(msg.sender)].field_0 + 1:
        idx = 2 * stor0[address(msg.sender)].field_0 + 1
        while 2 * stor0[address(msg.sender)].field_0 > idx:
            stor0[address(msg.sender)][idx].field_0 = 0
            stor0[address(msg.sender)][idx].field_256 = 0
            idx = idx + 2
            continue 
    stor0[address(msg.sender)][stor0[address(msg.sender)].field_0].field_0 = arg1
    stor0[address(msg.sender)][stor0[address(msg.sender)].field_0].field_256 = msg.value
    call arg1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return msg.value
}



}

contract main {


// =======================  Init code  ======================


uint256 stor1;
uint8 stor3;
uint64 stor3; offset 8
uint256 stor4;
uint256 stor5;
address stor6;

function _fallback() payable {
    uint8(stor3.field_0) = 1
    stor3.field_8 % 72057594037927936 = 0
    stor4 = 50 * 10^18
    stor5 = 10^17
    stor6 = 0x2bd2326c993dfaef84f696526064ff22eba5b362
    stor1 = msg.sender or Mask(96, 160, stor1)
    return code.data[118 len 1123]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor0;
address stor1;
mapping of struct received;
uint64 seq;
uint256 stor3; offset 64
uint256 stor3;
uint256 upLimit;
uint256 lowLimit;
address stor6;

function seq() payable {
    return seq
}

function upLimit() payable {
    return upLimit
}

function lowLimit() payable {
    return lowLimit
}

function received(uint64 arg1) payable {
    return received[arg1].field_0, received[arg1].field_256
}

function setUpLimit(uint256 arg1) payable {
    require msg.sender == stor1
    upLimit = arg1
}

function setLowLimit(uint256 arg1) payable {
    require msg.sender == stor1
    lowLimit = arg1
}

function setIntermediate(address arg1) payable {
    require msg.sender == stor1
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function processed(uint64 arg1) payable {
    require msg.sender == stor1
    received[arg1 << 192].field_0 = 0
    received[arg1 << 192].field_256 = 0
}

function _fallback() payable {
    require msg.value >= lowLimit
    call stor6.forked() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if not ext_call.return_data[0]:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
        require ext_call.success
    if msg.value <= upLimit:
        call address(stor0) with:
           value msg.value wei
             gas 0 wei
        require ext_call.success
        uint256(stor3.field_0) = Mask(192, 0, stor3.field_64)
        received[uint64(stor3.field_0)].field_0 = received[uint64(stor3.field_0)].field_160
        received[uint64(stor3.field_0)].field_256 = msg.value
        emit OnReceive(seq);
    else:
        call address(stor0) with:
           value upLimit wei
             gas 0 wei
        require ext_call.success
        call msg.sender with:
           value msg.value - upLimit wei
             gas 0 wei
        uint256(stor3.field_0) = seq + 1 or Mask(192, 64, uint256(stor3.field_0))
        received[0].field_0 = msg.sender or Mask(96, 160, received[0].field_0)
        received[0].field_256 = upLimit
        emit OnReceive(0);
}



}

contract main {


// =======================  Init code  ======================


uint32 stor0; offset 160
address stor0;

function _fallback() {
    address(stor0.field_0) = msg.sender
    uint32(stor0.field_160) = code.data[438 len 4]
    return code.data[116 len 294]
}



// =====================  Runtime code  =====================


bool stor0; offset 160
uint32 stor0; offset 160
uint32 stor0; offset 161
uint32 stor0; offset 160
address stor0;

function _fallback() payable {
    revert 
}

function sub_54b580df(?) {
    if address(stor0.field_0) == msg.sender:
        return uint32(stor0.field_160)
    else:
        return 0
}

function double() {
    if address(stor0.field_0) == msg.sender:
        bool(stor0.field_160) = 0
        stor0.field_161 % 2147483648 = stor0.field_160 % 2147483648
}



}

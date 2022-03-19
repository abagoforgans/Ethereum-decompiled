contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
uint128 stor0; offset 168
address stor0;

function _fallback() payable {
    address(stor0.field_0) = msg.sender
    uint8(stor0.field_160) = 0
    Mask(88, 0, stor0.field_168) = Mask(88, 168, msg.sender) >> 168
    return code.data[48 len 341]
}



// =====================  Runtime code  =====================


const getVersion = Array(len=5, data=0.0.1)


uint8 status; offset 160
uint128 stor0; offset 160
address owner;

function getStatus() payable {
    return status
}

function getOwner() payable {
    return owner
}

function kill() payable {
    selfdestruct(owner)
}

function _fallback() payable {
  stop
}

function setStatus(uint8 arg1) payable {
    stor0 = Mask(96, 0, arg1)
}



}

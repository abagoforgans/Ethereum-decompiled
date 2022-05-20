contract main {


// =======================  Init code  ======================


uint8 stor0;
address stor0; offset 8
uint256 stor0; offset 8
address stor1;
uint256 stor2;

function _fallback() payable {
    uint8(stor0.field_0) = 0
    require not msg.value
    stor1 = code.data[614 len 20]
    stor2 = code.data[634 len 32]
    uint8(stor0.field_0) = 1
    address(stor0.field_8) = msg.sender
    Mask(248, 0, stor0.field_8) = 0
    return code.data[149 len 453]
}



// =====================  Runtime code  =====================


uint8 stor0;
address stor0;
address stor0; offset 8
address stor1;
uint256 stor2;

function getInitiated() {
    return bool(uint8(stor0.field_0))
}

function _fallback() payable {
    revert
}

function getInfos() {
    return address(stor0.field_0), stor1, stor2
}

function updateOwner(address arg1) {
    require address(stor0.field_8) == msg.sender
    stor1 = arg1
}



}

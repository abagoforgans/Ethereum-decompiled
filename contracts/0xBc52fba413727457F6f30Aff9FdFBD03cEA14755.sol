contract main {


// =======================  Init code  ======================


address stor0;
uint8 stor1; offset 160
address stor1;

function _fallback() payable {
    address(stor1.field_0) = 0x3df4c372a29376d2c8df33a1b5f001cd8d68b0e
    uint8(stor1.field_160) = 25
    require not msg.value
    stor0 = msg.sender
    return code.data[207 len 1805]
}



// =====================  Runtime code  =====================


#
#  - sub_3f9628fa(?)
#
address stor0;
uint8 stor1; offset 160
address stor1;

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) {
    if msg.sender == stor0:
        stor0 = arg1
}

function sub_78033f71(?) {
    if msg.sender == stor0:
        uint8(stor1.field_160) = arg1
}

function unvest(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, bool arg6) {
    if msg.sender == stor0:
        address(stor1.field_0) = address(arg1)
}

function sendTokens(address arg1, uint256 arg2) {
    if msg.sender == stor0:
        call address(stor1.field_0) with:
           funct Mask(32, 224, sha3('transfer(address, uint256)')) >> 224
             gas gas_remaining - 25710 wei
            args address(arg1), arg2
}



}

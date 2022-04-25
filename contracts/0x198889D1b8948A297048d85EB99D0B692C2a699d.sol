contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;

function _fallback() {
    stor0 = msg.sender
    stor1 = msg.sender
    stor2 = 1
    return code.data[167 len 552]
}



// =====================  Runtime code  =====================


address stor0;
address theAddress;
uint256 theBid;

function theAddress() {
    return theAddress
}

function theBid() {
    return theBid
}

function gameOver() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    if msg.value > theBid:
        theAddress = msg.sender
        theBid = msg.value
}



}

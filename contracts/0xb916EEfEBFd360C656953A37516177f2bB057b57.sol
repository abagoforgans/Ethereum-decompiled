contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;

function _fallback() {
    stor0 = msg.sender
    stor1 = 100
    stor2 = 10^16
    return code.data[76 len 163]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor1;
uint256 stor2;
mapping of uint256 stor3;

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    revert 
}

function BuyToken() {
    require stor2
    stor1 -= msg.value / stor2
    stor3[address(msg.sender)] += msg.value / stor2
}



}

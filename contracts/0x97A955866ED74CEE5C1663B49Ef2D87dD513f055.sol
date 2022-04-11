contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
address stor2;
address stor3;
address stor4;

function _fallback() payable {
    stor4 = 0x2c9bbb65e6e6ecd70ed2eb9731bc25669e886d06
    require not msg.value
    stor3 = stor4
    stor2 = msg.sender
    stor1 = 10^18
    stor0 = stor1 / 100
    return code.data[318 len 586]
}



// =====================  Runtime code  =====================


const getSender = msg.sender


uint256 minPrice;
address stor2;

function getMinPrice() {
    return minPrice
}

function killContract() {
    if stor2 != msg.sender:
    selfdestruct(stor2)
}

function _fallback() payable {
    revert
}

function setMinPrice(uint256 arg1) {
    if stor2 == msg.sender:
        minPrice = arg1
}



}

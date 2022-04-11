contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;

function _fallback() payable {
    stor2 = 0
    stor3 = 0
    stor4 = 0
    stor5 = 100
    require not msg.value
    stor0 = msg.sender
    return code.data[117 len 399]
}



// =====================  Runtime code  =====================


mapping of uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;

function _fallback() payable {
    stor1[address(msg.sender)] += msg.value
}

function sub_7a506052(?) {
    return (eth.balance(this.address) - stor3 - stor4)
}

function price_in_wei() {
    if not stor2:
        return 0
    require stor2
    return ((2 * eth.balance(this.address) - stor3 - stor4) + stor2 / 2 / stor2)
}



}

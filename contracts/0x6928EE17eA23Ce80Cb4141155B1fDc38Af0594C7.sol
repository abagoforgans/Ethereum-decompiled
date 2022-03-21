contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = 0
    stor1 = 0
    return code.data[39 len 239]
}



// =====================  Runtime code  =====================


uint256 stor0;
address sub_7a90c95aAddress; offset 8
uint256 stor1; offset 8

function sub_7a90c95a(?) payable {
    return address(sub_7a90c95aAddress)
}

function _fallback() payable {
  stop
}

function sub_197c408c(?) payable {
    if block.timestamp - stor0 > 30:
        address(sub_7a90c95aAddress) = 0
}

function pay() payable {
    if msg.value < 8 * 10^12:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    else:
        Mask(248, 0, stor1) = Mask(248, 0, msg.sender)
        stor0 = block.timestamp
}



}

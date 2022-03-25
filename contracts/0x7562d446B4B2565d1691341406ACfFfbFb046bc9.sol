contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;

function _fallback() payable {
    stor1 = msg.sender
    stor0 = 9
    return code.data[92 len 299]
}



// =====================  Runtime code  =====================


uint256 number;
address stor1;

function getNumber() {
    return number
}

function _fallback() payable {
    revert 
}

function setNumber(uint256 arg1) {
    require msg.sender == stor1
    number = arg1
    return 1
}



}

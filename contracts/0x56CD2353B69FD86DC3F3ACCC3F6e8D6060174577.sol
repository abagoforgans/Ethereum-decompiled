contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 value;

function getValue() payable {
    return value
}

function _fallback() payable {
    revert
}

function updateValue() payable {
    require msg.sender == stor0
    value++
}



}

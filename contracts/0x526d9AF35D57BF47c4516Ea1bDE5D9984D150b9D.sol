contract main {




// =====================  Runtime code  =====================


array of uint256 value;
address owner;

function getValue() {
    return value[0 len value.length]
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function setValue(string arg1) {
    require msg.sender == owner
    value[] = Array(len=arg1.length, data=arg1[all])
}



}

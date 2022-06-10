contract main {




// =====================  Runtime code  =====================


uint256 name;

function getName() payable {
    return name
}

function _fallback() payable {
    revert
}

function setName(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    name = arg1
}



}

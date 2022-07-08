contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;

function sub_3f438a00(?) payable {
    require calldata.size - 4 >= 64
    return bool(stor0[arg1][arg2])
}

function _fallback() payable {
    revert
}

function revoke(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require stor0[arg1][address(msg.sender)]
    emit 0xc0744329: msg.sender, arg1
    stor0[arg1][address(msg.sender)] = 0
}

function saveNewAnchor(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require not stor0[arg1][address(msg.sender)]
    emit 0xc57e4e28: msg.sender, arg1
    stor0[arg1][address(msg.sender)] = 1
}



}

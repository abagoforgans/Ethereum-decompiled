contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;

function _fallback() payable {
    revert
}

function sub_5b482f3b(?) payable {
    require calldata.size - 4 >= 32
    require stor0[address(msg.sender)]
    require arg1
    stor0[address(arg1)] = 1
    emit AddedOwner(arg1);
}

function sub_cdede98e(?) payable {
    require calldata.size - 4 >= 32
    require stor0[address(msg.sender)]
    require arg1
    require arg1 != msg.sender
    stor0[address(arg1)] = 0
    emit RemovedOwner(arg1);
}



}

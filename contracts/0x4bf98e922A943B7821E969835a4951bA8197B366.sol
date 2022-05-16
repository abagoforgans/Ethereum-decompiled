contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
uint256 sub_002541d2;

function sub_002541d2(?) {
    return sub_002541d2
}

function _fallback() payable {
    revert
}

function sub_7bd163f3(?) {
    if not stor0[address(arg1)]:
        return 0
    return 1
}

function addSweeper(address arg1) {
    if not stor0[msg.sender]:
        emit 0x9690f306: msg.sender
    else:
        if stor0[address(arg1)]:
            emit 0x6bbc26cd 
        else:
            stor0[address(arg1)] = 1
            sub_002541d2++
            emit 0xf1c17beb: arg1
}

function sub_ca1f7e93(?) {
    if not stor0[msg.sender]:
        emit 0x9690f306: msg.sender
    else:
        if 1 == sub_002541d2:
            emit 0xc74198cb 
        else:
            if not stor0[address(arg1)]:
                emit 0x256df87d 
            else:
                stor0[address(arg1)] = 0
                sub_002541d2--
                emit 0xc68b527c: arg1
}



}

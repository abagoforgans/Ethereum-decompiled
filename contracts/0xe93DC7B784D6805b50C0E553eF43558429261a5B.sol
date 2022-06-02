contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint8 stor5;

function _fallback() payable {
    revert
}

function is_expired(bytes32 arg1) {
    if stor0 != arg1:
        revert with 0, 'Forbidden.'
    if stor4 == stor2:
        return stor4 != stor2
    return (stor4 < block.timestamp)
}

function burn(bytes32 arg1) {
    if stor0 != arg1:
        revert with 0, 'Forbidden.'
    require msg.sender == stor1
    if stor5:
        revert with 0, 'Already burnt.'
    stor5 = 1
    stor3 = block.timestamp
    return 1
}

function is_burnt(bytes32 arg1) {
    if stor0 != arg1:
        revert with 0, 'Forbidden.'
    require msg.sender == stor1
    if stor0 != arg1:
        revert with 0, 'Forbidden.'
    if stor4 != stor2:
        if stor4 < block.timestamp:
            if stor0 != arg1:
                revert with 0, 'Forbidden.'
            require msg.sender == stor1
            if stor5:
                revert with 0, 'Already burnt.'
            stor5 = 1
            stor3 = block.timestamp
    return bool(stor5)
}



}

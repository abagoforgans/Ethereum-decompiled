contract main {




// =====================  Runtime code  =====================


const name = 'Demotivoken'

const decimals = 18

const symbol = 'DMT'


uint8 stor0;
address stor0; offset 8

function _fallback() payable {
    revert
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return 0
}

function totalSupply() {
    if not uint8(stor0.field_0):
        return 0
    return 70000000 * 10^18
}

function sub_3e0f966d(?) {
    require msg.sender == address(stor0.field_8)
    uint8(stor0.field_0) = 0
}

function sub_8e360253(?) {
    require msg.sender == address(stor0.field_8)
    uint8(stor0.field_0) = 1
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    if not uint8(stor0.field_0):
        return 0
    return 20
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}

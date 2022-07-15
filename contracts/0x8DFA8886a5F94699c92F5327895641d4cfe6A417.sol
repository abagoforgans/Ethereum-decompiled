contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
address stor1;
mapping of uint8 stor2;

function paused() {
    return bool(stor0)
}

function isOperator(address arg1) {
    return bool(stor2[address(arg1)])
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function setToken(address arg1) {
    require msg.sender == owner
    stor1 = arg1
}

function removeOperator(address arg1) {
    require msg.sender == owner
    stor2[address(arg1)] = 0
}

function unpause() {
    require msg.sender == owner
    require stor0
    stor0 = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not stor0
    stor0 = 1
    emit Pause()
}

function addOperator(address arg1) {
    require msg.sender == owner
    require arg1
    stor2[address(arg1)] = 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdrawTokenFromBalance(address arg1, address arg2, uint256 arg3) {
    if not stor2[address(msg.sender)]:
        require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) {
    require not stor0
    require stor1 == arg3
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit CuteCoinShopBuy(address(arg1), arg2, Array(len=arg4.length, data=arg4[all]));
}

function withdrawAllTokensFromBalance(address arg1, address arg2) {
    if not stor2[address(msg.sender)]:
        require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}

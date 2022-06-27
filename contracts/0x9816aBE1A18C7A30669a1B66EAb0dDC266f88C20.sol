contract main {




// =====================  Runtime code  =====================


address owner;
address senderAddress;

function getSender() {
    return senderAddress
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function logWithdraw(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) {
    emit LogWithdraw(arg4, arg5, arg1, arg2, arg3);
}

function makeWallet(uint256 arg1) {
    require msg.sender == owner
    create contract with 0 wei
                    code: code.data[1032 len 683], address(this.address)
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    emit LogNewWallet(arg1, address(create.new_address));
    return address(create.new_address)
}



}

contract main {




// =====================  Runtime code  =====================


const proxyType = 2


mapping of address apps;
uint256 recoveryVaultAppId;
uint256 isDepositable;
address implementationAddress;

function apps(bytes32 arg1, bytes32 arg2) {
    return apps[arg1][arg2]
}

function isDepositable() {
    return bool(isDepositable)
}

function implementation() {
    return implementationAddress
}

function recoveryVaultAppId() {
    return recoveryVaultAppId
}

function _fallback() payable {
    if gas_remaining >= 10000:
        require implementationAddress
        require ext_code.size(implementationAddress) > 0
        delegate implementationAddress with:
           funct call.data[0 len 4]
             gas gas_remaining - 10000 wei
            args call.data[4 len calldata.size - 4]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        return ext_call.return_data[0 len return_data.size]
    require msg.value > 0
    require not calldata.size
    require isDepositable
    emit ProxyDeposit(msg.sender, msg.value);
}



}

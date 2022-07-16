contract main {




// =====================  Runtime code  =====================


uint256 required;
address owner;
mapping of uint8 stor2;
mapping of uint8 stor3;
address proxyAddress;

function getRequired() {
    return required
}

function hasTransactionId(uint256 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor3[arg1])
}

function hasSigner(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor2[address(arg1)])
}

function signers(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor2[arg1])
}

function owner() {
    return owner
}

function transactions(uint256 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor3[arg1])
}

function required() {
    return required
}

function proxy() {
    return proxyAddress
}

function setTransactionId(uint256 arg1) {
    require calldata.size - 4 >= 32
    stor3[arg1] = 1
}

function _fallback() payable {
    if msg.value > 0:
        emit Deposit(msg.sender, msg.value);
}

function callImpl(bytes arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require msg.sender == owner
    require ext_code.size(proxyAddress)
    staticcall proxyAddress.getImplAddress() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    delegate address(ext_call.return_data[0]) with:
         gas gas_remaining wei
        args arg1[all]
}



}

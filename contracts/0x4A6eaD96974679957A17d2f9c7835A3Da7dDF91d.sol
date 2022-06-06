contract main {




// =====================  Runtime code  =====================


address owner;
address backEndOperatorAddress;
mapping of uint8 stor2;

function backEndOperator() {
    return backEndOperatorAddress
}

function isWhitelisted(address arg1) {
    return bool(stor2[address(arg1)])
}

function owner() {
    return owner
}

function whitelist(address arg1) {
    return bool(stor2[arg1])
}

function _fallback() payable {
    revert
}

function setBackEndAddress(address arg1) {
    require msg.sender == owner
    backEndOperatorAddress = arg1
}

function revoke(address arg1) {
    require msg.sender == owner
    stor2[address(arg1)] = 0
    emit Revoked(address(arg1), block.timestamp);
}

function authorize(address arg1) {
    if backEndOperatorAddress != msg.sender:
        require msg.sender == owner
    require arg1
    require not stor2[address(arg1)]
    stor2[address(arg1)] = 1
    emit Authorized(address(arg1), block.timestamp);
}



}

contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
address owner;

function owner() payable {
    return owner
}

function whitelisted(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor0[arg1])
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'ONLY_OWNER'
    emit 0x85eb146f: owner, arg1
    owner = arg1
}

function setWhitelisted(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'ONLY_OWNER'
    stor0[address(arg1)] = uint8(arg2)
    emit 0x5442a42f: address(arg1), arg2
}



}

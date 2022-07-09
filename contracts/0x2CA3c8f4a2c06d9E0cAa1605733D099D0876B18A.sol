contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of address addr;
mapping of uint256 content;

function content(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return content[arg1]
}

function addr(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return addr[arg1]
}

function _fallback() payable {
    revert
}

function has(bytes32 arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    if 'addr' == arg2:
        if addr[arg1]:
            return bool(addr[arg1])
    if arg2 != 'hash':
        return ('hash' == arg2)
    return bool(content[arg1])
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    if Mask(32, 224, arg1) == 0x3b3b57de00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0xd8389dc500000000000000000000000000000000000000000000000000000000)
}

function setAddr(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(stor0)
    staticcall stor0.owner(bytes32 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == msg.sender
    addr[arg1] = arg2
}

function setContent(bytes32 arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(stor0)
    staticcall stor0.owner(bytes32 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == msg.sender
    content[arg1] = arg2
}



}

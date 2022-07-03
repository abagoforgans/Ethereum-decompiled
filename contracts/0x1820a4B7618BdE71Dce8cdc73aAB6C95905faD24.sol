contract main {




// =====================  Runtime code  =====================


mapping of address stor0;
mapping of address stor1;
mapping of uint8 stor2;

function _fallback() payable {
    revert
}

function getManager(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor1[address(arg1)]:
        return stor1[address(arg1)]
    return arg1
}

function interfaceHash(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    return sha3(arg1[all])
}

function setManager(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if stor1[address(arg1)]:
        if stor1[address(arg1)] != msg.sender:
            revert with 0, 'Not the manager'
    else:
        if arg1 != msg.sender:
            revert with 0, 'Not the manager'
    if arg2 == arg1:
        stor1[address(arg1)] = 0
    else:
        stor1[address(arg1)] = arg2
    emit ManagerChanged(arg1, arg2);
}

function implementsERC165InterfaceNoCache(address arg1, bytes4 arg2) payable {
    require calldata.size - 4 >= 64
    staticcall arg1.supportsInterface(bytes4 arg1) with:
            gas 30000 wei
           args 0x1ffc9a700000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        return 0
    if not ext_call.return_data[0]:
        return 0
    staticcall arg1.supportsInterface(bytes4 arg1) with:
            gas 30000 wei
           args 0xffffffff00000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        return 0
    if ext_call.return_data[0]:
        return 0
    staticcall arg1.supportsInterface(bytes4 arg1) with:
            gas 30000 wei
           args Mask(32, 224, arg2)
    if 1 != ext_call.success:
        return 0
    if ext_call.return_data[0] != 1:
        return 0
    return 1
}

function implementsERC165Interface(address arg1, bytes4 arg2) payable {
    require calldata.size - 4 >= 64
    if stor2[address(arg1)][Mask(32, 224, arg2)]:
        return (stor0[address(arg1)][Mask(32, 224, arg2)] == arg1)
    staticcall arg1.supportsInterface(bytes4 arg1) with:
            gas 30000 wei
           args 0x1ffc9a700000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        return 0
    if not ext_call.return_data[0]:
        return 0
    staticcall arg1.supportsInterface(bytes4 arg1) with:
            gas 30000 wei
           args 0xffffffff00000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        return 0
    if ext_call.return_data[0]:
        return 0
    staticcall arg1.supportsInterface(bytes4 arg1) with:
            gas 30000 wei
           args Mask(32, 224, arg2)
    if 1 != ext_call.success:
        return 0
    if ext_call.return_data[0] != 1:
        return 0
    return 1
}

function updateERC165Cache(address arg1, bytes4 arg2) payable {
    require calldata.size - 4 >= 64
    staticcall arg1.supportsInterface(bytes4 arg1) with:
            gas 30000 wei
           args 0x1ffc9a700000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        stor0[address(arg1)][Mask(32, 224, arg2)] = 0
    else:
        if not ext_call.return_data[0]:
            stor0[address(arg1)][Mask(32, 224, arg2)] = 0
        else:
            staticcall arg1.supportsInterface(bytes4 arg1) with:
                    gas 30000 wei
                   args 0xffffffff00000000000000000000000000000000000000000000000000000000
            if not ext_call.success:
                stor0[address(arg1)][Mask(32, 224, arg2)] = 0
            else:
                if ext_call.return_data[0]:
                    stor0[address(arg1)][Mask(32, 224, arg2)] = 0
                else:
                    staticcall arg1.supportsInterface(bytes4 arg1) with:
                            gas 30000 wei
                           args Mask(32, 224, arg2)
                    if 1 != ext_call.success:
                        stor0[address(arg1)][Mask(32, 224, arg2)] = 0
                    else:
                        if ext_call.return_data[0] != 1:
                            stor0[address(arg1)][Mask(32, 224, arg2)] = 0
                        else:
                            stor0[address(arg1)][Mask(32, 224, arg2)] = arg1
    stor2[address(arg1)][Mask(32, 224, arg2)] = 1
}

function setInterfaceImplementer(address arg1, bytes32 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if not arg1:
        if stor1[address(msg.sender)]:
            if stor1[address(msg.sender)] != msg.sender:
                revert with 0, 'Not the manager'
        else:
            if msg.sender != msg.sender:
                revert with 0, 'Not the manager'
        if not Mask(224, 0, arg2):
            revert with 0, 'Must not be an ERC165 hash'
        if arg3:
            if arg3 != msg.sender:
                require ext_code.size(arg3)
                staticcall arg3.canImplementInterfaceForAddress(bytes32 arg1, address arg2) with:
                        gas gas_remaining wei
                       args arg2, msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] != sha3('ERC1820_ACCEPT_MAGIC'):
                    revert with 0, 'Does not implement the interface'
        stor0[address(msg.sender)][arg2] = arg3
        emit InterfaceImplementerSet(msg.sender, arg2, arg3);
    else:
        if stor1[address(arg1)]:
            if stor1[address(arg1)] != msg.sender:
                revert with 0, 'Not the manager'
        else:
            if arg1 != msg.sender:
                revert with 0, 'Not the manager'
        if not Mask(224, 0, arg2):
            revert with 0, 'Must not be an ERC165 hash'
        if arg3:
            if arg3 != msg.sender:
                require ext_code.size(arg3)
                staticcall arg3.canImplementInterfaceForAddress(bytes32 arg1, address arg2) with:
                        gas gas_remaining wei
                       args arg2, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] != sha3('ERC1820_ACCEPT_MAGIC'):
                    revert with 0, 'Does not implement the interface'
        stor0[address(arg1)][arg2] = arg3
        emit InterfaceImplementerSet(arg1, arg2, arg3);
}

function getInterfaceImplementer(address arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    if not arg1:
        if Mask(224, 0, arg2):
            return stor0[address(msg.sender)][arg2]
        if stor2[address(msg.sender)][Mask(32, 224, arg2)]:
            if stor0[address(msg.sender)][Mask(32, 224, arg2)] == msg.sender:
                return msg.sender
            else:
                return 0
        staticcall msg.sender.supportsInterface(bytes4 arg1) with:
                gas 30000 wei
               args 0x1ffc9a700000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            return 0
        if not ext_call.return_data[0]:
            return 0
        staticcall msg.sender.supportsInterface(bytes4 arg1) with:
                gas 30000 wei
               args 0xffffffff00000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            return 0
        if ext_call.return_data[0]:
            return 0
        staticcall msg.sender.supportsInterface(bytes4 arg1) with:
                gas 30000 wei
               args arg2
        if 1 != ext_call.success:
            return 0
        if ext_call.return_data[0] != 1:
            return 0
        return msg.sender
    if Mask(224, 0, arg2):
        return stor0[address(arg1)][arg2]
    if stor2[address(arg1)][Mask(32, 224, arg2)]:
        if stor0[address(arg1)][Mask(32, 224, arg2)] == arg1:
            return arg1
        else:
            return 0
    staticcall arg1.supportsInterface(bytes4 arg1) with:
            gas 30000 wei
           args 0x1ffc9a700000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        return 0
    if not ext_call.return_data[0]:
        return 0
    staticcall arg1.supportsInterface(bytes4 arg1) with:
            gas 30000 wei
           args 0xffffffff00000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        return 0
    if ext_call.return_data[0]:
        return 0
    staticcall arg1.supportsInterface(bytes4 arg1) with:
            gas 30000 wei
           args arg2
    if 1 != ext_call.success:
        return 0
    if ext_call.return_data[0] != 1:
        return 0
    return arg1
}



}

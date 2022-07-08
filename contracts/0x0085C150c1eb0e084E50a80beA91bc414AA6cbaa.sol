contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of uint256 sub_0327f06c;
array of address sub_71445549;
mapping of struct sub_e2dff106;

function sub_0327f06c(?) payable {
    require calldata.size - 4 >= 32
    return sub_0327f06c[address(arg1)]
}

function isOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor0[address(arg1)])
}

function sub_71445549(?) payable {
    require calldata.size - 4 >= 64
    require arg2 < uint256(sub_71445549[arg1])
    return address(sub_71445549[arg1][arg2])
}

function nonces(address arg1) payable {
    require calldata.size - 4 >= 32
    return sub_0327f06c[arg1]
}

function sub_e2dff106(?) payable {
    require calldata.size - 4 >= 32
    return bool(sub_e2dff106[arg1].field_0), 
           ('signextend', 7, ('signextend', 7, ('signextend', 7, ('field', 8, ('stor', ('map', ('param', 'arg1'), ('name', 'sub_e2dff106', 3))))))),
           sub_e2dff106[arg1].field_0,
           ('signextend', 7, ('signextend', 7, ('signextend', 7, ('field', 104, ('stor', ('map', ('param', 'arg1'), ('name', 'sub_e2dff106', 3))))))),
           sub_e2dff106[arg1].field_168
}

function kill() payable {
    require msg.sender
    require stor0[address(msg.sender)]
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function ethSignedMessageHash(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, arg1)
}

function addOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor0[address(msg.sender)]
    require arg1
    require not stor0[address(arg1)]
    stor0[address(arg1)] = 1
    emit OperatorAdded(arg1);
}

function removeOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor0[address(msg.sender)]
    require arg1
    require stor0[address(arg1)]
    stor0[address(arg1)] = 0
    emit OperatorRemoved(arg1);
}

function sub_e2594079(?) payable {
    require calldata.size - 4 >= 224
    return sha3(this.address, address(arg1), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2')))), arg3 << 224, ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg4')))), arg5 << 248, arg6, arg7)
}

function recover(bytes32 arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[ceil32(arg2.length) + 160] = '\x19Ethereum Signed Message:\n32'
    mem[ceil32(arg2.length) + 188] = arg1
    mem[ceil32(arg2.length) + 128] = 60
    if 65 == arg2.length:
        if mem[160] <= 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
            return 0
        else:
            return 0
    else:
        return 0
}

function sub_ad2b0aa5(?) payable {
    require calldata.size - 4 >= 64
    if uint256(sub_71445549[arg1 << 248]):
        idx = 0
        while idx < uint256(sub_71445549[arg1 << 248]):
            require idx < uint256(sub_71445549[arg1 << 248])
            if address(sub_71445549[arg1 << 248][idx]):
                if ('signextend', 7, ('signextend', 7, ('field', 8, ('stor', ('map', ('type', 160, ('stor', ('array', ('var', 0), ('map', ('mask_shl', 8, 0, 248, ('param', 'arg1')), ('name', 'stor2', 2))))), ('name', 'sub_e2dff106', 3)))))) < ('signextend', 7, ('signextend', 7, ('param', 'arg2'))):
                    mem[0] = arg1
                    mem[32] = 2
                    idx = idx + 1
                    continue 
                else:
                    mem[0] = arg1
                    mem[32] = 2
                    idx = idx + 1
                    continue 
            else:
                mem[0] = arg1
                mem[32] = 2
                idx = idx + 1
                continue 
        idx = 0
        while idx < uint256(sub_71445549[arg1 << 248]):
            require idx < uint256(sub_71445549[arg1 << 248])
            if address(sub_71445549[arg1 << 248][idx]):
                require ('signextend', 7, ('signextend', 7, ('field', 8, ('stor', ('map', ('type', 160, ('stor', ('array', ('var', 0), ('map', ('mask_shl', 8, 0, 248, ('param', 'arg1')), ('name', 'stor2', 2))))), ('name', 'sub_e2dff106', 3)))))) < ('signextend', 7, ('signextend', 7, ('param', 'arg2')))
            mem[0] = arg1
            mem[32] = 2
            idx = idx + 1
            continue 
    return ''
}

function sub_64d39738(?) payable {
    require calldata.size - 4 >= 160
    require msg.sender
    require stor0[address(msg.sender)]
    if not sub_e2dff106[address(arg1)].field_0:
        sub_e2dff106[address(arg1)].field_0 = 1
        sub_e2dff106[address(arg1)].field_8 = uint64(('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2')))))
        sub_e2dff106[address(arg1)].field_72 = arg3
        sub_e2dff106[address(arg1)].field_104 = uint64(('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg4')))))
        sub_e2dff106[address(arg1)].field_168 = arg5
        uint256(sub_71445549[arg5 << 248])++
        address(sub_71445549[arg5 << 248][uint256(sub_71445549[arg5 << 248])]) = arg1
    else:
        if sub_e2dff106[address(arg1)].field_168 != arg5:
            idx = 0
            while idx < uint256(sub_71445549[arg5 << 248]):
                require idx < uint256(sub_71445549[arg5 << 248])
                if address(sub_71445549[arg5 << 248][idx]) == arg1:
                    mem[0] = arg5
                    mem[32] = 2
                    idx = idx + 1
                    continue 
                require idx < uint256(sub_71445549[stor3[address(arg1)].field_0])
                address(sub_71445549[stor3[address(arg1)].field_0][idx]) = 0
                uint256(sub_71445549[arg5 << 248])++
                address(sub_71445549[arg5 << 248][uint256(sub_71445549[arg5 << 248])]) = arg1
                sub_e2dff106[address(arg1)].field_8 = uint64(('signextend', 7, ('signextend', 7, ('param', 'arg2'))))
                sub_e2dff106[address(arg1)].field_72 = arg3
                sub_e2dff106[address(arg1)].field_104 = uint64(('signextend', 7, ('signextend', 7, ('param', 'arg4'))))
                sub_e2dff106[address(arg1)].field_168 = arg5
                emit 0x19110ad0: ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2')))), arg3 << 224, ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg4')))), arg5, arg1
            require uint256(sub_71445549[arg5 << 248]) < uint256(sub_71445549[stor3[address(arg1)].field_0])
            address(sub_71445549[stor3[address(arg1)].field_0][uint256(sub_71445549[arg5 << 248])]) = 0
            uint256(sub_71445549[arg5 << 248])++
            address(sub_71445549[arg5 << 248][uint256(sub_71445549[arg5 << 248])]) = arg1
        sub_e2dff106[address(arg1)].field_8 = uint64(('signextend', 7, ('signextend', 7, ('param', 'arg2'))))
        sub_e2dff106[address(arg1)].field_72 = arg3
        sub_e2dff106[address(arg1)].field_104 = uint64(('signextend', 7, ('signextend', 7, ('param', 'arg4'))))
        sub_e2dff106[address(arg1)].field_168 = arg5
        emit 0x19110ad0: ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2')))), arg3 << 224, ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg4')))), arg5, arg1
}

function sub_cc272bc8(?) payable {
    require calldata.size - 4 >= 224
    require arg7 <= 4294967296
    require arg7 + 36 <= calldata.size
    require arg7.length <= 4294967296 and arg7 + arg7.length + 36 <= calldata.size
    require msg.sender
    require stor0[address(msg.sender)]
    if arg6 != sub_0327f06c[address(arg1)] + 1:
        revert with 0, 'nonces[_from]+1 != _nonce'
    else:
        mem[416 len arg7.length] = arg7[all]
        mem[arg7.length + 416] = 0
        mem[ceil32(arg7.length) + 448] = '\x19Ethereum Signed Message:\n32'
        mem[ceil32(arg7.length) + 476] = sha3(this.address, address(arg1), ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2')))), arg3 << 224, ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg4')))), arg5 << 248, arg6, msg.sender)
        mem[ceil32(arg7.length) + 416] = 60
        if 65 == arg7.length:
            if mem[448] <= 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                if arg1 != 0:
                    revert with 0, 'signer != _from'
                else:
                    if sub_e2dff106[address(arg1)].field_0:
                        if sub_e2dff106[address(arg1)].field_168 == arg5:
                            sub_e2dff106[address(arg1)].field_8 = uint64(('signextend', 7, ('signextend', 7, ('param', 'arg2'))))
                            sub_e2dff106[address(arg1)].field_72 = arg3
                            sub_e2dff106[address(arg1)].field_104 = uint64(('signextend', 7, ('signextend', 7, ('param', 'arg4'))))
                            sub_e2dff106[address(arg1)].field_168 = arg5
                            emit 0x19110ad0: ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2')))), arg3 << 224, ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg4')))), arg5, arg1
                            sub_0327f06c[address(arg1)]++
                        else:
                            idx = 0
                            while idx < uint256(sub_71445549[arg5 << 248]):
                                require idx < uint256(sub_71445549[arg5 << 248])
                                if address(sub_71445549[arg5 << 248][idx]) == arg1:
                                    mem[0] = arg5
                                    mem[32] = 2
                                    idx = idx + 1
                                    continue 
                                else:
                                    require idx < uint256(sub_71445549[stor3[address(arg1)].field_0])
                                    address(sub_71445549[stor3[address(arg1)].field_0][idx]) = 0
                                    uint256(sub_71445549[arg5 << 248])++
                                    address(sub_71445549[arg5 << 248][uint256(sub_71445549[arg5 << 248])]) = arg1
                                    sub_e2dff106[address(arg1)].field_8 = uint64(('signextend', 7, ('signextend', 7, ('param', 'arg2'))))
                                    sub_e2dff106[address(arg1)].field_72 = arg3
                                    sub_e2dff106[address(arg1)].field_104 = uint64(('signextend', 7, ('signextend', 7, ('param', 'arg4'))))
                                    sub_e2dff106[address(arg1)].field_168 = arg5
                                    emit 0x19110ad0: ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2')))), arg3 << 224, ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg4')))), arg5, arg1
                                    sub_0327f06c[address(arg1)]++
                            require uint256(sub_71445549[arg5 << 248]) < uint256(sub_71445549[stor3[address(arg1)].field_0])
                            address(sub_71445549[stor3[address(arg1)].field_0][uint256(sub_71445549[arg5 << 248])]) = 0
                            uint256(sub_71445549[arg5 << 248])++
                            address(sub_71445549[arg5 << 248][uint256(sub_71445549[arg5 << 248])]) = arg1
                            sub_e2dff106[address(arg1)].field_8 = uint64(('signextend', 7, ('signextend', 7, ('param', 'arg2'))))
                            sub_e2dff106[address(arg1)].field_72 = arg3
                            sub_e2dff106[address(arg1)].field_104 = uint64(('signextend', 7, ('signextend', 7, ('param', 'arg4'))))
                            sub_e2dff106[address(arg1)].field_168 = arg5
                            emit 0x19110ad0: ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2')))), arg3 << 224, ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg4')))), arg5, arg1
                            sub_0327f06c[address(arg1)]++
                    else:
                        sub_e2dff106[address(arg1)].field_0 = 1
                        sub_e2dff106[address(arg1)].field_8 = uint64(('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2')))))
                        sub_e2dff106[address(arg1)].field_72 = arg3
                        sub_e2dff106[address(arg1)].field_104 = uint64(('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg4')))))
                        sub_e2dff106[address(arg1)].field_168 = arg5
                        uint256(sub_71445549[arg5 << 248])++
                        address(sub_71445549[arg5 << 248][uint256(sub_71445549[arg5 << 248])]) = arg1
                        sub_0327f06c[address(arg1)]++
            else:
                if arg1 != 0:
                    revert with 0, 'signer != _from'
                else:
                    if sub_e2dff106[address(arg1)].field_0:
                        if sub_e2dff106[address(arg1)].field_168 == arg5:
                            sub_e2dff106[address(arg1)].field_8 = uint64(('signextend', 7, ('signextend', 7, ('param', 'arg2'))))
                            sub_e2dff106[address(arg1)].field_72 = arg3
                            sub_e2dff106[address(arg1)].field_104 = uint64(('signextend', 7, ('signextend', 7, ('param', 'arg4'))))
                            sub_e2dff106[address(arg1)].field_168 = arg5
                            emit 0x19110ad0: ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2')))), arg3 << 224, ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg4')))), arg5, arg1
                            sub_0327f06c[address(arg1)]++
                        else:
                            idx = 0
                            while idx < uint256(sub_71445549[arg5 << 248]):
                                require idx < uint256(sub_71445549[arg5 << 248])
                                if address(sub_71445549[arg5 << 248][idx]) == arg1:
                                    mem[0] = arg5
                                    mem[32] = 2
                                    idx = idx + 1
                                    continue 
                                else:
                                    require idx < uint256(sub_71445549[stor3[address(arg1)].field_0])
                                    address(sub_71445549[stor3[address(arg1)].field_0][idx]) = 0
                                    uint256(sub_71445549[arg5 << 248])++
                                    address(sub_71445549[arg5 << 248][uint256(sub_71445549[arg5 << 248])]) = arg1
                                    sub_e2dff106[address(arg1)].field_8 = uint64(('signextend', 7, ('signextend', 7, ('param', 'arg2'))))
                                    sub_e2dff106[address(arg1)].field_72 = arg3
                                    sub_e2dff106[address(arg1)].field_104 = uint64(('signextend', 7, ('signextend', 7, ('param', 'arg4'))))
                                    sub_e2dff106[address(arg1)].field_168 = arg5
                                    emit 0x19110ad0: ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2')))), arg3 << 224, ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg4')))), arg5, arg1
                                    sub_0327f06c[address(arg1)]++
                            require uint256(sub_71445549[arg5 << 248]) < uint256(sub_71445549[stor3[address(arg1)].field_0])
                            address(sub_71445549[stor3[address(arg1)].field_0][uint256(sub_71445549[arg5 << 248])]) = 0
                            uint256(sub_71445549[arg5 << 248])++
                            address(sub_71445549[arg5 << 248][uint256(sub_71445549[arg5 << 248])]) = arg1
                            sub_e2dff106[address(arg1)].field_8 = uint64(('signextend', 7, ('signextend', 7, ('param', 'arg2'))))
                            sub_e2dff106[address(arg1)].field_72 = arg3
                            sub_e2dff106[address(arg1)].field_104 = uint64(('signextend', 7, ('signextend', 7, ('param', 'arg4'))))
                            sub_e2dff106[address(arg1)].field_168 = arg5
                            emit 0x19110ad0: ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2')))), arg3 << 224, ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg4')))), arg5, arg1
                            sub_0327f06c[address(arg1)]++
                    else:
                        sub_e2dff106[address(arg1)].field_0 = 1
                        sub_e2dff106[address(arg1)].field_8 = uint64(('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2')))))
                        sub_e2dff106[address(arg1)].field_72 = arg3
                        sub_e2dff106[address(arg1)].field_104 = uint64(('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg4')))))
                        sub_e2dff106[address(arg1)].field_168 = arg5
                        uint256(sub_71445549[arg5 << 248])++
                        address(sub_71445549[arg5 << 248][uint256(sub_71445549[arg5 << 248])]) = arg1
                        sub_0327f06c[address(arg1)]++
        else:
            if arg1 != 0:
                revert with 0, 'signer != _from'
            else:
                if sub_e2dff106[address(arg1)].field_0:
                    if sub_e2dff106[address(arg1)].field_168 == arg5:
                        sub_e2dff106[address(arg1)].field_8 = uint64(('signextend', 7, ('signextend', 7, ('param', 'arg2'))))
                        sub_e2dff106[address(arg1)].field_72 = arg3
                        sub_e2dff106[address(arg1)].field_104 = uint64(('signextend', 7, ('signextend', 7, ('param', 'arg4'))))
                        sub_e2dff106[address(arg1)].field_168 = arg5
                        emit 0x19110ad0: ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2')))), arg3 << 224, ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg4')))), arg5, arg1
                        sub_0327f06c[address(arg1)]++
                    else:
                        idx = 0
                        while idx < uint256(sub_71445549[arg5 << 248]):
                            require idx < uint256(sub_71445549[arg5 << 248])
                            if address(sub_71445549[arg5 << 248][idx]) == arg1:
                                mem[0] = arg5
                                mem[32] = 2
                                idx = idx + 1
                                continue 
                            else:
                                require idx < uint256(sub_71445549[stor3[address(arg1)].field_0])
                                address(sub_71445549[stor3[address(arg1)].field_0][idx]) = 0
                                uint256(sub_71445549[arg5 << 248])++
                                address(sub_71445549[arg5 << 248][uint256(sub_71445549[arg5 << 248])]) = arg1
                                sub_e2dff106[address(arg1)].field_8 = uint64(('signextend', 7, ('signextend', 7, ('param', 'arg2'))))
                                sub_e2dff106[address(arg1)].field_72 = arg3
                                sub_e2dff106[address(arg1)].field_104 = uint64(('signextend', 7, ('signextend', 7, ('param', 'arg4'))))
                                sub_e2dff106[address(arg1)].field_168 = arg5
                                emit 0x19110ad0: ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2')))), arg3 << 224, ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg4')))), arg5, arg1
                                sub_0327f06c[address(arg1)]++
                        require uint256(sub_71445549[arg5 << 248]) < uint256(sub_71445549[stor3[address(arg1)].field_0])
                        address(sub_71445549[stor3[address(arg1)].field_0][uint256(sub_71445549[arg5 << 248])]) = 0
                        uint256(sub_71445549[arg5 << 248])++
                        address(sub_71445549[arg5 << 248][uint256(sub_71445549[arg5 << 248])]) = arg1
                        sub_e2dff106[address(arg1)].field_8 = uint64(('signextend', 7, ('signextend', 7, ('param', 'arg2'))))
                        sub_e2dff106[address(arg1)].field_72 = arg3
                        sub_e2dff106[address(arg1)].field_104 = uint64(('signextend', 7, ('signextend', 7, ('param', 'arg4'))))
                        sub_e2dff106[address(arg1)].field_168 = arg5
                        emit 0x19110ad0: ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2')))), arg3 << 224, ('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg4')))), arg5, arg1
                        sub_0327f06c[address(arg1)]++
                else:
                    sub_e2dff106[address(arg1)].field_0 = 1
                    sub_e2dff106[address(arg1)].field_8 = uint64(('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg2')))))
                    sub_e2dff106[address(arg1)].field_72 = arg3
                    sub_e2dff106[address(arg1)].field_104 = uint64(('signextend', 7, ('signextend', 7, ('signextend', 7, ('param', 'arg4')))))
                    sub_e2dff106[address(arg1)].field_168 = arg5
                    uint256(sub_71445549[arg5 << 248])++
                    address(sub_71445549[arg5 << 248][uint256(sub_71445549[arg5 << 248])]) = arg1
                    sub_0327f06c[address(arg1)]++
}



}

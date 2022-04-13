contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 7882]




// =====================  Runtime code  =====================


#
#  - sub_5f0d4262(?)
#
array of uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
array of uint256 stor4;

function _fallback() payable {
    revert
}

function calcConfirmsNeeded(uint256 arg1, uint256 arg2) payable {
    return (arg1 - arg2)
}

function createContract(bytes arg1, uint256 arg2) payable {
    create contract with ('param', 'arg2') wei
                    code: arg1[all]
    require ext_code.size(create.new_address) > 0
    emit LogContractCreated(address(create.new_address), arg2);
}

function getAmount(bytes arg1) payable {
    mem[128 len arg1.length] = arg1[all]
    if 0xa9059cbb00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, mem[128]):
        return 1, mem[164]
    if 0x95ea7b300000000000000000000000000000000000000000000000000000000 == Mask(32, 224, mem[128]):
        return 1, mem[164]
    if Mask(32, 224, mem[128]) != 0x23b872dd00000000000000000000000000000000000000000000000000000000:
        return 0
    return 1, mem[196]
}

function sub_9ae196ff(?) payable {
    require uint256(stor[arg1 + 8][address(msg.sender)].field_0) > 0
    if not uint256(stor[arg1 + 9][arg2].field_0):
        emit LogErrMsg('Tx not initiated');
    else:
        if arg3 >= uint256(stor[arg1 + 9][arg2].field_0):
            emit LogErrMsg('Tx not initiated');
        else:
            require arg3 < uint256(stor[arg1 + 9][arg2].field_0)
            if uint8(stor[(9 * arg3) + ('map', ('param', 'arg2'), ('add', 9, ('param', 'arg1'))) + 8].field_0):
                emit LogErrMsg(string rg1):
                               32,
                               28,
                               0x915472616e73616374696f6e20616c726561647920636f6d706c657465000000,
            else:
                require arg3 < uint256(stor[arg1 + 9][arg2].field_0)
                require ext_code.size(0xcbe717fb2923f4226271cc4c1d5ef2c076fb3247)
                delegate 0xcbe717fb2923f4226271cc4c1d5ef2c076fb3247.0x66c19bcd with:
                     gas gas_remaining - 710 wei
                    args (9 * arg3) + sha3(sha3(arg2, arg1 + 9)) + 5, msg.sender, 0
                require delegate.return_code
                if not delegate.return_data[0]:
                    return 1
                emit LogErrMsg('Owner already confirmed');
    emit LogTransactionFailed(arg2, msg.sender);
    return 0
}

function sub_fb18a41a(?) payable {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require not stor1[arg1]
    require arg2.length >= arg3
    require arg3 > 0
    require arg2.length >= arg4
    require arg4 > 0
    require arg2.length >= arg5
    require arg5 > 0
    stor1[arg1]++
    if not stor1[arg1] <= stor1[arg1] + 1:
        idx = stor1[arg1] + 1
        while stor1[arg1] > idx:
            uint256(stor[idx + sha3(arg1 + 1)].field_0) = 0
            idx = idx + 1
            continue 
    address(stor[stor1[arg1] + sha3(arg1 + 1)].field_0) = 0
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        require mem[(32 * idx) + 140 len 20]
        stor1[arg1]++
        if not stor1[arg1] <= stor1[arg1] + 1:
            s = stor1[arg1] + sha3(arg1 + 1) + 1
            while sha3(arg1 + 1) + stor1[arg1] > s:
                uint256(stor[s].field_0) = 0
                s = s + 1
                continue 
        require idx < arg2.length
        address(stor[stor1[arg1] + sha3(arg1 + 1)].field_0) = mem[(32 * idx) + 140 len 20]
        require idx < arg2.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = arg1 + 8
        uint256(stor[arg1 + 8][mem[(32 * idx) + 140 len 20]].field_0) = idx + 1
        idx = idx + 1
        continue 
    stor2[arg1] = arg3
    stor3[arg1] = arg4
    stor4[arg1] = arg5
    uint256(stor[arg1].field_0) = 50
    uint256(stor[arg1 + 6][0].field_0) = arg6
    return 1
}

function sub_3f244a4b(?) payable {
    if block.timestamp / 24 * 3600 > uint256(stor[arg1 + 5][0].field_0):
        uint256(stor[arg1 + 5][0].field_0) = block.timestamp / 24 * 3600
        stor1[('map', 0, ('add', 5, ('param', 'arg1')))] = 0
    require ext_code.size(0x74453cf53c97437066b1987e364e5d6b54bcaee6)
    delegate 0x74453cf53c97437066b1987e364e5d6b54bcaee6.plus(uint256 rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args stor1[('map', 0, ('add', 5, ('param', 'arg1')))], arg3
    require delegate.return_code
    if delegate.return_data[0]:
        emit LogErrMsg('Overflow eth spend');
    else:
        if delegate.return_data[32] >= uint256(stor[arg1 + 6][0].field_0):
            if not arg2:
                return stor3[arg1]
            if not arg4:
                return stor3[arg1]
            if block.timestamp / 24 * 3600 > uint256(stor[arg1 + 5][address(arg2)].field_0):
                uint256(stor[arg1 + 5][address(arg2)].field_0) = block.timestamp / 24 * 3600
                stor1[('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('add', 5, ('param', 'arg1')))] = 0
            require ext_code.size(0x74453cf53c97437066b1987e364e5d6b54bcaee6)
            delegate 0x74453cf53c97437066b1987e364e5d6b54bcaee6.plus(uint256 rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args stor1[('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('add', 5, ('param', 'arg1')))], arg5
            require delegate.return_code
            if not delegate.return_data[0]:
                return stor3[arg1]
        else:
            if not arg2:
                return stor4[arg1]
            if not arg4:
                return stor4[arg1]
            if block.timestamp / 24 * 3600 > uint256(stor[arg1 + 5][address(arg2)].field_0):
                uint256(stor[arg1 + 5][address(arg2)].field_0) = block.timestamp / 24 * 3600
                stor1[('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('add', 5, ('param', 'arg1')))] = 0
            require ext_code.size(0x74453cf53c97437066b1987e364e5d6b54bcaee6)
            delegate 0x74453cf53c97437066b1987e364e5d6b54bcaee6.plus(uint256 rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args stor1[('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('add', 5, ('param', 'arg1')))], arg5
            require delegate.return_code
            if not delegate.return_data[0]:
                if delegate.return_data[32] < uint256(stor[arg1 + 6][address(arg2)].field_0):
                    return stor4[arg1]
                return stor3[arg1]
        ('bool', ('delegate.return_data', 0, 32))
        emit LogErrMsg('Overflow token spend');
    return 0
}

function sub_cbf279f7(?) payable {
    require uint256(stor[arg1 + 8][address(msg.sender)].field_0) > 0
    if not uint256(stor[arg1 + 9][arg2].field_0):
        emit LogErrMsg('Tx not initiated');
        emit LogTransactionFailed(arg2, msg.sender);
        return 0
    require uint256(stor[arg1 + 9][arg2].field_0) - 1 < uint256(stor[arg1 + 9][arg2].field_0)
    if uint8(stor[(9 * uint256(stor[arg1 + 9][arg2].field_0)) + ('map', ('param', 'arg2'), ('add', 9, ('param', 'arg1'))) - 1].field_0):
        emit LogErrMsg(string rg1):
                       32,
                       28,
                       0x915472616e73616374696f6e20616c726561647920636f6d706c657465000000,
        emit LogTransactionFailed(arg2, msg.sender);
        return 0
    require uint256(stor[arg1 + 9][arg2].field_0) - 1 < uint256(stor[arg1 + 9][arg2].field_0)
    require ext_code.size(0xcbe717fb2923f4226271cc4c1d5ef2c076fb3247)
    delegate 0xcbe717fb2923f4226271cc4c1d5ef2c076fb3247.0x66c19bcd with:
         gas gas_remaining - 710 wei
        args (9 * uint256(stor[arg1 + 9][arg2].field_0)) + sha3(sha3(arg2, arg1 + 9)) - 4, msg.sender, 0
    require delegate.return_code
    if not delegate.return_data[0]:
        emit LogErrMsg(Array(len=26, data='Owner has not confirmed tx'));
        emit LogTransactionFailed(arg2, msg.sender);
        return 0
    require uint256(stor[arg1 + 9][arg2].field_0) - 1 < uint256(stor[arg1 + 9][arg2].field_0)
    require delegate.return_data[32] < uint256(stor[(9 * uint256(stor[arg1 + 9][arg2].field_0)) + ('map', ('param', 'arg2'), ('add', 9, ('param', 'arg1'))) - 4].field_0)
    uint256(stor[delegate.return_data[32] + sha3((9 * uint256(stor[arg1 + 9][arg2].field_0)) + ('map', ('param', 'arg2'), ('add', 9, ('param', 'arg1'))) - 4)].field_0) = 0
    require uint256(stor[arg1 + 9][arg2].field_0) - 1 < uint256(stor[arg1 + 9][arg2].field_0)
    uint256(stor[(9 * uint256(stor[arg1 + 9][arg2].field_0)) + ('map', ('param', 'arg2'), ('add', 9, ('param', 'arg1'))) - 3].field_0)--
    require uint256(stor[arg1 + 9][arg2].field_0) - 1 < uint256(stor[arg1 + 9][arg2].field_0)
    require uint256(stor[arg1 + 9][arg2].field_0) - 1 < uint256(stor[arg1 + 9][arg2].field_0)
    require uint256(stor[arg1 + 9][arg2].field_0) - 1 < uint256(stor[arg1 + 9][arg2].field_0)
    if not uint256(stor[(9 * uint256(stor[arg1 + 9][arg2].field_0)) + ('map', ('param', 'arg2'), ('add', 9, ('param', 'arg1'))) - 3].field_0):
        uint256(stor[arg1 + 9][arg2].field_0)--
        if not uint256(stor[arg1 + 9][arg2].field_0) <= uint256(stor[arg1 + 9][arg2].field_0) - 1:
            mem[0] = sha3(arg2, arg1 + 9)
            idx = (9 * uint256(stor[arg1 + 9][arg2].field_0)) - 9
            while sha3(sha3(arg2, arg1 + 9)) + (9 * uint256(stor[arg1 + 9][arg2].field_0)) > idx + sha3(mem[0]):
                uint256(stor[idx + sha3(mem[0])].field_0) = 0
                uint256(stor[idx + sha3(mem[0]) + 1].field_0) = 0
                address(stor[idx + sha3(mem[0]) + 2].field_0) = 0
                uint256(stor[idx + sha3(mem[0]) + 3].field_0) = 0
                uint256(stor[idx + sha3(mem[0]) + 4].field_0) = 0
                if 31 < stor[idx + sha3(mem[0]) + 4].length:
                    s = sha3(idx + sha3(mem[0]) + 4)
                    while sha3(idx + sha3(mem[0]) + 4) + (stor[idx + sha3(mem[0]) + 4].length + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
                uint256(stor[idx + sha3(mem[0]) + 5].field_0) = 0
                mem[0] = idx + sha3(mem[0]) + 5
                s = sha3(idx + sha3(mem[0]) + 5)
                while sha3(idx + sha3(mem[0]) + 5) + uint256(stor[idx + sha3(mem[0]) + 5].field_0) > s:
                    uint256(stor[s].field_0) = 0
                    s = s + 1
                    continue 
                uint256(stor[idx + sha3(mem[0]) + 6].field_0) = 0
                uint256(stor[idx + sha3(mem[0]) + 7].field_0) = 0
                uint8(stor[idx + sha3(mem[0]) + 8].field_0) = 0
                idx = idx + 9
                continue 
    emit LogRevokeNotice(arg2, msg.sender, uint256(stor[(9 * uint256(stor[arg1 + 9][arg2].field_0)) + ('map', ('param', 'arg2'), ('add', 9, ('param', 'arg1'))) - 2].field_0) - uint256(stor[(9 * uint256(stor[arg1 + 9][arg2].field_0)) + ('map', ('param', 'arg2'), ('add', 9, ('param', 'arg1'))) - 3].field_0));
    return 1
}

function sub_0cbc79ae(?) payable {
    require uint256(stor[arg1 + 8][address(msg.sender)].field_0) > 0
    if not uint256(stor[arg1 + 9][arg2].field_0):
        emit LogErrMsg('Tx not initiated');
        emit LogTransactionFailed(arg2, msg.sender);
    else:
        require uint256(stor[arg1 + 8][address(msg.sender)].field_0) > 0
        if not uint256(stor[arg1 + 9][arg2].field_0):
            emit LogErrMsg('Tx not initiated');
            emit LogTransactionFailed(arg2, msg.sender);
        else:
            if uint256(stor[arg1 + 9][arg2].field_0) - 1 >= uint256(stor[arg1 + 9][arg2].field_0):
                emit LogErrMsg('Tx not initiated');
                emit LogTransactionFailed(arg2, msg.sender);
            else:
                require uint256(stor[arg1 + 9][arg2].field_0) - 1 < uint256(stor[arg1 + 9][arg2].field_0)
                if uint8(stor[(9 * uint256(stor[arg1 + 9][arg2].field_0)) + ('map', ('param', 'arg2'), ('add', 9, ('param', 'arg1'))) - 1].field_0):
                    emit LogErrMsg(string rg1):
                                   32,
                                   28,
                                   0x915472616e73616374696f6e20616c726561647920636f6d706c657465000000,
                    emit LogTransactionFailed(arg2, msg.sender);
                else:
                    require uint256(stor[arg1 + 9][arg2].field_0) - 1 < uint256(stor[arg1 + 9][arg2].field_0)
                    mem[132] = msg.sender
                    mem[164] = 0
                    require ext_code.size(0xcbe717fb2923f4226271cc4c1d5ef2c076fb3247)
                    delegate 0xcbe717fb2923f4226271cc4c1d5ef2c076fb3247.0x66c19bcd with:
                         gas gas_remaining - 710 wei
                        args (9 * uint256(stor[arg1 + 9][arg2].field_0)) + sha3(sha3(arg2, arg1 + 9)) - 4, msg.sender, 0
                    mem[96 len 64] = delegate.return_data[0 len 64]
                    require delegate.return_code
                    if delegate.return_data[0]:
                        emit LogErrMsg('Owner already confirmed');
                        emit LogTransactionFailed(arg2, msg.sender);
                    else:
                        require uint256(stor[arg1 + 9][arg2].field_0) - 1 < uint256(stor[arg1 + 9][arg2].field_0)
                        uint256(stor[(9 * uint256(stor[arg1 + 9][arg2].field_0)) + ('map', ('param', 'arg2'), ('add', 9, ('param', 'arg1'))) - 4].field_0)++
                        if not uint256(stor[(9 * uint256(stor[arg1 + 9][arg2].field_0)) + ('map', ('param', 'arg2'), ('add', 9, ('param', 'arg1'))) - 4].field_0) <= uint256(stor[(9 * uint256(stor[arg1 + 9][arg2].field_0)) + ('map', ('param', 'arg2'), ('add', 9, ('param', 'arg1'))) - 4].field_0) + 1:
                            idx = uint256(stor[(9 * uint256(stor[arg1 + 9][arg2].field_0)) + ('map', ('param', 'arg2'), ('add', 9, ('param', 'arg1'))) - 4].field_0) + 1
                            while uint256(stor[(9 * uint256(stor[arg1 + 9][arg2].field_0)) + ('map', ('param', 'arg2'), ('add', 9, ('param', 'arg1'))) - 4].field_0) > idx:
                                uint256(stor[idx + sha3((9 * uint256(stor[arg1 + 9][arg2].field_0)) + ('map', ('param', 'arg2'), ('add', 9, ('param', 'arg1'))) - 4)].field_0) = 0
                                idx = idx + 1
                                continue 
                        address(stor[uint256(stor[(9 * uint256(stor[arg1 + 9][arg2].field_0)) + ('map', ('param', 'arg2'), ('add', 9, ('param', 'arg1'))) - 4].field_0) + sha3((9 * uint256(stor[arg1 + 9][arg2].field_0)) + ('map', ('param', 'arg2'), ('add', 9, ('param', 'arg1'))) - 4)].field_0) = msg.sender
                        Mask(96, 0, stor[uint256(stor[(9 * uint256(stor[arg1 + 9][arg2].field_0)) + ('map', ('param', 'arg2'), ('add', 9, ('param', 'arg1'))) - 4].field_0) + sha3((9 * uint256(stor[arg1 + 9][arg2].field_0)) + ('map', ('param', 'arg2'), ('add', 9, ('param', 'arg1'))) - 4)].field_160) = 0
                        require uint256(stor[arg1 + 9][arg2].field_0) - 1 < uint256(stor[arg1 + 9][arg2].field_0)
                        uint256(stor[(9 * uint256(stor[arg1 + 9][arg2].field_0)) + ('map', ('param', 'arg2'), ('add', 9, ('param', 'arg1'))) - 3].field_0)++
                        require uint256(stor[arg1 + 9][arg2].field_0) - 1 < uint256(stor[arg1 + 9][arg2].field_0)
                        require uint256(stor[arg1 + 9][arg2].field_0) - 1 < uint256(stor[arg1 + 9][arg2].field_0)
                        require uint256(stor[arg1 + 9][arg2].field_0) - 1 < uint256(stor[arg1 + 9][arg2].field_0)
                        if uint256(stor[(9 * uint256(stor[arg1 + 9][arg2].field_0)) + ('map', ('param', 'arg2'), ('add', 9, ('param', 'arg1'))) - 3].field_0) != uint256(stor[(9 * uint256(stor[arg1 + 9][arg2].field_0)) + ('map', ('param', 'arg2'), ('add', 9, ('param', 'arg1'))) - 2].field_0):
                            require uint256(stor[arg1 + 9][arg2].field_0) - 1 < uint256(stor[arg1 + 9][arg2].field_0)
                            emit 0x4aef8dcc: arg2, msg.sender, uint256(stor[(9 * uint256(stor[arg1 + 9][arg2].field_0)) + ('map', ('param', 'arg2'), ('add', 9, ('param', 'arg1'))) - 2].field_0) - uint256(stor[(9 * uint256(stor[arg1 + 9][arg2].field_0)) + ('map', ('param', 'arg2'), ('add', 9, ('param', 'arg1'))) - 3].field_0)
                            return 1
                        mem[96] = uint256(stor[sha3((9 * uint256(stor[arg1 + 9][arg2].field_0)) + ('map', ('param', 'arg2'), ('add', 9, ('param', 'arg1'))) - 5)].field_0)
                        idx = 96
                        s = 0
                        while stor[(9 * uint256(stor[arg1 + 9][arg2].field_0)) + ('map', ('param', 'arg2'), ('add', 9, ('param', 'arg1'))) - 5].length + 96 > idx + 32:
                            mem[idx + 32] = uint256(stor[s + sha3((9 * uint256(stor[arg1 + 9][arg2].field_0)) + ('map', ('param', 'arg2'), ('add', 9, ('param', 'arg1'))) - 5) + 1].field_0)
                            idx = idx + 32
                            s = s + 1
                            continue 
                        call this.address.mem[96 len 4] with:
                             gas gas_remaining - 25710 wei
                            args mem[100 len stor[(9 * uint256(stor[arg1 + 9][arg2].field_0)) + ('map', ('param', 'arg2'), ('add', 9, ('param', 'arg1'))) - 5].length + (floor32(stor[(9 * uint256(stor[arg1 + 9][arg2].field_0)) + ('map', ('param', 'arg2'), ('add', 9, ('param', 'arg1'))) - 5].length - 1) + -stor[(9 * uint256(stor[arg1 + 9][arg2].field_0)) + ('map', ('param', 'arg2'), ('add', 9, ('param', 'arg1'))) - 5].length + 32 % 32) - 4]
                        require ext_call.success
    return 0
}



}

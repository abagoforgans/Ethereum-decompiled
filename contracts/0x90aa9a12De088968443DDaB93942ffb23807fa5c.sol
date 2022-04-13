contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 14392]




// =====================  Runtime code  =====================


#
#  - sub_5b93789b(?)
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

function checkNewOwnerArgs(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    if arg1:
        emit 0x912c2fba: 'New owner already owner'
    else:
        if arg2 + 1 <= arg3:
            return 1
        emit 0x912c2fba: 'Too many owners'
    return 0
}

function checkRequiredChange(uint256 arg1, uint256 arg2) payable {
    if not arg1:
        emit 0x912c2fba: 'Cant reduce to 0'
    else:
        if arg2 - 1 >= arg1:
            return 1
        emit 0x912c2fba: Array(len=27, data='Making requirement too high')
    return 0
}

function checkChangeOwnerArgs(uint256 arg1, uint256 arg2) payable {
    if not arg1:
        emit 0x912c2fba: 'Change from address is not an owner'
    else:
        if not arg2:
            return 1
        emit 0x912c2fba: Array(len=29, data='Change to address is an owner')
    return 0
}

function checkRemoveOwnerArgs(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    if not arg1:
        emit 0x912c2fba: Array(len=27, data='Owner removing not an owner')
    else:
        if arg2 - 1 >= arg3:
            return 1
        emit 0x912c2fba: Array(len=31, data='Must reduce requiredAdmin first')
    return 0
}

function sub_3f2e691c(?) payable {
    if this.address == msg.sender:
        require uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)
        require uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)
        require uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)
        if uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 3].field_0) != uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 2].field_0):
            require uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)
            if not stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 5].length:
                uint256(stor[sha3((9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 5)][].field_0) = Array(len=arg4.length, data=arg4[all])
            require uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)
            emit 0xecef8dcc: sha3(0, arg2), msg.sender, uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 2].field_0) - uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 3].field_0)
        else:
            uint8(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 1].field_0) = 1
            stor1[arg1]++
            if not stor1[arg1] <= stor1[arg1] + 1:
                idx = stor1[arg1] + 1
                while stor1[arg1] > idx:
                    uint256(stor[idx + sha3(arg1 + 1)].field_0) = 0
                    idx = idx + 1
                    continue 
            address(stor[stor1[arg1] + sha3(arg1 + 1)].field_0) = arg2
            uint256(stor[arg1 + 8][address(arg2)].field_0) = stor1[arg1] - 1
            require uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)
            uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 5].field_0) = 0
            if 31 < stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 5].length:
                idx = 0
                while stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 5].length + 31 / 32 > idx:
                    uint256(stor[idx + sha3((9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 5)].field_0) = 0
                    idx = idx + 1
                    continue 
            emit LogOwnerAdded(arg2);
    else:
        require arg2
        if not arg3:
            require ext_code.size(0xdd9dbcc279b0e034ce74db24015ebf2606d88539)
            delegate 0xdd9dbcc279b0e034ce74db24015ebf2606d88539.0xcbf279f7 with:
                 gas gas_remaining - 710 wei
                args arg1, sha3(0, arg2)
            require delegate.return_code
            return bool(delegate.return_data[0]), sha3(0, arg2)
        if not uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0):
            require uint256(stor[arg1 + 8][address(msg.sender)].field_0) > 0
            if uint256(stor[arg1 + 8][address(arg2)].field_0):
                emit 0x912c2fba: 'New owner already owner'
                return 0
            if stor1[arg1] + 1 > uint256(stor[arg1].field_0):
                emit 0x912c2fba: 'Too many owners'
                return 0
            uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)++
            if not uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) <= uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) + 1:
                mem[0] = sha3(sha3(0, arg2), arg1 + 9)
                idx = (9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + 9
                while sha3(sha3(sha3(0, arg2), arg1 + 9)) + (9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) > idx + sha3(mem[0]):
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
            require uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)
            uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 7].field_0) = stor2[arg1]
            require uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)
            uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))][uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)].field_0) = block.timestamp / 24 * 3600
            uint256(stor[arg1 + 7][block.timestamp / 24 * 3600].field_0)++
            if not uint256(stor[arg1 + 7][block.timestamp / 24 * 3600].field_0) <= uint256(stor[arg1 + 7][block.timestamp / 24 * 3600].field_0) + 1:
                idx = uint256(stor[arg1 + 7][block.timestamp / 24 * 3600].field_0) + 1
                while uint256(stor[arg1 + 7][block.timestamp / 24 * 3600].field_0) > idx:
                    uint256(stor[arg1 + 7][block.timestamp / 24 * 3600][idx].field_0) = 0
                    idx = idx + 1
                    continue 
            uint256(stor[arg1 + 7][block.timestamp / 24 * 3600][uint256(stor[arg1 + 7][block.timestamp / 24 * 3600].field_0)].field_0) = sha3(0, arg2)
            require uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)
            uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5].field_0)++
            if not uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5].field_0) <= uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5].field_0) + 1:
                idx = uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5].field_0) + 1
                while uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5].field_0) > idx:
                    uint256(stor[idx + sha3((9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5)].field_0) = 0
                    idx = idx + 1
                    continue 
            address(stor[uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5].field_0) + sha3((9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5)].field_0) = msg.sender
            Mask(96, 0, stor[uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5].field_0) + sha3((9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5)].field_160) = 0
            require uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)
            uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 6].field_0)++
            require uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)
            require uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)
            require uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)
            if uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 6].field_0) != uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 7].field_0):
                require uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)
                if not stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 4].length:
                    uint256(stor[sha3((9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 4)][].field_0) = Array(len=arg4.length, data=arg4[all])
                require uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)
                emit 0xecef8dcc: sha3(0, arg2), msg.sender, uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 7].field_0) - uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 6].field_0)
            else:
                uint8(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 8].field_0) = 1
                stor1[arg1]++
                if not stor1[arg1] <= stor1[arg1] + 1:
                    idx = stor1[arg1] + 1
                    while stor1[arg1] > idx:
                        uint256(stor[idx + sha3(arg1 + 1)].field_0) = 0
                        idx = idx + 1
                        continue 
                address(stor[stor1[arg1] + sha3(arg1 + 1)].field_0) = arg2
                uint256(stor[arg1 + 8][address(arg2)].field_0) = stor1[arg1] - 1
                require uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)
                uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 4].field_0) = 0
                if 31 < stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 4].length:
                    idx = 0
                    while stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 4].length + 31 / 32 > idx:
                        uint256(stor[idx + sha3((9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 4)].field_0) = 0
                        idx = idx + 1
                        continue 
                emit LogOwnerAdded(arg2);
        else:
            require uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)
            if not uint8(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 1].field_0):
                require ext_code.size(0xdd9dbcc279b0e034ce74db24015ebf2606d88539)
                delegate 0xdd9dbcc279b0e034ce74db24015ebf2606d88539.0x9ae196ff with:
                     gas gas_remaining - 710 wei
                    args arg1, sha3(0, arg2), uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) - 1
                require delegate.return_code
                if not delegate.return_data[0]:
                    return 0, sha3(0, arg2)
                require uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)
                uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 4].field_0)++
                if not uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 4].field_0) <= uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 4].field_0) + 1:
                    idx = uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 4].field_0) + 1
                    while uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 4].field_0) > idx:
                        uint256(stor[idx + sha3((9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 4)].field_0) = 0
                        idx = idx + 1
                        continue 
                address(stor[uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 4].field_0) + sha3((9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 4)].field_0) = msg.sender
                Mask(96, 0, stor[uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 4].field_0) + sha3((9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 4)].field_160) = 0
                require uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)
                uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 3].field_0)++
                require uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)
                require uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)
                require uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)
                if uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 3].field_0) != uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 2].field_0):
                    require uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)
                    if not stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 5].length:
                        uint256(stor[sha3((9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 5)][].field_0) = Array(len=arg4.length, data=arg4[all])
                    require uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)
                    emit 0xecef8dcc: sha3(0, arg2), msg.sender, uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 2].field_0) - uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 3].field_0)
                else:
                    uint8(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 1].field_0) = 1
                    stor1[arg1]++
                    if not stor1[arg1] <= stor1[arg1] + 1:
                        idx = stor1[arg1] + 1
                        while stor1[arg1] > idx:
                            uint256(stor[idx + sha3(arg1 + 1)].field_0) = 0
                            idx = idx + 1
                            continue 
                    address(stor[stor1[arg1] + sha3(arg1 + 1)].field_0) = arg2
                    uint256(stor[arg1 + 8][address(arg2)].field_0) = stor1[arg1] - 1
                    require uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)
                    uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 5].field_0) = 0
                    if 31 < stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 5].length:
                        idx = 0
                        while stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 5].length + 31 / 32 > idx:
                            uint256(stor[idx + sha3((9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 5)].field_0) = 0
                            idx = idx + 1
                            continue 
                    emit LogOwnerAdded(arg2);
            else:
                require uint256(stor[arg1 + 8][address(msg.sender)].field_0) > 0
                if uint256(stor[arg1 + 8][address(arg2)].field_0):
                    emit 0x912c2fba: 'New owner already owner'
                    return 0
                if stor1[arg1] + 1 > uint256(stor[arg1].field_0):
                    emit 0x912c2fba: 'Too many owners'
                    return 0
                uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)++
                if not uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) <= uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) + 1:
                    mem[0] = sha3(sha3(0, arg2), arg1 + 9)
                    idx = (9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + 9
                    while sha3(sha3(sha3(0, arg2), arg1 + 9)) + (9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) > idx + sha3(mem[0]):
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
                require uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)
                uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 7].field_0) = stor2[arg1]
                require uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)
                uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))][uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)].field_0) = block.timestamp / 24 * 3600
                uint256(stor[arg1 + 7][block.timestamp / 24 * 3600].field_0)++
                if not uint256(stor[arg1 + 7][block.timestamp / 24 * 3600].field_0) <= uint256(stor[arg1 + 7][block.timestamp / 24 * 3600].field_0) + 1:
                    idx = uint256(stor[arg1 + 7][block.timestamp / 24 * 3600].field_0) + 1
                    while uint256(stor[arg1 + 7][block.timestamp / 24 * 3600].field_0) > idx:
                        uint256(stor[arg1 + 7][block.timestamp / 24 * 3600][idx].field_0) = 0
                        idx = idx + 1
                        continue 
                uint256(stor[arg1 + 7][block.timestamp / 24 * 3600][uint256(stor[arg1 + 7][block.timestamp / 24 * 3600].field_0)].field_0) = sha3(0, arg2)
                require uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)
                uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5].field_0)++
                if not uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5].field_0) <= uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5].field_0) + 1:
                    idx = uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5].field_0) + 1
                    while uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5].field_0) > idx:
                        uint256(stor[idx + sha3((9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5)].field_0) = 0
                        idx = idx + 1
                        continue 
                address(stor[uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5].field_0) + sha3((9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5)].field_0) = msg.sender
                Mask(96, 0, stor[uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5].field_0) + sha3((9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5)].field_160) = 0
                require uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)
                uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 6].field_0)++
                require uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)
                require uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)
                require uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)
                if uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 6].field_0) != uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 7].field_0):
                    require uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)
                    if not stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 4].length:
                        uint256(stor[sha3((9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 4)][].field_0) = Array(len=arg4.length, data=arg4[all])
                    require uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)
                    emit 0xecef8dcc: sha3(0, arg2), msg.sender, uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 7].field_0) - uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 6].field_0)
                else:
                    uint8(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 8].field_0) = 1
                    stor1[arg1]++
                    if not stor1[arg1] <= stor1[arg1] + 1:
                        idx = stor1[arg1] + 1
                        while stor1[arg1] > idx:
                            uint256(stor[idx + sha3(arg1 + 1)].field_0) = 0
                            idx = idx + 1
                            continue 
                    address(stor[stor1[arg1] + sha3(arg1 + 1)].field_0) = arg2
                    uint256(stor[arg1 + 8][address(arg2)].field_0) = stor1[arg1] - 1
                    require uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)
                    uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 4].field_0) = 0
                    if 31 < stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 4].length:
                        idx = 0
                        while stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 4].length + 31 / 32 > idx:
                            uint256(stor[idx + sha3((9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 4)].field_0) = 0
                            idx = idx + 1
                            continue 
                    emit LogOwnerAdded(arg2);
    return 1, sha3(0, arg2)
}

function sub_fc3f4d17(?) payable {
    if this.address == msg.sender:
        require uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)
        require uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)
        require uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)
        if uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 3].field_0) != uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 2].field_0):
            require uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)
            if not stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 5].length:
                uint256(stor[sha3((9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 5)][].field_0) = Array(len=arg4.length, data=arg4[all])
            require uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)
            emit 0xecef8dcc: sha3(0, arg2), msg.sender, uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 2].field_0) - uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 3].field_0)
        else:
            uint8(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 1].field_0) = 1
            require stor1[arg1] - 1 < stor1[arg1]
            require uint256(stor[arg1 + 8][address(arg2)].field_0) < stor1[arg1]
            address(stor[uint256(stor[arg1 + 8][address(arg2)].field_0) + sha3(arg1 + 1)].field_0) = address(stor[stor1[arg1] + sha3(arg1 + 1) - 1].field_0)
            require stor1[arg1] - 1 < stor1[arg1]
            uint256(stor[arg1 + 8][address(stor[stor1[arg1] + sha3(arg1 + 1) - 1].field_0)].field_0) = uint256(stor[arg1 + 8][address(arg2)].field_0)
            uint256(stor[arg1 + 8][address(arg2)].field_0) = 0
            stor1[arg1]--
            if not stor1[arg1] <= stor1[arg1] - 1:
                idx = stor1[arg1] - 1
                while stor1[arg1] > idx:
                    uint256(stor[idx + sha3(arg1 + 1)].field_0) = 0
                    idx = idx + 1
                    continue 
            require uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)
            uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 5].field_0) = 0
            if 31 < stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 5].length:
                idx = 0
                while stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 5].length + 31 / 32 > idx:
                    uint256(stor[idx + sha3((9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 5)].field_0) = 0
                    idx = idx + 1
                    continue 
            emit LogOwnerRemoved(arg2);
    else:
        if not arg3:
            require ext_code.size(0xdd9dbcc279b0e034ce74db24015ebf2606d88539)
            delegate 0xdd9dbcc279b0e034ce74db24015ebf2606d88539.0xcbf279f7 with:
                 gas gas_remaining - 710 wei
                args arg1, sha3(0, arg2)
            require delegate.return_code
            return bool(delegate.return_data[0]), sha3(0, arg2)
        if not uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0):
            require uint256(stor[arg1 + 8][address(msg.sender)].field_0) > 0
            if not uint256(stor[arg1 + 8][address(arg2)].field_0):
                emit 0x912c2fba: Array(len=27, data='Owner removing not an owner')
                return 0
            if stor1[arg1] - 1 < stor2[arg1]:
                emit 0x912c2fba: Array(len=31, data='Must reduce requiredAdmin first')
                return 0
            uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)++
            if not uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) <= uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) + 1:
                mem[0] = sha3(sha3(0, arg2), arg1 + 9)
                idx = (9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + 9
                while sha3(sha3(sha3(0, arg2), arg1 + 9)) + (9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) > idx + sha3(mem[0]):
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
            require uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)
            uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 7].field_0) = stor2[arg1]
            require uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)
            uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))][uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)].field_0) = block.timestamp / 24 * 3600
            uint256(stor[arg1 + 7][block.timestamp / 24 * 3600].field_0)++
            if not uint256(stor[arg1 + 7][block.timestamp / 24 * 3600].field_0) <= uint256(stor[arg1 + 7][block.timestamp / 24 * 3600].field_0) + 1:
                idx = uint256(stor[arg1 + 7][block.timestamp / 24 * 3600].field_0) + 1
                while uint256(stor[arg1 + 7][block.timestamp / 24 * 3600].field_0) > idx:
                    uint256(stor[arg1 + 7][block.timestamp / 24 * 3600][idx].field_0) = 0
                    idx = idx + 1
                    continue 
            uint256(stor[arg1 + 7][block.timestamp / 24 * 3600][uint256(stor[arg1 + 7][block.timestamp / 24 * 3600].field_0)].field_0) = sha3(0, arg2)
            require uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)
            uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5].field_0)++
            if not uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5].field_0) <= uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5].field_0) + 1:
                idx = uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5].field_0) + 1
                while uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5].field_0) > idx:
                    uint256(stor[idx + sha3((9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5)].field_0) = 0
                    idx = idx + 1
                    continue 
            address(stor[uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5].field_0) + sha3((9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5)].field_0) = msg.sender
            Mask(96, 0, stor[uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5].field_0) + sha3((9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5)].field_160) = 0
            require uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)
            uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 6].field_0)++
            require uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)
            require uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)
            require uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)
            if uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 6].field_0) != uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 7].field_0):
                require uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)
                if not stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 4].length:
                    uint256(stor[sha3((9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 4)][].field_0) = Array(len=arg4.length, data=arg4[all])
                require uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)
                emit 0xecef8dcc: sha3(0, arg2), msg.sender, uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 7].field_0) - uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 6].field_0)
            else:
                uint8(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 8].field_0) = 1
                require stor1[arg1] - 1 < stor1[arg1]
                require uint256(stor[arg1 + 8][address(arg2)].field_0) < stor1[arg1]
                address(stor[uint256(stor[arg1 + 8][address(arg2)].field_0) + sha3(arg1 + 1)].field_0) = address(stor[stor1[arg1] + sha3(arg1 + 1) - 1].field_0)
                require stor1[arg1] - 1 < stor1[arg1]
                uint256(stor[arg1 + 8][address(stor[stor1[arg1] + sha3(arg1 + 1) - 1].field_0)].field_0) = uint256(stor[arg1 + 8][address(arg2)].field_0)
                uint256(stor[arg1 + 8][address(arg2)].field_0) = 0
                stor1[arg1]--
                if not stor1[arg1] <= stor1[arg1] - 1:
                    idx = stor1[arg1] - 1
                    while stor1[arg1] > idx:
                        uint256(stor[idx + sha3(arg1 + 1)].field_0) = 0
                        idx = idx + 1
                        continue 
                require uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)
                uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 4].field_0) = 0
                if 31 < stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 4].length:
                    idx = 0
                    while stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 4].length + 31 / 32 > idx:
                        uint256(stor[idx + sha3((9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 4)].field_0) = 0
                        idx = idx + 1
                        continue 
                emit LogOwnerRemoved(arg2);
        else:
            require uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)
            if not uint8(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 1].field_0):
                require ext_code.size(0xdd9dbcc279b0e034ce74db24015ebf2606d88539)
                delegate 0xdd9dbcc279b0e034ce74db24015ebf2606d88539.0x9ae196ff with:
                     gas gas_remaining - 710 wei
                    args arg1, sha3(0, arg2), uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) - 1
                require delegate.return_code
                if not delegate.return_data[0]:
                    return 0, sha3(0, arg2)
                require uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)
                uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 4].field_0)++
                if not uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 4].field_0) <= uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 4].field_0) + 1:
                    idx = uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 4].field_0) + 1
                    while uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 4].field_0) > idx:
                        uint256(stor[idx + sha3((9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 4)].field_0) = 0
                        idx = idx + 1
                        continue 
                address(stor[uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 4].field_0) + sha3((9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 4)].field_0) = msg.sender
                Mask(96, 0, stor[uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 4].field_0) + sha3((9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 4)].field_160) = 0
                require uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)
                uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 3].field_0)++
                require uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)
                require uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)
                require uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)
                if uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 3].field_0) != uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 2].field_0):
                    require uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)
                    if not stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 5].length:
                        uint256(stor[sha3((9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 5)][].field_0) = Array(len=arg4.length, data=arg4[all])
                    require uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)
                    emit 0xecef8dcc: sha3(0, arg2), msg.sender, uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 2].field_0) - uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 3].field_0)
                else:
                    uint8(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 1].field_0) = 1
                    require stor1[arg1] - 1 < stor1[arg1]
                    require uint256(stor[arg1 + 8][address(arg2)].field_0) < stor1[arg1]
                    address(stor[uint256(stor[arg1 + 8][address(arg2)].field_0) + sha3(arg1 + 1)].field_0) = address(stor[stor1[arg1] + sha3(arg1 + 1) - 1].field_0)
                    require stor1[arg1] - 1 < stor1[arg1]
                    uint256(stor[arg1 + 8][address(stor[stor1[arg1] + sha3(arg1 + 1) - 1].field_0)].field_0) = uint256(stor[arg1 + 8][address(arg2)].field_0)
                    uint256(stor[arg1 + 8][address(arg2)].field_0) = 0
                    stor1[arg1]--
                    if not stor1[arg1] <= stor1[arg1] - 1:
                        idx = stor1[arg1] - 1
                        while stor1[arg1] > idx:
                            uint256(stor[idx + sha3(arg1 + 1)].field_0) = 0
                            idx = idx + 1
                            continue 
                    require uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)
                    uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 5].field_0) = 0
                    if 31 < stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 5].length:
                        idx = 0
                        while stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 5].length + 31 / 32 > idx:
                            uint256(stor[idx + sha3((9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 5)].field_0) = 0
                            idx = idx + 1
                            continue 
                    emit LogOwnerRemoved(arg2);
            else:
                require uint256(stor[arg1 + 8][address(msg.sender)].field_0) > 0
                if not uint256(stor[arg1 + 8][address(arg2)].field_0):
                    emit 0x912c2fba: Array(len=27, data='Owner removing not an owner')
                    return 0
                if stor1[arg1] - 1 < stor2[arg1]:
                    emit 0x912c2fba: Array(len=31, data='Must reduce requiredAdmin first')
                    return 0
                uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)++
                if not uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) <= uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) + 1:
                    mem[0] = sha3(sha3(0, arg2), arg1 + 9)
                    idx = (9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + 9
                    while sha3(sha3(sha3(0, arg2), arg1 + 9)) + (9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) > idx + sha3(mem[0]):
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
                require uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)
                uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 7].field_0) = stor2[arg1]
                require uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)
                uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))][uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)].field_0) = block.timestamp / 24 * 3600
                uint256(stor[arg1 + 7][block.timestamp / 24 * 3600].field_0)++
                if not uint256(stor[arg1 + 7][block.timestamp / 24 * 3600].field_0) <= uint256(stor[arg1 + 7][block.timestamp / 24 * 3600].field_0) + 1:
                    idx = uint256(stor[arg1 + 7][block.timestamp / 24 * 3600].field_0) + 1
                    while uint256(stor[arg1 + 7][block.timestamp / 24 * 3600].field_0) > idx:
                        uint256(stor[arg1 + 7][block.timestamp / 24 * 3600][idx].field_0) = 0
                        idx = idx + 1
                        continue 
                uint256(stor[arg1 + 7][block.timestamp / 24 * 3600][uint256(stor[arg1 + 7][block.timestamp / 24 * 3600].field_0)].field_0) = sha3(0, arg2)
                require uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)
                uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5].field_0)++
                if not uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5].field_0) <= uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5].field_0) + 1:
                    idx = uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5].field_0) + 1
                    while uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5].field_0) > idx:
                        uint256(stor[idx + sha3((9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5)].field_0) = 0
                        idx = idx + 1
                        continue 
                address(stor[uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5].field_0) + sha3((9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5)].field_0) = msg.sender
                Mask(96, 0, stor[uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5].field_0) + sha3((9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5)].field_160) = 0
                require uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)
                uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 6].field_0)++
                require uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)
                require uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)
                require uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)
                if uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 6].field_0) != uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 7].field_0):
                    require uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)
                    if not stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 4].length:
                        uint256(stor[sha3((9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 4)][].field_0) = Array(len=arg4.length, data=arg4[all])
                    require uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)
                    emit 0xecef8dcc: sha3(0, arg2), msg.sender, uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 7].field_0) - uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 6].field_0)
                else:
                    uint8(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 8].field_0) = 1
                    require stor1[arg1] - 1 < stor1[arg1]
                    require uint256(stor[arg1 + 8][address(arg2)].field_0) < stor1[arg1]
                    address(stor[uint256(stor[arg1 + 8][address(arg2)].field_0) + sha3(arg1 + 1)].field_0) = address(stor[stor1[arg1] + sha3(arg1 + 1) - 1].field_0)
                    require stor1[arg1] - 1 < stor1[arg1]
                    uint256(stor[arg1 + 8][address(stor[stor1[arg1] + sha3(arg1 + 1) - 1].field_0)].field_0) = uint256(stor[arg1 + 8][address(arg2)].field_0)
                    uint256(stor[arg1 + 8][address(arg2)].field_0) = 0
                    stor1[arg1]--
                    if not stor1[arg1] <= stor1[arg1] - 1:
                        idx = stor1[arg1] - 1
                        while stor1[arg1] > idx:
                            uint256(stor[idx + sha3(arg1 + 1)].field_0) = 0
                            idx = idx + 1
                            continue 
                    require uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)
                    uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 4].field_0) = 0
                    if 31 < stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 4].length:
                        idx = 0
                        while stor[(9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 4].length + 31 / 32 > idx:
                            uint256(stor[idx + sha3((9 * uint256(stor[arg1 + 9][('map', 0, ('param', 'arg2'))].field_0)) + ('map', ('map', 0, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 4)].field_0) = 0
                            idx = idx + 1
                            continue 
                    emit LogOwnerRemoved(arg2);
    return 1, sha3(0, arg2)
}

function sub_1b9cdab3(?) payable {
    if this.address == msg.sender:
        require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
        require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
        require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
        if uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 3].field_0) != uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 2].field_0):
            require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
            if not stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 5].length:
                uint256(stor[sha3((9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 5)][].field_0) = Array(len=arg4.length, data=arg4[all])
            require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
            emit 0xecef8dcc: sha3(109299962373989, arg2), msg.sender, uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 2].field_0) - uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 3].field_0)
        else:
            uint8(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 1].field_0) = 1
            stor4[arg1] = arg2
            require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
            uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 5].field_0) = 0
            if 31 < stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 5].length:
                idx = 0
                while stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 5].length + 31 / 32 > idx:
                    uint256(stor[idx + sha3((9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 5)].field_0) = 0
                    idx = idx + 1
                    continue 
            emit LogRequirementChange(arg2);
    else:
        if not arg3:
            require ext_code.size(0xdd9dbcc279b0e034ce74db24015ebf2606d88539)
            delegate 0xdd9dbcc279b0e034ce74db24015ebf2606d88539.0xcbf279f7 with:
                 gas gas_remaining - 710 wei
                args arg1, sha3(109299962373989, arg2)
            require delegate.return_code
            return bool(delegate.return_data[0]), sha3(109299962373989, arg2)
        if not uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0):
            require uint256(stor[arg1 + 8][address(msg.sender)].field_0) > 0
            if not arg2:
                emit 0x912c2fba: 'Cant reduce to 0'
                return 0
            if stor1[arg1] - 1 < arg2:
                emit 0x912c2fba: Array(len=27, data='Making requirement too high')
                return 0
            uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)++
            if not uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) <= uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) + 1:
                mem[0] = sha3(sha3(109299962373989, arg2), arg1 + 9)
                idx = (9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + 9
                while sha3(sha3(sha3(109299962373989, arg2), arg1 + 9)) + (9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) > idx + sha3(mem[0]):
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
            require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
            uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 7].field_0) = stor2[arg1]
            require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
            uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))][uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)].field_0) = block.timestamp / 24 * 3600
            uint256(stor[arg1 + 7][block.timestamp / 24 * 3600].field_0)++
            if not uint256(stor[arg1 + 7][block.timestamp / 24 * 3600].field_0) <= uint256(stor[arg1 + 7][block.timestamp / 24 * 3600].field_0) + 1:
                idx = uint256(stor[arg1 + 7][block.timestamp / 24 * 3600].field_0) + 1
                while uint256(stor[arg1 + 7][block.timestamp / 24 * 3600].field_0) > idx:
                    uint256(stor[arg1 + 7][block.timestamp / 24 * 3600][idx].field_0) = 0
                    idx = idx + 1
                    continue 
            uint256(stor[arg1 + 7][block.timestamp / 24 * 3600][uint256(stor[arg1 + 7][block.timestamp / 24 * 3600].field_0)].field_0) = sha3(109299962373989, arg2)
            require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
            uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5].field_0)++
            if not uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5].field_0) <= uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5].field_0) + 1:
                idx = uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5].field_0) + 1
                while uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5].field_0) > idx:
                    uint256(stor[idx + sha3((9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5)].field_0) = 0
                    idx = idx + 1
                    continue 
            address(stor[uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5].field_0) + sha3((9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5)].field_0) = msg.sender
            Mask(96, 0, stor[uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5].field_0) + sha3((9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5)].field_160) = 0
            require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
            uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 6].field_0)++
            require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
            require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
            require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
            if uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 6].field_0) != uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 7].field_0):
                require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
                if not stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 4].length:
                    uint256(stor[sha3((9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 4)][].field_0) = Array(len=arg4.length, data=arg4[all])
                require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
                emit 0xecef8dcc: sha3(109299962373989, arg2), msg.sender, uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 7].field_0) - uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 6].field_0)
            else:
                uint8(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 8].field_0) = 1
                stor4[arg1] = arg2
                require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
                uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 4].field_0) = 0
                if 31 < stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 4].length:
                    idx = 0
                    while stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 4].length + 31 / 32 > idx:
                        uint256(stor[idx + sha3((9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 4)].field_0) = 0
                        idx = idx + 1
                        continue 
                emit LogRequirementChange(arg2);
        else:
            require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
            if not uint8(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 1].field_0):
                require ext_code.size(0xdd9dbcc279b0e034ce74db24015ebf2606d88539)
                delegate 0xdd9dbcc279b0e034ce74db24015ebf2606d88539.0x9ae196ff with:
                     gas gas_remaining - 710 wei
                    args arg1, sha3(109299962373989, arg2), uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) - 1
                require delegate.return_code
                if not delegate.return_data[0]:
                    return 0, sha3(109299962373989, arg2)
                require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
                uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 4].field_0)++
                if not uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 4].field_0) <= uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 4].field_0) + 1:
                    idx = uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 4].field_0) + 1
                    while uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 4].field_0) > idx:
                        uint256(stor[idx + sha3((9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 4)].field_0) = 0
                        idx = idx + 1
                        continue 
                address(stor[uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 4].field_0) + sha3((9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 4)].field_0) = msg.sender
                Mask(96, 0, stor[uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 4].field_0) + sha3((9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 4)].field_160) = 0
                require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
                uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 3].field_0)++
                require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
                require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
                require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
                if uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 3].field_0) != uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 2].field_0):
                    require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
                    if not stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 5].length:
                        uint256(stor[sha3((9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 5)][].field_0) = Array(len=arg4.length, data=arg4[all])
                    require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
                    emit 0xecef8dcc: sha3(109299962373989, arg2), msg.sender, uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 2].field_0) - uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 3].field_0)
                else:
                    uint8(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 1].field_0) = 1
                    stor4[arg1] = arg2
                    require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
                    uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 5].field_0) = 0
                    if 31 < stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 5].length:
                        idx = 0
                        while stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 5].length + 31 / 32 > idx:
                            uint256(stor[idx + sha3((9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 5)].field_0) = 0
                            idx = idx + 1
                            continue 
                    emit LogRequirementChange(arg2);
            else:
                require uint256(stor[arg1 + 8][address(msg.sender)].field_0) > 0
                if not arg2:
                    emit 0x912c2fba: 'Cant reduce to 0'
                    return 0
                if stor1[arg1] - 1 < arg2:
                    emit 0x912c2fba: Array(len=27, data='Making requirement too high')
                    return 0
                uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)++
                if not uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) <= uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) + 1:
                    mem[0] = sha3(sha3(109299962373989, arg2), arg1 + 9)
                    idx = (9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + 9
                    while sha3(sha3(sha3(109299962373989, arg2), arg1 + 9)) + (9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) > idx + sha3(mem[0]):
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
                require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
                uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 7].field_0) = stor2[arg1]
                require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
                uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))][uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)].field_0) = block.timestamp / 24 * 3600
                uint256(stor[arg1 + 7][block.timestamp / 24 * 3600].field_0)++
                if not uint256(stor[arg1 + 7][block.timestamp / 24 * 3600].field_0) <= uint256(stor[arg1 + 7][block.timestamp / 24 * 3600].field_0) + 1:
                    idx = uint256(stor[arg1 + 7][block.timestamp / 24 * 3600].field_0) + 1
                    while uint256(stor[arg1 + 7][block.timestamp / 24 * 3600].field_0) > idx:
                        uint256(stor[arg1 + 7][block.timestamp / 24 * 3600][idx].field_0) = 0
                        idx = idx + 1
                        continue 
                uint256(stor[arg1 + 7][block.timestamp / 24 * 3600][uint256(stor[arg1 + 7][block.timestamp / 24 * 3600].field_0)].field_0) = sha3(109299962373989, arg2)
                require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
                uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5].field_0)++
                if not uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5].field_0) <= uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5].field_0) + 1:
                    idx = uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5].field_0) + 1
                    while uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5].field_0) > idx:
                        uint256(stor[idx + sha3((9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5)].field_0) = 0
                        idx = idx + 1
                        continue 
                address(stor[uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5].field_0) + sha3((9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5)].field_0) = msg.sender
                Mask(96, 0, stor[uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5].field_0) + sha3((9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5)].field_160) = 0
                require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
                uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 6].field_0)++
                require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
                require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
                require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
                if uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 6].field_0) != uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 7].field_0):
                    require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
                    if not stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 4].length:
                        uint256(stor[sha3((9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 4)][].field_0) = Array(len=arg4.length, data=arg4[all])
                    require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
                    emit 0xecef8dcc: sha3(109299962373989, arg2), msg.sender, uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 7].field_0) - uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 6].field_0)
                else:
                    uint8(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 8].field_0) = 1
                    stor4[arg1] = arg2
                    require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
                    uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 4].field_0) = 0
                    if 31 < stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 4].length:
                        idx = 0
                        while stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 4].length + 31 / 32 > idx:
                            uint256(stor[idx + sha3((9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 4)].field_0) = 0
                            idx = idx + 1
                            continue 
                    emit LogRequirementChange(arg2);
    return 1, sha3(109299962373989, arg2)
}

function sub_bb46121f(?) payable {
    if this.address == msg.sender:
        require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
        require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
        require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
        if uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 3].field_0) != uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 2].field_0):
            require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
            if not stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 5].length:
                uint256(stor[sha3((9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 5)][].field_0) = Array(len=arg4.length, data=arg4[all])
            require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
            emit 0xecef8dcc: sha3(109299962373989, arg2), msg.sender, uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 2].field_0) - uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 3].field_0)
        else:
            uint8(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 1].field_0) = 1
            stor2[arg1] = arg2
            require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
            uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 5].field_0) = 0
            if 31 < stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 5].length:
                idx = 0
                while stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 5].length + 31 / 32 > idx:
                    uint256(stor[idx + sha3((9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 5)].field_0) = 0
                    idx = idx + 1
                    continue 
            emit LogRequirementChange(arg2);
    else:
        if not arg3:
            require ext_code.size(0xdd9dbcc279b0e034ce74db24015ebf2606d88539)
            delegate 0xdd9dbcc279b0e034ce74db24015ebf2606d88539.0xcbf279f7 with:
                 gas gas_remaining - 710 wei
                args arg1, sha3(109299962373989, arg2)
            require delegate.return_code
            return bool(delegate.return_data[0]), sha3(109299962373989, arg2)
        if not uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0):
            require uint256(stor[arg1 + 8][address(msg.sender)].field_0) > 0
            if not arg2:
                emit 0x912c2fba: 'Cant reduce to 0'
                return 0
            if stor1[arg1] - 1 < arg2:
                emit 0x912c2fba: Array(len=27, data='Making requirement too high')
                return 0
            uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)++
            if not uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) <= uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) + 1:
                mem[0] = sha3(sha3(109299962373989, arg2), arg1 + 9)
                idx = (9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + 9
                while sha3(sha3(sha3(109299962373989, arg2), arg1 + 9)) + (9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) > idx + sha3(mem[0]):
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
            require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
            uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 7].field_0) = stor2[arg1]
            require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
            uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))][uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)].field_0) = block.timestamp / 24 * 3600
            uint256(stor[arg1 + 7][block.timestamp / 24 * 3600].field_0)++
            if not uint256(stor[arg1 + 7][block.timestamp / 24 * 3600].field_0) <= uint256(stor[arg1 + 7][block.timestamp / 24 * 3600].field_0) + 1:
                idx = uint256(stor[arg1 + 7][block.timestamp / 24 * 3600].field_0) + 1
                while uint256(stor[arg1 + 7][block.timestamp / 24 * 3600].field_0) > idx:
                    uint256(stor[arg1 + 7][block.timestamp / 24 * 3600][idx].field_0) = 0
                    idx = idx + 1
                    continue 
            uint256(stor[arg1 + 7][block.timestamp / 24 * 3600][uint256(stor[arg1 + 7][block.timestamp / 24 * 3600].field_0)].field_0) = sha3(109299962373989, arg2)
            require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
            uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5].field_0)++
            if not uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5].field_0) <= uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5].field_0) + 1:
                idx = uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5].field_0) + 1
                while uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5].field_0) > idx:
                    uint256(stor[idx + sha3((9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5)].field_0) = 0
                    idx = idx + 1
                    continue 
            address(stor[uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5].field_0) + sha3((9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5)].field_0) = msg.sender
            Mask(96, 0, stor[uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5].field_0) + sha3((9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5)].field_160) = 0
            require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
            uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 6].field_0)++
            require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
            require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
            require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
            if uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 6].field_0) != uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 7].field_0):
                require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
                if not stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 4].length:
                    uint256(stor[sha3((9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 4)][].field_0) = Array(len=arg4.length, data=arg4[all])
                require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
                emit 0xecef8dcc: sha3(109299962373989, arg2), msg.sender, uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 7].field_0) - uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 6].field_0)
            else:
                uint8(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 8].field_0) = 1
                stor2[arg1] = arg2
                require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
                uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 4].field_0) = 0
                if 31 < stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 4].length:
                    idx = 0
                    while stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 4].length + 31 / 32 > idx:
                        uint256(stor[idx + sha3((9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 4)].field_0) = 0
                        idx = idx + 1
                        continue 
                emit LogRequirementChange(arg2);
        else:
            require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
            if not uint8(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 1].field_0):
                require ext_code.size(0xdd9dbcc279b0e034ce74db24015ebf2606d88539)
                delegate 0xdd9dbcc279b0e034ce74db24015ebf2606d88539.0x9ae196ff with:
                     gas gas_remaining - 710 wei
                    args arg1, sha3(109299962373989, arg2), uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) - 1
                require delegate.return_code
                if not delegate.return_data[0]:
                    return 0, sha3(109299962373989, arg2)
                require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
                uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 4].field_0)++
                if not uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 4].field_0) <= uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 4].field_0) + 1:
                    idx = uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 4].field_0) + 1
                    while uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 4].field_0) > idx:
                        uint256(stor[idx + sha3((9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 4)].field_0) = 0
                        idx = idx + 1
                        continue 
                address(stor[uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 4].field_0) + sha3((9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 4)].field_0) = msg.sender
                Mask(96, 0, stor[uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 4].field_0) + sha3((9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 4)].field_160) = 0
                require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
                uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 3].field_0)++
                require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
                require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
                require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
                if uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 3].field_0) != uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 2].field_0):
                    require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
                    if not stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 5].length:
                        uint256(stor[sha3((9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 5)][].field_0) = Array(len=arg4.length, data=arg4[all])
                    require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
                    emit 0xecef8dcc: sha3(109299962373989, arg2), msg.sender, uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 2].field_0) - uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 3].field_0)
                else:
                    uint8(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 1].field_0) = 1
                    stor2[arg1] = arg2
                    require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
                    uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 5].field_0) = 0
                    if 31 < stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 5].length:
                        idx = 0
                        while stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 5].length + 31 / 32 > idx:
                            uint256(stor[idx + sha3((9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 5)].field_0) = 0
                            idx = idx + 1
                            continue 
                    emit LogRequirementChange(arg2);
            else:
                require uint256(stor[arg1 + 8][address(msg.sender)].field_0) > 0
                if not arg2:
                    emit 0x912c2fba: 'Cant reduce to 0'
                    return 0
                if stor1[arg1] - 1 < arg2:
                    emit 0x912c2fba: Array(len=27, data='Making requirement too high')
                    return 0
                uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)++
                if not uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) <= uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) + 1:
                    mem[0] = sha3(sha3(109299962373989, arg2), arg1 + 9)
                    idx = (9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + 9
                    while sha3(sha3(sha3(109299962373989, arg2), arg1 + 9)) + (9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) > idx + sha3(mem[0]):
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
                require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
                uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 7].field_0) = stor2[arg1]
                require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
                uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))][uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)].field_0) = block.timestamp / 24 * 3600
                uint256(stor[arg1 + 7][block.timestamp / 24 * 3600].field_0)++
                if not uint256(stor[arg1 + 7][block.timestamp / 24 * 3600].field_0) <= uint256(stor[arg1 + 7][block.timestamp / 24 * 3600].field_0) + 1:
                    idx = uint256(stor[arg1 + 7][block.timestamp / 24 * 3600].field_0) + 1
                    while uint256(stor[arg1 + 7][block.timestamp / 24 * 3600].field_0) > idx:
                        uint256(stor[arg1 + 7][block.timestamp / 24 * 3600][idx].field_0) = 0
                        idx = idx + 1
                        continue 
                uint256(stor[arg1 + 7][block.timestamp / 24 * 3600][uint256(stor[arg1 + 7][block.timestamp / 24 * 3600].field_0)].field_0) = sha3(109299962373989, arg2)
                require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
                uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5].field_0)++
                if not uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5].field_0) <= uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5].field_0) + 1:
                    idx = uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5].field_0) + 1
                    while uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5].field_0) > idx:
                        uint256(stor[idx + sha3((9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5)].field_0) = 0
                        idx = idx + 1
                        continue 
                address(stor[uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5].field_0) + sha3((9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5)].field_0) = msg.sender
                Mask(96, 0, stor[uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5].field_0) + sha3((9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5)].field_160) = 0
                require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
                uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 6].field_0)++
                require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
                require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
                require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
                if uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 6].field_0) != uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 7].field_0):
                    require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
                    if not stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 4].length:
                        uint256(stor[sha3((9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 4)][].field_0) = Array(len=arg4.length, data=arg4[all])
                    require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
                    emit 0xecef8dcc: sha3(109299962373989, arg2), msg.sender, uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 7].field_0) - uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 6].field_0)
                else:
                    uint8(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 8].field_0) = 1
                    stor2[arg1] = arg2
                    require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
                    uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 4].field_0) = 0
                    if 31 < stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 4].length:
                        idx = 0
                        while stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 4].length + 31 / 32 > idx:
                            uint256(stor[idx + sha3((9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 4)].field_0) = 0
                            idx = idx + 1
                            continue 
                    emit LogRequirementChange(arg2);
    return 1, sha3(109299962373989, arg2)
}

function sub_e081317a(?) payable {
    if this.address == msg.sender:
        require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
        require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
        require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
        if uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 3].field_0) != uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 2].field_0):
            require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
            if not stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 5].length:
                uint256(stor[sha3((9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 5)][].field_0) = Array(len=arg4.length, data=arg4[all])
            require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
            emit 0xecef8dcc: sha3(109299962373989, arg2), msg.sender, uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 2].field_0) - uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 3].field_0)
        else:
            uint8(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 1].field_0) = 1
            stor3[arg1] = arg2
            require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
            uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 5].field_0) = 0
            if 31 < stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 5].length:
                idx = 0
                while stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 5].length + 31 / 32 > idx:
                    uint256(stor[idx + sha3((9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 5)].field_0) = 0
                    idx = idx + 1
                    continue 
            emit LogRequirementChange(arg2);
    else:
        if not arg3:
            require ext_code.size(0xdd9dbcc279b0e034ce74db24015ebf2606d88539)
            delegate 0xdd9dbcc279b0e034ce74db24015ebf2606d88539.0xcbf279f7 with:
                 gas gas_remaining - 710 wei
                args arg1, sha3(109299962373989, arg2)
            require delegate.return_code
            return bool(delegate.return_data[0]), sha3(109299962373989, arg2)
        if not uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0):
            require uint256(stor[arg1 + 8][address(msg.sender)].field_0) > 0
            if not arg2:
                emit 0x912c2fba: 'Cant reduce to 0'
                return 0
            if stor1[arg1] - 1 < arg2:
                emit 0x912c2fba: Array(len=27, data='Making requirement too high')
                return 0
            uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)++
            if not uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) <= uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) + 1:
                mem[0] = sha3(sha3(109299962373989, arg2), arg1 + 9)
                idx = (9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + 9
                while sha3(sha3(sha3(109299962373989, arg2), arg1 + 9)) + (9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) > idx + sha3(mem[0]):
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
            require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
            uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 7].field_0) = stor2[arg1]
            require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
            uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))][uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)].field_0) = block.timestamp / 24 * 3600
            uint256(stor[arg1 + 7][block.timestamp / 24 * 3600].field_0)++
            if not uint256(stor[arg1 + 7][block.timestamp / 24 * 3600].field_0) <= uint256(stor[arg1 + 7][block.timestamp / 24 * 3600].field_0) + 1:
                idx = uint256(stor[arg1 + 7][block.timestamp / 24 * 3600].field_0) + 1
                while uint256(stor[arg1 + 7][block.timestamp / 24 * 3600].field_0) > idx:
                    uint256(stor[arg1 + 7][block.timestamp / 24 * 3600][idx].field_0) = 0
                    idx = idx + 1
                    continue 
            uint256(stor[arg1 + 7][block.timestamp / 24 * 3600][uint256(stor[arg1 + 7][block.timestamp / 24 * 3600].field_0)].field_0) = sha3(109299962373989, arg2)
            require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
            uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5].field_0)++
            if not uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5].field_0) <= uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5].field_0) + 1:
                idx = uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5].field_0) + 1
                while uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5].field_0) > idx:
                    uint256(stor[idx + sha3((9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5)].field_0) = 0
                    idx = idx + 1
                    continue 
            address(stor[uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5].field_0) + sha3((9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5)].field_0) = msg.sender
            Mask(96, 0, stor[uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5].field_0) + sha3((9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5)].field_160) = 0
            require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
            uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 6].field_0)++
            require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
            require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
            require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
            if uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 6].field_0) != uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 7].field_0):
                require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
                if not stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 4].length:
                    uint256(stor[sha3((9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 4)][].field_0) = Array(len=arg4.length, data=arg4[all])
                require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
                emit 0xecef8dcc: sha3(109299962373989, arg2), msg.sender, uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 7].field_0) - uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 6].field_0)
            else:
                uint8(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 8].field_0) = 1
                stor3[arg1] = arg2
                require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
                uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 4].field_0) = 0
                if 31 < stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 4].length:
                    idx = 0
                    while stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 4].length + 31 / 32 > idx:
                        uint256(stor[idx + sha3((9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 4)].field_0) = 0
                        idx = idx + 1
                        continue 
                emit LogRequirementChange(arg2);
        else:
            require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
            if not uint8(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 1].field_0):
                require ext_code.size(0xdd9dbcc279b0e034ce74db24015ebf2606d88539)
                delegate 0xdd9dbcc279b0e034ce74db24015ebf2606d88539.0x9ae196ff with:
                     gas gas_remaining - 710 wei
                    args arg1, sha3(109299962373989, arg2), uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) - 1
                require delegate.return_code
                if not delegate.return_data[0]:
                    return 0, sha3(109299962373989, arg2)
                require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
                uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 4].field_0)++
                if not uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 4].field_0) <= uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 4].field_0) + 1:
                    idx = uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 4].field_0) + 1
                    while uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 4].field_0) > idx:
                        uint256(stor[idx + sha3((9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 4)].field_0) = 0
                        idx = idx + 1
                        continue 
                address(stor[uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 4].field_0) + sha3((9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 4)].field_0) = msg.sender
                Mask(96, 0, stor[uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 4].field_0) + sha3((9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 4)].field_160) = 0
                require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
                uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 3].field_0)++
                require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
                require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
                require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
                if uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 3].field_0) != uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 2].field_0):
                    require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
                    if not stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 5].length:
                        uint256(stor[sha3((9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 5)][].field_0) = Array(len=arg4.length, data=arg4[all])
                    require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
                    emit 0xecef8dcc: sha3(109299962373989, arg2), msg.sender, uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 2].field_0) - uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 3].field_0)
                else:
                    uint8(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 1].field_0) = 1
                    stor3[arg1] = arg2
                    require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) - 1 < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
                    uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 5].field_0) = 0
                    if 31 < stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 5].length:
                        idx = 0
                        while stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 5].length + 31 / 32 > idx:
                            uint256(stor[idx + sha3((9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) - 5)].field_0) = 0
                            idx = idx + 1
                            continue 
                    emit LogRequirementChange(arg2);
            else:
                require uint256(stor[arg1 + 8][address(msg.sender)].field_0) > 0
                if not arg2:
                    emit 0x912c2fba: 'Cant reduce to 0'
                    return 0
                if stor1[arg1] - 1 < arg2:
                    emit 0x912c2fba: Array(len=27, data='Making requirement too high')
                    return 0
                uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)++
                if not uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) <= uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) + 1:
                    mem[0] = sha3(sha3(109299962373989, arg2), arg1 + 9)
                    idx = (9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + 9
                    while sha3(sha3(sha3(109299962373989, arg2), arg1 + 9)) + (9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) > idx + sha3(mem[0]):
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
                require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
                uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 7].field_0) = stor2[arg1]
                require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
                uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))][uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)].field_0) = block.timestamp / 24 * 3600
                uint256(stor[arg1 + 7][block.timestamp / 24 * 3600].field_0)++
                if not uint256(stor[arg1 + 7][block.timestamp / 24 * 3600].field_0) <= uint256(stor[arg1 + 7][block.timestamp / 24 * 3600].field_0) + 1:
                    idx = uint256(stor[arg1 + 7][block.timestamp / 24 * 3600].field_0) + 1
                    while uint256(stor[arg1 + 7][block.timestamp / 24 * 3600].field_0) > idx:
                        uint256(stor[arg1 + 7][block.timestamp / 24 * 3600][idx].field_0) = 0
                        idx = idx + 1
                        continue 
                uint256(stor[arg1 + 7][block.timestamp / 24 * 3600][uint256(stor[arg1 + 7][block.timestamp / 24 * 3600].field_0)].field_0) = sha3(109299962373989, arg2)
                require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
                uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5].field_0)++
                if not uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5].field_0) <= uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5].field_0) + 1:
                    idx = uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5].field_0) + 1
                    while uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5].field_0) > idx:
                        uint256(stor[idx + sha3((9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5)].field_0) = 0
                        idx = idx + 1
                        continue 
                address(stor[uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5].field_0) + sha3((9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5)].field_0) = msg.sender
                Mask(96, 0, stor[uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5].field_0) + sha3((9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 5)].field_160) = 0
                require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
                uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 6].field_0)++
                require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
                require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
                require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
                if uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 6].field_0) != uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 7].field_0):
                    require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
                    if not stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 4].length:
                        uint256(stor[sha3((9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 4)][].field_0) = Array(len=arg4.length, data=arg4[all])
                    require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
                    emit 0xecef8dcc: sha3(109299962373989, arg2), msg.sender, uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 7].field_0) - uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 6].field_0)
                else:
                    uint8(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 8].field_0) = 1
                    stor3[arg1] = arg2
                    require uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0) < uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)
                    uint256(stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 4].field_0) = 0
                    if 31 < stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 4].length:
                        idx = 0
                        while stor[(9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 4].length + 31 / 32 > idx:
                            uint256(stor[idx + sha3((9 * uint256(stor[arg1 + 9][('map', 109299962373989, ('param', 'arg2'))].field_0)) + ('map', ('map', 109299962373989, ('param', 'arg2')), ('add', 9, ('param', 'arg1'))) + 4)].field_0) = 0
                            idx = idx + 1
                            continue 
                    emit LogRequirementChange(arg2);
    return 1, sha3(109299962373989, arg2)
}

function sub_2718ad16(?) payable {
    if this.address == msg.sender:
        require uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0) - 1 < uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)
        require uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0) - 1 < uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)
        require uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0) - 1 < uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)
        if uint256(stor[(9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) - 3].field_0) != uint256(stor[(9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) - 2].field_0):
            require uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0) - 1 < uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)
            if not stor[(9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) - 5].length:
                uint256(stor[sha3((9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) - 5)][].field_0) = Array(len=arg5.length, data=arg5[all])
            require uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0) - 1 < uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)
            emit 0xecef8dcc: sha3(7163082334141762913, arg2, arg3), msg.sender, uint256(stor[(9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) - 2].field_0) - uint256(stor[(9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) - 3].field_0)
        else:
            uint8(stor[(9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) - 1].field_0) = 1
            uint256(stor[arg1 + 6][address(arg2)].field_0) = arg3
            require uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0) - 1 < uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)
            uint256(stor[(9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) - 5].field_0) = 0
            if 31 < stor[(9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) - 5].length:
                idx = 0
                while stor[(9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) - 5].length + 31 / 32 > idx:
                    uint256(stor[idx + sha3((9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) - 5)].field_0) = 0
                    idx = idx + 1
                    continue 
            emit LogThresholdChange(address(arg2), arg3);
    else:
        if not arg4:
            require ext_code.size(0xdd9dbcc279b0e034ce74db24015ebf2606d88539)
            delegate 0xdd9dbcc279b0e034ce74db24015ebf2606d88539.0xcbf279f7 with:
                 gas gas_remaining - 710 wei
                args arg1, sha3(7163082334141762913, arg2, arg3)
            require delegate.return_code
            return bool(delegate.return_data[0]), sha3(7163082334141762913, arg2, arg3)
        if not uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0):
            require uint256(stor[arg1 + 8][address(msg.sender)].field_0) > 0
            uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)++
            if not uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0) <= uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0) + 1:
                mem[0] = sha3(sha3(7163082334141762913, arg2, arg3), arg1 + 9)
                idx = (9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + 9
                while sha3(sha3(sha3(7163082334141762913, arg2, arg3), arg1 + 9)) + (9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) > idx + sha3(mem[0]):
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
            require uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0) < uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)
            uint256(stor[(9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) + 7].field_0) = stor2[arg1]
            require uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0) < uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)
            uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)][uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)].field_0) = block.timestamp / 24 * 3600
            uint256(stor[arg1 + 7][block.timestamp / 24 * 3600].field_0)++
            if not uint256(stor[arg1 + 7][block.timestamp / 24 * 3600].field_0) <= uint256(stor[arg1 + 7][block.timestamp / 24 * 3600].field_0) + 1:
                idx = uint256(stor[arg1 + 7][block.timestamp / 24 * 3600].field_0) + 1
                while uint256(stor[arg1 + 7][block.timestamp / 24 * 3600].field_0) > idx:
                    uint256(stor[arg1 + 7][block.timestamp / 24 * 3600][idx].field_0) = 0
                    idx = idx + 1
                    continue 
            uint256(stor[arg1 + 7][block.timestamp / 24 * 3600][uint256(stor[arg1 + 7][block.timestamp / 24 * 3600].field_0)].field_0) = sha3(7163082334141762913, arg2, arg3)
            require uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0) < uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)
            uint256(stor[(9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) + 5].field_0)++
            if not uint256(stor[(9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) + 5].field_0) <= uint256(stor[(9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) + 5].field_0) + 1:
                idx = uint256(stor[(9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) + 5].field_0) + 1
                while uint256(stor[(9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) + 5].field_0) > idx:
                    uint256(stor[idx + sha3((9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) + 5)].field_0) = 0
                    idx = idx + 1
                    continue 
            address(stor[uint256(stor[(9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) + 5].field_0) + sha3((9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) + 5)].field_0) = msg.sender
            Mask(96, 0, stor[uint256(stor[(9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) + 5].field_0) + sha3((9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) + 5)].field_160) = 0
            require uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0) < uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)
            uint256(stor[(9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) + 6].field_0)++
            require uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0) < uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)
            require uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0) < uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)
            require uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0) < uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)
            if uint256(stor[(9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) + 6].field_0) != uint256(stor[(9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) + 7].field_0):
                require uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0) < uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)
                if not stor[(9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) + 4].length:
                    uint256(stor[sha3((9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) + 4)][].field_0) = Array(len=arg5.length, data=arg5[all])
                require uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0) < uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)
                emit 0xecef8dcc: sha3(7163082334141762913, arg2, arg3), msg.sender, uint256(stor[(9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) + 7].field_0) - uint256(stor[(9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) + 6].field_0)
            else:
                uint8(stor[(9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) + 8].field_0) = 1
                uint256(stor[arg1 + 6][address(arg2)].field_0) = arg3
                require uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0) < uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)
                uint256(stor[(9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) + 4].field_0) = 0
                if 31 < stor[(9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) + 4].length:
                    idx = 0
                    while stor[(9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) + 4].length + 31 / 32 > idx:
                        uint256(stor[idx + sha3((9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) + 4)].field_0) = 0
                        idx = idx + 1
                        continue 
                emit LogThresholdChange(address(arg2), arg3);
        else:
            require uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0) - 1 < uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)
            if not uint8(stor[(9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) - 1].field_0):
                require ext_code.size(0xdd9dbcc279b0e034ce74db24015ebf2606d88539)
                delegate 0xdd9dbcc279b0e034ce74db24015ebf2606d88539.0x9ae196ff with:
                     gas gas_remaining - 710 wei
                    args arg1, sha3(7163082334141762913, arg2, arg3), uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0) - 1
                require delegate.return_code
                if not delegate.return_data[0]:
                    return 0, sha3(7163082334141762913, arg2, arg3)
                require uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0) - 1 < uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)
                uint256(stor[(9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) - 4].field_0)++
                if not uint256(stor[(9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) - 4].field_0) <= uint256(stor[(9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) - 4].field_0) + 1:
                    idx = uint256(stor[(9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) - 4].field_0) + 1
                    while uint256(stor[(9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) - 4].field_0) > idx:
                        uint256(stor[idx + sha3((9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) - 4)].field_0) = 0
                        idx = idx + 1
                        continue 
                address(stor[uint256(stor[(9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) - 4].field_0) + sha3((9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) - 4)].field_0) = msg.sender
                Mask(96, 0, stor[uint256(stor[(9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) - 4].field_0) + sha3((9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) - 4)].field_160) = 0
                require uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0) - 1 < uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)
                uint256(stor[(9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) - 3].field_0)++
                require uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0) - 1 < uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)
                require uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0) - 1 < uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)
                require uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0) - 1 < uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)
                if uint256(stor[(9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) - 3].field_0) != uint256(stor[(9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) - 2].field_0):
                    require uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0) - 1 < uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)
                    if not stor[(9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) - 5].length:
                        uint256(stor[sha3((9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) - 5)][].field_0) = Array(len=arg5.length, data=arg5[all])
                    require uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0) - 1 < uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)
                    emit 0xecef8dcc: sha3(7163082334141762913, arg2, arg3), msg.sender, uint256(stor[(9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) - 2].field_0) - uint256(stor[(9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) - 3].field_0)
                else:
                    uint8(stor[(9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) - 1].field_0) = 1
                    uint256(stor[arg1 + 6][address(arg2)].field_0) = arg3
                    require uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0) - 1 < uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)
                    uint256(stor[(9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) - 5].field_0) = 0
                    if 31 < stor[(9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) - 5].length:
                        idx = 0
                        while stor[(9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) - 5].length + 31 / 32 > idx:
                            uint256(stor[idx + sha3((9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) - 5)].field_0) = 0
                            idx = idx + 1
                            continue 
                    emit LogThresholdChange(address(arg2), arg3);
            else:
                require uint256(stor[arg1 + 8][address(msg.sender)].field_0) > 0
                uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)++
                if not uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0) <= uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0) + 1:
                    mem[0] = sha3(sha3(7163082334141762913, arg2, arg3), arg1 + 9)
                    idx = (9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + 9
                    while sha3(sha3(sha3(7163082334141762913, arg2, arg3), arg1 + 9)) + (9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) > idx + sha3(mem[0]):
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
                require uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0) < uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)
                uint256(stor[(9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) + 7].field_0) = stor2[arg1]
                require uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0) < uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)
                uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)][uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)].field_0) = block.timestamp / 24 * 3600
                uint256(stor[arg1 + 7][block.timestamp / 24 * 3600].field_0)++
                if not uint256(stor[arg1 + 7][block.timestamp / 24 * 3600].field_0) <= uint256(stor[arg1 + 7][block.timestamp / 24 * 3600].field_0) + 1:
                    idx = uint256(stor[arg1 + 7][block.timestamp / 24 * 3600].field_0) + 1
                    while uint256(stor[arg1 + 7][block.timestamp / 24 * 3600].field_0) > idx:
                        uint256(stor[arg1 + 7][block.timestamp / 24 * 3600][idx].field_0) = 0
                        idx = idx + 1
                        continue 
                uint256(stor[arg1 + 7][block.timestamp / 24 * 3600][uint256(stor[arg1 + 7][block.timestamp / 24 * 3600].field_0)].field_0) = sha3(7163082334141762913, arg2, arg3)
                require uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0) < uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)
                uint256(stor[(9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) + 5].field_0)++
                if not uint256(stor[(9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) + 5].field_0) <= uint256(stor[(9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) + 5].field_0) + 1:
                    idx = uint256(stor[(9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) + 5].field_0) + 1
                    while uint256(stor[(9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) + 5].field_0) > idx:
                        uint256(stor[idx + sha3((9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) + 5)].field_0) = 0
                        idx = idx + 1
                        continue 
                address(stor[uint256(stor[(9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) + 5].field_0) + sha3((9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) + 5)].field_0) = msg.sender
                Mask(96, 0, stor[uint256(stor[(9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) + 5].field_0) + sha3((9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) + 5)].field_160) = 0
                require uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0) < uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)
                uint256(stor[(9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) + 6].field_0)++
                require uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0) < uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)
                require uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0) < uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)
                require uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0) < uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)
                if uint256(stor[(9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) + 6].field_0) != uint256(stor[(9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) + 7].field_0):
                    require uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0) < uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)
                    if not stor[(9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) + 4].length:
                        uint256(stor[sha3((9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) + 4)][].field_0) = Array(len=arg5.length, data=arg5[all])
                    require uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0) < uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)
                    emit 0xecef8dcc: sha3(7163082334141762913, arg2, arg3), msg.sender, uint256(stor[(9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) + 7].field_0) - uint256(stor[(9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) + 6].field_0)
                else:
                    uint8(stor[(9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) + 8].field_0) = 1
                    uint256(stor[arg1 + 6][address(arg2)].field_0) = arg3
                    require uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0) < uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)
                    uint256(stor[(9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) + 4].field_0) = 0
                    if 31 < stor[(9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) + 4].length:
                        idx = 0
                        while stor[(9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) + 4].length + 31 / 32 > idx:
                            uint256(stor[idx + sha3((9 * uint256(stor[arg1 + 9][sha3(7163082334141762913, arg2, arg3)].field_0)) + ('map', ('sha3', 7163082334141762913, ('param', 'arg2'), ('param', 'arg3')), ('add', 9, ('param', 'arg1'))) + 4)].field_0) = 0
                            idx = idx + 1
                            continue 
                    emit LogThresholdChange(address(arg2), arg3);
    return 1, sha3(7163082334141762913, arg2, arg3)
}



}

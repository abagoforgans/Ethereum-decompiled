contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor1;
array of address sub_d1886847;
array of struct battleDetails;
array of struct stor4;

function totalSupply() {
    return battleDetails.length
}

function sub_d1886847(?) {
    require arg1 < sub_d1886847.length
    return sub_d1886847[arg1]
}

function getBattleDetails(uint256 arg1) {
    require arg1 < battleDetails.length
    return battleDetails[arg1].field_0, 
           battleDetails[arg1].field_256,
           battleDetails[arg1].field_512,
           battleDetails[arg1].field_768
}

function _fallback() payable {
    revert
}

function sub_684ba202(?) {
    stor1[address(msg.sender)] = 1
}

function sub_81bbbf54(?) {
    if arg1 == msg.sender:
        stor1[address(arg1)] = 0
}

function sub_165e079a(?) {
    hash = sha256hash(block.timestamp, block.number - 1) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1
    return ((hash % arg1) + 1)
}

function dataCalc(uint256 arg1, uint256 arg2) {
    if not arg1:
        require arg1 + arg2
        if 0 / arg1 + arg2 > 90:
            return 90
        if 0 / arg1 + arg2 >= 10:
            return (0 / arg1 + arg2)
    else:
        require arg1
        require 100 * arg1 / arg1 == 100
        require arg1 + arg2
        if 100 * arg1 / arg1 + arg2 > 90:
            return 90
        if 100 * arg1 / arg1 + arg2 >= 10:
            return (100 * arg1 / arg1 + arg2)
    return 10
}

function sub_3f07a052(?) {
    require stor1[address(msg.sender)]
    if not arg2 + arg4:
        require arg2 + arg4 + arg6 + arg8
        hash = sha256hash(block.timestamp, block.number - 1) 
        if not sha256hash.result:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 0 / arg2 + arg4 + arg6 + arg8 > 90:
            if (hash % 100) + 1 > 90:
                stor4.length++
                stor4[stor4.length].field_0 = arg1
                stor4[stor4.length].field_256 = arg3
                stor4[stor4.length].field_512 = arg5
                stor4[stor4.length].field_768 = arg7
                stor4[stor4.length].field_1024 = 1
                stor4[stor4.length].field_1280 = msg.sender
                stor1[address(msg.sender)] = 0
                return 1
        else:
            if 0 / arg2 + arg4 + arg6 + arg8 >= 10:
                if (hash % 100) + 1 > 0 / arg2 + arg4 + arg6 + arg8:
                    stor4.length++
                    stor4[stor4.length].field_0 = arg1
                    stor4[stor4.length].field_256 = arg3
                    stor4[stor4.length].field_512 = arg5
                    stor4[stor4.length].field_768 = arg7
                    stor4[stor4.length].field_1024 = 1
                    stor4[stor4.length].field_1280 = msg.sender
                    stor1[address(msg.sender)] = 0
                    return 1
            else:
                if (hash % 100) + 1 > 10:
                    stor4.length++
                    stor4[stor4.length].field_0 = arg1
                    stor4[stor4.length].field_256 = arg3
                    stor4[stor4.length].field_512 = arg5
                    stor4[stor4.length].field_768 = arg7
                    stor4[stor4.length].field_1024 = 1
                    stor4[stor4.length].field_1280 = msg.sender
                    stor1[address(msg.sender)] = 0
                    return 1
    else:
        require arg2 + arg4
        require (100 * arg2) + (100 * arg4) / arg2 + arg4 == 100
        require arg2 + arg4 + arg6 + arg8
        hash = sha256hash(block.timestamp, block.number - 1) 
        if not sha256hash.result:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (100 * arg2) + (100 * arg4) / arg2 + arg4 + arg6 + arg8 > 90:
            if (hash % 100) + 1 > 90:
                stor4.length++
                stor4[stor4.length].field_0 = arg1
                stor4[stor4.length].field_256 = arg3
                stor4[stor4.length].field_512 = arg5
                stor4[stor4.length].field_768 = arg7
                stor4[stor4.length].field_1024 = 1
                stor4[stor4.length].field_1280 = msg.sender
                stor1[address(msg.sender)] = 0
                return 1
        else:
            if (100 * arg2) + (100 * arg4) / arg2 + arg4 + arg6 + arg8 >= 10:
                if (hash % 100) + 1 > (100 * arg2) + (100 * arg4) / arg2 + arg4 + arg6 + arg8:
                    stor4.length++
                    stor4[stor4.length].field_0 = arg1
                    stor4[stor4.length].field_256 = arg3
                    stor4[stor4.length].field_512 = arg5
                    stor4[stor4.length].field_768 = arg7
                    stor4[stor4.length].field_1024 = 1
                    stor4[stor4.length].field_1280 = msg.sender
                    stor1[address(msg.sender)] = 0
                    return 1
            else:
                if (hash % 100) + 1 > 10:
                    stor4.length++
                    stor4[stor4.length].field_0 = arg1
                    stor4[stor4.length].field_256 = arg3
                    stor4[stor4.length].field_512 = arg5
                    stor4[stor4.length].field_768 = arg7
                    stor4[stor4.length].field_1024 = 1
                    stor4[stor4.length].field_1280 = msg.sender
                    stor1[address(msg.sender)] = 0
                    return 1
    sub_d1886847.length++
    sub_d1886847[sub_d1886847.length] = msg.sender
    stor4.length++
    stor4[stor4.length].field_0 = arg1
    stor4[stor4.length].field_256 = arg3
    stor4[stor4.length].field_512 = arg5
    stor4[stor4.length].field_768 = arg7
    stor4[stor4.length].field_1024 = 0
    stor4[stor4.length].field_1280 = msg.sender
    stor1[address(msg.sender)] = 0
    return 0
}

function sub_0268959b(?) {
    require stor1[address(msg.sender)]
    if not arg2:
        require arg2 + arg4 >= arg2
        if not arg2 + arg4:
            require arg2 + arg4 + 5000
            hash = sha256hash(block.timestamp, block.number - 1) 
            if not sha256hash.result:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 / arg2 + arg4 + 5000 > 90:
                if (hash % 100) + 1 > 90:
                    battleDetails.length++
                    battleDetails[battleDetails.length].field_0 = arg1
                    battleDetails[battleDetails.length].field_256 = arg3
                    battleDetails[battleDetails.length].field_512 = 1
                    battleDetails[battleDetails.length].field_768 = msg.sender
                    stor1[address(msg.sender)] = 0
                    return 1
            else:
                if 0 / arg2 + arg4 + 5000 >= 10:
                    if (hash % 100) + 1 > 0 / arg2 + arg4 + 5000:
                        battleDetails.length++
                        battleDetails[battleDetails.length].field_0 = arg1
                        battleDetails[battleDetails.length].field_256 = arg3
                        battleDetails[battleDetails.length].field_512 = 1
                        battleDetails[battleDetails.length].field_768 = msg.sender
                        stor1[address(msg.sender)] = 0
                        return 1
                else:
                    if (hash % 100) + 1 > 10:
                        battleDetails.length++
                        battleDetails[battleDetails.length].field_0 = arg1
                        battleDetails[battleDetails.length].field_256 = arg3
                        battleDetails[battleDetails.length].field_512 = 1
                        battleDetails[battleDetails.length].field_768 = msg.sender
                        stor1[address(msg.sender)] = 0
                        return 1
        else:
            require arg2 + arg4
            require (100 * arg2) + (100 * arg4) / arg2 + arg4 == 100
            require arg2 + arg4 + 5000
            hash = sha256hash(block.timestamp, block.number - 1) 
            if not sha256hash.result:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (100 * arg2) + (100 * arg4) / arg2 + arg4 + 5000 > 90:
                if (hash % 100) + 1 > 90:
                    battleDetails.length++
                    battleDetails[battleDetails.length].field_0 = arg1
                    battleDetails[battleDetails.length].field_256 = arg3
                    battleDetails[battleDetails.length].field_512 = 1
                    battleDetails[battleDetails.length].field_768 = msg.sender
                    stor1[address(msg.sender)] = 0
                    return 1
            else:
                if (100 * arg2) + (100 * arg4) / arg2 + arg4 + 5000 >= 10:
                    if (hash % 100) + 1 > (100 * arg2) + (100 * arg4) / arg2 + arg4 + 5000:
                        battleDetails.length++
                        battleDetails[battleDetails.length].field_0 = arg1
                        battleDetails[battleDetails.length].field_256 = arg3
                        battleDetails[battleDetails.length].field_512 = 1
                        battleDetails[battleDetails.length].field_768 = msg.sender
                        stor1[address(msg.sender)] = 0
                        return 1
                else:
                    if (hash % 100) + 1 > 10:
                        battleDetails.length++
                        battleDetails[battleDetails.length].field_0 = arg1
                        battleDetails[battleDetails.length].field_256 = arg3
                        battleDetails[battleDetails.length].field_512 = 1
                        battleDetails[battleDetails.length].field_768 = msg.sender
                        stor1[address(msg.sender)] = 0
                        return 1
    else:
        require arg2
        require 2 * arg2 / arg2 == 2
        if 2 * arg2 <= 5000:
            require arg2 + arg4 >= arg2
            if not arg2 + arg4:
                require arg2 + arg4 + 5000
                hash = sha256hash(block.timestamp, block.number - 1) 
                if not sha256hash.result:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 / arg2 + arg4 + 5000 > 90:
                    if (hash % 100) + 1 > 90:
                        battleDetails.length++
                        battleDetails[battleDetails.length].field_0 = arg1
                        battleDetails[battleDetails.length].field_256 = arg3
                        battleDetails[battleDetails.length].field_512 = 1
                        battleDetails[battleDetails.length].field_768 = msg.sender
                        stor1[address(msg.sender)] = 0
                        return 1
                else:
                    if 0 / arg2 + arg4 + 5000 >= 10:
                        if (hash % 100) + 1 > 0 / arg2 + arg4 + 5000:
                            battleDetails.length++
                            battleDetails[battleDetails.length].field_0 = arg1
                            battleDetails[battleDetails.length].field_256 = arg3
                            battleDetails[battleDetails.length].field_512 = 1
                            battleDetails[battleDetails.length].field_768 = msg.sender
                            stor1[address(msg.sender)] = 0
                            return 1
                    else:
                        if (hash % 100) + 1 > 10:
                            battleDetails.length++
                            battleDetails[battleDetails.length].field_0 = arg1
                            battleDetails[battleDetails.length].field_256 = arg3
                            battleDetails[battleDetails.length].field_512 = 1
                            battleDetails[battleDetails.length].field_768 = msg.sender
                            stor1[address(msg.sender)] = 0
                            return 1
            else:
                require arg2 + arg4
                require (100 * arg2) + (100 * arg4) / arg2 + arg4 == 100
                require arg2 + arg4 + 5000
                hash = sha256hash(block.timestamp, block.number - 1) 
                if not sha256hash.result:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (100 * arg2) + (100 * arg4) / arg2 + arg4 + 5000 > 90:
                    if (hash % 100) + 1 > 90:
                        battleDetails.length++
                        battleDetails[battleDetails.length].field_0 = arg1
                        battleDetails[battleDetails.length].field_256 = arg3
                        battleDetails[battleDetails.length].field_512 = 1
                        battleDetails[battleDetails.length].field_768 = msg.sender
                        stor1[address(msg.sender)] = 0
                        return 1
                else:
                    if (100 * arg2) + (100 * arg4) / arg2 + arg4 + 5000 >= 10:
                        if (hash % 100) + 1 > (100 * arg2) + (100 * arg4) / arg2 + arg4 + 5000:
                            battleDetails.length++
                            battleDetails[battleDetails.length].field_0 = arg1
                            battleDetails[battleDetails.length].field_256 = arg3
                            battleDetails[battleDetails.length].field_512 = 1
                            battleDetails[battleDetails.length].field_768 = msg.sender
                            stor1[address(msg.sender)] = 0
                            return 1
                    else:
                        if (hash % 100) + 1 > 10:
                            battleDetails.length++
                            battleDetails[battleDetails.length].field_0 = arg1
                            battleDetails[battleDetails.length].field_256 = arg3
                            battleDetails[battleDetails.length].field_512 = 1
                            battleDetails[battleDetails.length].field_768 = msg.sender
                            stor1[address(msg.sender)] = 0
                            return 1
        else:
            if not arg2:
                require arg2 + arg4 >= arg2
                require arg2 + arg4
                if not arg2 + arg4:
                    hash = sha256hash(block.timestamp, block.number - 1) 
                    if not sha256hash.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 / arg2 + arg4 > 90:
                        if (hash % 100) + 1 > 90:
                            battleDetails.length++
                            battleDetails[battleDetails.length].field_0 = arg1
                            battleDetails[battleDetails.length].field_256 = arg3
                            battleDetails[battleDetails.length].field_512 = 1
                            battleDetails[battleDetails.length].field_768 = msg.sender
                            stor1[address(msg.sender)] = 0
                            return 1
                    else:
                        if 0 / arg2 + arg4 >= 10:
                            if (hash % 100) + 1 > 0 / arg2 + arg4:
                                battleDetails.length++
                                battleDetails[battleDetails.length].field_0 = arg1
                                battleDetails[battleDetails.length].field_256 = arg3
                                battleDetails[battleDetails.length].field_512 = 1
                                battleDetails[battleDetails.length].field_768 = msg.sender
                                stor1[address(msg.sender)] = 0
                                return 1
                        else:
                            if (hash % 100) + 1 > 10:
                                battleDetails.length++
                                battleDetails[battleDetails.length].field_0 = arg1
                                battleDetails[battleDetails.length].field_256 = arg3
                                battleDetails[battleDetails.length].field_512 = 1
                                battleDetails[battleDetails.length].field_768 = msg.sender
                                stor1[address(msg.sender)] = 0
                                return 1
                else:
                    require (100 * arg2) + (100 * arg4) / arg2 + arg4 == 100
                    require arg2 + arg4
                    hash = sha256hash(block.timestamp, block.number - 1) 
                    if not sha256hash.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (100 * arg2) + (100 * arg4) / arg2 + arg4 > 90:
                        if (hash % 100) + 1 > 90:
                            battleDetails.length++
                            battleDetails[battleDetails.length].field_0 = arg1
                            battleDetails[battleDetails.length].field_256 = arg3
                            battleDetails[battleDetails.length].field_512 = 1
                            battleDetails[battleDetails.length].field_768 = msg.sender
                            stor1[address(msg.sender)] = 0
                            return 1
                    else:
                        if (100 * arg2) + (100 * arg4) / arg2 + arg4 >= 10:
                            if (hash % 100) + 1 > (100 * arg2) + (100 * arg4) / arg2 + arg4:
                                battleDetails.length++
                                battleDetails[battleDetails.length].field_0 = arg1
                                battleDetails[battleDetails.length].field_256 = arg3
                                battleDetails[battleDetails.length].field_512 = 1
                                battleDetails[battleDetails.length].field_768 = msg.sender
                                stor1[address(msg.sender)] = 0
                                return 1
                        else:
                            if (hash % 100) + 1 > 10:
                                battleDetails.length++
                                battleDetails[battleDetails.length].field_0 = arg1
                                battleDetails[battleDetails.length].field_256 = arg3
                                battleDetails[battleDetails.length].field_512 = 1
                                battleDetails[battleDetails.length].field_768 = msg.sender
                                stor1[address(msg.sender)] = 0
                                return 1
            else:
                require arg2
                require 2 * arg2 / arg2 == 2
                require arg2 + arg4 >= arg2
                if not arg2 + arg4:
                    require (4 * arg2) + arg4
                    hash = sha256hash(block.timestamp, block.number - 1) 
                    if not sha256hash.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 / (4 * arg2) + arg4 > 90:
                        if (hash % 100) + 1 > 90:
                            battleDetails.length++
                            battleDetails[battleDetails.length].field_0 = arg1
                            battleDetails[battleDetails.length].field_256 = arg3
                            battleDetails[battleDetails.length].field_512 = 1
                            battleDetails[battleDetails.length].field_768 = msg.sender
                            stor1[address(msg.sender)] = 0
                            return 1
                    else:
                        if 0 / (4 * arg2) + arg4 >= 10:
                            if (hash % 100) + 1 > 0 / (4 * arg2) + arg4:
                                battleDetails.length++
                                battleDetails[battleDetails.length].field_0 = arg1
                                battleDetails[battleDetails.length].field_256 = arg3
                                battleDetails[battleDetails.length].field_512 = 1
                                battleDetails[battleDetails.length].field_768 = msg.sender
                                stor1[address(msg.sender)] = 0
                                return 1
                        else:
                            if (hash % 100) + 1 > 10:
                                battleDetails.length++
                                battleDetails[battleDetails.length].field_0 = arg1
                                battleDetails[battleDetails.length].field_256 = arg3
                                battleDetails[battleDetails.length].field_512 = 1
                                battleDetails[battleDetails.length].field_768 = msg.sender
                                stor1[address(msg.sender)] = 0
                                return 1
                else:
                    require arg2 + arg4
                    require (100 * arg2) + (100 * arg4) / arg2 + arg4 == 100
                    require (4 * arg2) + arg4
                    hash = sha256hash(block.timestamp, block.number - 1) 
                    if not sha256hash.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (100 * arg2) + (100 * arg4) / (4 * arg2) + arg4 > 90:
                        if (hash % 100) + 1 > 90:
                            battleDetails.length++
                            battleDetails[battleDetails.length].field_0 = arg1
                            battleDetails[battleDetails.length].field_256 = arg3
                            battleDetails[battleDetails.length].field_512 = 1
                            battleDetails[battleDetails.length].field_768 = msg.sender
                            stor1[address(msg.sender)] = 0
                            return 1
                    else:
                        if (100 * arg2) + (100 * arg4) / (4 * arg2) + arg4 >= 10:
                            if (hash % 100) + 1 > (100 * arg2) + (100 * arg4) / (4 * arg2) + arg4:
                                battleDetails.length++
                                battleDetails[battleDetails.length].field_0 = arg1
                                battleDetails[battleDetails.length].field_256 = arg3
                                battleDetails[battleDetails.length].field_512 = 1
                                battleDetails[battleDetails.length].field_768 = msg.sender
                                stor1[address(msg.sender)] = 0
                                return 1
                        else:
                            if (hash % 100) + 1 > 10:
                                battleDetails.length++
                                battleDetails[battleDetails.length].field_0 = arg1
                                battleDetails[battleDetails.length].field_256 = arg3
                                battleDetails[battleDetails.length].field_512 = 1
                                battleDetails[battleDetails.length].field_768 = msg.sender
                                stor1[address(msg.sender)] = 0
                                return 1
    sub_d1886847.length++
    sub_d1886847[sub_d1886847.length] = msg.sender
    battleDetails.length++
    battleDetails[battleDetails.length].field_0 = arg1
    battleDetails[battleDetails.length].field_256 = arg3
    battleDetails[battleDetails.length].field_512 = 0
    battleDetails[battleDetails.length].field_768 = msg.sender
    stor1[address(msg.sender)] = 0
    return 0
}



}

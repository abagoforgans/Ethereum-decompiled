contract main {


// =======================  Init code  ======================


mapping of uint8 stor5;

function _fallback() {
    stor5[code.data[3751 len 20]] = 1
    require not stor5[address(code.data[3771 len 32])]
    stor5[address(code.data[3771 len 32])] = 1
    require not stor5[address(code.data[3803 len 32])]
    stor5[address(code.data[3803 len 32])] = 1
    require not stor5[address(code.data[3835 len 32])]
    stor5[address(code.data[3835 len 32])] = 1
    return code.data[349 len 3390]
}



// =====================  Runtime code  =====================


const required = 3


address stor0;
uint256 stor0;
address stor1;
uint256 stor1;
address stor2;
uint256 stor2;
uint256 stor3;
uint256 stor4;
mapping of uint8 stor5;
array of address stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
address stor10;
address stor11;

function isAdministrator(address arg1) {
    return bool(stor5[address(arg1)])
}

function _fallback() payable {
    if msg.value > 0:
        emit Deposit(msg.sender, msg.value);
}

function abortUpdate() {
    require stor5[address(msg.sender)]
    stor6.length = 0
    stor7 = 0
    stor8 = 0
    stor9 = 0
    stor10 = 0
    stor11 = 0
}

function abortTransaction() {
    require stor5[address(msg.sender)]
    uint256(stor0) = 0
    uint256(stor1) = 0
    uint256(stor2) = 0
    stor3 = 0
    stor4 = 0
}

function updateAdministratorKey(address arg1, address arg2) {
    require stor5[address(msg.sender)]
    require stor5[address(arg1)]
    require arg2
    require not stor5[address(arg2)]
    require arg1 != msg.sender
    if not stor9:
        require stor9 < 3
        stor6[stor9] = msg.sender
        stor10 = arg1
        stor11 = arg2
        require stor9 + 1 >= stor9
        stor9++
        require stor9 + 1 <= 3
        emit UpdateConfirmed((-stor9 + 2), msg.sender, arg2);
    else:
        if stor10 != arg1:
            emit 0xe537585e: Array(len=24, data='Administrator key Update'), msg.sender
            stor6.length = 0
            stor7 = 0
            stor8 = 0
            stor9 = 0
            stor10 = 0
            stor11 = 0
        else:
            if stor11 != arg2:
                emit 0xe537585e: Array(len=24, data='Administrator key Update'), msg.sender
                stor6.length = 0
                stor7 = 0
                stor8 = 0
                stor9 = 0
                stor10 = 0
                stor11 = 0
            else:
                if msg.sender == stor6.length:
                    emit 0xe537585e: Array(len=14, data='Funds Transfer'), msg.sender
                    stor6.length = 0
                    stor7 = 0
                    stor8 = 0
                    stor9 = 0
                    stor10 = 0
                    stor11 = 0
                else:
                    require stor9 < 3
                    stor6[stor9] = msg.sender
                    require stor9 + 1 >= stor9
                    stor9++
                    emit UpdateConfirmed(0, msg.sender, arg2);
                    if 3 == stor9:
                        emit KeyReplaced(address(arg1), arg2);
                        stor6.length = 0
                        stor7 = 0
                        stor8 = 0
                        stor9 = 0
                        stor10 = 0
                        stor11 = 0
                        stor5[address(arg1)] = 0
                        stor5[arg2] = 1
}

function transfer(address arg1, uint256 arg2) {
    require stor5[address(msg.sender)]
    require arg1
    require arg2 > 0
    require eth.balance(this.address) >= arg2
    if not stor3:
        require stor3 < 3
        stor3 = msg.sender
        stor4 = arg2
        require stor3 + 1 >= stor3
        stor3++
        require stor3 + 1 <= 3
        emit TransferConfirmed(msg.sender, arg2, -stor3 + 2);
    else:
        if arg2 != stor4:
            emit 0xe537585e: Array(len=14, data='Funds Transfer'), msg.sender
            uint256(stor0) = 0
            uint256(stor1) = 0
            uint256(stor2) = 0
            stor3 = 0
            stor4 = 0
        else:
            if msg.sender == address(stor0):
                emit 0xe537585e: Array(len=14, data='Funds Transfer'), msg.sender
                uint256(stor0) = 0
                uint256(stor1) = 0
                uint256(stor2) = 0
                stor3 = 0
                stor4 = 0
            else:
                require stor3 < 3
                stor3 = msg.sender
                require stor3 + 1 >= stor3
                stor3++
                require stor3 + 1 <= 3
                if -stor3 + 2:
                    emit TransferConfirmed(msg.sender, arg2, -stor3 + 2);
                    if stor3 == 3:
                        call arg1 with:
                           value arg2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            emit Transfer(address(arg1), arg2, 0, address(stor0), address(stor1), address(stor2));
                        else:
                            emit Transfer(address(arg1), arg2, 1, address(stor0), address(stor1), address(stor2));
                        uint256(stor0) = 0
                        uint256(stor1) = 0
                        uint256(stor2) = 0
                        stor3 = 0
                        stor4 = 0
                else:
                    if msg.sender == address(stor1):
                        emit 0xe537585e: Array(len=14, data='Funds Transfer'), msg.sender
                        uint256(stor0) = 0
                        uint256(stor1) = 0
                        uint256(stor2) = 0
                        stor3 = 0
                        stor4 = 0
                    else:
                        emit TransferConfirmed(msg.sender, arg2, -stor3 + 2);
                        if stor3 == 3:
                            call arg1 with:
                               value arg2 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                emit Transfer(address(arg1), arg2, 0, address(stor0), address(stor1), address(stor2));
                            else:
                                emit Transfer(address(arg1), arg2, 1, address(stor0), address(stor1), address(stor2));
                            uint256(stor0) = 0
                            uint256(stor1) = 0
                            uint256(stor2) = 0
                            stor3 = 0
                            stor4 = 0
}



}

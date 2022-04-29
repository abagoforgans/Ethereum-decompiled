contract main {


// =======================  Init code  ======================


uint8 stor0;

function _fallback() payable {
    stor0 = 0
    require not msg.value
    return code.data[40 len 3536]
}



// =====================  Runtime code  =====================


const required = 3


uint8 stor0;
array of address stor1;
address stor2;
uint256 stor2;
address stor3;
uint256 stor3;
uint256 stor4;
uint256 stor5;
mapping of uint8 stor6;
array of address stor7;
address stor8;
uint256 stor8;
uint256 stor9;
uint256 stor10;
address stor11;
address stor12;
uint8 storA6F4;
uint8 stor4DC9;
uint8 stor5561;
uint8 storEC07;

function isAdministrator(address arg1) {
    return bool(stor6[address(arg1)])
}

function PreICO() {
    stor5561 = 1
    storEC07 = 1
    stor4DC9 = 1
    storA6F4 = 1
}

function _fallback() payable {
    if msg.value > 0:
        emit Deposit(msg.sender, msg.value);
}

function abortTransaction() {
    require stor6[address(msg.sender)]
    stor1.length = 0
    uint256(stor2) = 0
    uint256(stor3) = 0
    stor4 = 0
    stor5 = 0
    emit EventTransferWasReset()
}

function abortUpdate() {
    require stor6[address(msg.sender)]
    stor7.length = 0
    uint256(stor8) = 0
    stor9 = 0
    stor10 = 0
    stor11 = 0
    stor12 = 0
    emit EventUpdateWasReset()
}

function transfer(address arg1, uint256 arg2) {
    require stor6[address(msg.sender)]
    require not stor0
    stor0 = 1
    require arg1
    require arg2 > 0
    require eth.balance(this.address) >= arg2
    if not stor4:
        require stor4 < 3
        stor1[stor4] = msg.sender
        stor5 = arg2
        require stor4 + 1 >= stor4
        stor4++
        require stor4 + 1 <= 3
        emit TransferConfirmed(msg.sender, arg2, -stor4 + 2);
    else:
        if arg2 != stor5:
            emit Violated('Incorrect amount of wei passed', msg.sender);
            stor1.length = 0
            uint256(stor2) = 0
            uint256(stor3) = 0
            stor4 = 0
            stor5 = 0
            emit EventTransferWasReset()
        else:
            if stor1.length == msg.sender:
                emit Violated('Signer is spamming', msg.sender);
                stor1.length = 0
                uint256(stor2) = 0
                uint256(stor3) = 0
                stor4 = 0
                stor5 = 0
                emit EventTransferWasReset()
            else:
                require stor4 < 3
                stor1[stor4] = msg.sender
                require stor4 + 1 >= stor4
                stor4++
                require stor4 + 1 <= 3
                if -stor4 + 2:
                    emit TransferConfirmed(msg.sender, arg2, -stor4 + 2);
                    if 3 == stor4:
                        call arg1 with:
                           value arg2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            emit Transfer(address(arg1), arg2, 0, stor1.length, address(stor2), address(stor3));
                        else:
                            emit Transfer(address(arg1), arg2, 1, stor1.length, address(stor2), address(stor3));
                        stor1.length = 0
                        uint256(stor2) = 0
                        uint256(stor3) = 0
                        stor4 = 0
                        stor5 = 0
                        emit EventTransferWasReset()
                else:
                    if address(stor2) == msg.sender:
                        emit Violated('One of signers is spamming', msg.sender);
                        stor1.length = 0
                        uint256(stor2) = 0
                        uint256(stor3) = 0
                        stor4 = 0
                        stor5 = 0
                        emit EventTransferWasReset()
                    else:
                        emit TransferConfirmed(msg.sender, arg2, -stor4 + 2);
                        if 3 == stor4:
                            call arg1 with:
                               value arg2 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                emit Transfer(address(arg1), arg2, 0, stor1.length, address(stor2), address(stor3));
                            else:
                                emit Transfer(address(arg1), arg2, 1, stor1.length, address(stor2), address(stor3));
                            stor1.length = 0
                            uint256(stor2) = 0
                            uint256(stor3) = 0
                            stor4 = 0
                            stor5 = 0
                            emit EventTransferWasReset()
    stor0 = 0
}

function updateAdministratorKey(address arg1, address arg2) {
    require stor6[address(msg.sender)]
    require stor6[address(arg1)]
    require arg2
    require not stor6[address(arg2)]
    require arg1 != msg.sender
    if not stor10:
        require stor10 < 3
        stor7[stor10] = msg.sender
        stor11 = arg1
        stor12 = arg2
        require stor10 + 1 >= stor10
        stor10++
        require stor10 + 1 <= 3
        emit UpdateConfirmed((-stor10 + 2), msg.sender, arg2);
    else:
        if stor11 != arg1:
            emit Violated(Array(len=26, data='Old addresses do not match'), msg.sender);
            stor7.length = 0
            uint256(stor8) = 0
            stor9 = 0
            stor10 = 0
            stor11 = 0
            stor12 = 0
            emit EventUpdateWasReset()
        else:
            if stor12 != arg2:
                emit Violated(Array(len=26, data='New addresses do not match'), msg.sender);
                stor7.length = 0
                uint256(stor8) = 0
                stor9 = 0
                stor10 = 0
                stor11 = 0
                stor12 = 0
                emit EventUpdateWasReset()
            else:
                if stor7.length == msg.sender:
                    emit Violated(Array(len=18, data='Signer is spamming'), msg.sender);
                    stor7.length = 0
                    uint256(stor8) = 0
                    stor9 = 0
                    stor10 = 0
                    stor11 = 0
                    stor12 = 0
                    emit EventUpdateWasReset()
                else:
                    require stor10 < 3
                    stor7[stor10] = msg.sender
                    require stor10 + 1 >= stor10
                    stor10++
                    require stor10 + 1 <= 3
                    if -stor10 + 2:
                        emit UpdateConfirmed((-stor10 + 2), msg.sender, arg2);
                        if 3 == stor10:
                            emit KeyReplaced(address(arg1), arg2);
                            stor7.length = 0
                            uint256(stor8) = 0
                            stor9 = 0
                            stor10 = 0
                            stor11 = 0
                            stor12 = 0
                            emit EventUpdateWasReset()
                            stor6[address(arg1)] = 0
                            stor6[arg2] = 1
                    else:
                        if address(stor8) == msg.sender:
                            emit Violated(Array(len=26, data='One of signers is spamming'), msg.sender);
                            stor7.length = 0
                            uint256(stor8) = 0
                            stor9 = 0
                            stor10 = 0
                            stor11 = 0
                            stor12 = 0
                            emit EventUpdateWasReset()
                        else:
                            emit UpdateConfirmed((-stor10 + 2), msg.sender, arg2);
                            if 3 == stor10:
                                emit KeyReplaced(address(arg1), arg2);
                                stor7.length = 0
                                uint256(stor8) = 0
                                stor9 = 0
                                stor10 = 0
                                stor11 = 0
                                stor12 = 0
                                emit EventUpdateWasReset()
                                stor6[address(arg1)] = 0
                                stor6[arg2] = 1
}



}

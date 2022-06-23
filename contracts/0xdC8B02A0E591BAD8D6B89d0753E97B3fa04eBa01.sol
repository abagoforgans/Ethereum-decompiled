contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
address stor3;
address stor4;
address stor5;
address stor6;
address stor7;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[3682 len 20]
    stor2 = code.data[3714 len 20]
    stor3 = code.data[3746 len 20]
    stor4 = code.data[3778 len 20]
    stor5 = code.data[3810 len 20]
    stor6 = code.data[3842 len 20]
    stor7 = code.data[3874 len 20]
    return code.data[638 len 3032]
}



// =====================  Runtime code  =====================


address owner;
address sub_869f0511Address;
address sub_079dd4b7Address;
address debtRegistryAddress;
address debtTokenAddress;
address sub_6fa9d056Address;
address tokenRegistryAddress;
address tokenTransferProxyAddress;

function sub_079dd4b7(?) {
    return sub_079dd4b7Address
}

function tokenTransferProxy() {
    return tokenTransferProxyAddress
}

function debtRegistry() {
    return debtRegistryAddress
}

function sub_6fa9d056(?) {
    return sub_6fa9d056Address
}

function sub_869f0511(?) {
    return sub_869f0511Address
}

function owner() {
    return owner
}

function tokenRegistry() {
    return tokenRegistryAddress
}

function debtToken() {
    return debtTokenAddress
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_e2aa46bb(?) {
    require msg.sender == owner
    require arg1 <= 6
    if not arg1:
        require arg2
        require arg2 != sub_869f0511Address
        sub_869f0511Address = arg2
        require arg1 <= 6
        emit 0xea5852cb: arg1, sub_869f0511Address, arg2
    else:
        require arg1 <= 6
        if arg1 == 1:
            require arg2
            require arg2 != sub_079dd4b7Address
            sub_079dd4b7Address = arg2
            require arg1 <= 6
            emit 0xea5852cb: arg1, sub_079dd4b7Address, arg2
        else:
            require arg1 <= 6
            if arg1 == 2:
                require arg2
                require arg2 != debtRegistryAddress
                debtRegistryAddress = arg2
                require arg1 <= 6
                emit 0xea5852cb: arg1, debtRegistryAddress, arg2
            else:
                require arg1 <= 6
                if arg1 == 3:
                    require arg2
                    require arg2 != debtTokenAddress
                    debtTokenAddress = arg2
                    require arg1 <= 6
                    emit 0xea5852cb: arg1, debtTokenAddress, arg2
                else:
                    require arg1 <= 6
                    if arg1 == 4:
                        require arg2
                        require arg2 != sub_6fa9d056Address
                        sub_6fa9d056Address = arg2
                        require arg1 <= 6
                        emit 0xea5852cb: arg1, sub_6fa9d056Address, arg2
                    else:
                        require arg1 <= 6
                        if arg1 == 5:
                            require arg2
                            require arg2 != tokenRegistryAddress
                            tokenRegistryAddress = arg2
                            require arg1 <= 6
                            emit 0xea5852cb: arg1, tokenRegistryAddress, arg2
                        else:
                            require arg1 <= 6
                            require arg1 == 6
                            require arg2
                            require arg2 != tokenTransferProxyAddress
                            tokenTransferProxyAddress = arg2
                            require arg1 <= 6
                            emit 0xea5852cb: arg1, tokenTransferProxyAddress, arg2
}



}

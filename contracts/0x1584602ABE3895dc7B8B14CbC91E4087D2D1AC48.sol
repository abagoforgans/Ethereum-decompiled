contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 1063]




// =====================  Runtime code  =====================


mapping of uint256 balances;
mapping of uint256 sub_36199c14;

function sub_36199c14(?) payable {
    return sub_36199c14[arg1]
}

function sub_5daecfcd(?) payable {
    return sub_36199c14[address(arg1)]
}

function balances(address arg1, address arg2) payable {
    return balances[arg1][arg2]
}

function balance(address arg1) payable {
    return balances[address(msg.sender)][address(arg1)]
}

function _fallback() payable {
  stop
}

function issue(address arg1, uint256 arg2) payable {
    if arg1 == msg.sender:
        emit 0x6bd1b29c: arg2, arg1
        return 0
    balances[address(arg1)][address(msg.sender)] += arg2
    sub_36199c14[address(msg.sender)] += arg2
    emit 0xd9242de9: arg2, arg1, msg.sender
    return 1
}

function redeem(address arg1, uint256 arg2) payable {
    if balances[address(msg.sender)][address(arg1)] < arg2:
        emit 0x861da4bd: arg2, balances[address(msg.sender)][address(arg1)], msg.sender, arg1
        return 0
    balances[address(msg.sender)][address(arg1)] -= arg2
    sub_36199c14[address(arg1)] -= arg2
    emit 0x211e721d: arg2, msg.sender, arg1
    return 1
}

function transfer(address arg1, address arg2, uint256 arg3) payable {
    if balances[address(msg.sender)][address(arg2)] < arg3:
        emit 0x861da4bd: arg3, balances[address(msg.sender)][address(arg2)], msg.sender, arg1
    else:
        if arg1 == arg2:
            balances[address(msg.sender)][address(arg2)] -= arg3
            sub_36199c14[address(arg2)] -= arg3
            emit 0x211e721d: arg3, msg.sender, arg2
        else:
            if arg1 != msg.sender:
                balances[address(msg.sender)][address(arg2)] -= arg3
                balances[address(arg1)][address(arg2)] += arg3
                emit Transfer(arg3, msg.sender, arg1, arg2);
    return 0
}



}

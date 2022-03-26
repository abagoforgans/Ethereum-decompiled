contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() payable {
    stor1 = 0xd99b9b07803e4d3a0d7ee773da4bedbe14b6661d
    require not msg.value
    stor0 = msg.sender
    return code.data[99 len 3165]
}



// =====================  Runtime code  =====================


const totalSupply = 0


address adminAddress;
address stor1;
mapping of uint256 balance;
mapping of uint256 sub_a37516ff;
mapping of uint256 stor4;
mapping of uint256 stor5;
mapping of uint256 stor6;

function getAdmin() {
    return adminAddress
}

function sub_a37516ff(?) {
    return sub_a37516ff[address(arg1)]
}

function getBalance(address arg1) {
    return balance[address(arg1)]
}

function kill() {
    if adminAddress != msg.sender:
    selfdestruct(adminAddress)
}

function _fallback() payable {
    revert 
}

function sub_2fb057e1(?) {
    stor4[address(msg.sender)][address(arg1)] = 1
}

function sub_427af383(?) {
    stor4[address(msg.sender)][address(arg1)] = 0
}

function sub_107504cf(?) {
    if adminAddress == msg.sender:
        stor5[address(arg1)] = 1
}

function sub_4f775b08(?) {
    if adminAddress == msg.sender:
        stor6[address(arg1)] = 0
}

function sub_84898206(?) {
    if adminAddress == msg.sender:
        stor6[address(arg1)] = 1
}

function sub_aa30ba48(?) {
    if adminAddress == msg.sender:
        stor5[address(arg1)] = 0
}

function setAdmin(address arg1) {
    if adminAddress == msg.sender:
        adminAddress = arg1
}

function balanceOf(address arg1) {
    return (balance[address(arg1)] - sub_a37516ff[address(arg1)])
}

function approve(address arg1, uint256 arg2) {
    stor4[address(msg.sender)][address(arg1)] = 1
    return 1
}

function getAvailableBalance(address arg1) {
    return (balance[address(arg1)] - sub_a37516ff[address(arg1)])
}

function register() {
    if adminAddress == msg.sender:
        require ext_code.size(stor1)
        call stor1.0xe1fa8e84 with:
             gas gas_remaining - 50 wei
            args 'stabletoken'
        require ext_call.success
}

function isAuthorized(address arg1) {
    if msg.sender == arg1:
        return 1
    if adminAddress == msg.sender:
        return 1
    if stor6[address(msg.sender)]:
        return 1
    if not stor4[address(arg1)][address(msg.sender)]:
        return bool(stor4[address(arg1)][address(msg.sender)])
    return bool(stor5[address(msg.sender)])
}

function issue(uint256 arg1) {
    if adminAddress == msg.sender:
        balance[address(msg.sender)] += arg1
        emit 0xcecc78e1: arg1, 3, msg.sender, msg.sender
        emit 0xd08e2a68: address(msg.sender), balance[address(msg.sender)], sub_a37516ff[address(msg.sender)], balance[address(msg.sender)] - sub_a37516ff[address(msg.sender)]
        emit 0x6: address(msg.sender), balance[address(msg.sender)], sub_a37516ff[address(msg.sender)], balance[address(msg.sender)] - sub_a37516ff[address(msg.sender)]
}

function cancel(uint256 arg1) {
    if adminAddress == msg.sender:
        if arg1 >= 0:
            if balance[address(msg.sender)] - arg1 >= 0:
                balance[address(msg.sender)] -= arg1
                emit 0xb28fe2b0: arg1, 7, msg.sender, msg.sender
                emit 0xd08e2a68: address(msg.sender), balance[address(msg.sender)], sub_a37516ff[address(msg.sender)], balance[address(msg.sender)] - sub_a37516ff[address(msg.sender)]
                emit 0x6: address(msg.sender), balance[address(msg.sender)], sub_a37516ff[address(msg.sender)], balance[address(msg.sender)] - sub_a37516ff[address(msg.sender)]
}

function sub_5c59d8d1(?) {
    if arg2 != msg.sender:
        if adminAddress != msg.sender:
            if not stor6[address(msg.sender)]:
                if not stor4[address(arg2)][address(msg.sender)]:
                    return 0
                if not stor5[address(msg.sender)]:
                    return 0
    sub_a37516ff[address(arg2)] -= arg3
    emit 0x31d0c6c8: arg3, 5, arg1, arg2
    emit 0xd08e2a68: address(arg2), balance[address(arg2)], sub_a37516ff[address(arg2)], balance[address(arg2)] - sub_a37516ff[address(arg2)]
    emit 0x6: address(arg2), balance[address(arg2)], sub_a37516ff[address(arg2)], balance[address(arg2)] - sub_a37516ff[address(arg2)]
    return 1
}

function sub_d076f4b0(?) {
    if arg2 != msg.sender:
        if adminAddress != msg.sender:
            if not stor6[address(msg.sender)]:
                if not stor4[address(arg2)][address(msg.sender)]:
                    return 0
                if not stor5[address(msg.sender)]:
                    return 0
    sub_a37516ff[address(arg2)] += arg3
    emit 0x31d0c6c8: arg3, 4, arg1, arg2
    emit 0xd08e2a68: address(arg2), balance[address(arg2)], sub_a37516ff[address(arg2)], balance[address(arg2)] - sub_a37516ff[address(arg2)]
    emit 0x6: address(arg2), balance[address(arg2)], sub_a37516ff[address(arg2)], balance[address(arg2)] - sub_a37516ff[address(arg2)]
    return 1
}

function send(address arg1, uint256 arg2) {
    if arg2 >= 0:
        if balance[address(msg.sender)] - sub_a37516ff[address(msg.sender)] >= arg2:
            balance[address(msg.sender)] -= arg2
            balance[arg1] += arg2
            emit Transfer(arg2, 2, msg.sender, arg1);
            emit 0xd08e2a68: address(msg.sender), balance[address(msg.sender)], sub_a37516ff[address(msg.sender)], balance[address(msg.sender)] - sub_a37516ff[address(msg.sender)]
            emit 0x6: address(msg.sender), balance[address(msg.sender)], sub_a37516ff[address(msg.sender)], balance[address(msg.sender)] - sub_a37516ff[address(msg.sender)]
            emit 0xd08e2a68: address(arg1), balance[address(arg1)], sub_a37516ff[address(arg1)], balance[address(arg1)] - sub_a37516ff[address(arg1)]
            emit 0x6: address(arg1), balance[address(arg1)], sub_a37516ff[address(arg1)], balance[address(arg1)] - sub_a37516ff[address(arg1)]
}

function transfer(address arg1, uint256 arg2) {
    if arg2 >= 0:
        if balance[address(msg.sender)] - sub_a37516ff[address(msg.sender)] >= arg2:
            balance[address(msg.sender)] -= arg2
            balance[arg1] += arg2
            emit Transfer(arg2, 2, msg.sender, arg1);
            emit 0xd08e2a68: address(msg.sender), balance[address(msg.sender)], sub_a37516ff[address(msg.sender)], balance[address(msg.sender)] - sub_a37516ff[address(msg.sender)]
            emit 0x6: address(msg.sender), balance[address(msg.sender)], sub_a37516ff[address(msg.sender)], balance[address(msg.sender)] - sub_a37516ff[address(msg.sender)]
            emit 0xd08e2a68: address(arg1), balance[address(arg1)], sub_a37516ff[address(arg1)], balance[address(arg1)] - sub_a37516ff[address(arg1)]
            emit 0x6: address(arg1), balance[address(arg1)], sub_a37516ff[address(arg1)], balance[address(arg1)] - sub_a37516ff[address(arg1)]
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if arg1 != msg.sender:
        if adminAddress != msg.sender:
            if not stor6[address(msg.sender)]:
                if not stor4[address(arg1)][address(msg.sender)]:
                    emit 0x8e38a08f: arg3, 1, 1, arg1, arg2
                    return 0
                if not stor5[address(msg.sender)]:
                    emit 0x8e38a08f: arg3, 1, 1, arg1, arg2
                    return 0
    if arg2 != arg1:
        if arg3:
            if balance[address(arg1)] - sub_a37516ff[address(arg1)] < arg3:
                return 0
            balance[address(arg1)] -= arg3
            balance[arg2] += arg3
            emit Transfer(arg3, 2, arg1, arg2);
            emit 0xd08e2a68: address(arg1), balance[address(arg1)], sub_a37516ff[address(arg1)], balance[address(arg1)] - sub_a37516ff[address(arg1)]
            emit 0x6: address(arg1), balance[address(arg1)], sub_a37516ff[address(arg1)], balance[address(arg1)] - sub_a37516ff[address(arg1)]
            emit 0xd08e2a68: address(arg2), balance[address(arg2)], sub_a37516ff[address(arg2)], balance[address(arg2)] - sub_a37516ff[address(arg2)]
            emit 0x6: address(arg2), balance[address(arg2)], sub_a37516ff[address(arg2)], balance[address(arg2)] - sub_a37516ff[address(arg2)]
    return 1
}

function adminTransfer(address arg1, address arg2, uint256 arg3) {
    if arg2 != msg.sender:
        if adminAddress != msg.sender:
            if not stor6[address(msg.sender)]:
                if not stor4[address(arg2)][address(msg.sender)]:
                    emit 0x8e38a08f: arg3, 1, 1, arg2, arg1
                    return 0
                if not stor5[address(msg.sender)]:
                    emit 0x8e38a08f: arg3, 1, 1, arg2, arg1
                    return 0
    if arg1 != arg2:
        if arg3:
            if balance[address(arg2)] - sub_a37516ff[address(arg2)] < arg3:
                return 0
            balance[address(arg2)] -= arg3
            balance[arg1] += arg3
            emit Transfer(arg3, 2, arg2, arg1);
            emit 0xd08e2a68: address(arg2), balance[address(arg2)], sub_a37516ff[address(arg2)], balance[address(arg2)] - sub_a37516ff[address(arg2)]
            emit 0x6: address(arg2), balance[address(arg2)], sub_a37516ff[address(arg2)], balance[address(arg2)] - sub_a37516ff[address(arg2)]
            emit 0xd08e2a68: address(arg1), balance[address(arg1)], sub_a37516ff[address(arg1)], balance[address(arg1)] - sub_a37516ff[address(arg1)]
            emit 0x6: address(arg1), balance[address(arg1)], sub_a37516ff[address(arg1)], balance[address(arg1)] - sub_a37516ff[address(arg1)]
    return 1
}



}

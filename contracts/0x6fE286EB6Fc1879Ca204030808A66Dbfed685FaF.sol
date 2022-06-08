contract main {




// =====================  Runtime code  =====================


address owner;
uint256 sub_c89421ad;
mapping of address sub_a118d24b;
uint256 sub_7e418b3b;
uint256 sub_8acd0ac2;
uint256 sub_b374befd;
uint256 sub_0fae39fa;
uint256 sub_8feb731e;
address winnerAddress;
uint256 sub_9a6895b0;
mapping of address stor10;
uint256 stor11;

function sub_0fae39fa(?) {
    return sub_0fae39fa
}

function sub_7e418b3b(?) {
    return sub_7e418b3b
}

function sub_8acd0ac2(?) {
    return sub_8acd0ac2
}

function owner() {
    return owner
}

function sub_8feb731e(?) {
    return sub_8feb731e
}

function sub_9a6895b0(?) {
    return sub_9a6895b0
}

function sub_a118d24b(?) {
    return sub_a118d24b[arg1]
}

function sub_b374befd(?) {
    return sub_b374befd
}

function sub_c89421ad(?) {
    return sub_c89421ad
}

function winner() {
    return winnerAddress
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        revert with 0, 'you are not the owner'
    owner = arg1
}

function setConfig(uint256 arg1, uint256 arg2) {
    if owner != msg.sender:
        revert with 0, 'you are not the owner'
    sub_7e418b3b = arg1
    sub_8acd0ac2 = arg2
}

function sub_b97f5768(?) {
    if owner != msg.sender:
        revert with 0, 'you are not the owner'
    call owner with:
       value sub_c89421ad wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_c89421ad = 0
}

function sub_8d176679(?) payable {
    if sub_7e418b3b != msg.value:
        revert with 0, 'msg.value is not right'
    if sub_a118d24b[msg.sender]:
        call sub_a118d24b[msg.sender] with:
           value 50 * 50 * msg.value / 100 / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if sub_a118d24b[sub_a118d24b[msg.sender]]:
            call sub_a118d24b[sub_a118d24b[msg.sender]] with:
               value 30 * 50 * msg.value / 100 / 100 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if sub_a118d24b[sub_a118d24b[sub_a118d24b[msg.sender]]]:
                call sub_a118d24b[sub_a118d24b[sub_a118d24b[msg.sender]]] with:
                   value 20 * 50 * msg.value / 100 / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    sub_b374befd++
    uint256(stor10[stor5]) = msg.sender or Mask(96, 160, uint256(stor10[stor5]))
    emit 0x5e2a07de: sub_b374befd - 1, block.timestamp, msg.sender
    stor11 = sha3(stor11, msg.sender)
    sub_8feb731e += 80 * 50 * msg.value / 100 / 100
    if sub_b374befd >= sub_8acd0ac2:
        require sub_b374befd
        sub_0fae39fa = stor11 % sub_b374befd
        winnerAddress = address(stor10[stor11 % stor5])
        sub_9a6895b0 = sub_8feb731e
        call address(stor10[stor11 % stor5]) with:
           value sub_8feb731e wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x8c937b11: sub_0fae39fa, sub_8feb731e, address(stor10[stor6])
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        sub_b374befd = 0
        sub_8feb731e = 0
}

function sub_8ca60301(?) payable {
    if msg.sender == arg1:
        revert with 0, 'Can't recommend oneself'
    if sub_a118d24b[msg.sender]:
        revert with 0, 'you have already set recommender'
    sub_a118d24b[msg.sender] = arg1
    if sub_7e418b3b != msg.value:
        revert with 0, 'msg.value is not right'
    if sub_a118d24b[msg.sender]:
        call sub_a118d24b[msg.sender] with:
           value 50 * 50 * msg.value / 100 / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if sub_a118d24b[sub_a118d24b[msg.sender]]:
            call sub_a118d24b[sub_a118d24b[msg.sender]] with:
               value 30 * 50 * msg.value / 100 / 100 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if sub_a118d24b[sub_a118d24b[sub_a118d24b[msg.sender]]]:
                call sub_a118d24b[sub_a118d24b[sub_a118d24b[msg.sender]]] with:
                   value 20 * 50 * msg.value / 100 / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    sub_b374befd++
    uint256(stor10[stor5]) = msg.sender or Mask(96, 160, uint256(stor10[stor5]))
    emit 0x5e2a07de: sub_b374befd - 1, block.timestamp, msg.sender
    stor11 = sha3(stor11, msg.sender)
    sub_8feb731e += 80 * 50 * msg.value / 100 / 100
    if sub_b374befd >= sub_8acd0ac2:
        require sub_b374befd
        sub_0fae39fa = stor11 % sub_b374befd
        winnerAddress = address(stor10[stor11 % stor5])
        sub_9a6895b0 = sub_8feb731e
        call address(stor10[stor11 % stor5]) with:
           value sub_8feb731e wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x8c937b11: sub_0fae39fa, sub_8feb731e, address(stor10[stor6])
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        sub_b374befd = 0
        sub_8feb731e = 0
}



}

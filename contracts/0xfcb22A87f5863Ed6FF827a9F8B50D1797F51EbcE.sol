contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 1879]




// =====================  Runtime code  =====================


const sub_76d871eb(?) = 1510358399

const sub_b3b24ac8(?) = 0xecd7da67e6563bbddfc2ddff9ba2632c721af181

const sub_f0a7324d(?) = 1517702399


mapping of uint256 balanceOf;

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function drain() {
    if msg.sender != 0xecd7da67e6563bbddfc2ddff9ba2632c721af181:
        return 0
    if block.timestamp < 1509494399:
        return 0
    emit 0x30e37456: eth.balance(this.address), msg.sender
    selfdestruct(0xecd7da67e6563bbddfc2ddff9ba2632c721af181)
}

function deposit(address arg1) payable {
    if not msg.value:
        return 0
    require block.timestamp < 1502409599
    balanceOf[address(arg1)] += msg.value
    emit Deposited(msg.value, msg.sender, arg1);
    return 1
}

function withdrawTo(address arg1) {
    if not arg1:
        return 0
    if not balanceOf[address(msg.sender)]:
        return 0
    balanceOf[address(msg.sender)] = 0
    call arg1 with:
       value balanceOf[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit 0x3c480df8: balanceOf[address(msg.sender)], msg.sender, arg1
    return 1
}

function _fallback() {
    if msg.sender:
        if balanceOf[address(msg.sender)]:
            balanceOf[address(msg.sender)] = 0
            call msg.sender with:
               value balanceOf[address(msg.sender)] wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit 0x3c480df8: balanceOf[address(msg.sender)], msg.sender, msg.sender
}

function withdraw() {
    if not msg.sender:
        return 0
    if not balanceOf[address(msg.sender)]:
        return 0
    balanceOf[address(msg.sender)] = 0
    call msg.sender with:
       value balanceOf[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit 0x3c480df8: balanceOf[address(msg.sender)], msg.sender, msg.sender
    return 1
}

function forward(address arg1) payable {
    if not msg.value:
        return 0
    require block.timestamp < 1502409599
    require arg1
    call arg1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
        emit 0x3c480df8: msg.value, msg.sender, arg1
    else:
        balanceOf[address(arg1)] += msg.value
        emit 0x6bb23561: msg.value, msg.sender, arg1
        emit Deposited(msg.value, msg.sender, arg1);
    return 1
}



}

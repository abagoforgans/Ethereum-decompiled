contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    require not msg.value
    return code.data[57 len 1043]
}



// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


address owner;

function owner() {
    return owner
}

function _fallback() payable {
  stop
}

function withdraw(uint256 arg1) {
    require owner == msg.sender
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function flipCoin() payable {
    require msg.value < 10^17
    if (block.timestamp + block.hash(block.number - 1) % 100) + 1 > 55:
        call msg.sender with:
           value 2 * msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    emit FlipCoinEvent((block.timestamp + block.hash(block.number - 1) % 100) + 1, msg.sender);
}

function playSlot() payable {
    require msg.value < 10^17
    if (block.timestamp + block.hash(block.number - 1) % 100) + 1 < 3:
        emit PlaySlotEvent(3, msg.sender);
        call msg.sender with:
           value 12 * msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        if (block.timestamp + block.hash(block.number - 1) % 100) + 1 <= 3:
            emit PlaySlotEvent(0, msg.sender);
        else:
            if (block.timestamp + block.hash(block.number - 1) % 100) + 1 < 6:
                emit PlaySlotEvent(2, msg.sender);
                call msg.sender with:
                   value 6 * msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            else:
                if (block.timestamp + block.hash(block.number - 1) % 100) + 1 <= 6:
                    emit PlaySlotEvent(0, msg.sender);
                else:
                    if (block.timestamp + block.hash(block.number - 1) % 100) + 1 >= 9:
                        emit PlaySlotEvent(0, msg.sender);
                    else:
                        emit PlaySlotEvent(1, msg.sender);
                        call msg.sender with:
                           value 3 * msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
}



}

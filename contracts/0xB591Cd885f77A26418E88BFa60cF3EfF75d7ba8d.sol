contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 1037]




// =====================  Runtime code  =====================


mapping of uint8 result;

function getResult(address arg1) {
    return result[address(arg1)]
}

function destroyContract() {
    if 0x552104525e758bd874c6075faafee2c23fdfc1ee != msg.sender:
    selfdestruct(msg.sender)
}

function withdraw() {
    if msg.sender == 0x552104525e758bd874c6075faafee2c23fdfc1ee:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function _fallback() payable {
    if sha3(block.hash(block.number - 1), msg.sender + msg.value) % 100 < 5:
        result[address(msg.sender)] = 1
    else:
        if sha3(block.hash(block.number - 1), msg.sender + msg.value) % 100 < 15:
            result[address(msg.sender)] = 2
        else:
            if sha3(block.hash(block.number - 1), msg.sender + msg.value) % 100 < 35:
                result[address(msg.sender)] = 3
            else:
                if sha3(block.hash(block.number - 1), msg.sender + msg.value) % 100 < 65:
                    result[address(msg.sender)] = 4
                else:
                    if sha3(block.hash(block.number - 1), msg.sender + msg.value) % 100 < 85:
                        result[address(msg.sender)] = 5
                    else:
                        if sha3(block.hash(block.number - 1), msg.sender + msg.value) % 100 < 95:
                            result[address(msg.sender)] = 6
                        else:
                            if sha3(block.hash(block.number - 1), msg.sender + msg.value) % 100 >= 100:
                                result[address(msg.sender)] = 0
                            else:
                                result[address(msg.sender)] = 7
}



}

contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
address stor5;

function _fallback() payable {
    stor0 = 10^16
    stor2 = 190
    stor1 = msg.value / 5
    require msg.value / 5 > stor0
    stor5 = msg.sender
    return code.data[89 len 1490]
}



// =====================  Runtime code  =====================


const _getrand09 = (block.hash(block.number - 1) % 10)


uint256 minbet;
uint256 maxbet;
uint256 houseedge;
uint256 luckynum;
array of uint256 winlose;
address bankerAddress;

function banker() {
    return bankerAddress
}

function houseedge() {
    return houseedge
}

function maxbet() {
    return maxbet
}

function minbet() {
    return minbet
}

function luckynum() {
    return luckynum
}

function winlose() {
    return winlose[0 len winlose.length].field_0
}

function kill() {
    require bankerAddress == msg.sender
    selfdestruct(bankerAddress)
}

function _fallback() payable {
    require msg.value >= minbet
    require msg.value <= maxbet
    require eth.balance(this.address) >= 2 * msg.value
    luckynum = block.hash(block.number - 1) % 10
    if block.hash(block.number - 1) % 10 >= 5:
        emit YouLose(msg.sender, msg.value);
        call msg.sender with:
           value 1 wei
             gas 0 wei
        require ext_call.success
        bool(winlose.length) = 0
        winlose.length.field_1 = 4
        winlose.length.field_8 = 'lose' / 256
        idx = 0
        while winlose.length + 31 / 32 > idx:
            winlose[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        emit YouWin(msg.sender, msg.value, 19620 * msg.value / 10000);
        call msg.sender with:
           value 19620 * msg.value / 10000 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        bool(winlose.length) = 0
        winlose.length.field_1 = 3
        winlose.length.field_8 = 'win' / 256
        idx = 0
        while winlose.length + 31 / 32 > idx:
            winlose[idx].field_0 = 0
            idx = idx + 1
            continue 
}



}

contract main {


// =======================  Init code  ======================


uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor1 = 0
    stor2 = 418047 * 3600
    require not msg.value
    return code.data[44 len 698]
}



// =====================  Runtime code  =====================


address best_gamerAddress;
uint256 count;
uint256 endTime;

function count() {
    return count
}

function best_gamer() {
    return best_gamerAddress
}

function endTime() {
    return endTime
}

function fund() payable {
    require block.timestamp <= endTime
}

function _fallback() {
    require block.timestamp <= endTime
    require count < 50
    best_gamerAddress = msg.sender
    count++
}

function endGame() {
    if block.timestamp <= endTime:
        require count == 50
    call best_gamerAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}

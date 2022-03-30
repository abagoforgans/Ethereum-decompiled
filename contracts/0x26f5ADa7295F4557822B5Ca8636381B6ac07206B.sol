contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 437]




// =====================  Runtime code  =====================


mapping of uint256 readings;

function readings(address arg1) {
    return readings[arg1]
}

function _fallback() payable {
    revert
}

function pingDelta(uint256 arg1) {
    readings[address(msg.sender)] += arg1
    emit pinged(address(msg.sender), block.timestamp, arg1 + readings[address(msg.sender)], arg1);
}

function pingReading(uint256 arg1) {
    emit pinged(address(msg.sender), block.timestamp, arg1, arg1 - readings[address(msg.sender)]);
    readings[address(msg.sender)] = arg1
}



}

contract main {


// =======================  Init code  ======================


uint16 stor0;
uint256 stor1;
address stor2;

function _fallback() payable {
    stor0 = 0
    require not msg.value
    stor2 = msg.sender
    stor1 = sha3(block.number, block.timestamp)
    return code.data[97 len 614]
}



// =====================  Runtime code  =====================


uint16 round_count;
uint256 last_hash;
address controllerAddress;
mapping of uint256 hashes;

function hashes(uint16 arg1) {
    return hashes[arg1]
}

function last_hash() {
    return last_hash
}

function get_hash(uint16 arg1) {
    return hashes[arg1 << 240]
}

function round_count() {
    return round_count
}

function controller() {
    return controllerAddress
}

function _fallback() payable {
    round_count = uint16(round_count + 1)
    last_hash = sha3(block.number, block.timestamp, msg.value)
    hashes[stor0] = sha3(block.number, block.timestamp, msg.value)
}

function spin(bytes32 arg1) {
    require controllerAddress == msg.sender
    round_count = uint16(round_count + 1)
    last_hash = sha3(block.number, block.timestamp, arg1)
    hashes[stor0] = sha3(block.number, block.timestamp, arg1)
}



}

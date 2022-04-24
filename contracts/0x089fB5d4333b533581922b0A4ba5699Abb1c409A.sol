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
    return code.data[97 len 404]
}



// =====================  Runtime code  =====================


uint16 stor0;
uint256 stor1;
address stor2;
mapping of uint256 hashes;

function hashes(uint16 arg1) {
    return hashes[arg1]
}

function get_hash(uint16 arg1) {
    return hashes[arg1 << 240]
}

function spin(bytes32 arg1) {
    require stor2 == msg.sender
    stor0 = uint16(stor0 + 1)
    stor1 = sha3(block.number, block.timestamp, arg1)
    hashes[stor0] = sha3(block.number, block.timestamp, arg1)
}

function _fallback() payable {
    require stor2 == msg.sender
    stor0 = uint16(stor0 + 1)
    stor1 = sha3(block.number, block.timestamp, msg.value)
    hashes[stor0] = sha3(block.number, block.timestamp, msg.value)
}



}

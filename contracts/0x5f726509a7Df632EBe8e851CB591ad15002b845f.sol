contract main {


// =======================  Init code  ======================


mapping of uint8 stor0;

function _fallback() {
    stor0[address(msg.sender)] = 1
    return code.data[118 len 334]
}



// =====================  Runtime code  =====================


const difficulty = block.difficulty

const gaslimit = block.gas_limit

const number = block.number

const coinbase = block.coinbase


function _fallback() payable {
    if unknown_0x19cae462(?????) == uint32(call.func_hash):
        require not msg.value
        return block.difficulty
    if unknown_0x2a722839(?????) == uint32(call.func_hash):
        require not msg.value
        return block.gas_limit
    if unknown_0x8381f58a(?????) == uint32(call.func_hash):
        require not msg.value
        return block.number
    require unknown_0xa6ae0aac(?????) == uint32(call.func_hash)
    require not msg.value
    return block.coinbase
}



}

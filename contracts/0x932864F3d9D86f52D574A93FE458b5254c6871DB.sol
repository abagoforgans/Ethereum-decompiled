contract main {


// =======================  Init code  ======================


uint128 stor0;

function _fallback() {
    stor0 = 0
    return code.data[87 len 703]
}



// =====================  Runtime code  =====================


uint128 stor0;
mapping of uint64 stor1;

function sendMessage(address arg1, string arg2) {
    stor1[address(msg.sender)] = uint64(stor1[address(msg.sender)] + 1)
    stor0 = uint128(stor0 + 1)
    emit 0xbe087493: stor0, Array(len=arg2.length, data=arg2[all]), msg.sender, arg1
}

function _fallback() payable {
    require unknown_0xde6f24bb(?????) == uint32(call.func_hash)
    require not msg.value
    stor1[address(msg.sender)] = uint64(stor1[address(msg.sender)] + 1)
    stor0 = uint128(stor0 + 1)
    emit 0xbe087493: stor0, Array(len=arg2.length, data=arg2[all]), msg.sender, arg1
}



}

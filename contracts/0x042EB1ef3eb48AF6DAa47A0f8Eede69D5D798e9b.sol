contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;

function _fallback() {
    stor0[address(msg.sender)] = code.data[530 len 32]
    return code.data[126 len 404]
}



// =====================  Runtime code  =====================


mapping of uint256 stor0;

function transfer(address arg1, uint256 arg2) {
    require stor0[address(msg.sender)] >= arg2
    stor0[address(msg.sender)] -= arg2
    stor0[address(arg1)] += arg2
}

function _fallback() payable {
    require unknown_0xa9059cbb(?????) == uint32(call.func_hash)
    require not msg.value
    require stor0[address(msg.sender)] >= arg2
    stor0[address(msg.sender)] -= arg2
    stor0[address(arg1)] += arg2
}



}

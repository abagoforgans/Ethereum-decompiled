contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 1039]




// =====================  Runtime code  =====================


mapping of struct stor0;

function _fallback() payable {
    revert
}

function getInfo() {
    return stor0[address(msg.sender)].field_0, stor0[address(msg.sender)].field_256, block.timestamp
}

function withdrawFunds() {
    require stor0[address(msg.sender)].field_256 < block.timestamp
    stor0[address(msg.sender)].field_0 = 0
    stor0[address(msg.sender)].field_256 = 0
    call msg.sender with:
       value stor0[address(msg.sender)].field_0 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function depositFunds(uint256 arg1) payable {
    require msg.value > 0
    require arg1 > block.timestamp
    require arg1 < block.timestamp + (43800 * 24 * 3600)
    if stor0[address(msg.sender)].field_256 <= 0:
        stor0[address(msg.sender)].field_256 = arg1
    stor0[address(msg.sender)].field_0 += msg.value
    return msg.value
}



}

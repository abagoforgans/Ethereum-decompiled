contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor1 = 0
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[41 len 638]
}



// =====================  Runtime code  =====================


address stor0;
uint256 contentCount;

function contentCount() {
    return contentCount
}

function kill() {
    require msg.sender == stor0
    selfdestruct(stor0)
}

function _fallback() {
    revert 
}

function flush() {
    require stor0 == msg.sender
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_6089e25e(?) payable {
    if 1 == arg3:
        require arg4 <= 672 * 24 * 3600
        require msg.value == 10^16
    else:
        require 2 == arg3
        if arg3 != 1:
            require msg.value <= 0
        else:
            require arg4 <= 672 * 24 * 3600
            require msg.value == 10^16
    contentCount++
    emit 0xb036937c: Array(len=arg1.length, data=arg1[all]), arg3 << 240, arg4, msg.value, arg2, msg.sender, block.timestamp / 24 * 3600
}



}

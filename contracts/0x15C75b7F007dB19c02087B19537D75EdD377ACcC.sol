contract main {


// =======================  Init code  ======================


address stor1;

function _fallback() payable {
    stor1 = 0x72ba7d8e73fe8eb666ea66babc8116a41bfb10e2
    return code.data[55 len 147]
}



// =====================  Runtime code  =====================


const get = 255


address stor1;

function _fallback() payable {
  stop
}

function set(uint256 arg1) payable {
    call stor1 with:
       funct Mask(32, 224, 'set') >> 224
         gas gas_remaining - 25050 wei
        args Mask(224, 0, 'set'), arg1
}



}

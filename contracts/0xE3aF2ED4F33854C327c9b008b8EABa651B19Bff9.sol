contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = code.data[564 len 32]
    call 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call address(ext_call.return_data[0]).query_withGasLimit(uint256 rg1, string rg2, string rg3, uint256 rg4) with:
         gas gas_remaining - 34050 wei
        args 0, 0, 128, 192, 2500000, 10, 'Blockchain', 25, 'bitcoin blockchain height'
    return code.data[364 len 200]
}



// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
  stop
}

function __callback(bytes32 arg1, string arg2) payable {
    call stor0.0xf3593cd0 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
}



}

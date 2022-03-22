contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = code.data[445 len 32]
    call 0x88e1315687aec48a72786c6b3b3f075208b62713.query(uint256 rg1, string rg2, string rg3) with:
         gas gas_remaining - 25050 wei
        args 0, 96, 160, 10, 'Blockchain', 25, 'bitcoin blockchain height'
    require ext_call.success
    return code.data[245 len 200]
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

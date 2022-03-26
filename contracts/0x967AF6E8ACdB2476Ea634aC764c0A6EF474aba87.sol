contract main {


// =======================  Init code  ======================


function _fallback() payable {
    require ext_code.size(0x84f6a99003dae6d3906664fdbf43dd09930d0e3)
    call 0x084f6a99003dae6d3906664fdbf43dd09930d0e3.0xe1fa8e84 with:
         gas gas_remaining - 50 wei
        args 'Contract'
    require ext_call.success
    return code.data[151 len 290]
}



// =====================  Runtime code  =====================


const nameRegAddress = 0x84f6a99003dae6d3906664fdbf43dd09930d0e3


function test(bytes32 arg1) {
  stop
}

function _fallback() payable {
    revert 
}

function named(bytes32 arg1) {
    require ext_code.size(0x84f6a99003dae6d3906664fdbf43dd09930d0e3)
    call 0x084f6a99003dae6d3906664fdbf43dd09930d0e3.0xbb34534c with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[12 len 20]
}



}

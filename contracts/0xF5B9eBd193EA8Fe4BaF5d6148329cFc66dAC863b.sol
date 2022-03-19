contract main {


// =======================  Init code  ======================


function _fallback() payable {
    call 0x084f6a99003dae6d3906664fdbf43dd09930d0e3.register(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args 'Contract'
    require ext_call.success
    return code.data[145 len 242]
}



// =====================  Runtime code  =====================


const nameRegAddress = 0x84f6a99003dae6d3906664fdbf43dd09930d0e3


function _fallback() payable {
  stop
}

function test(bytes32 arg1) payable {
  stop
}

function named(bytes32 arg1) payable {
    call 0x084f6a99003dae6d3906664fdbf43dd09930d0e3.addressOf(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[12 len 20]
}



}

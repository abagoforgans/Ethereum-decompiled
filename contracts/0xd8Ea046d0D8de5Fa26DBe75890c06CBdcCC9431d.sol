contract main {


// =======================  Init code  ======================


function _fallback() payable {
    call code.data[267 len 20] with:
         gas 2300 wei
    require ext_call.success
    return code.data[84 len 171]
}



// =====================  Runtime code  =====================


function _fallback() payable {
    revert 
}

function doit(address arg1) payable {
    call arg1 with:
         gas 2300 wei
    require ext_call.success
}



}

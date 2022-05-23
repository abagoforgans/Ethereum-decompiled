contract main {


// =======================  Init code  ======================


function _fallback() {
    require ext_code.size(0xc8b55c7ad00fb9b933b0a016c6cebceea0293bb9)
    delegate 0xc8b55c7ad00fb9b933b0a016c6cebceea0293bb9.0x56d81938 with:
         gas gas_remaining - 710 wei
        args 0, address(code.data[1115 len 32]), address(code.data[1147 len 32]), address(code.data[1179 len 32])
    require delegate.return_code
    return code.data[275 len 840]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
address stor3;

function _fallback() payable {
    revert
}

function wallet() {
    return stor0, stor1, stor2, stor3
}

function sub_e1aed8a0(?) {
    require ext_code.size(0xc8b55c7ad00fb9b933b0a016c6cebceea0293bb9)
    delegate 0xc8b55c7ad00fb9b933b0a016c6cebceea0293bb9.0xdaf01142 with:
         gas gas_remaining - 710 wei
        args 0, address(arg1), arg2
    require delegate.return_code
}

function setUserWithdrawalAccount(address arg1) {
    require ext_code.size(0xc8b55c7ad00fb9b933b0a016c6cebceea0293bb9)
    delegate 0xc8b55c7ad00fb9b933b0a016c6cebceea0293bb9.0x2eb9e5d7 with:
         gas gas_remaining - 710 wei
        args 0, arg1
    require delegate.return_code
}

function transferToUserWithdrawalAccount(address arg1, uint256 arg2, address arg3, uint256 arg4) {
    require ext_code.size(0xc8b55c7ad00fb9b933b0a016c6cebceea0293bb9)
    delegate 0xc8b55c7ad00fb9b933b0a016c6cebceea0293bb9.0x1557a52f with:
         gas gas_remaining - 710 wei
        args 0, 0, address(arg1), arg2, arg3, arg4
    require delegate.return_code
}



}

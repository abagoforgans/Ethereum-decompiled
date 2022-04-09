contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = code.data[723 len 20]
    stor1 = code.data[755 len 20]
    return code.data[104 len 607]
}



// =====================  Runtime code  =====================


const onTransfer(address arg1, address arg2, uint256 arg3) = 1

const onApprove(address arg1, address arg2, uint256 arg3) = 1


address tokenAddress;
address tokenSaleAddress;

function tokenSale() {
    return tokenSaleAddress
}

function token() {
    return tokenAddress
}

function changeController(address arg1) {
    require tokenSaleAddress == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0x3cebb823 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    selfdestruct(arg1)
}

function _fallback() payable {
    revert
}

function proxyPayment(address arg1) payable {
    revert
}



}

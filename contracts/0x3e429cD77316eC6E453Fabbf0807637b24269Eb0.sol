contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = code.data[855 len 20]
    stor1 = code.data[887 len 20]
    return code.data[101 len 742]
}



// =====================  Runtime code  =====================


const onTransfer(address arg1, address arg2, uint256 arg3) = 1

const onApprove(address arg1, address arg2, uint256 arg3) = 1

const proxyPayment(address arg1) = 0


address tokenContractAddress;
address sub_51646364Address;

function sub_51646364(?) {
    return sub_51646364Address
}

function tokenContract() {
    return tokenContractAddress
}

function _fallback() payable {
    revert 
}

function convert(uint256 arg1) {
    require ext_code.size(sub_51646364Address)
    call sub_51646364Address.0x23b872dd with:
         gas gas_remaining - 50 wei
        args msg.sender, 0, arg1
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.generateTokens(address rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args msg.sender, arg1
    require ext_call.success
    require ext_call.return_data[0]
}



}

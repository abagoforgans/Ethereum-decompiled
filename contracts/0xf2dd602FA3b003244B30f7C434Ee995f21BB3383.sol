contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = 0x781a04a228cbdde10c93e446beda3d6ee424d52e
    return code.data[70 len 350]
}



// =====================  Runtime code  =====================


address deployerAddress;
address targetAddress;

function targetAddress() payable {
    return targetAddress
}

function deployer() payable {
    return deployerAddress
}

function sendBack() payable {
    if deployerAddress == msg.sender:
        call deployerAddress with:
           value eth.balance(this.address) wei
             gas 0 wei
}

function forward() payable {
    call targetAddress.0x1b9265b8 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call targetAddress with:
       value eth.balance(this.address) wei
         gas 0 wei
}

function _fallback() payable {
    call targetAddress.0x1b9265b8 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call targetAddress with:
       value eth.balance(this.address) wei
         gas 0 wei
}



}

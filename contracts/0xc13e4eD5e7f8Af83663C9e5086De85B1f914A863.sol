contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = 0x208e4a03118380b4f63cf056ecbfe0a241a41b46
    return code.data[57 len 623]
}



// =====================  Runtime code  =====================


const mainDAO = 0xa2f1ccba9395d7fcb155bba8bc92db9bafaeade7


address trusteeAddress;

function trustee() payable {
    return trusteeAddress
}

function _fallback() payable {
  stop
}

function trusteeWithdraw() payable {
    call 0xa2f1ccba9395d7fcb155bba8bc92db9bafaeade7.0x18160ddd with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call 0xa2f1ccba9395d7fcb155bba8bc92db9bafaeade7.0x70a08231 with:
         gas gas_remaining - 25050 wei
        args this.address
    call trusteeAddress with:
       value eth.balance(this.address) wei
         gas 0 wei
}

function withdraw() payable {
    call 0xa2f1ccba9395d7fcb155bba8bc92db9bafaeade7.0x70a08231 with:
         gas gas_remaining - 25050 wei
        args msg.sender
    require ext_call.success
    call 0xa2f1ccba9395d7fcb155bba8bc92db9bafaeade7.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 25050 wei
        args msg.sender, address(this.address), ext_call.return_data[0]
    require ext_call.return_data[0]
    call msg.sender with:
       value ext_call.return_data[0] wei
         gas 0 wei
    require ext_call.success
}



}

contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = 0x2b15c5211bda6a867c582080536f6c61766aa5af
    return code.data[57 len 623]
}



// =====================  Runtime code  =====================


const mainDAO = 0xd9aef3a1e38a39c16b31d1ace71bca8ef58d315b


address trusteeAddress;

function trustee() payable {
    return trusteeAddress
}

function _fallback() payable {
  stop
}

function trusteeWithdraw() payable {
    call 0xd9aef3a1e38a39c16b31d1ace71bca8ef58d315b.0x18160ddd with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call 0xd9aef3a1e38a39c16b31d1ace71bca8ef58d315b.0x70a08231 with:
         gas gas_remaining - 25050 wei
        args this.address
    call trusteeAddress with:
       value eth.balance(this.address) wei
         gas 0 wei
}

function withdraw() payable {
    call 0xd9aef3a1e38a39c16b31d1ace71bca8ef58d315b.0x70a08231 with:
         gas gas_remaining - 25050 wei
        args msg.sender
    require ext_call.success
    call 0xd9aef3a1e38a39c16b31d1ace71bca8ef58d315b.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 25050 wei
        args msg.sender, address(this.address), ext_call.return_data[0]
    require ext_call.return_data[0]
    call msg.sender with:
       value ext_call.return_data[0] wei
         gas 0 wei
    require ext_call.success
}



}

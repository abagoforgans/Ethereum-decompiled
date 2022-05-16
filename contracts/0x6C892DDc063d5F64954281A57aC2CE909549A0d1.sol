contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() payable {
    stor0 = 0xf23b127ff5a6a8b60cc4cbf937e5683315894dda
    stor1 = 0
    require not msg.value
    return code.data[81 len 1263]
}



// =====================  Runtime code  =====================


address developerAddress;
address saleAddress;
uint32 stor2; offset 160
address tokenAddress;

function sale() {
    return saleAddress
}

function developer() {
    return developerAddress
}

function token() {
    return tokenAddress
}

function _fallback() payable {
  stop
}

function sub_08e081e4(?) {
    require developerAddress == msg.sender
    saleAddress = arg1
    tokenAddress = arg2
    stor2 = arg3
}

function buy() {
    require saleAddress
    call saleAddress with:
       value eth.balance(this.address) wei
         gas gas_remaining - 34710 wei
    require ext_call.success
}

function withdrawETH() {
    require developerAddress == msg.sender
    call developerAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function buyWithFunction(bytes4 arg1) {
    require saleAddress
    call saleAddress with:
       funct arg1
       value eth.balance(this.address) wei
         gas gas_remaining - 34710 wei
    require ext_call.success
}

function withdrawToken(address arg1) {
    require developerAddress == msg.sender
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args developerAddress, ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
}



}

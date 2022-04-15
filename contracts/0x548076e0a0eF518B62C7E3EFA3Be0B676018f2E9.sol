contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;

function _fallback() {
    stor0 = code.data[5376 len 20]
    stor1 = code.data[5376 len 20]
    create contract with 0 wei
                    code: code.data[1645 len 3719], 100000000 * 10^18, code.data[5376 len 20]
    require create.new_address
    stor2 = address(create.new_address)
    return code.data[215 len 1430]
}



// =====================  Runtime code  =====================


const tokensPerEth = 3832


address adminAddress;
address walletAddress;
address tokenAddress;
uint256 raisedWei;
uint8 stor4;

function wallet() {
    return walletAddress
}

function haltSale() {
    return bool(stor4)
}

function raisedWei() {
    return raisedWei
}

function admin() {
    return adminAddress
}

function token() {
    return tokenAddress
}

function setHaltSale(bool arg1) {
    require adminAddress == msg.sender
    stor4 = uint8(arg1)
}

function debugBuy() payable {
    emit 0xecc92d61: msg.value
    require msg.value == 123
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require not stor4
    require msg.value > 0
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, 3832 * msg.value
    require ext_call.success
    require ext_call.return_data[0]
    emit Buy(msg.sender, 3832 * msg.value, msg.value);
}

function buy(address arg1) payable {
    require not stor4
    require msg.value > 0
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), 3832 * msg.value
    require ext_call.success
    require ext_call.return_data[0]
    emit Buy(address(arg1), 3832 * msg.value, msg.value);
    return msg.value
}

function emergencyDrain(address arg1) {
    require adminAddress == msg.sender
    if eth.balance(this.address) > 0:
        call walletAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    if not arg1:
        return 1
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args walletAddress, ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
    return 1
}



}

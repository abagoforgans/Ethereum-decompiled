contract main {


// =======================  Init code  ======================


address stor1;
address stor2;
uint256 stor3;
uint256 stor4;

function _fallback() payable {
    stor1 = 0xfb6916095ca1df60bb79ce92ce3ea74c37c5d359
    stor2 = msg.sender
    stor3 = 10^15
    stor4 = 0
    require not msg.value
    return code.data[105 len 2397]
}



// =====================  Runtime code  =====================


address cardboardUnicornTokenAddress;
address realUnicornAddress;
address owner;
uint256 pricePerUnicorn;
uint256 lastPriceSetDate;

function lastPriceSetDate() {
    return lastPriceSetDate
}

function cardboardUnicornTokenAddress() {
    return cardboardUnicornTokenAddress
}

function owner() {
    return owner
}

function pricePerUnicorn() {
    return pricePerUnicorn
}

function realUnicornAddress() {
    return realUnicornAddress
}

function changeOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function changeRealUnicornAddress(address arg1) {
    require owner == msg.sender
    realUnicornAddress = arg1
}

function setPrice(uint256 arg1) {
    require owner == msg.sender
    pricePerUnicorn = arg1
    lastPriceSetDate = block.timestamp
    emit PriceUpdate(arg1, msg.sender);
}

function changeTokenOwner(address arg1) {
    require owner == msg.sender
    require ext_code.size(cardboardUnicornTokenAddress)
    call cardboardUnicornTokenAddress.0xa6f9dae1 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function changeCardboardUnicornTokenAddress(address arg1) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.0x8da5cb5b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == this.address
    cardboardUnicornTokenAddress = arg1
}

function updatePriceFromRealUnicornPrice() {
    require block.timestamp > lastPriceSetDate + (168 * 24 * 3600)
    require ext_code.size(realUnicornAddress)
    call realUnicornAddress.priceOfAUnicornInFinney() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    pricePerUnicorn = 10^15 * ext_call.return_data[0] / 1000
    emit PriceUpdate(10^15 * ext_call.return_data[0] / 1000, msg.sender);
}

function _fallback() payable {
    if msg.value >= pricePerUnicorn:
        require pricePerUnicorn
        require ext_code.size(cardboardUnicornTokenAddress)
        call cardboardUnicornTokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, msg.value / pricePerUnicorn
        require ext_call.success
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
}

function assembleUnicorn() payable {
    if msg.value >= pricePerUnicorn:
        require pricePerUnicorn
        require ext_code.size(cardboardUnicornTokenAddress)
        call cardboardUnicornTokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, msg.value / pricePerUnicorn
        require ext_call.success
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
}

function withdraw(bool arg1) {
    require owner == msg.sender
    if not arg1:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    require ext_code.size(cardboardUnicornTokenAddress)
    call cardboardUnicornTokenAddress.0x3ccfd60b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function withdrawForeignTokens(address arg1, bool arg2) {
    require owner == msg.sender
    if not arg2:
        if ext_code.size(arg1):
            call arg1.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            if ext_call.success:
                if ext_code.size(arg1):
                    call arg1.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args owner, ext_call.return_data[0]
                    if ext_call.success:
    else:
        if ext_code.size(cardboardUnicornTokenAddress):
            call cardboardUnicornTokenAddress.withdrawForeignTokens(address rg1) with:
                 gas gas_remaining - 710 wei
                args arg1
            if ext_call.success:
                if ext_code.size(arg1):
                    call arg1.0x70a08231 with:
                         gas gas_remaining - 710 wei
                        args this.address
                    if ext_call.success:
                        if ext_code.size(arg1):
                            call arg1.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args owner, ext_call.return_data[0]
                            if ext_call.success:
    revert
}



}

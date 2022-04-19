contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
bool stor3; offset 256
uint8 stor3;
uint8 stor3; offset 8
address stor3; offset 16
address stor4;
address stor5;

function _fallback() payable {
    stor4 = 0x45125b61f06b2e9b8fc8a2ea688c35e27086d2ae
    stor5 = 0x45125b61f06b2e9b8fc8a2ea688c35e27086d2ae
    require not msg.value
    stor2 = 0
    stor0 = 0
    stor1 = 10^18
    uint8(stor3.field_0) = 1
    uint8(stor3.field_8) = 0
    address(stor3.field_16) = msg.sender
    stor3.field_256 % 1 = 0
    return code.data[162 len 1465]
}



// =====================  Runtime code  =====================


uint256 price;
uint256 multi;
uint256 calcAmount;
uint8 calcMode;
uint8 complete; offset 8
address directorAddress; offset 16
address pearlContractAddress;
address stor5;
mapping of uint256 pearlSend;

function multi() {
    return multi
}

function complete() {
    return bool(complete)
}

function director() {
    return directorAddress
}

function pearlContract() {
    return pearlContractAddress
}

function price() {
    return price
}

function calcMode() {
    return bool(calcMode)
}

function calcAmount() {
    return calcAmount
}

function pearlSend(address arg1) {
    return pearlSend[arg1]
}

function _fallback() payable {
    revert
}

function setPrice(uint256 arg1) {
    require directorAddress == msg.sender
    require not complete
    price = arg1
    calcAmount = 0
}

function transfer(address arg1, uint256 arg2) {
    require directorAddress == msg.sender
    require ext_code.size(stor5)
    call stor5.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
}

function calculate() {
    require directorAddress == msg.sender
    require not complete
    require price > 0
    calcMode = 1
    calcAmount = 0
    if bool(calcMode) != 1:
        require ext_code.size(stor5)
        call stor5.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args 0xf483bc6d54c19833d7cea785d5053450ed5fd4, pearlSend[0xf483bc6d54c19833d7cea785d5053450ed5fd4]
        require ext_call.success
    else:
        require price
        calcAmount += 4600000 * multi / price
        pearlSend[0xf483bc6d54c19833d7cea785d5053450ed5fd4] = 4600000 * multi / price
    if bool(calcMode) != 1:
        require ext_code.size(stor5)
        call stor5.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args 0x2bc62e5910618383f984d278c9230fce9745b1, pearlSend[0x2bc62e5910618383f984d278c9230fce9745b1]
        require ext_call.success
    else:
        require price
        calcAmount += 7500000 * multi / price
        pearlSend[0x2bc62e5910618383f984d278c9230fce9745b1] = 7500000 * multi / price
}

function distribute() {
    require directorAddress == msg.sender
    require not complete
    require calcMode
    require calcAmount > 0
    require ext_code.size(stor5)
    call stor5.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require calcAmount <= ext_call.return_data[0]
    calcMode = 0
    if bool(calcMode) != 1:
        require ext_code.size(stor5)
        call stor5.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args 0xf483bc6d54c19833d7cea785d5053450ed5fd4, pearlSend[0xf483bc6d54c19833d7cea785d5053450ed5fd4]
        require ext_call.success
    else:
        require price
        calcAmount += 4600000 * multi / price
        pearlSend[0xf483bc6d54c19833d7cea785d5053450ed5fd4] = 4600000 * multi / price
    if bool(calcMode) != 1:
        require ext_code.size(stor5)
        call stor5.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args 0x2bc62e5910618383f984d278c9230fce9745b1, pearlSend[0x2bc62e5910618383f984d278c9230fce9745b1]
        require ext_call.success
    else:
        require price
        calcAmount += 7500000 * multi / price
        pearlSend[0x2bc62e5910618383f984d278c9230fce9745b1] = 7500000 * multi / price
    complete = 1
}



}

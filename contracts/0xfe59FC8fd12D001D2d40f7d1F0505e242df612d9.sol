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
    return code.data[162 len 1415]
}



// =====================  Runtime code  =====================


uint256 price;
uint256 multi;
uint256 calcAmount;
uint8 stor3;
uint8 stor3; offset 8
address directorAddress; offset 16
address pearlContractAddress;
address stor5;
mapping of uint256 pearlSend;

function multi() {
    return multi
}

function complete() {
    return bool(uint8(stor3.field_8))
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
    return bool(uint8(stor3.field_0))
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

function transfer(address arg1, uint256 arg2) {
    require directorAddress == msg.sender
    require ext_code.size(stor5)
    call stor5.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
}

function calculate(uint256 arg1) {
    require directorAddress == msg.sender
    require not uint8(stor3.field_8)
    require arg1 > 0
    price = arg1
    uint8(stor3.field_0) = 1
    calcAmount = 0
    if bool(uint8(stor3.field_0)) != 1:
        require ext_code.size(stor5)
        call stor5.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args 0xf483bc6d54c19833d7cea785d5053450ed5fd4, pearlSend[0xf483bc6d54c19833d7cea785d5053450ed5fd4]
        require ext_call.success
    else:
        require price
        require multi
        calcAmount += (4600000 * multi / price) + multi - 1 / multi * multi
        pearlSend[0xf483bc6d54c19833d7cea785d5053450ed5fd4] = (4600000 * multi / price) + multi - 1 / multi * multi
    if bool(uint8(stor3.field_0)) != 1:
        require ext_code.size(stor5)
        call stor5.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args 0x2bc62e5910618383f984d278c9230fce9745b1, pearlSend[0x2bc62e5910618383f984d278c9230fce9745b1]
        require ext_call.success
    else:
        require price
        require multi
        calcAmount += (7500000 * multi / price) + multi - 1 / multi * multi
        pearlSend[0x2bc62e5910618383f984d278c9230fce9745b1] = (7500000 * multi / price) + multi - 1 / multi * multi
}

function distribute() {
    require directorAddress == msg.sender
    require not uint8(stor3.field_8)
    require uint8(stor3.field_0)
    require calcAmount > 0
    require ext_code.size(stor5)
    call stor5.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require calcAmount <= ext_call.return_data[0]
    uint8(stor3.field_0) = 0
    if bool(uint8(stor3.field_0)) != 1:
        require ext_code.size(stor5)
        call stor5.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args 0xf483bc6d54c19833d7cea785d5053450ed5fd4, pearlSend[0xf483bc6d54c19833d7cea785d5053450ed5fd4]
        require ext_call.success
    else:
        require price
        require multi
        calcAmount += (4600000 * multi / price) + multi - 1 / multi * multi
        pearlSend[0xf483bc6d54c19833d7cea785d5053450ed5fd4] = (4600000 * multi / price) + multi - 1 / multi * multi
    if bool(uint8(stor3.field_0)) != 1:
        require ext_code.size(stor5)
        call stor5.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args 0x2bc62e5910618383f984d278c9230fce9745b1, pearlSend[0x2bc62e5910618383f984d278c9230fce9745b1]
        require ext_call.success
    else:
        require price
        require multi
        calcAmount += (7500000 * multi / price) + multi - 1 / multi * multi
        pearlSend[0x2bc62e5910618383f984d278c9230fce9745b1] = (7500000 * multi / price) + multi - 1 / multi * multi
    uint8(stor3.field_8) = 1
}



}

contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
address stor3;
uint256 stor4;
uint8 stor5;

function _fallback() payable {
    stor4 = 0
    stor5 = 0
    require not msg.value
    create contract with 0 wei
                    code: code.data[3654 len 2773], this.address
    require create.new_address
    stor1 = address(create.new_address)
    stor0 = code.data[6471 len 20]
    stor2 = code.data[6439 len 20]
    stor3 = code.data[6503 len 20]
    return code.data[234 len 3420]
}



// =====================  Runtime code  =====================


#
#  - foreignBuy(address arg1, uint256 arg2, string arg3)
#  - buyFor(address arg1)
#  - getBonus(uint256 arg1, uint256 arg2)
#  - _fallback()
#
const sub_82476282(?) = 2

const MIN_TOKEN_PRICE = 425

const TOKENS_FOR_SALE = 103548812 * 10^18


address stor0;
address sub_9aab90a1Address;
address teamAddress;
address tradeRobotAddress;
uint256 tokensSold;
uint8 stor5;

function tokensSold() {
    return tokensSold
}

function team() {
    return teamAddress
}

function tradeRobot() {
    return tradeRobotAddress
}

function sub_9aab90a1(?) {
    return sub_9aab90a1Address
}

function setRobot(address arg1) {
    require teamAddress == msg.sender
    tradeRobotAddress = arg1
}

function pauseIco() {
    require teamAddress == msg.sender
    require stor5 <= 3
    require stor5 == 1
    stor5 = 2
    emit PauseIco()
}

function startIco() {
    require teamAddress == msg.sender
    require stor5 <= 3
    if stor5:
        require stor5 <= 3
        require stor5 == 2
    stor5 = 1
    emit RunIco()
}

function withdrawEther(uint256 arg1) {
    require teamAddress == msg.sender
    call teamAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function withdrawToken(address arg1, uint256 arg2) {
    require teamAddress == msg.sender
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args teamAddress, arg2
    require ext_call.success
}

function finishIco(address arg1, address arg2) {
    require teamAddress == msg.sender
    require stor5 <= 3
    if stor5 != 1:
        require stor5 <= 3
        require stor5 == 2
    require ext_code.size(sub_9aab90a1Address)
    call sub_9aab90a1Address.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), 6250 * 10^18 * 3600
    require ext_call.success
    require ext_code.size(sub_9aab90a1Address)
    call sub_9aab90a1Address.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg2), 18750000 * 10^18
    require ext_call.success
    require ext_code.size(sub_9aab90a1Address)
    call sub_9aab90a1Address.unfreeze() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor5 = 3
    emit FinishIco(address(arg1), arg2);
}

function migrateSome(address[] arg1) {
    require tradeRobotAddress == msg.sender
    idx = 0
    while idx < arg1.length:
        require ext_code.size(stor0)
        call stor0.0x70a08231 with:
             gas gas_remaining - 710 wei
            args address(cd[((32 * idx) + arg1 + 36)])
        require ext_call.success
        require ext_call.return_data[0] > 0
        require ext_code.size(stor0)
        call stor0.burnTokens(address rg1) with:
             gas gas_remaining - 710 wei
            args address(cd[((32 * idx) + arg1 + 36)])
        require ext_call.success
        mem[132] = 2 * ext_call.return_data[0]
        require ext_code.size(sub_9aab90a1Address)
        call sub_9aab90a1Address.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args address(cd[((32 * idx) + arg1 + 36)]), 2 * ext_call.return_data[0]
        require ext_call.success
        mem[96] = address(cd[((32 * idx) + arg1 + 36)])
        mem[128] = 2 * ext_call.return_data[0]
        emit Migrate(address(cd[((32 * idx) + arg1 + 36)]), 2 * ext_call.return_data[0]);
        idx = idx + 1
        continue 
}



}

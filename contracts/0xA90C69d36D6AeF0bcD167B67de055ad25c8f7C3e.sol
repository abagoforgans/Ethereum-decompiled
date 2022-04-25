contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint8 stor6;

function _fallback() payable {
    stor3 = 0
    stor4 = 0
    stor6 = 0
    require not msg.value
    create contract with 0 wei
                    code: code.data[5148 len 5579], this.address
    require create.new_address
    stor0 = address(create.new_address)
    stor1 = code.data[10739 len 20]
    stor2 = code.data[10771 len 20]
    stor5 = code.data[10791 len 32]
    return code.data[431 len 4717]
}



// =====================  Runtime code  =====================


address cRCTokenAddress;
address teamAddress;
address tradeRobotAddress;
uint256 tokensSold;
uint256 sub_25f659cf;
uint256 tokenPrice;
uint8 icoState;

function sub_25f659cf(?) {
    return sub_25f659cf
}

function icoState() {
    require icoState <= 3
    return icoState
}

function tokensSold() {
    return tokensSold
}

function CRCToken() {
    return cRCTokenAddress
}

function tokenPrice() {
    return tokenPrice
}

function team() {
    return teamAddress
}

function tradeRobot() {
    return tradeRobotAddress
}

function setTokenPrice(uint256 arg1) {
    require msg.sender == teamAddress
    tokenPrice = arg1
}

function setRobot(address arg1) {
    require msg.sender == teamAddress
    tradeRobotAddress = arg1
}

function pauseIco() {
    require msg.sender == teamAddress
    require icoState <= 3
    require icoState == 1
    icoState = 2
    emit PauseIco()
}

function withdrawEther(uint256 arg1) {
    require msg.sender == teamAddress
    call teamAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function startIco() {
    require msg.sender == teamAddress
    require icoState <= 3
    if icoState:
        require icoState <= 3
        require icoState == 2
    icoState = 1
    emit RunIco()
}

function _fallback() payable {
    require icoState <= 3
    require icoState == 1
    require msg.value > 0
    require icoState <= 3
    require icoState == 1
    require ext_code.size(cRCTokenAddress)
    call cRCTokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value * tokenPrice
    require ext_call.success
    tokensSold += msg.value * tokenPrice
    sub_25f659cf += msg.value * tokenPrice
}

function buyFor(address arg1) payable {
    require icoState <= 3
    require icoState == 1
    require msg.value > 0
    require icoState <= 3
    require icoState == 1
    require ext_code.size(cRCTokenAddress)
    call cRCTokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), msg.value * tokenPrice
    require ext_call.success
    tokensSold += msg.value * tokenPrice
    sub_25f659cf += msg.value * tokenPrice
}

function foreignBuy(address arg1, uint256 arg2, string arg3) {
    require msg.sender == tradeRobotAddress
    require icoState <= 3
    require icoState == 1
    require arg2 > 0
    require icoState <= 3
    require icoState == 1
    require ext_code.size(cRCTokenAddress)
    call cRCTokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    tokensSold += arg2
    sub_25f659cf += arg2
    emit ForeignBuy(address(arg1), arg2, Array(len=arg3.length, data=arg3[all]));
}

function sub_d2eaa979(?) {
    require msg.sender == teamAddress
    require icoState <= 3
    if icoState != 1:
        require icoState <= 3
        require icoState == 2
    require ext_code.size(cRCTokenAddress)
    call cRCTokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[0] / 60:
        require ext_call.return_data[0] / 60
        require 15 * ext_call.return_data[0] / 60 / ext_call.return_data[0] / 60 == 15
    require ext_code.size(cRCTokenAddress)
    call cRCTokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), 15 * ext_call.return_data[0] / 60
    require ext_call.success
    if ext_call.return_data[0] / 60:
        require ext_call.return_data[0] / 60
        require 10 * ext_call.return_data[0] / 60 / ext_call.return_data[0] / 60 == 10
    require ext_code.size(cRCTokenAddress)
    call cRCTokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg2), 10 * ext_call.return_data[0] / 60
    require ext_call.success
    if ext_call.return_data[0] / 60:
        require ext_call.return_data[0] / 60
        require 15 * ext_call.return_data[0] / 60 / ext_call.return_data[0] / 60 == 15
    require ext_code.size(cRCTokenAddress)
    call cRCTokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg3), 15 * ext_call.return_data[0] / 60
    require ext_call.success
    if ext_call.return_data[0] / 60:
        require ext_call.return_data[0] / 60
        require 15 * ext_call.return_data[0] / 60 / ext_call.return_data[0] / 60 == 15
    sub_25f659cf += 15 * ext_call.return_data[0] / 60
    if ext_call.return_data[0] / 60:
        require ext_call.return_data[0] / 60
        require 10 * ext_call.return_data[0] / 60 / ext_call.return_data[0] / 60 == 10
    sub_25f659cf += 10 * ext_call.return_data[0] / 60
    if ext_call.return_data[0] / 60:
        require ext_call.return_data[0] / 60
        require 15 * ext_call.return_data[0] / 60 / ext_call.return_data[0] / 60 == 15
    sub_25f659cf += 15 * ext_call.return_data[0] / 60
    require ext_code.size(cRCTokenAddress)
    call cRCTokenAddress.finishMinting() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    icoState = 3
    emit 0x65a2433a: address(arg1), address(arg2), arg3
}



}

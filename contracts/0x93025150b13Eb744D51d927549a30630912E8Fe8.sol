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
                    code: code.data[3713 len 2671], this.address
    require create.new_address
    stor1 = address(create.new_address)
    stor0 = code.data[6428 len 20]
    stor2 = code.data[6396 len 20]
    stor3 = code.data[6460 len 20]
    return code.data[223 len 3490]
}



// =====================  Runtime code  =====================


#
#  - foreignBuy(address arg1, uint256 arg2, string arg3)
#  - buyFor(address arg1)
#  - getBonus(uint256 arg1, uint256 arg2)
#  - _fallback()
#
const sub_e2efaecc(?) = 4

const TOKENS_FOR_SALE = 331360000 * 10^18

const TOKEN_PRICE = 2824


address stor0;
address sub_3410208eAddress;
address teamAddress;
address tradeRobotAddress;
uint8 stor5;

function sub_3410208e(?) {
    return sub_3410208eAddress
}

function team() {
    return teamAddress
}

function tradeRobot() {
    return tradeRobotAddress
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
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args teamAddress, arg2
    require ext_call.success
}

function migrateSome(address[] arg1) {
    require tradeRobotAddress == msg.sender
    idx = 0
    while idx < arg1.length:
        require stor5 <= 3
        require stor5 != 3
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
        mem[132] = 4 * ext_call.return_data[0]
        require ext_code.size(sub_3410208eAddress)
        call sub_3410208eAddress.mint(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args address(cd[((32 * idx) + arg1 + 36)]), 4 * ext_call.return_data[0]
        require ext_call.success
        mem[96] = address(cd[((32 * idx) + arg1 + 36)])
        mem[128] = 4 * ext_call.return_data[0]
        emit Migrate(address(cd[((32 * idx) + arg1 + 36)]), 4 * ext_call.return_data[0]);
        idx = idx + 1
        continue 
}

function sub_d2eaa979(?) {
    require teamAddress == msg.sender
    require stor5 <= 3
    if stor5 != 1:
        require stor5 <= 3
        require stor5 == 2
    require ext_code.size(sub_3410208eAddress)
    call sub_3410208eAddress.totalSupply() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(sub_3410208eAddress)
    call sub_3410208eAddress.mint(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), 10 * 1110 * ext_call.return_data[0] / 889 / 111
    require ext_call.success
    require ext_code.size(sub_3410208eAddress)
    call sub_3410208eAddress.mint(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg2), 1110 * ext_call.return_data[0] / 889 / 10
    require ext_call.success
    require ext_code.size(sub_3410208eAddress)
    call sub_3410208eAddress.mint(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg3), 1110 * ext_call.return_data[0] / 889 / 111
    require ext_call.success
    require ext_code.size(sub_3410208eAddress)
    call sub_3410208eAddress.defrost() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor5 = 3
    emit 0x65a2433a: address(arg1), address(arg2), arg3
}



}

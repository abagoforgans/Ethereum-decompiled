contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
address stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint8 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;

function _fallback() payable {
    stor1 = 0xe04dcef2f8192fe2515801d945c3544af78fb10e
    stor2 = 0x99a69c878b8ac30c6982ecc91e1bb101cae1d4b1
    stor3 = 0xb2ddb8f765ce14d85c216d2c2f209069cc055683
    stor4 = 835
    stor5 = 680
    stor6 = 21048
    stor8 = 0
    stor9 = 0
    stor10 = 0
    stor11 = 0
    require not msg.value
    stor0 = msg.sender
    stor7 = 0
    return code.data[424 len 3957]
}



// =====================  Runtime code  =====================


address owner;
address presaleAddress;
address fundingAddress;
address tokenAddress;
uint256 pricePresale;
uint256 sub_921170f8;
uint256 rewardRate;
uint8 state;
uint256 sub_1f3dbaa6;
uint256 sub_e9c67dea;
uint256 sub_f0cc490e;
uint256 sub_d7e2038e;
mapping of uint256 sub_9a38dcbe;
mapping of uint256 sub_72649bb2;

function sub_1f3dbaa6(?) {
    return sub_1f3dbaa6
}

function sub_72649bb2(?) {
    return sub_72649bb2[arg1]
}

function rewardRate() {
    return rewardRate
}

function owner() {
    return owner
}

function pricePresale() {
    return pricePresale
}

function sub_921170f8(?) {
    return sub_921170f8
}

function sub_9a38dcbe(?) {
    return sub_9a38dcbe[arg1]
}

function state() {
    require state <= 1
    return state
}

function funding() {
    return fundingAddress
}

function sub_d7e2038e(?) {
    return sub_d7e2038e
}

function sub_e9c67dea(?) {
    return sub_e9c67dea
}

function sub_f0cc490e(?) {
    return sub_f0cc490e
}

function token() {
    return tokenAddress
}

function presale() {
    return presaleAddress
}

function changeSettings(uint256 arg1, uint256 arg2, uint256 arg3) {
    require msg.sender == owner
    pricePresale = arg1
    sub_921170f8 = arg2
    rewardRate = arg3
}

function updateState(uint256 arg1) {
    require msg.sender == owner
    if not arg1:
        state = 0
    else:
        if arg1 == 1:
            state = 1
    require state <= 1
    return state
}

function setup(address arg1, address arg2, address arg3) {
    require msg.sender == owner
    require arg3
    require arg1
    require arg2
    presaleAddress = arg1
    fundingAddress = arg2
    tokenAddress = arg3
}

function sub_d6a28277(?) {
    require msg.sender == owner
    require arg1
    require arg2
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    require ext_call.return_data[0]
}

function _fallback() {
    require state <= 1
    require state == 1
    require not msg.value
    require ext_code.size(presaleAddress)
    call presaleAddress.0xe123ff8 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_code.size(fundingAddress)
    call fundingAddress.0xe123ff8 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require (ext_call.return_data[0] * pricePresale) + (ext_call.return_data[0] * sub_921170f8) > sub_9a38dcbe[address(msg.sender)]
    require (ext_call.return_data[0] * pricePresale) + (ext_call.return_data[0] * sub_921170f8)
    sub_1f3dbaa6 += ext_call.return_data[0] * pricePresale
    sub_e9c67dea += ext_call.return_data[0] * sub_921170f8
    sub_f0cc490e = sub_f0cc490e + (ext_call.return_data[0] * pricePresale) + (ext_call.return_data[0] * sub_921170f8) - sub_9a38dcbe[address(msg.sender)]
    sub_d7e2038e += (ext_call.return_data[0] * pricePresale * rewardRate) + (ext_call.return_data[0] * sub_921170f8 * rewardRate) - (sub_9a38dcbe[address(msg.sender)] * rewardRate) / 100000
    sub_9a38dcbe[address(msg.sender)] = (ext_call.return_data[0] * pricePresale) + (ext_call.return_data[0] * sub_921170f8) - sub_9a38dcbe[address(msg.sender)]
    sub_72649bb2[address(msg.sender)] = (ext_call.return_data[0] * pricePresale * rewardRate) + (ext_call.return_data[0] * sub_921170f8 * rewardRate) - (sub_9a38dcbe[address(msg.sender)] * rewardRate) / 100000
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, (ext_call.return_data[0] * pricePresale) + (ext_call.return_data[0] * sub_921170f8) - sub_9a38dcbe[address(msg.sender)] + ((ext_call.return_data[0] * pricePresale * rewardRate) + (ext_call.return_data[0] * sub_921170f8 * rewardRate) - (sub_9a38dcbe[address(msg.sender)] * rewardRate) / 100000)
    require ext_call.success
    require ext_call.return_data[0]
}



}

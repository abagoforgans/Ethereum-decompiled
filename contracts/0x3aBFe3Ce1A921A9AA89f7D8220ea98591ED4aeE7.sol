contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
address stor2;
address stor3;
uint256 stor5;
address stor7;
uint8 stor9;

function _fallback() payable {
    stor9 = 0
    require not msg.value
    stor0 = msg.sender
    stor1 = 500000 * 10^18
    stor2 = code.data[2536 len 20]
    stor3 = code.data[2568 len 20]
    stor5 = 420564 * 3600
    stor7 = code.data[2504 len 20]
    return code.data[398 len 2094]
}



// =====================  Runtime code  =====================


const EXCHANGE_RATE = 700

const START = (420396 * 3600)


address owner;
uint256 tokensAvailable;
address stor2;
address stor3;
uint256 amountRaised;
uint256 deadline;
uint256 price;
address tokenRewardAddress;
mapping of uint256 balanceOf;

function deadline() {
    return deadline
}

function tokensAvailable() {
    return tokensAvailable
}

function tokenReward() {
    return tokenRewardAddress
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function amountRaised() {
    return amountRaised
}

function owner() {
    return owner
}

function price() {
    return price
}

function sellForBitcoin(address arg1, uint256 arg2) payable {
    require msg.sender == owner
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
}

function sendAfterIco(uint256 arg1) payable {
    require msg.sender == owner
    require block.timestamp >= deadline
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args stor3, arg1
    require ext_call.success
}

function _fallback() payable {
    require block.timestamp < deadline
    require block.timestamp >= 420396 * 3600
    require msg.value >= 3 * 10^18
    balanceOf[address(msg.sender)] += msg.value
    amountRaised += msg.value
    tokensAvailable -= msg.value
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, 700 * msg.value
    require ext_call.success
    call stor2 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}

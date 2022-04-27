contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
uint8 stor0; offset 168
address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
address stor7;

function _fallback() payable {
    uint8(stor0.field_168) = 0
    require not msg.value
    address(stor0.field_0) = msg.sender
    uint8(stor0.field_160) = 0
    stor1 = 419304 * 24 * 3600
    stor2 = 1512086399
    stor3 = 5625
    stor4 = 0
    stor5 = 0
    stor6 = 600 * 10^6
    require address(stor0.field_0) == msg.sender
    create contract with 0 wei
                    code: code.data[5909 len 2758], address(stor0.field_0), 10^9
    require create.new_address
    stor7 = address(create.new_address)
    emit 0xf1645174: address(stor0.field_0)
    return code.data[369 len 5540]
}



// =====================  Runtime code  =====================


uint8 stage; offset 160
uint8 stor0; offset 168
address owner;
uint256 sub_f7f7674f;
uint256 sub_a29e20de;
uint256 rate;
uint256 soldTokens;
uint256 weiRaised;
uint256 hardCap;
address tokenAddress;

function burningFinished() {
    return bool(stor0)
}

function rate() {
    return rate
}

function weiRaised() {
    return weiRaised
}

function currentStage() {
    require owner == msg.sender
    require stage <= 3
    return stage
}

function soldTokens() {
    return soldTokens
}

function owner() {
    return owner
}

function sub_a29e20de(?) {
    return sub_a29e20de
}

function stage() {
    require stage <= 3
    return stage
}

function sub_f7f7674f(?) {
    return sub_f7f7674f
}

function hardCap() {
    return hardCap
}

function token() {
    return tokenAddress
}

function pauseIco() {
    require owner == msg.sender
    require stage <= 3
    require stage == 1
    stage = 2
    return 1
}

function changeOwner(address arg1) {
    require owner == msg.sender
    require arg1
    emit 0x8ec56797: owner, arg1
    owner = arg1
}

function sub_bf0a0bcb(?) {
    require owner == msg.sender
    require stage <= 3
    require not stage
    require arg1 >= 0
    sub_f7f7674f = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function startIco() {
    require owner == msg.sender
    require soldTokens < hardCap
    require stage <= 3
    require not stage
    stage = 1
    return 1
}

function unpauseIco() {
    require owner == msg.sender
    require soldTokens < hardCap
    require stage <= 3
    require stage == 2
    stage = 1
    return 1
}

function finishIco() {
    require owner == msg.sender
    require stage <= 3
    if stage != 1:
        require stage <= 3
        require stage == 2
    stage = 3
    return 1
}

function sub_7c817fd2(?) {
    require owner == msg.sender
    create contract with 0 wei
                    code: code.data[2739 len 2758], owner, 10^9
    require create.new_address
    tokenAddress = address(create.new_address)
    return 1
}

function sub_d6953fb9(?) {
    require owner == msg.sender
    require stage <= 3
    if stage:
        require stage <= 3
        if stage != 1:
            require stage <= 3
            require stage == 2
    require arg1 >= 0
    sub_a29e20de = arg1
}

function changeRate(uint256 arg1) {
    require owner == msg.sender
    require soldTokens < hardCap
    require arg1 > 0
    require stage <= 3
    if stage:
        require stage <= 3
        if stage != 1:
            require stage <= 3
            require stage == 2
    rate = arg1
    emit RateChanged(rate, arg1);
}

function _fallback() payable {
    require soldTokens < hardCap
    if msg.value:
        require msg.value
        require rate * msg.value / msg.value == rate
    require (rate * msg.value / 10^18) + soldTokens >= soldTokens
    soldTokens += rate * msg.value / 10^18
    require ext_code.size(tokenAddress)
    call tokenAddress.moveTokens(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args owner, msg.sender, rate * msg.value / 10^18
    require ext_call.success
}

function buyTokens(address arg1) payable {
    require soldTokens < hardCap
    if msg.value:
        require msg.value
        require rate * msg.value / msg.value == rate
    require (rate * msg.value / 10^18) + soldTokens >= soldTokens
    soldTokens += rate * msg.value / 10^18
    require ext_code.size(tokenAddress)
    call tokenAddress.moveTokens(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args owner, address(arg1), rate * msg.value / 10^18
    require ext_call.success
}



}

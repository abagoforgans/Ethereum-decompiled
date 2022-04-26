contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;

function _fallback() payable {
    create contract with 0 wei
                    code: code.data[2156 len 3449]
    require create.new_address
    stor2 = address(create.new_address)
    require not msg.value
    stor0 = msg.sender
    stor1 = 0xc2c09c1307024c583baa56792b1a8bf705a8d918
    stor5 = 0
    stor3 = 0
    stor4 = 0
    return code.data[318 len 1838]
}



// =====================  Runtime code  =====================


address owner;
address stor1;
address tokenAddress;
uint256 start;
uint256 period;
uint256 rate;

function Start() {
    return start
}

function Rate() {
    return rate
}

function owner() {
    return owner
}

function Period() {
    return period
}

function token() {
    return tokenAddress
}

function setStart(uint256 arg1) {
    require msg.sender == owner
    start = arg1
}

function setPeriod(uint256 arg1) {
    require msg.sender == owner
    period = arg1
}

function setRate(uint256 arg1) {
    require msg.sender == owner
    rate = 100 * 10^6 * arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
}

function _fallback() payable {
    require msg.value >= 10^16
    require block.timestamp > start
    require block.timestamp < start + (24 * 3600 * period)
    call stor1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    if rate:
        require rate
        require rate * msg.value / rate == msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, rate * msg.value / 10^18
    require ext_call.success
}

function createTokens() payable {
    require msg.value >= 10^16
    require block.timestamp > start
    require block.timestamp < start + (24 * 3600 * period)
    call stor1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    if rate:
        require rate
        require rate * msg.value / rate == msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, rate * msg.value / 10^18
    require ext_call.success
}



}

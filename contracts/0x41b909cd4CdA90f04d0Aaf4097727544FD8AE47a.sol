contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor1 = 4969760
    require not msg.value
    stor0 = code.data[1011 len 20]
    stor2 = 0
    return code.data[138 len 861]
}



// =====================  Runtime code  =====================


const hardCap = 4000 * 10^18


address beneficiaryAddress;
uint256 startBlock;
uint256 amountRaised;

function beneficiary() {
    return beneficiaryAddress
}

function startBlock() {
    return startBlock
}

function amountRaised() {
    return amountRaised
}

function _fallback() payable {
    require block.number >= startBlock
    require amountRaised < 4000 * 10^18
    require msg.value >= 15 * 10^18
    require msg.value <= 50 * 10^18
    require 4000 * 10^18 >= amountRaised
    if msg.value < -amountRaised + 4000 * 10^18:
        require amountRaised + msg.value >= amountRaised
        require amountRaised + msg.value >= msg.value
        amountRaised += msg.value
        call beneficiaryAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        if msg.value != msg.value:
            require msg.value >= msg.value
            call msg.sender with:
                 gas 2300 wei
            require ext_call.success
    else:
        require 4000 * 10^18 >= amountRaised
        require 4000 * 10^18 >= -amountRaised + 4000 * 10^18
        amountRaised = 4000 * 10^18
        call beneficiaryAddress with:
           value -amountRaised + 4000 * 10^18 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        if -amountRaised + 4000 * 10^18 != msg.value:
            require msg.value >= -amountRaised + 4000 * 10^18
            call msg.sender with:
               value msg.value + amountRaised - 4000 * 10^18 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
}

function fundRaising() payable {
    require block.number >= startBlock
    require amountRaised < 4000 * 10^18
    require msg.value >= 15 * 10^18
    require msg.value <= 50 * 10^18
    require 4000 * 10^18 >= amountRaised
    if msg.value < -amountRaised + 4000 * 10^18:
        require amountRaised + msg.value >= amountRaised
        require amountRaised + msg.value >= msg.value
        amountRaised += msg.value
        call beneficiaryAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        if msg.value != msg.value:
            require msg.value >= msg.value
            call msg.sender with:
                 gas 2300 wei
            require ext_call.success
    else:
        require 4000 * 10^18 >= amountRaised
        require 4000 * 10^18 >= -amountRaised + 4000 * 10^18
        amountRaised = 4000 * 10^18
        call beneficiaryAddress with:
           value -amountRaised + 4000 * 10^18 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        if -amountRaised + 4000 * 10^18 != msg.value:
            require msg.value >= -amountRaised + 4000 * 10^18
            call msg.sender with:
               value msg.value + amountRaised - 4000 * 10^18 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
}



}

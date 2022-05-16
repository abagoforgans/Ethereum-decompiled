contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
address stor6;

function _fallback() payable {
    stor2 = 1528686900
    stor3 = 429501 * 3600
    stor4 = 50000000 * 10^18
    stor5 = 10000
    stor6 = 0x75abf69f2da1521e2769e7f093c8d8406a712bf
    create contract with 0 wei
                    code: code.data[1374 len 3206]
    require create.new_address
    stor0 = address(create.new_address)
    call 0x325890465307fbac3226d2688165205098936674 with:
       value 2 * 10^16 wei
         gas 0 wei
    require ext_call.success
    call 0x65dd7690901500fdd6b26f0a4d722e1e859ad301 with:
       value 8 * 10^16 wei
         gas 0 wei
    return code.data[303 len 1071]
}



// =====================  Runtime code  =====================


address tokenAddress;
uint256 collected;
uint256 date_start;
uint256 date_end;
uint256 hard_cap;
uint256 rate;
address funds_address;

function date_end() {
    return date_end
}

function rate() {
    return rate
}

function hard_cap() {
    return hard_cap
}

function collected() {
    return collected
}

function funds_address() {
    return funds_address
}

function date_start() {
    return date_start
}

function token() {
    return tokenAddress
}

function collectedEther() {
    return (collected / 10^18)
}

function daysRemaining() {
    if block.timestamp <= date_end:
        return (date_end - block.timestamp / 24 * 3600)
    else:
        return 0
}

function totalTokens() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function _fallback() payable {
    require block.timestamp >= date_start
    require block.timestamp <= date_end
    require msg.value + collected >= collected
    require msg.value + collected < hard_cap
    if not msg.value:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, 0
    else:
        require rate * msg.value / msg.value == rate
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, rate * msg.value
    require ext_call.success
    call funds_address with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require msg.value + collected >= collected
    collected += msg.value
}



}

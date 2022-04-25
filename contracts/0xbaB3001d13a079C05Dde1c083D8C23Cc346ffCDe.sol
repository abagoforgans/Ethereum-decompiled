contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
address stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint8 stor11;

function _fallback() {
    stor0 = msg.sender
    stor7 = code.data[4800 len 20]
    stor11 = 0
    stor3 = 0
    stor1 = code.data[4832 len 20]
    stor2 = code.data[4864 len 20]
    stor9 = 40000 * 10^18
    stor10 = 3000 * 10^18
    stor8 = 2500
    stor4 = 420324 * 3600
    stor5 = 421500 * 3600
    stor6 = 29
    return code.data[445 len 4343]
}



// =====================  Runtime code  =====================


address owner;
address multisigAddress;
address restrictedAddress;
uint256 collected;
uint256 startAt;
uint256 endAt;
uint256 restrictedPercent;
address tokenAddress;
uint256 rate;
uint256 hardcap;
uint256 softcap;
uint8 stor11;

function rate() {
    return rate
}

function restrictedPercent() {
    return restrictedPercent
}

function multisig() {
    return multisigAddress
}

function restricted() {
    return restrictedAddress
}

function endAt() {
    return endAt
}

function collected() {
    return collected
}

function owner() {
    return owner
}

function hardcap() {
    return hardcap
}

function finished() {
    return bool(stor11)
}

function startAt() {
    return startAt
}

function softcap() {
    return softcap
}

function token() {
    return tokenAddress
}

function setToken(address arg1) {
    require msg.sender == owner
    tokenAddress = arg1
}

function setMultisig(address arg1) {
    require msg.sender == owner
    multisigAddress = arg1
}

function setRestricted(address arg1) {
    require msg.sender == owner
    restrictedAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function finish() {
    require msg.sender == owner
    require not stor11
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[0]:
        require ext_call.return_data[0]
        require ext_call.return_data[0] * restrictedPercent / ext_call.return_data[0] == restrictedPercent
    require -restrictedPercent + 100
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args restrictedAddress, ext_call.return_data[0] * restrictedPercent / -restrictedPercent + 100
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x7d64bcb4 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor11 = 1
}

function sub_612b9472(?) {
    require collected < hardcap
    require block.timestamp > startAt
    require block.timestamp < endAt
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    if collected > hardcap:
        require not stor11
        require ext_code.size(tokenAddress)
        call tokenAddress.0x18160ddd with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if ext_call.return_data[0]:
            require ext_call.return_data[0]
            require ext_call.return_data[0] * restrictedPercent / ext_call.return_data[0] == restrictedPercent
        require -restrictedPercent + 100
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args restrictedAddress, ext_call.return_data[0] * restrictedPercent / -restrictedPercent + 100
        require ext_call.success
        require ext_code.size(tokenAddress)
        call tokenAddress.0x7d64bcb4 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        stor11 = 1
}

function _fallback() payable {
    call multisigAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require collected + msg.value >= collected
    require collected < hardcap
    require block.timestamp > startAt
    require block.timestamp < endAt
    if rate:
        require rate
        require rate * msg.value / rate == msg.value
    if block.timestamp < 420516 * 3600:
        if rate * msg.value / 10^18:
            require rate * msg.value / 10^18
            require 15 * rate * msg.value / 10^18 / rate * msg.value / 10^18 == 15
        require (rate * msg.value / 10^18) + (15 * rate * msg.value / 10^18 / 100) >= rate * msg.value / 10^18
        require ext_code.size(tokenAddress)
        call tokenAddress.0x313ce567 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if (rate * msg.value / 10^18) + (15 * rate * msg.value / 10^18 / 100):
            require (rate * msg.value / 10^18) + (15 * rate * msg.value / 10^18 / 100)
            require (rate * msg.value / 10^18 * 10^ext_call.return_data[0]) + (15 * rate * msg.value / 10^18 / 100 * 10^ext_call.return_data[0]) / (rate * msg.value / 10^18) + (15 * rate * msg.value / 10^18 / 100) == 10^ext_call.return_data[0]
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, (rate * msg.value / 10^18 * 10^ext_call.return_data[0]) + (15 * rate * msg.value / 10^18 / 100 * 10^ext_call.return_data[0])
    else:
        if block.timestamp < 420684 * 3600:
            if rate * msg.value / 10^18:
                require rate * msg.value / 10^18
                require 10 * rate * msg.value / 10^18 / rate * msg.value / 10^18 == 10
            require (rate * msg.value / 10^18) + (10 * rate * msg.value / 10^18 / 100) >= rate * msg.value / 10^18
            require ext_code.size(tokenAddress)
            call tokenAddress.0x313ce567 with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            if (rate * msg.value / 10^18) + (10 * rate * msg.value / 10^18 / 100):
                require (rate * msg.value / 10^18) + (10 * rate * msg.value / 10^18 / 100)
                require (rate * msg.value / 10^18 * 10^ext_call.return_data[0]) + (10 * rate * msg.value / 10^18 / 100 * 10^ext_call.return_data[0]) / (rate * msg.value / 10^18) + (10 * rate * msg.value / 10^18 / 100) == 10^ext_call.return_data[0]
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args msg.sender, (rate * msg.value / 10^18 * 10^ext_call.return_data[0]) + (10 * rate * msg.value / 10^18 / 100 * 10^ext_call.return_data[0])
        else:
            if block.timestamp >= 420852 * 3600:
                require rate * msg.value / 10^18 >= rate * msg.value / 10^18
                require ext_code.size(tokenAddress)
                call tokenAddress.0x313ce567 with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                if rate * msg.value / 10^18:
                    require rate * msg.value / 10^18
                    require rate * msg.value / 10^18 * 10^ext_call.return_data[0] / rate * msg.value / 10^18 == 10^ext_call.return_data[0]
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, rate * msg.value / 10^18 * 10^ext_call.return_data[0]
            else:
                if rate * msg.value / 10^18:
                    require rate * msg.value / 10^18
                    require 5 * rate * msg.value / 10^18 / rate * msg.value / 10^18 == 5
                require (rate * msg.value / 10^18) + (5 * rate * msg.value / 10^18 / 100) >= rate * msg.value / 10^18
                require ext_code.size(tokenAddress)
                call tokenAddress.0x313ce567 with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                if (rate * msg.value / 10^18) + (5 * rate * msg.value / 10^18 / 100):
                    require (rate * msg.value / 10^18) + (5 * rate * msg.value / 10^18 / 100)
                    require (rate * msg.value / 10^18 * 10^ext_call.return_data[0]) + (5 * rate * msg.value / 10^18 / 100 * 10^ext_call.return_data[0]) / (rate * msg.value / 10^18) + (5 * rate * msg.value / 10^18 / 100) == 10^ext_call.return_data[0]
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (rate * msg.value / 10^18 * 10^ext_call.return_data[0]) + (5 * rate * msg.value / 10^18 / 100 * 10^ext_call.return_data[0])
    require ext_call.success
    if collected > hardcap:
        require not stor11
        require ext_code.size(tokenAddress)
        call tokenAddress.0x18160ddd with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if ext_call.return_data[0]:
            require ext_call.return_data[0]
            require ext_call.return_data[0] * restrictedPercent / ext_call.return_data[0] == restrictedPercent
        require -restrictedPercent + 100
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args restrictedAddress, ext_call.return_data[0] * restrictedPercent / -restrictedPercent + 100
        require ext_call.success
        require ext_code.size(tokenAddress)
        call tokenAddress.0x7d64bcb4 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        stor11 = 1
}



}

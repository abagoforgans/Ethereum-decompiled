contract main {


// =======================  Init code  ======================


uint8 stor5;
uint8 stor5; offset 160
uint256 stor6;
uint256 stor7;
uint256 stor9;

function _fallback() {
    require uint8(stor5.field_160) <= 3
    emit StateTransition(uint8(stor5.field_0), 0);
    uint8(stor5.field_160) = 0
    stor6 = 0
    stor7 = 200
    stor9 = 0
    return code.data[238 len 2666]
}



// =====================  Runtime code  =====================


mapping of uint8 stor0;
address sub_22ecff3cAddress;
address stateControlAddress;
address whitelistControlAddress;
address sub_133d8f57Address;
uint8 stor5;
uint8 state; offset 160
address tokenReceiverAddress;
uint256 endBlock;
uint256 sub_ceaaca7e;
uint256 balanceForSale;
uint256 totalSold;

function stateControl() {
    return stateControlAddress
}

function endBlock() {
    return endBlock
}

function sub_133d8f57(?) {
    return sub_133d8f57Address
}

function sub_22ecff3c(?) {
    return sub_22ecff3cAddress
}

function whitelistControl() {
    return whitelistControlAddress
}

function totalSold() {
    return totalSold
}

function whitelist(address arg1) {
    return bool(stor0[arg1])
}

function tokenReceiver() {
    return tokenReceiverAddress
}

function state() {
    require state <= 3
    return state
}

function sub_ceaaca7e(?) {
    return sub_ceaaca7e
}

function balanceForSale() {
    return balanceForSale
}

function addToWhitelist(address arg1) {
    require whitelistControlAddress == msg.sender
    stor0[address(arg1)] = 1
    emit Whitelisted(arg1);
}

function startICO() {
    require stateControlAddress == msg.sender
    require state <= 3
    require state == 1
    require block.number < endBlock
    require ext_code.size(sub_22ecff3cAddress)
    call sub_22ecff3cAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    balanceForSale = 70 * ext_call.return_data[0] / 100
    require state <= 3
    emit StateTransition(stor5, 2);
    state = 2
}

function _fallback() payable {
    require state <= 3
    require state == 2
    require 1 == bool(stor0[address(msg.sender)])
    require block.number < endBlock
    require msg.value >= 10^18
    require totalSold + (msg.value * sub_ceaaca7e) < balanceForSale
    totalSold += msg.value * sub_ceaaca7e
    require ext_code.size(sub_22ecff3cAddress)
    call sub_22ecff3cAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value * sub_ceaaca7e
    require ext_call.success
    call sub_133d8f57Address with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function sub_94cf7e54(?) {
    require state <= 3
    if state:
        require state <= 3
        require state == 1
        require stateControlAddress == msg.sender
    sub_133d8f57Address = arg3
    tokenReceiverAddress = arg4
    stateControlAddress = arg1
    whitelistControlAddress = arg2
    sub_22ecff3cAddress = arg5
    endBlock = arg6
    require ext_code.size(arg5)
    call arg5.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    balanceForSale = 70 * ext_call.return_data[0] / 100
    require state <= 3
    emit StateTransition(stor5, 1);
    state = 1
}

function anyoneEndICO() {
    require state <= 3
    require state == 2
    require block.number > endBlock
    require ext_code.size(sub_22ecff3cAddress)
    call sub_22ecff3cAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args tokenReceiverAddress, (100 * totalSold / 70) - totalSold
    require ext_call.success
    require ext_code.size(sub_22ecff3cAddress)
    call sub_22ecff3cAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(sub_22ecff3cAddress)
    call sub_22ecff3cAddress.0x42966c68 with:
         gas gas_remaining - 710 wei
        args ext_call.return_data[0]
    require ext_call.success
    require state <= 3
    emit StateTransition(stor5, 3);
    state = 3
}

function endICO() {
    require stateControlAddress == msg.sender
    require state <= 3
    require state == 2
    require ext_code.size(sub_22ecff3cAddress)
    call sub_22ecff3cAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args tokenReceiverAddress, (100 * totalSold / 70) - totalSold
    require ext_call.success
    require ext_code.size(sub_22ecff3cAddress)
    call sub_22ecff3cAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(sub_22ecff3cAddress)
    call sub_22ecff3cAddress.0x42966c68 with:
         gas gas_remaining - 710 wei
        args ext_call.return_data[0]
    require ext_call.success
    require state <= 3
    emit StateTransition(stor5, 3);
    state = 3
}



}

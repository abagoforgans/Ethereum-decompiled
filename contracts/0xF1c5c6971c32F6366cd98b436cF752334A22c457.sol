contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint8 stor3; offset 160

function _fallback() payable {
    stor3 = 0
    require not msg.value
    stor0 = msg.sender
    create contract with 0 wei
                    code: code.data[3429 len 3362]
    require create.new_address
    stor1 = address(create.new_address)
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor2 = ext_call.return_data[0]
    return code.data[269 len 3160]
}



// =====================  Runtime code  =====================


address owner;
address tokenAddress;
uint256 zilla_remaining;
uint8 state; offset 160
address vaultAddress;
uint256 start;
uint256 unlimited;
uint256 end;
mapping of struct stor7;

function zilla_remaining() {
    return zilla_remaining
}

function owner() {
    return owner
}

function start() {
    return start
}

function state() {
    require state <= 2
    return state
}

function unlimited() {
    return unlimited
}

function end() {
    return end
}

function vault() {
    return vaultAddress
}

function token() {
    return tokenAddress
}

function setVault(address arg1) {
    require owner == msg.sender
    require arg1
    vaultAddress = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setEndDate(uint256 arg1) {
    require owner == msg.sender
    require state <= 2
    require state == 1
    require arg1 > block.timestamp
    require arg1 > start
    require arg1 > end
    end = arg1
}

function startCrowdsale(uint256 arg1, uint256 arg2, uint256 arg3, address arg4) {
    require owner == msg.sender
    require state <= 2
    require not state
    require arg1 >= block.timestamp
    require arg2 > arg1
    require arg2 < arg3
    require arg3 > arg1
    require arg4
    start = arg1
    unlimited = arg2
    end = arg3
    vaultAddress = arg4
    state = 1
    emit StartCrowdsale()
}

function whitelistRemove(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require owner == msg.sender
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 7
        stor7[mem[(32 * idx) + 140 len 20]].field_0 = 0
        stor7[mem[(32 * idx) + 140 len 20]].field_256 = 0
        idx = idx + 1
        continue 
}

function whitelistAdd(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require owner == msg.sender
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 7
        stor7[mem[(32 * idx) + 140 len 20]].field_0 = 1
        stor7[mem[(32 * idx) + 140 len 20]].field_256 = 15 * 10^18
        s = sha3(mem[(32 * idx) + 140 len 20], 7)
        idx = idx + 1
        continue 
}

function grantTokens(address arg1, uint256 arg2) {
    require state <= 2
    require state == 1
    require owner == msg.sender
    require zilla_remaining >= arg2
    require ext_code.size(tokenAddress)
    call tokenAddress.crowdsaleTransfer(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    require ext_call.return_data[0]
    require arg2 <= zilla_remaining
    zilla_remaining -= arg2
    emit TokenSold(address(arg1), 0, arg2);
}

function finalizeCrowdsale() {
    require owner == msg.sender
    require state <= 2
    require state == 1
    require end < block.timestamp
    require ext_code.size(tokenAddress)
    call tokenAddress.crowdsaleTransfer(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args vaultAddress, zilla_remaining
    require ext_call.success
    require ext_call.return_data[0]
    require zilla_remaining <= zilla_remaining
    zilla_remaining = 0
    emit TokenSold(vaultAddress, 0, zilla_remaining);
    state = 2
    require ext_code.size(tokenAddress)
    call tokenAddress.allowTrading() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    emit FinalizeCrowdsale()
}

function buyTokens(address arg1) payable {
    require state <= 2
    require state == 1
    require block.timestamp >= start
    require block.timestamp < end
    require stor7[address(arg1)].field_0
    if unlimited > block.timestamp:
        require stor7[address(arg1)].field_256 >= msg.value
        require msg.value <= stor7[address(arg1)].field_256
    require 750 * msg.value / 750 == msg.value
    require zilla_remaining >= 750 * msg.value
    call vaultAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.crowdsaleTransfer(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), 750 * msg.value
    require ext_call.success
    require ext_call.return_data[0]
    require 750 * msg.value <= zilla_remaining
    zilla_remaining += -750 * msg.value
    emit TokenSold(address(arg1), msg.value, 750 * msg.value);
}

function _fallback() payable {
    require state <= 2
    require state == 1
    require block.timestamp >= start
    require block.timestamp < end
    require stor7[address(msg.sender)].field_0
    if unlimited > block.timestamp:
        require stor7[address(msg.sender)].field_256 >= msg.value
        require msg.value <= stor7[address(msg.sender)].field_256
    require 750 * msg.value / 750 == msg.value
    require zilla_remaining >= 750 * msg.value
    call vaultAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.crowdsaleTransfer(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, 750 * msg.value
    require ext_call.success
    require ext_call.return_data[0]
    require 750 * msg.value <= zilla_remaining
    zilla_remaining += -750 * msg.value
    emit TokenSold(msg.sender, msg.value, 750 * msg.value);
}

function grantPresaleTokens(address[] arg1, uint256[] arg2) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + 160
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require state <= 2
    require state == 1
    require owner == msg.sender
    require arg1.length == arg2.length
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _19 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        _21 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require 1200 * mem[(32 * idx) + (32 * arg1.length) + 160] / 1200 == mem[(32 * idx) + (32 * arg1.length) + 160]
        require zilla_remaining >= 1200 * mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
        require ext_code.size(tokenAddress)
        call tokenAddress.crowdsaleTransfer(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args mem[mem[64] + 4], 1200 * _21
        require ext_call.success
        require ext_call.return_data[0]
        require 1200 * _21 <= zilla_remaining
        zilla_remaining += -1200 * _21
        mem[mem[64]] = address(_19)
        mem[mem[64] + 32] = _21
        mem[mem[64] + 64] = 1200 * _21
        emit TokenSold(address(_19), _21, 1200 * _21);
        idx = idx + 1
        continue 
}



}

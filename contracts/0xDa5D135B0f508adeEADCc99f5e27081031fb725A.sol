contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
address stor8;
address stor9;

function _fallback() payable {
    stor5 = 420546 * 3600
    stor6 = 421290 * 3600
    stor7 = 422706 * 3600
    require not msg.value
    stor0 = msg.sender
    stor1 = 10500000 * 10^18
    stor2 = 500000 * 10^18
    stor3 = 2000000 * 10^18
    stor4 = 536
    create contract with 0 wei
                    code: code.data[3259 len 2678]
    require create.new_address
    stor8 = address(create.new_address)
    stor9 = 0x6e794aaa2db51fc246b1979fb9a9849f53919d1e
    return code.data[244 len 3015]
}



// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


address owner;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 start;
uint256 end;
uint256 twoMonthsLater;
address tokenAddress;
address vaultAddress;
mapping of uint256 stor10;

function twoMonthsLater() {
    return twoMonthsLater
}

function owner() {
    return owner
}

function start() {
    return start
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

function destroy() {
    require owner == msg.sender
    require block.timestamp > twoMonthsLater
    require ext_code.size(tokenAddress)
    call tokenAddress.0x7d64bcb4 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.makeTradable() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args owner
    require ext_call.success
    selfdestruct(vaultAddress)
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function updatePrice(uint256 arg1) {
    require owner == msg.sender
    require block.timestamp < start
    stor4 = arg1
    emit PriceUpdated(arg1);
}

function cleanup() {
    require block.timestamp > twoMonthsLater
    call vaultAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x7d64bcb4 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.makeTradable() with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function refund() {
    require ext_code.size(tokenAddress)
    call tokenAddress.baseSupply() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] <= ext_call.return_data[0]
    if block.timestamp <= end:
        require 0 >= stor1
    require ext_code.size(tokenAddress)
    call tokenAddress.baseSupply() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] <= ext_call.return_data[0]
    require 0 < stor2
    require stor10[address(msg.sender)] <= stor10[address(msg.sender)]
    stor10[address(msg.sender)] = 0
    call msg.sender with:
       value stor10[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function withdrawl() {
    require ext_code.size(tokenAddress)
    call tokenAddress.baseSupply() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] <= ext_call.return_data[0]
    if block.timestamp <= end:
        require 0 >= stor1
    require ext_code.size(tokenAddress)
    call tokenAddress.baseSupply() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] <= ext_call.return_data[0]
    require 0 >= stor2
    call vaultAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x7d64bcb4 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.makeTradable() with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function _fallback() payable {
    require ext_code.size(tokenAddress)
    call tokenAddress.baseSupply() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] <= ext_call.return_data[0]
    require 0 <= stor1
    require block.timestamp >= start
    require block.timestamp <= end
    if stor4:
        require stor4
        require msg.value * stor4 / stor4 == msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.baseSupply() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] <= ext_call.return_data[0]
    if 0 >= stor3:
        require msg.value + stor10[address(msg.sender)] >= stor10[address(msg.sender)]
        stor10[address(msg.sender)] += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, msg.value * stor4
        require ext_call.success
        emit TokenSold(address(msg.sender), msg.value, msg.value * stor4, 0);
    else:
        require (msg.value * stor4 / 5) + (msg.value * stor4) >= msg.value * stor4
        require msg.value + stor10[address(msg.sender)] >= stor10[address(msg.sender)]
        stor10[address(msg.sender)] += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, (msg.value * stor4 / 5) + (msg.value * stor4)
        require ext_call.success
        emit TokenSold(address(msg.sender), msg.value, (msg.value * stor4 / 5) + (msg.value * stor4), 1);
}

function createTokens(address arg1) payable {
    require ext_code.size(tokenAddress)
    call tokenAddress.baseSupply() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] <= ext_call.return_data[0]
    require 0 <= stor1
    require block.timestamp >= start
    require block.timestamp <= end
    if stor4:
        require stor4
        require msg.value * stor4 / stor4 == msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.baseSupply() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] <= ext_call.return_data[0]
    if 0 >= stor3:
        require msg.value + stor10[address(msg.sender)] >= stor10[address(msg.sender)]
        stor10[address(msg.sender)] += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args address(arg1), msg.value * stor4
        require ext_call.success
        emit TokenSold(address(arg1), msg.value, msg.value * stor4, 0);
    else:
        require (msg.value * stor4 / 5) + (msg.value * stor4) >= msg.value * stor4
        require msg.value + stor10[address(msg.sender)] >= stor10[address(msg.sender)]
        stor10[address(msg.sender)] += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args address(arg1), (msg.value * stor4 / 5) + (msg.value * stor4)
        require ext_call.success
        emit TokenSold(address(arg1), msg.value, (msg.value * stor4 / 5) + (msg.value * stor4), 1);
}



}

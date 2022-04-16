contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor9;
uint256 stor10;
uint256 stor11;
address stor12;

function _fallback() payable {
    uint8(stor0.field_160) = 0
    require not msg.value
    address(stor0.field_0) = msg.sender
    stor5 = 1
    stor9 = 1
    stor3 = 50
    stor4 = 80
    address(stor0.field_0) = msg.sender
    stor10 = 4310969
    stor11 = 4311069
    stor12 = msg.sender
    return code.data[155 len 4137]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
address tokenContractAddress;
uint256 amountRaised;
uint256 sub_c5459b9b;
uint256 presaleCap;
uint256 price;
uint256 tokensSold;
uint256 sub_c14606f5;
uint256 sub_d4bda7d7;
uint256 minPurchase;
uint256 startBlock;
uint256 endBlock;
address stor12;
mapping of uint8 stor13;
mapping of uint256 stor14;
mapping of uint256 stor15;

function endBlock() {
    return endBlock
}

function minPurchase() {
    return minPurchase
}

function startBlock() {
    return startBlock
}

function tokensSold() {
    return tokensSold
}

function tokenContract() {
    return tokenContractAddress
}

function paused() {
    return bool(stor0)
}

function presaleCap() {
    return presaleCap
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

function sub_c14606f5(?) {
    return sub_c14606f5
}

function sub_c5459b9b(?) {
    return sub_c5459b9b
}

function sub_d4bda7d7(?) {
    return sub_d4bda7d7
}

function extend(uint256 arg1) {
    require stor12 == msg.sender
    endBlock = arg1 + block.number
}

function setBackend(address arg1) {
    require owner == msg.sender
    require arg1
    stor12 = arg1
}

function setTokenContract(address arg1) {
    require owner == msg.sender
    tokenContractAddress = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function unpause() {
    require owner == msg.sender
    require stor0
    stor0 = 0
    emit Unpause()
    return 1
}

function pause() {
    require owner == msg.sender
    require not stor0
    stor0 = 1
    emit Pause()
    return 1
}

function withdraw(address arg1) {
    require stor12 == msg.sender
    if stor15[address(arg1)] > 0:
        stor15[address(arg1)] = 0
        call arg1 with:
           value stor15[address(arg1)] wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function sub_0822cc0e(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[ceil32(arg1.length) + 128] = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function sub_e1e8ed6e(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[ceil32(arg1.length) + 128] = stor13[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]]
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function sub_72ce6d73(?) {
    mem[128 len arg1.length] = arg1[all]
    require stor12 == msg.sender
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    if not stor13[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]]:
        stor13[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]] = 3
        sub_c14606f5++
}

function refund(address arg1) {
    require stor12 == msg.sender
    require stor14[address(arg1)] > 0
    require price
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.refund(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), stor14[address(arg1)] / price
    require ext_call.success
    require ext_call.return_data[0]
    require stor14[address(arg1)] + stor15[address(arg1)] >= stor15[address(arg1)]
    stor15[address(arg1)] += stor14[address(arg1)]
    stor14[address(arg1)] = 0
    require stor14[address(arg1)] <= amountRaised
    amountRaised -= stor14[address(arg1)]
    require stor14[address(arg1)] / price <= tokensSold
    tokensSold -= stor14[address(arg1)] / price
}

function sub_2263fa23(?) {
    require amountRaised < sub_c5459b9b
    require block.number > endBlock
    require stor14[address(arg1)] > 0
    require price
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.refund(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), stor14[address(arg1)] / price
    require ext_call.success
    require ext_call.return_data[0]
    require stor14[address(arg1)] + stor15[address(arg1)] >= stor15[address(arg1)]
    stor15[address(arg1)] += stor14[address(arg1)]
    stor14[address(arg1)] = 0
    require stor14[address(arg1)] <= amountRaised
    amountRaised -= stor14[address(arg1)]
    require stor14[address(arg1)] / price <= tokensSold
    tokensSold -= stor14[address(arg1)] / price
}

function sub_d87af356(?) {
    mem[128 len arg1.length] = arg1[all]
    require stor12 == msg.sender
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    if not stor13[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]]:
        if not stor13[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]]:
            sub_c14606f5++
        sub_d4bda7d7++
        stor13[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]] = 1
    else:
        if 3 == stor13[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]]:
            if not stor13[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]]:
                sub_c14606f5++
            sub_d4bda7d7++
            stor13[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]] = 1
}

function _fallback() payable {
    require not stor0
    mem[128 len calldata.size] = call.data[0 len calldata.size]
    mem[ceil32(calldata.size) + 128 len floor32(calldata.size)] = call.data[0 len floor32(calldata.size)]
    mem[ceil32(calldata.size) + floor32(calldata.size) + -(calldata.size % 32) + 160 len calldata.size % 32] = mem[floor32(calldata.size) + -(calldata.size % 32) + 160 len calldata.size % 32]
    if msg.value < minPurchase:
        require not msg.value
        require 1 == stor13[call.data[0 len floor32(calldata.size)]][mem[ceil32(calldata.size) + floor32(calldata.size) + 128 len calldata.size % 32]]
    mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
    mem[(2 * ceil32(calldata.size)) + 160 len floor32(calldata.size)] = call.data[0 len floor32(calldata.size)]
    mem[(2 * ceil32(calldata.size)) + floor32(calldata.size) + -(calldata.size % 32) + 192 len calldata.size % 32] = mem[ceil32(calldata.size) + floor32(calldata.size) + -(calldata.size % 32) + 192 len calldata.size % 32]
    require stor13[call.data[0 len floor32(calldata.size)]][mem[(2 * ceil32(calldata.size)) + floor32(calldata.size) + 160 len calldata.size % 32]] > 0
    require block.number >= startBlock
    require block.number <= endBlock
    require amountRaised < presaleCap
    require price
    require price
    require msg.value / price * price / price == msg.value / price
    require msg.value / price * price <= msg.value
    mem[(2 * ceil32(calldata.size)) + 192 len calldata.size] = call.data[0 len calldata.size]
    mem[(4 * ceil32(calldata.size)) + 192 len floor32(calldata.size)] = call.data[0 len floor32(calldata.size)]
    mem[(4 * ceil32(calldata.size)) + floor32(calldata.size) + -(calldata.size % 32) + 224 len calldata.size % 32] = mem[(2 * ceil32(calldata.size)) + floor32(calldata.size) + -(calldata.size % 32) + 224 len calldata.size % 32]
    if stor13[call.data[0 len floor32(calldata.size)]][mem[(4 * ceil32(calldata.size)) + floor32(calldata.size) + 192 len calldata.size % 32]] != 1:
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.distribute(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args msg.sender, msg.value / price
        require ext_call.success
        require ext_call.return_data[0]
        require msg.value + amountRaised >= amountRaised
        amountRaised += msg.value
        require (msg.value / price) + tokensSold >= tokensSold
        tokensSold += msg.value / price
    else:
        require (msg.value / price) + 10 >= msg.value / price
        mem[(4 * ceil32(calldata.size)) + 224 len calldata.size] = call.data[0 len calldata.size]
        mem[(6 * ceil32(calldata.size)) + 224 len floor32(calldata.size)] = call.data[0 len floor32(calldata.size)]
        mem[(6 * ceil32(calldata.size)) + floor32(calldata.size) + -(calldata.size % 32) + 256 len calldata.size % 32] = mem[(4 * ceil32(calldata.size)) + floor32(calldata.size) + -(calldata.size % 32) + 256 len calldata.size % 32]
        stor13[call.data[0 len floor32(calldata.size)]][mem[(6 * ceil32(calldata.size)) + floor32(calldata.size) + 224 len calldata.size % 32]] = 2
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.distribute(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args msg.sender, (msg.value / price) + 10
        require ext_call.success
        require ext_call.return_data[0]
        require msg.value + amountRaised >= amountRaised
        amountRaised += msg.value
        require (msg.value / price) + tokensSold + 10 >= tokensSold
        tokensSold = (msg.value / price) + tokensSold + 10
    require msg.value + stor14[address(msg.sender)] >= stor14[address(msg.sender)]
    stor14[address(msg.sender)] += msg.value
    require msg.value - (msg.value / price * price) + stor15[address(msg.sender)] >= stor15[address(msg.sender)]
    stor15[address(msg.sender)] = msg.value - (msg.value / price * price) + stor15[address(msg.sender)]
}



}

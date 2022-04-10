contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;
address stor1;
uint256 stor2;
uint256 stor5;
uint256 stor6;
uint256 stor7;

function _fallback() payable {
    uint8(stor0.field_160) = 0
    require not msg.value
    address(stor0.field_0) = msg.sender
    require code.data[2496 len 20]
    require code.data[2548 len 32] > code.data[2516 len 32]
    require block.timestamp + (50 * 3600) >= block.timestamp
    stor5 = block.timestamp + (50 * 3600)
    stor6 = code.data[2516 len 32]
    stor7 = code.data[2548 len 32]
    stor1 = code.data[2496 len 20]
    stor2 = 0
    return code.data[276 len 2208]
}



// =====================  Runtime code  =====================


const sub_de5c4721(?) = 44 * 10^6


uint8 stor0; offset 160
address owner;
address stor1;
uint256 stor2;
mapping of uint256 balanceOf;
array of struct stor4;
uint256 salePeriod;
uint256 stor6;
uint256 stor7;

function paused() {
    return bool(stor0)
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function sub_91146125(?) {
    require owner == msg.sender
    return stor4.length
}

function salePeriod() {
    return salePeriod
}

function numberOfTokensLeft() {
    require stor2 <= 44 * 10^6
    return (-stor2 + 44 * 10^6)
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function pause() {
    require owner == msg.sender
    require not stor0
    stor0 = 1
    emit Pause()
    return 1
}

function unpause() {
    require owner == msg.sender
    require stor0
    require block.timestamp + (50 * 3600) >= block.timestamp
    salePeriod = block.timestamp + (50 * 3600)
    require owner == msg.sender
    require stor0
    stor0 = 0
    emit Unpause()
    return 0
}

function finalize() {
    require not stor0
    require owner == msg.sender
    if block.number < stor7:
        require stor2 >= 40 * 10^6
    call stor1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    stor0 = 1
}

function sub_0409eb85(?) {
    require owner == msg.sender
    require stor0
    if stor4.length:
        mem[160] = address(stor4.field_0)
        idx = 160
        s = 0
        while (32 * stor4.length) + 128 > idx:
            mem[idx + 32] = stor4[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * stor4.length) + 160] = 32
    mem[(32 * stor4.length) + 192] = stor4.length
    if Mask(251, 0, stor4.length):
        mem[(32 * stor4.length) + 224] = mem[160]
        mem[(32 * stor4.length) + 256 len floor32((32 * stor4.length) - 1)] = mem[192 len floor32((32 * stor4.length) - 1)]
    return Array(len=stor4.length, data=mem[(32 * stor4.length) + 224 len 32 * stor4.length])
}

function _fallback() payable {
    require not stor0
    require block.timestamp <= salePeriod
    require block.number >= stor6
    require block.number <= stor7
    require stor2 < 44 * 10^6
    require msg.value >= 5 * 10^14
    require msg.value <= 250 * 10^18
    require msg.value / 5 * 10^14 >= 1
    require (msg.value / 5 * 10^14 / 10) + (msg.value / 5 * 10^14) >= msg.value / 5 * 10^14
    require (msg.value / 5 * 10^14 / 10) + (msg.value / 5 * 10^14) + stor2 >= stor2
    stor2 = (msg.value / 5 * 10^14 / 10) + (msg.value / 5 * 10^14) + stor2
    require (msg.value / 5 * 10^14 / 10) + (msg.value / 5 * 10^14) + stor2 <= 44 * 10^6
    call stor1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    stor4.length++
    if not stor4.length <= stor4.length + 1:
        idx = stor4.length + 1
        while stor4.length > idx:
            stor4[idx].field_0 = 0
            idx = idx + 1
            continue 
    stor4[stor4.length].field_0 = msg.sender
    require (msg.value / 5 * 10^14 / 10) + (msg.value / 5 * 10^14) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] = (msg.value / 5 * 10^14 / 10) + (msg.value / 5 * 10^14) + balanceOf[address(msg.sender)]
}



}

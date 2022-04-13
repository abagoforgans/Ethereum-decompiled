contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;
address stor1;
uint256 stor2;

function _fallback() payable {
    uint8(stor0.field_160) = 0
    require not msg.value
    address(stor0.field_0) = msg.sender
    require code.data[2502 len 20]
    stor1 = code.data[2502 len 20]
    stor2 = 0
    return code.data[154 len 2336]
}



// =====================  Runtime code  =====================


const name = 'HyperQuant Presale Token'

const decimals = 18

const symbol = 'HQPreSale'

const sub_de5c4721(?) = 10 * 10^6


uint8 stor0; offset 160
address owner;
address stor1;
uint256 stor2;
mapping of uint256 balanceOf;
array of struct stor4;

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

function numberOfTokensLeft() {
    require stor2 <= 10 * 10^6
    return (-stor2 + 10 * 10^6)
}

function unpause() {
    require owner == msg.sender
    require stor0
    stor0 = 0
    emit Unpause()
}

function pause() {
    require owner == msg.sender
    require not stor0
    stor0 = 1
    emit Pause()
}

function finalize() {
    require not stor0
    require owner == msg.sender
    call stor1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    stor0 = 1
}

function _fallback() payable {
    require not stor0
    require stor2 <= 10 * 10^6
    require msg.value
    require msg.value
    require 440 * msg.value / msg.value == 440
    require 440 * msg.value > 1
    require (440 * msg.value) + stor2 >= stor2
    stor2 += 440 * msg.value
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
    require (440 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += 440 * msg.value
    emit CreatePreSale((440 * msg.value), msg.sender);
}

function sub_0409eb85(?) {
    require owner == msg.sender
    require stor0
    if not stor4.length:
        mem[(32 * stor4.length) + 160] = 32
        mem[(32 * stor4.length) + 192] = stor4.length
        mem[(32 * stor4.length) + 224 len floor32(stor4.length)] = mem[160 len floor32(stor4.length)]
        return memory
          from (32 * stor4.length) + 160
           len (96 * stor4.length) + 64
    mem[160] = address(stor4.field_0)
    idx = 160
    s = 0
    while (32 * stor4.length) + 128 > idx:
        mem[idx + 32] = stor4[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor4.length) + 224 len floor32(stor4.length)] = mem[160 len floor32(stor4.length)]
    return Array(len=stor4.length, data=mem[160 len floor32(stor4.length)], mem[(32 * stor4.length) + floor32(stor4.length) + 224 len (32 * stor4.length) - floor32(stor4.length)]), 
}



}

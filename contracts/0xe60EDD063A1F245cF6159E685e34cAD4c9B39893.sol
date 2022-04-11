contract main {


// =======================  Init code  ======================


address stor3;
uint8 stor6;
address stor6; offset 24
uint256 stor6; offset 16
uint256 stor6; offset 8
address stor7;

function _fallback() payable {
    uint8(stor6.field_0) = 1
    Mask(248, 0, stor6.field_8) = 1
    Mask(240, 0, stor6.field_16) = 0
    require not msg.value
    stor3 = msg.sender
    address(stor6.field_24) = code.data[7702 len 20]
    stor7 = code.data[7734 len 20]
    return code.data[350 len 7340]
}



// =====================  Runtime code  =====================


const name = 'Safe Token'

const decimals = 18

const sub_429d8987(?) = 1000000 * 10^18

const symbol = 'SAFE'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
address ownerCandidate;
uint256 stor5;
uint8 stor6;
uint8 stor6; offset 8
uint8 stor6; offset 16
address sub_a46f0b65Address; offset 24
uint256 stor6; offset 16
uint256 stor6; offset 8
address sub_e7d0a383Address;
array of uint256 sub_be597219;
uint256 tokenPrice;
uint256 ethUSD;
uint256 diff;

function totalSupply() {
    return totalSupply
}

function ownerCandidate() {
    return ownerCandidate
}

function saleActive() {
    return bool(uint8(stor6.field_16))
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function tokenPrice() {
    return tokenPrice
}

function owner() {
    return owner
}

function diff() {
    return diff
}

function sub_a46f0b65(?) {
    return sub_a46f0b65Address
}

function ethUSD() {
    return ethUSD
}

function sub_b9a1db72(?) {
    return bool(uint8(stor6.field_0))
}

function sub_be597219(?) {
    return sub_be597219[0 len sub_be597219.length]
}

function sub_d7783688(?) {
    return bool(uint8(stor6.field_8))
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function sub_e7d0a383(?) {
    return sub_e7d0a383Address
}

function sub_5cef8786(?) {
    require owner == msg.sender
    ownerCandidate = arg1
    stor5 = arg2
}

function sub_5780ff76(?) {
    require owner == msg.sender
    require uint8(stor6.field_0)
    sub_a46f0b65Address = arg1
}

function sub_7788b037(?) {
    require owner == msg.sender
    require uint8(stor6.field_8)
    sub_e7d0a383Address = arg1
}

function openSale() {
    require owner == msg.sender
    require not uint8(stor6.field_16)
    Mask(240, 0, stor6.field_16) = 1
}

function sub_0abb2a67(?) {
    require owner == msg.sender
    require sha3(sub_a46f0b65Address) == arg1
    uint8(stor6.field_0) = 0
}

function sub_863f3d6c(?) {
    require owner == msg.sender
    require sha3(sub_e7d0a383Address) == arg1
    Mask(248, 0, stor6.field_8) = 0
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function acceptManagement(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    require msg.sender == ownerCandidate
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    require sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]) == stor5
    owner = ownerCandidate
}

function calculatePrice() {
    require ext_code.size(sub_e7d0a383Address)
    call sub_e7d0a383Address.0x173a0da2 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    ethUSD = ext_call.return_data[0]
    require ext_code.size(sub_a46f0b65Address)
    call sub_a46f0b65Address.difficulty() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    diff = ext_call.return_data[0]
    require ext_code.size(sub_e7d0a383Address)
    call sub_e7d0a383Address.0x173a0da2 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(sub_a46f0b65Address)
    call sub_a46f0b65Address.difficulty() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    s = (1000000000 * 10^18 * ext_call.return_data[0]) + 1 / 2
    t = 1000000000 * 10^18 * ext_call.return_data[0]
    while s < t:
        require s
        s = (1000000000 * 10^18 * ext_call.return_data[0] / s) + s / 2
        t = s
        continue 
    require ext_call.return_data[0]
    tokenPrice = t / ext_call.return_data[0]
    emit TokenPrice(tokenPrice);
}

function _fallback() payable {
    require uint8(stor6.field_16)
    require msg.value
    require totalSupply < 1000000 * 10^18
    call 0xb10808423971c9bb5e0a2587e055d7b9a516cd59 with:
       value 5 * eth.balance(this.address) / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call 0x7dfba43287d2847ed997ddeb1e0de338540c60ed with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_code.size(sub_e7d0a383Address)
    call sub_e7d0a383Address.0x173a0da2 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    ethUSD = ext_call.return_data[0]
    require ext_code.size(sub_a46f0b65Address)
    call sub_a46f0b65Address.difficulty() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    diff = ext_call.return_data[0]
    require ext_code.size(sub_e7d0a383Address)
    call sub_e7d0a383Address.0x173a0da2 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(sub_a46f0b65Address)
    call sub_a46f0b65Address.difficulty() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    s = (1000000000 * 10^18 * ext_call.return_data[0]) + 1 / 2
    t = 1000000000 * 10^18 * ext_call.return_data[0]
    while s < t:
        require s
        s = (1000000000 * 10^18 * ext_call.return_data[0] / s) + s / 2
        t = s
        continue 
    require ext_call.return_data[0]
    tokenPrice = t / ext_call.return_data[0]
    emit TokenPrice(tokenPrice);
    require tokenPrice
    totalSupply += 10^18 * msg.value / tokenPrice
    require totalSupply + (10^18 * msg.value / tokenPrice) > totalSupply
    balanceOf[address(msg.sender)] += 10^18 * msg.value / tokenPrice
    emit Emission((10^18 * msg.value / tokenPrice), msg.sender);
}



}

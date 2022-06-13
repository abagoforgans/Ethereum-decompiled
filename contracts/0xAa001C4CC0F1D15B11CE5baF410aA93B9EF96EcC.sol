contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
mapping of uint256 stor2;
uint256 stor5;
array of uint256 stor6;

function _fallback() payable {
    mem[128] = 0x5b2057656c636f6d6520746f2074686520c2ab5a454e49544820545441207c20
    mem[160] = 0x546f6b656e73205474616e736665722041646170746174696f6ec2bb2050726f
    mem[192] = 'ject 0xbt ]'
    stor1.length = 151
    s = 0
    idx = 128
    while 203 > idx:
        stor1[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 3
    while stor1.length + 31 / 32 > idx:
        stor1[idx] = 0
        idx = idx + 1
        continue 
    stor5 = 75 * 10^9 * 24 * 3600
    mem[256] = 0x5b2057656c636f6d6520746f2074686520c2ab5a454e49544820545441207c20
    mem[288] = 0x546f6b656e73205474616e736665722041646170746174696f6ec2bb2050726f
    mem[320] = 'ject 0xbt ]'
    stor6.length = 151
    s = 0
    idx = 256
    while 331 > idx:
        stor6[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 3
    while stor6.length + 31 / 32 > idx:
        stor6[idx] = 0
        idx = idx + 1
        continue 
    require not msg.value
    stor0 = msg.sender
    stor2[address(msg.sender)] = stor5
    return code.data[669 len 5527]
}



// =====================  Runtime code  =====================


const name = 'ZENITH TTA'

const decimals = 6

const symbol = 'ZENITH'


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 news;
mapping of uint256 tokens;

function getNews() {
    return news[0 len news.length]
}

function totalSupply() {
    return totalSupply
}

function tokens(address arg1, address arg2) {
    return tokens[arg1][arg2]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function setNews(string arg1) {
    news[] = Array(len=arg1.length, data=arg1[all])
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_e395a1ff(?) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_b00df697(?) {
    require arg1
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, address(arg2), arg3
    require ext_call.success
    require ext_call.return_data[0]
    emit Transfer(address(arg1), address(arg2), arg3, tokens[address(arg1)][address(msg.sender)]);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    if allowance[address(arg1)][address(msg.sender)] < -1:
        allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}

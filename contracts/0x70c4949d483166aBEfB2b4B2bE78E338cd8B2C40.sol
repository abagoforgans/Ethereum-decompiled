contract main {


// =======================  Init code  ======================


bool stor0; offset 256
uint8 stor0; offset 160
uint8 stor0; offset 168
address stor0;
mapping of uint256 stor1;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;

function _fallback() payable {
    address(stor0.field_0) = msg.sender
    uint8(stor0.field_160) = 1
    uint8(stor0.field_168) = 1
    stor0.field_256 % 1 = 0
    stor3 = 125 * 3600
    stor4 = 0
    stor5 = 500000
    stor6 = 750000
    require not msg.value
    stor1[address(stor0.field_0)] = 50000
    emit Transfer(50000, 0, address(stor0.field_0));
    return code.data[243 len 3143]
}



// =====================  Runtime code  =====================


const name = 'Frikandel'

const decimals = 0

const symbol = 'FRIKANDEL'


uint8 stor0; offset 160
uint8 stor0; offset 168
address contractOwner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 stor3;
uint256 airdropSpent;
uint256 totalSupply;
uint256 stor6;

function totalSupply() {
    return totalSupply
}

function airdropSpent() {
    return airdropSpent
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function Killable() {
    return bool(uint8(stor0.field_168))
}

function ICOEnabled() {
    return bool(uint8(stor0.field_160))
}

function contractOwner() {
    return contractOwner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function Destroy() {
    require contractOwner == msg.sender
    if bool(uint8(stor0.field_168)) != 1:
    selfdestruct(contractOwner)
}

function enableICO() {
    require contractOwner == msg.sender
    uint8(stor0.field_160) = 1
}

function disableICO() {
    require contractOwner == msg.sender
    uint8(stor0.field_160) = 0
}

function transferOwnership(address arg1) {
    require contractOwner == msg.sender
    contractOwner = arg1
}

function disableSuicide() {
    require contractOwner == msg.sender
    uint8(stor0.field_168) = 0
    return 1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        if allowance[address(msg.sender)][address(arg1)]:
            return 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)] + arg2
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if not arg2:
        emit Transfer(0, msg.sender, arg1);
        return 0
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if not arg3:
        emit Transfer(0, msg.sender, arg2);
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if balanceOf[address(arg1)] < arg3:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[arg1] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require uint8(stor0.field_160)
    require msg.value > 0
    require (msg.value / 10^14) + balanceOf[address(msg.sender)] <= 50000
    require totalSupply + (msg.value / 10^14) <= stor6
    call contractOwner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    totalSupply += msg.value / 10^14
    balanceOf[address(msg.sender)] += msg.value / 10^14
    emit Transfer((msg.value / 10^14), this.address, msg.sender);
}

function Airdrop(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require contractOwner == msg.sender
    require arg1.length + airdropSpent <= stor3
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[32] = 1
        balanceOf[mem[(32 * idx) + 140 len 20]]++
        require idx < arg1.length
        _20 = mem[(32 * idx) + 128]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg1.length) + 128] = 1
        emit Transfer(1, this.address, address(_20));
        idx = idx + 1
        continue 
    airdropSpent += arg1.length
}



}

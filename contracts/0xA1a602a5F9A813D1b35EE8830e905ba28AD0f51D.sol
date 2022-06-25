contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
address stor3;
uint256 stor4;
uint256 stor5;
mapping of uint256 stor6;
mapping of address stor7;
address stor10;
array of uint256 stor19;
uint8 stor20;
array of uint256 stor21;

function _fallback() {
    mem[96 len -7930] = code.data[8821 len -7930]
    _2 = mem[96]
    mem[96] = 0
    mem[64] = 128
    mem[32] = 1
    stor1[address(msg.sender)] = 0
    stor0 = 0
    stor3 = 0
    stor3 = 0
    stor10 = 0
    idx = 0
    while idx < 0:
        require idx < 0
        stor7[idx + 1] = mem[(32 * idx) + 140 len 20]
        require idx < 0
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 6
        stor6[mem[(32 * idx) + 140 len 20]] = idx + 1
        idx = idx + 1
        continue 
    stor5 = 0
    stor4 = 0
    stor0 = 0
    stor10 = mem[140 len 20]
    stor19[] = Array(len=mem[mem[224] + 96], data=mem[mem[224] + 128 len mem[mem[224] + 96]])
    mem[0] = 21
    stor21[] = Array(len=mem[mem[256] + 96], data=mem[mem[256] + 128 len mem[mem[256] + 96]])
    stor20 = mem[319 len 1]
    idx = 0
    while idx < mem[mem[160] + 96]:
        require idx < mem[mem[160] + 96]
        stor7[idx + 1] = mem[(32 * idx) + mem[160] + 140 len 20]
        require idx < mem[mem[160] + 96]
        mem[0] = mem[(32 * idx) + mem[160] + 140 len 20]
        mem[32] = 6
        stor6[mem[(32 * idx) + mem[160] + 140 len 20]] = idx + 1
        idx = idx + 1
        continue 
    stor5 = mem[mem[160] + 96]
    stor4 = mem[192]
    stor3 = address(_2)
    return code.data[891 len 7930]
}



// =====================  Runtime code  =====================


#
#  - offlineTransfer(address arg1, address[] arg2, uint256[] arg3, uint8[] arg4, bytes32[] arg5, bytes32[] arg6)
#  - updateOwners(address arg1, address[] arg2, uint256 arg3, uint8[] arg4, bytes32[] arg5, bytes32[] arg6)
#  - sweep(address arg1, uint256 arg2, uint8[] arg3, bytes32[] arg4, bytes32[] arg5)
#  - reconcile(address[] arg1, int256[] arg2, uint8[] arg3, bytes32[] arg4, bytes32[] arg5)
#  - deleteContract(uint8[] arg1, bytes32[] arg2, bytes32[] arg3)
#  - setTokenContract(address arg1, uint8[] arg2, bytes32[] arg3, bytes32[] arg4)
#  - freezeContract(bool arg1, uint8[] arg2, bytes32[] arg3, bytes32[] arg4)
#
const approve(address arg1, uint256 arg2) = 0

const transferFrom(address arg1, address arg2, uint256 arg3) = 0

const transfer(address arg1, uint256 arg2) = 0


uint256 totalSupply;
mapping of uint256 stor1;
mapping of uint256 allowance;
uint256 stor5;
mapping of uint256 ownerIndexBit;
mapping of address stor7;
address stor10;
mapping of uint256 stor12;
uint8 contractFrozen;
array of uint256 name;
uint8 decimals;
array of uint256 symbol;

function name() {
    return name[0 len name.length]
}

function ownerIndexBit(address arg1) {
    return ownerIndexBit[address(arg1)]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function symbol() {
    return symbol[0 len symbol.length]
}

function contractFrozen() {
    return bool(contractFrozen)
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function getNonce(address arg1) {
    return (stor12[address(arg1)] + 1)
}

function isOwner(address arg1) {
    return (ownerIndexBit[address(arg1)] > 0)
}

function calculateAdminTxHash() {
    return sha3(stor12[stor10] + 1, this.address)
}

function topUp() payable {
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    emit TopUp(msg.value, msg.sender);
}

function _fallback() payable {
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    require not contractFrozen
    emit TopUp(msg.value, msg.sender);
}

function deposit(address arg1) payable {
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, cd[36]
    require not contractFrozen
    stor1[address(arg1)] += msg.value
    totalSupply += msg.value
    emit Deposit(msg.value, msg.sender, arg1);
    return 1
}

function balanceOf(address arg1) {
    if stor10 != arg1:
        return stor1[address(arg1)]
    if eth.balance(this.address) < totalSupply:
        return stor1[address(arg1)]
    if 0 >= eth.balance(this.address) - totalSupply:
        return stor1[address(arg1)]
    return (eth.balance(this.address) - totalSupply + stor1[address(arg1)])
}

function getOwners() {
    idx = 0
    while idx < stor5:
        mem[0] = idx + 1
        mem[32] = 7
        require idx < stor5
        mem[(32 * idx) + 192] = stor7[idx + 1]
        idx = idx + 1
        continue 
    mem[(32 * stor5) + 256 len floor32(stor5)] = mem[192 len floor32(stor5)]
    return Array(len=stor5, data=mem[192 len floor32(stor5)], mem[(32 * stor5) + floor32(stor5) + 256 len (32 * stor5) - floor32(stor5)]), 
}

function calculateTxHash(address arg1, address[] arg2, uint256[] arg3) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    idx = 0
    s = 0
    while idx < arg2.length:
        require idx < arg2.length
        _16 = mem[(32 * idx) + 128]
        require idx < arg3.length
        _20 = mem[(32 * idx) + (32 * arg2.length) + 160]
        mem[0] = arg1
        mem[32] = 12
        mem[(32 * arg2.length) + (32 * arg3.length) + 160] = s
        mem[(32 * arg2.length) + (32 * arg3.length) + 192] = address(_16)
        mem[(32 * arg2.length) + (32 * arg3.length) + 212] = _20
        mem[(32 * arg2.length) + (32 * arg3.length) + 244] = stor12[address(arg1)] + 1
        mem[(32 * arg2.length) + (32 * arg3.length) + 276] = address(this.address)
        idx = idx + 1
        s = sha3(s, address(_16), _20, stor12[address(arg1)] + 1, this.address)
        continue 
    return (_24 * arg2.length)
}



}

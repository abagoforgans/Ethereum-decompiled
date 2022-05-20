contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint8 stor6;
uint256 stor7;
uint256 stor8;

function _fallback() payable {
    stor6 = 0
    require not msg.value
    stor0 = msg.sender
    stor1 = code.data[5718 len 20]
    stor2 = code.data[5546 len 32]
    stor3 = code.data[5578 len 32]
    stor4 = code.data[5610 len 32]
    stor8 = code.data[5674 len 32]
    stor7 = code.data[5642 len 32]
    return code.data[302 len 5244]
}



// =====================  Runtime code  =====================


const time = block.timestamp

const blockVersion = 'wellDistr.1.0'


address owner;
address sub_2c0e03f4Address;
uint256 sub_73b6eacf;
uint256 sub_b482f0bb;
uint256 sub_a9ff5790;
uint256 totalSupply;
uint8 stor6;
uint256 startTime;
uint256 endTime;
mapping of uint256 balances;

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function sub_2c0e03f4(?) {
    return sub_2c0e03f4Address
}

function isFinish() {
    return bool(stor6)
}

function endTime() {
    return endTime
}

function sub_73b6eacf(?) {
    return sub_73b6eacf
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function sub_a9ff5790(?) {
    return sub_a9ff5790
}

function sub_b482f0bb(?) {
    return sub_b482f0bb
}

function sub_ef454df2(?) {
    require msg.sender == owner
    stor6 = 1
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
    revert
}

function sub_0b2f48a0(?) {
    require msg.sender == owner
    sub_73b6eacf = arg1
}

function sub_53cf61ab(?) {
    require msg.sender == owner
    sub_b482f0bb = arg1
}

function updateStartTime(uint256 arg1) {
    require msg.sender == owner
    startTime = arg1
}

function updateMaxLimit(uint256 arg1) {
    require msg.sender == owner
    sub_a9ff5790 = arg1
}

function updateEndTime(uint256 arg1) {
    require msg.sender == owner
    endTime = arg1
    stor6 = 0
}

function updateBalance(address arg1, uint256 arg2) {
    require msg.sender == owner
    balances[address(arg1)] = arg2
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function reclaimEther() {
    require msg.sender == owner
    call 0xe7e85ebde46e86fe5a33bd42014c0ea45c8026d4 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function reclaimToken(address arg1) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
}

function _fallback() payable {
    require ext_code.size(sub_2c0e03f4Address)
    call sub_2c0e03f4Address.0x70a08231 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0] > 0
    require msg.value > 0
    require block.timestamp > startTime
    require block.timestamp < endTime
    require msg.value >= sub_b482f0bb
    require msg.value + balances[address(msg.sender)] <= sub_a9ff5790
    require not stor6
    totalSupply += msg.value
    require totalSupply <= sub_73b6eacf
    balances[address(msg.sender)] += msg.value
    emit Invest(msg.value, msg.sender);
    if totalSupply == sub_73b6eacf:
        stor6 = 1
}

function sub_469d544d(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg1.length > 0
    require arg1.length == arg2.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 164] = this.address
    require ext_code.size(arg3)
    call arg3.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
    require ext_call.success
    if ext_call.return_data[0] <= 0:
        return 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 9
        if balances[mem[(32 * idx) + 140 len 20]] > 0:
            require idx < arg1.length
            require idx < arg2.length
            _43 = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[(32 * arg1.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg1.length) + (32 * arg2.length) + 196] = _43
            require ext_code.size(arg3)
            call arg3.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args mem[(32 * arg1.length) + (32 * arg2.length) + 164], _43
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            require ext_call.success
            require ext_call.return_data[0]
            require idx < arg1.length
            _50 = mem[(32 * idx) + 128]
            require idx < arg2.length
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
            emit 0x5d4a5c2d: mem[(32 * arg1.length) + (32 * arg2.length) + 160], address(_50), arg3
        idx = idx + 1
        continue 
    return 1
}



}

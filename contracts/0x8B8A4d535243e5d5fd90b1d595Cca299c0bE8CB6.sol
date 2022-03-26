contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
address stor5;
array of struct stor8;
uint256 stor9;

function _fallback() payable {
    stor9 = 0
    require not msg.value
    stor5 = msg.sender
    stor0 = code.data[5533 len 32]
    stor1 = code.data[5565 len 32]
    stor2 = code.data[5597 len 32]
    stor3 = code.data[5629 len 32]
    stor4 = code.data[5661 len 32]
    stor8.length++
    if not stor8.length <= stor8.length + 1:
        idx = (5 * stor8.length) + 5
        while 5 * stor8.length > idx:
            stor8[idx].field_0 = 0
            stor8[idx].field_256 = 0
            stor8[idx].field_416 = 0
            stor8[idx].field_512 = 0
            stor8[idx].field_768 = 0
            stor8[idx].field_1024 = 0
            idx = idx + 5
            continue 
    return code.data[396 len 5137]
}



// =====================  Runtime code  =====================


const totalSupply = eth.balance(this.address)


uint256 discount;
array of struct stor1;
array of uint256 stor2;
array of address stor3;
array of uint256 stor4;
address owner;
mapping of uint256 stor6;
mapping of uint256 stor7;
array of struct investors;
uint256 totalClaims;

function lockPeriod() {
    return stor2.length
}

function investors(uint256 arg1) {
    require arg1 < investors.length
    return investors[arg1].field_0, 
           address(investors[arg1].field_256),
           bool(uint8(investors[arg1].field_416)),
           investors[arg1].field_512,
           address(investors[arg1].field_768),
           investors[arg1].field_1024
}

function totalClaims() {
    return totalClaims
}

function closeTime() {
    return stor3.length
}

function discount() {
    return discount
}

function owner() {
    return owner
}

function maxClaims() {
    return stor4.length
}

function fee() {
    return stor1.length
}

function pay() payable {
  stop
}

function _fallback() payable {
  stop
}

function sub_e75ae422(?) {
    if owner != msg.sender:
        emit Error(1);
    else:
        discount = arg1
}

function withdrawFees() {
    if owner != msg.sender:
        emit Error(1);
    else:
        if block.timestamp >= stor3.length:
            call owner with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            return bool(ext_call.success)
        emit Error(5);
    return 0
}

function claim(bytes32 arg1) {
    if 0 == stor7[arg1]:
        emit Error(2);
        return 0
    require stor7[arg1] < investors.length
    stor7[arg1] = 0
    investors[stor7[arg1]].field_512 = arg1
    stor7[arg1] = stor7[arg1]
    uint8(investors[stor7[arg1]].field_416) = 1
    return bool(uint8(investors[stor7[arg1]].field_416))
}

function cancel(bytes32 arg1) {
    if 0 == stor7[arg1]:
        emit Error(2);
        return 0
    require stor7[arg1] < investors.length
    stor7[arg1] = 0
    investors[stor7[arg1]].field_512 = arg1
    stor7[arg1] = stor7[arg1]
    stor6[address(stor8[stor7[arg1]].field_768)] = 0
    address(investors[stor7[arg1]].field_768) = 0
    investors[stor7[arg1]].field_1024 = 0
    emit Cancel(address(investors[stor7[arg1]].field_256));
    return 1
}

function changeAddress(address arg1, address arg2) {
    if owner != msg.sender:
        emit Error(1);
        return 0
    if 0 == stor6[address(arg1)]:
        emit Error(2);
        return 0
    require stor6[address(arg1)] < investors.length
    address(investors[stor6[address(arg1)]].field_768) = arg2
    investors[stor6[address(arg1)]].field_1024 = block.timestamp + stor2.length
    stor6[address(arg2)] = stor6[address(arg1)]
    emit 0x535562a6: arg2, arg1
    return 1
}

function balanceOf(address arg1) {
    if 0 == stor6[address(arg1)]:
        return 0
    require stor6[address(arg1)] < investors.length
    require stor6[address(arg1)] < investors.length
    if not uint8(investors[stor6[address(arg1)]].field_416):
        return (investors[stor6[address(arg1)]].field_0 - (investors[stor6[address(arg1)]].field_0 * stor1.length / 1000))
    if investors[stor6[address(arg1)]].field_0 - (investors[stor6[address(arg1)]].field_0 * stor1.length / 1000) + discount <= investors[stor6[address(arg1)]].field_0:
        return (investors[stor6[address(arg1)]].field_0 - (investors[stor6[address(arg1)]].field_0 * stor1.length / 1000) + discount)
    return investors[stor6[address(arg1)]].field_0
}

function withdraw(address arg1) {
    if 0 == stor6[address(msg.sender)]:
        emit Error(2);
        return 0
    require stor6[address(msg.sender)] < investors.length
    if investors[stor6[address(msg.sender)]].field_1024 > block.timestamp:
        emit Error(3);
        return 0
    require stor6[address(msg.sender)] < investors.length
    require stor6[address(msg.sender)] < investors.length
    if not uint8(investors[stor6[address(msg.sender)]].field_416):
        if eth.balance(this.address) < investors[stor6[address(msg.sender)]].field_0 - (investors[stor6[address(msg.sender)]].field_0 * stor1.length / 1000):
            emit Error(4);
            return 0
        investors[stor6[address(msg.sender)]].field_0 = 0
        emit Transfer((investors[stor6[address(msg.sender)]].field_0 - (investors[stor6[address(msg.sender)]].field_0 * stor1.length / 1000)), msg.sender);
        call arg1 with:
           value investors[stor6[address(msg.sender)]].field_0 - (investors[stor6[address(msg.sender)]].field_0 * stor1.length / 1000) wei
             gas 2300 * is_zero(value) wei
    else:
        if investors[stor6[address(msg.sender)]].field_0 - (investors[stor6[address(msg.sender)]].field_0 * stor1.length / 1000) + discount <= investors[stor6[address(msg.sender)]].field_0:
            if eth.balance(this.address) < investors[stor6[address(msg.sender)]].field_0 - (investors[stor6[address(msg.sender)]].field_0 * stor1.length / 1000) + discount:
                emit Error(4);
                return 0
            investors[stor6[address(msg.sender)]].field_0 = 0
            emit Transfer((investors[stor6[address(msg.sender)]].field_0 - (investors[stor6[address(msg.sender)]].field_0 * stor1.length / 1000) + discount), msg.sender);
            call arg1 with:
               value investors[stor6[address(msg.sender)]].field_0 - (investors[stor6[address(msg.sender)]].field_0 * stor1.length / 1000) + discount wei
                 gas 2300 * is_zero(value) wei
        else:
            if eth.balance(this.address) < investors[stor6[address(msg.sender)]].field_0:
                emit Error(4);
                return 0
            investors[stor6[address(msg.sender)]].field_0 = 0
            emit Transfer(investors[stor6[address(msg.sender)]].field_0, msg.sender);
            call arg1 with:
               value investors[stor6[address(msg.sender)]].field_0 wei
                 gas 2300 * is_zero(value) wei
    return bool(ext_call.success)
}

function sub_02f9f208(?) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    if owner != msg.sender:
        emit Error(1);
        return 0
    idx = 0
    s = 0
    while idx < arg1.length:
        investors.length++
        if not investors.length > investors.length + 1:
            require idx < mem[96]
            if totalClaims + mem[(32 * idx) + 128] > stor4.length:
                emit Error(6);
                return investors.length
            _72 = mem[64]
            mem[64] = mem[64] + 192
            require idx < mem[96]
            mem[_72] = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg1.length) + 128]
            mem[_72 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[_72 + 64] = 0
            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
            mem[_72 + 96] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
            mem[_72 + 128] = 0
            mem[_72 + 160] = 0
            require investors.length < investors.length
            mem[0] = 8
            investors[investors.length].field_0 = mem[_72]
            address(investors[investors.length].field_256) = mem[_72 + 44 len 20]
            uint8(investors[investors.length].field_416) = 0
            investors[investors.length].field_512 % 1 = 0
            investors[investors.length].field_512 = mem[_72 + 96]
        else:
            mem[0] = 8
            s = sha3(8) + (5 * investors.length) + 5
            while sha3(8) + (5 * investors.length) > s:
                stor[s] = 0
                address(stor1[s].field_0) = 0
                uint8(stor1[s].field_160) = 0
                stor2[s] = 0
                stor3[s] = 0
                stor4[s] = 0
                s = s + 5
                continue 
            require idx < mem[96]
            if totalClaims + mem[(32 * idx) + 128] > stor4.length:
                emit Error(6);
                return investors.length
            _130 = mem[64]
            mem[64] = mem[64] + 192
            require idx < mem[96]
            mem[_130] = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg1.length) + 128]
            mem[_130 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[_130 + 64] = 0
            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
            mem[_130 + 96] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
            mem[_130 + 128] = 0
            mem[_130 + 160] = 0
            require investors.length < investors.length
            mem[0] = 8
            investors[investors.length].field_0 = mem[_130]
            address(investors[investors.length].field_256) = mem[_130 + 44 len 20]
            uint8(investors[investors.length].field_416) = 0
            investors[investors.length].field_512 % 1 = 0
            investors[investors.length].field_512 = mem[_130 + 96]
        address(investors[investors.length].field_768) = 0
        investors[investors.length].field_1024 % 1 = 0
        investors[investors.length].field_1024 = 0
        require idx < mem[(32 * arg1.length) + 128]
        stor6[mem[(32 * idx) + (32 * arg1.length) + 172 len 20]] = investors.length
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        mem[0] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
        mem[32] = 7
        stor7[mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]] = investors.length
        require idx < mem[96]
        totalClaims += mem[(32 * idx) + 128]
        idx = idx + 1
        s = investors.length
        continue 
    return s
}



}

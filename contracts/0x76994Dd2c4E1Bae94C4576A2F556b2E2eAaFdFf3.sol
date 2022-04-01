contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = 0
    return code.data[57 len 2138]
}



// =====================  Runtime code  =====================


address founderAddress;
uint256 inCirculation;
array of address sub_4223b5c2;
mapping of uint256 coinBalance;

function sub_4223b5c2(?) {
    require arg1 < sub_4223b5c2.length
    return address(sub_4223b5c2[arg1])
}

function founder() {
    return founderAddress
}

function inCirculation() {
    return inCirculation
}

function coinBalance(address arg1) {
    return coinBalance[address(arg1)]
}

function keyCount() {
    return sub_4223b5c2.length
}

function close() {
    require founderAddress == msg.sender
    selfdestruct(founderAddress)
}

function _fallback() payable {
  stop
}

function retrieve(uint256 arg1) {
    require founderAddress == msg.sender
    if arg1 > eth.balance(this.address):
        emit 0x53a0add1: arg1, founderAddress
    else:
        call founderAddress with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            emit 0x53a0add1: arg1, founderAddress
}

function mint(address arg1, uint256 arg2) {
    require founderAddress == msg.sender
    require arg2
    require arg1 != this.address
    require arg1
    idx = 0
    while idx < sub_4223b5c2.length:
        mem[0] = 2
        if address(sub_4223b5c2[idx]) != arg1:
            idx = idx + 1
            continue 
        coinBalance[address(arg1)] += arg2
        inCirculation += arg2
        emit Issued(arg2, arg1);
    sub_4223b5c2.length++
    if not sub_4223b5c2.length <= sub_4223b5c2.length + 1:
        idx = sub_4223b5c2.length + 1
        while sub_4223b5c2.length > idx:
            uint256(sub_4223b5c2[idx]) = 0
            idx = idx + 1
            continue 
    address(sub_4223b5c2[sub_4223b5c2.length]) = arg1
    coinBalance[address(arg1)] += arg2
    inCirculation += arg2
    emit Issued(arg2, arg1);
}

function sub_e1f47002(?) {
    require arg2
    require arg1 != this.address
    require arg1
    require 0 < sub_4223b5c2.length
    idx = 0
    while address(sub_4223b5c2[idx]) != msg.sender:
        require idx + 1 < sub_4223b5c2.length
        mem[0] = 2
        idx = idx + 1
        continue 
    require coinBalance[address(msg.sender)] >= arg2
    if arg1 != msg.sender:
        idx = 0
        while idx < sub_4223b5c2.length:
            mem[0] = 2
            if address(sub_4223b5c2[idx]) != arg1:
                idx = idx + 1
                continue 
            coinBalance[address(msg.sender)] -= arg2
            coinBalance[arg1] += arg2
            emit Transferred(arg2, msg.sender, arg1);
        sub_4223b5c2.length++
        address(sub_4223b5c2[sub_4223b5c2.length]) = arg1
        coinBalance[address(msg.sender)] -= arg2
        coinBalance[arg1] += arg2
        emit Transferred(arg2, msg.sender, arg1);
}

function payout() payable {
    require inCirculation != 0
    require msg.value
    require inCirculation
    idx = 0
    while idx < sub_4223b5c2.length:
        mem[0] = address(sub_4223b5c2[idx])
        mem[32] = 3
        if coinBalance[address(stor2[idx])]:
            require idx < sub_4223b5c2.length
            mem[0] = address(sub_4223b5c2[idx])
            mem[32] = 3
            call address(sub_4223b5c2[idx]) with:
               value msg.value / inCirculation * coinBalance[address(stor2[idx])] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                require idx < sub_4223b5c2.length
                mem[0] = address(sub_4223b5c2[idx])
                mem[32] = 3
                mem[96] = msg.value / inCirculation * coinBalance[address(stor2[idx])]
                emit 0x53a0add1: (msg.value / inCirculation * coinBalance[address(stor2[idx])]), address(sub_4223b5c2[idx])
        idx = idx + 1
        continue 
}



}

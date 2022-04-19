contract main {


// =======================  Init code  ======================


uint256 stor0;
array of address stor1;
address stor2;
mapping of uint256 stor3;
address stor5;
uint256 stor6;
uint256 stor7;

function _fallback() {
    require code.data[2613 len 20]
    stor5 = msg.sender
    stor0 = 10000
    stor2 = code.data[2613 len 20]
    stor1.length++
    if not stor1.length <= stor1.length + 1:
        idx = stor1.length + 1
        while stor1.length > idx:
            uint256(stor1[idx]) = 0
            idx = idx + 1
            continue 
    address(stor1[stor1.length]) = code.data[2613 len 20]
    stor3[address(code.data[2601 len 32])] = stor0
    stor7 = 50000
    stor6 = 10
    return code.data[303 len 2298]
}



// =====================  Runtime code  =====================


uint256 totalShares;
array of address receivers;
address rootAddress;
mapping of uint256 shares;
mapping of uint8 stor4;
address IAddress;
uint256 stor6;
uint256 stor7;

function totalShares() {
    return totalShares
}

function receiverExists(address arg1) {
    return bool(stor4[arg1])
}

function rootAddress() {
    return rootAddress
}

function receivers(uint256 arg1) {
    require arg1 < receivers.length
    return address(receivers[arg1])
}

function shares(address arg1) {
    return shares[arg1]
}

function I() {
    return IAddress
}

function sub_e29aac23(?) {
    require IAddress == msg.sender
    stor7 = arg1
}

function sub_80a4019a(?) {
    require IAddress == msg.sender
    require arg1 >= 0
    stor6 = arg1
}

function sub_7ac8f29b(?) {
    require IAddress == msg.sender
    totalShares += arg1
    shares[stor2] += arg1
}

function Withdraw() {
    require IAddress == msg.sender
    call IAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_ad9845bc(?) {
    require IAddress == msg.sender
    require arg1
    require arg2 > 0
    require shares[address(arg1)] >= arg2
    shares[address(arg1)] -= arg2
    shares[stor2] += arg2
}

function sub_9f3abf28(?) {
    require IAddress == msg.sender
    require arg1
    if not stor4[address(arg1)]:
        stor4[address(arg1)] = 1
        receivers.length++
        if not receivers.length <= receivers.length + 1:
            idx = receivers.length + 1
            while receivers.length > idx:
                uint256(receivers[idx]) = 0
                idx = idx + 1
                continue 
        address(receivers[receivers.length]) = arg1
    shares[arg1] += shares[stor2]
    shares[stor2] = 0
    rootAddress = arg1
}

function sub_372ada46(?) {
    require IAddress == msg.sender
    require arg1
    require arg2 > 0
    require arg2 + shares[stor2] > 0
    require shares[stor2] >= arg2
    if not stor4[address(arg1)]:
        stor4[address(arg1)] = 1
        receivers.length++
        if not receivers.length <= receivers.length + 1:
            idx = receivers.length + 1
            while receivers.length > idx:
                uint256(receivers[idx]) = 0
                idx = idx + 1
                continue 
        address(receivers[receivers.length]) = arg1
    shares[stor2] -= arg2
    shares[arg1] += arg2
}

function _fallback() payable {
    require totalShares
    s = 0
    t = 0
    u = 0
    idx = 0
    while idx < receivers.length:
        mem[0] = address(receivers[idx])
        mem[32] = 3
        if shares[address(stor1[idx])] <= 0:
            s = s
            t = t
            u = address(receivers[idx])
            idx = idx + 1
            continue 
        mem[0] = address(receivers[idx])
        mem[32] = 3
        require totalShares
        if (msg.value * shares[address(stor1[idx])]) - (msg.value * stor6 / totalShares * shares[address(stor1[idx])]) / totalShares <= 0:
            s = s
            t = (msg.value * shares[address(stor1[idx])]) - (msg.value * stor6 / totalShares * shares[address(stor1[idx])]) / totalShares
            u = address(receivers[idx])
            idx = idx + 1
            continue 
        if uint32(ext_code.size(address(receivers[idx]))) <= 0:
            call address(receivers[idx]) with:
               value (msg.value * shares[address(stor1[idx])]) - (msg.value * stor6 / totalShares * shares[address(stor1[idx])]) / totalShares wei
                 gas 2300 * is_zero(value) wei
        else:
            call address(receivers[idx]) with:
               value (msg.value * shares[address(stor1[idx])]) - (msg.value * stor6 / totalShares * shares[address(stor1[idx])]) / totalShares wei
                 gas stor7 wei
        if ext_call.success:
            emit Transferred(msg.sender, address(receivers[idx]), (msg.value * shares[address(stor1[idx])]) - (msg.value * stor6 / totalShares * shares[address(stor1[idx])]) / totalShares);
        s = ext_call.success
        t = (msg.value * shares[address(stor1[idx])]) - (msg.value * stor6 / totalShares * shares[address(stor1[idx])]) / totalShares
        u = address(receivers[idx])
        idx = idx + 1
        continue 
}



}

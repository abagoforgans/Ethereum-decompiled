contract main {


// =======================  Init code  ======================


uint256 stor8;
uint256 stor9;
uint8 stor11;
address stor11; offset 8
uint256 stor12;

function _fallback() payable {
    uint8(stor11.field_0) = 0
    address(stor11.field_8) = 0xd173bdd2f4ccd88b35b83a8bc35dd05a3b5a3c79
    stor12 = 1
    require not msg.value
    mem[96 len -1729] = code.data[2018 len -1729]
    mem[64] = -1633
    require 0 < mem[128]
    require mem[128] <= mem[mem[96] + 96]
    stor8 = mem[mem[96] + 96]
    require mem[mem[96] + 96] <= 8
    idx = 0
    while idx < mem[mem[96] + 96]:
        require idx < mem[mem[96] + 96]
        require idx < 8
        stor[idx] = mem[(32 * idx) + mem[96] + 140 len 20]
        require stor[idx]
        idx = idx + 1
        continue 
    stor9 = mem[128]
    return code.data[289 len 1729]
}



// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)

const getTime = block.timestamp


uint256 stor8;
uint256 stor9;
mapping of uint256 stor10;
uint8 stor11;
address stor11;
address stor11; offset 8
uint256 stor12;

function isPause() {
    return bool(uint8(stor11.field_0))
}

function isOwner(address arg1) {
    idx = 0
    while idx < stor8:
        require idx < 8
        if stor[idx] != arg1:
            idx = idx + 1
            continue 
        return 1
    return 0
}

function buy() payable {
    require not uint8(stor11.field_0)
    emit Deposit(msg.value, msg.sender);
    require msg.value >= 10^15
    if block.timestamp <= 1541001599:
        return 0
    if stor12:
        return 0
    stor12++
    if (eth.balance(this.address) / 20) + (eth.balance(this.address) / 100) > 0:
        call address(stor11.field_8) with:
           value (eth.balance(this.address) / 20) + (eth.balance(this.address) / 100) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    emit AdviseFee(address(stor11.field_0), (eth.balance(this.address) / 20) + (eth.balance(this.address) / 100));
    return 1
}

function checkAndConfirm(address arg1, bytes32 arg2) {
    idx = 0
    s = stor8
    while idx < stor8:
        require idx < 8
        if stor[idx] != arg1:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = idx
        continue 
    if s == stor8:
        return 0
    t = 0
    idx = 0
    while idx < stor8:
        if 2^s or stor10[arg2] and 2^idx <= 0:
            t = t
            idx = idx + 1
            continue 
        t = t + 1
        idx = idx + 1
        continue 
    emit AcceptConfirm(arg2, t, arg1);
    if t < stor9:
        stor10[arg2] = 2^s or stor10[arg2]
        return 0
    stor10[arg2] = 0
    return 1
}

function _fallback() payable {
    if msg.value > 0:
        require not uint8(stor11.field_0)
        emit Deposit(msg.value, msg.sender);
        require msg.value >= 10^15
        if block.timestamp > 1541001599:
            if not stor12:
                stor12++
                if (eth.balance(this.address) / 20) + (eth.balance(this.address) / 100) > 0:
                    call address(stor11.field_8) with:
                       value (eth.balance(this.address) / 20) + (eth.balance(this.address) / 100) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                emit AdviseFee(address(stor11.field_0), (eth.balance(this.address) / 20) + (eth.balance(this.address) / 100));
}

function unpause() {
    idx = 0
    s = stor8
    while idx < stor8:
        require idx < 8
        if stor[idx] != msg.sender:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = idx
        continue 
    if s != stor8:
        t = 0
        idx = 0
        while idx < stor8:
            if 2^s or stor10[call.data[0 len calldata.size]] and 2^idx <= 0:
                t = t
                idx = idx + 1
                continue 
            t = t + 1
            idx = idx + 1
            continue 
        emit AcceptConfirm(sha3(call.data[0 len calldata.size]), t, msg.sender);
        if t < stor9:
            stor10[call.data[0 len calldata.size]] = 2^s or stor10[call.data[0 len calldata.size]]
        else:
            stor10[call.data[0 len calldata.size]] = 0
            require uint8(stor11.field_0)
            uint8(stor11.field_0) = 0
            emit Unpause()
}

function pause() {
    idx = 0
    s = stor8
    while idx < stor8:
        require idx < 8
        if stor[idx] != msg.sender:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = idx
        continue 
    if s != stor8:
        t = 0
        idx = 0
        while idx < stor8:
            if 2^s or stor10[call.data[0 len calldata.size]] and 2^idx <= 0:
                t = t
                idx = idx + 1
                continue 
            t = t + 1
            idx = idx + 1
            continue 
        emit AcceptConfirm(sha3(call.data[0 len calldata.size]), t, msg.sender);
        if t < stor9:
            stor10[call.data[0 len calldata.size]] = 2^s or stor10[call.data[0 len calldata.size]]
        else:
            stor10[call.data[0 len calldata.size]] = 0
            require not uint8(stor11.field_0)
            uint8(stor11.field_0) = 1
            emit Pause()
}

function execute(address arg1, uint256 arg2, string arg3) {
    idx = 0
    s = stor8
    while idx < stor8:
        require idx < 8
        if stor[idx] != msg.sender:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = idx
        continue 
    if s == stor8:
        return 0
    t = 0
    idx = 0
    while idx < stor8:
        if 2^s or stor10[call.data[0 len calldata.size]] and 2^idx <= 0:
            t = t
            idx = idx + 1
            continue 
        t = t + 1
        idx = idx + 1
        continue 
    emit AcceptConfirm(sha3(call.data[0 len calldata.size]), t, msg.sender);
    if t < stor9:
        stor10[call.data[0 len calldata.size]] = 2^s or stor10[call.data[0 len calldata.size]]
        return 0
    stor10[call.data[0 len calldata.size]] = 0
    require arg1
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Withdraw(arg2, Array(len=arg3.length, data=arg3[all]), arg1, msg.sender);
    return 1
}



}

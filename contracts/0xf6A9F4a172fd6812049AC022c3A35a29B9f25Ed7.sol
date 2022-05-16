contract main {


// =======================  Init code  ======================


address stor0;
array of address stor1;
uint256 stor8;
uint256 stor9;
uint8 stor11;
address stor11;
address stor11; offset 8
mapping of uint256 stor12;
uint256 stor14;

function _fallback() payable {
    uint8(stor11.field_0) = 0
    stor14 = 3731
    require not msg.value
    mem[96 len -7621] = code.data[8200 len -7621]
    mem[64] = -7525
    require 0 < mem[128]
    require mem[128] <= mem[mem[96] + 96] + 1
    stor8 = mem[mem[96] + 96] + 1
    require stor8 <= 8
    stor0 = msg.sender
    idx = 0
    while idx < mem[mem[96] + 96]:
        require idx < mem[mem[96] + 96]
        require idx + 1 < 8
        stor1[idx] = mem[(32 * idx) + mem[96] + 140 len 20]
        idx = idx + 1
        continue 
    stor9 = mem[128]
    address(stor11.field_8) = this.address
    stor12[address(stor11.field_0)] = 1000000000 * 10^18
    return code.data[579 len 7621]
}



// =====================  Runtime code  =====================


const name = 'TestGPX-name'

const totalSupply = 1000000000 * 10^18

const decimals = 18

const symbol = 'TestGPX-symbol'

const TOTAL_SUPPLY = 1000000000 * 10^18


uint256 stor8;
uint256 stor9;
mapping of uint256 stor10;
uint8 stor11;
address stor11;
address stor11; offset 8
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 buyRate;

function getBuyRate() {
    return buyRate
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function isPause() {
    return bool(uint8(stor11.field_0))
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function convertMainchainGPX(string arg1, string arg2) {
    require arg1.length > 10
    require arg1.length < 128
    require balanceOf[address(msg.sender)] > 0
    balanceOf[address(msg.sender)] = 0
    require balanceOf[address(stor11.field_0)] + balanceOf[address(msg.sender)] >= balanceOf[address(stor11.field_0)]
    balanceOf[address(stor11.field_0)] += balanceOf[address(msg.sender)]
    emit Converted(Array(len=arg1.length, data=arg1[all]), balanceOf[address(msg.sender)], arg1.length + 128, msg.sender);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function setBuyRate(uint256 arg1) {
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
            if stor10[call.data[0 len calldata.size]] or 2^s and 2^idx <= 0:
                t = t
                idx = idx + 1
                continue 
            t = t + 1
            idx = idx + 1
            continue 
        if t < stor9:
            stor10[call.data[0 len calldata.size]] = stor10[call.data[0 len calldata.size]] or 2^s
        else:
            stor10[call.data[0 len calldata.size]] = 0
            buyRate = arg1
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
            if stor10[call.data[0 len calldata.size]] or 2^s and 2^idx <= 0:
                t = t
                idx = idx + 1
                continue 
            t = t + 1
            idx = idx + 1
            continue 
        if t < stor9:
            stor10[call.data[0 len calldata.size]] = stor10[call.data[0 len calldata.size]] or 2^s
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
            if stor10[call.data[0 len calldata.size]] or 2^s and 2^idx <= 0:
                t = t
                idx = idx + 1
                continue 
            t = t + 1
            idx = idx + 1
            continue 
        if t < stor9:
            stor10[call.data[0 len calldata.size]] = stor10[call.data[0 len calldata.size]] or 2^s
        else:
            stor10[call.data[0 len calldata.size]] = 0
            require not uint8(stor11.field_0)
            uint8(stor11.field_0) = 1
            emit Pause()
}

function execute(address arg1, uint256 arg2, bytes arg3) {
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
        if stor10[call.data[0 len calldata.size]] or 2^s and 2^idx <= 0:
            t = t
            idx = idx + 1
            continue 
        t = t + 1
        idx = idx + 1
        continue 
    if t < stor9:
        stor10[call.data[0 len calldata.size]] = stor10[call.data[0 len calldata.size]] or 2^s
        return 0
    stor10[call.data[0 len calldata.size]] = 0
    require arg1
    emit Withdraw(arg2, arg1, msg.sender);
    call arg1 with:
       value arg2 wei
         gas gas_remaining - 34710 wei
        args arg3[all]
    return bool(ext_call.success)
}

function buy() payable {
    require not uint8(stor11.field_0)
    require msg.value >= 10^15
    if not msg.value:
        require balanceOf[address(stor11.field_0)] >= 0
        require 0 <= balanceOf[address(stor11.field_0)]
        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        emit Transfer(0, address(stor11.field_8), msg.sender);
        return 0
    require msg.value
    require msg.value * buyRate / msg.value == buyRate
    require balanceOf[address(stor11.field_0)] >= msg.value * buyRate
    require msg.value * buyRate <= balanceOf[address(stor11.field_0)]
    balanceOf[address(stor11.field_0)] += -1 * msg.value * buyRate
    require balanceOf[address(msg.sender)] + (msg.value * buyRate) >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += msg.value * buyRate
    emit Transfer((msg.value * buyRate), address(stor11.field_8), msg.sender);
    return (msg.value * buyRate)
}

function _fallback() payable {
    if msg.value > 0:
        require not uint8(stor11.field_0)
        require msg.value >= 10^15
        if not msg.value:
            require balanceOf[address(stor11.field_0)] >= 0
            require 0 <= balanceOf[address(stor11.field_0)]
            require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            emit Transfer(0, address(stor11.field_8), msg.sender);
        else:
            require msg.value
            require msg.value * buyRate / msg.value == buyRate
            require balanceOf[address(stor11.field_0)] >= msg.value * buyRate
            require msg.value * buyRate <= balanceOf[address(stor11.field_0)]
            balanceOf[address(stor11.field_0)] += -1 * msg.value * buyRate
            require balanceOf[address(msg.sender)] + (msg.value * buyRate) >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += msg.value * buyRate
            emit Transfer((msg.value * buyRate), address(stor11.field_8), msg.sender);
        emit Deposit(msg.value, msg.sender);
}



}

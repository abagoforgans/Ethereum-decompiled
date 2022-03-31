contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
uint256 stor3;
mapping of uint256 stor4;
uint256 stor8;

function _fallback() payable {
    stor8 = 720 * 24 * 3600
    require not msg.value
    mem[96 len -4408] = code.data[4753 len -4408]
    mem[64] = -4312
    stor4[address(msg.sender)] = 0
    stor3 = 0
    stor0[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor1[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    stor2 = mem[159 len 1]
    return code.data[345 len 4408]
}



// =====================  Runtime code  =====================


const initialSupply = 0

const version = 'HDAO 0.7'


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of struct withdrawalRequests;
uint256 feePot;
uint256 timeWait;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function withdrawalRequests(address arg1) {
    return withdrawalRequests[arg1].field_0, withdrawalRequests[arg1].field_256
}

function decimals() {
    return decimals
}

function timeWait() {
    return timeWait
}

function feePot() {
    return feePot
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function calculateFee(uint256 arg1) {
    return (arg1 / 100)
}

function calculateReward(uint256 arg1) {
    if feePot <= 0:
        return 0
    require totalSupply
    return (feePot * arg1 / totalSupply)
}

function _fallback() payable {
    require withdrawalRequests[address(msg.sender)].field_0 <= 0
    require msg.value
    balanceOf[address(msg.sender)] += msg.value
    totalSupply += msg.value
    emit Transfer(msg.value, 0, msg.sender);
    emit Deposited(msg.value, msg.sender);
}

function approve(address arg1, uint256 arg2) {
    require withdrawalRequests[address(msg.sender)].field_0 <= 0
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function withdrawalInitiate() {
    require withdrawalRequests[address(msg.sender)].field_0 <= 0
    emit WithdrawalStarted(balanceOf[address(msg.sender)], msg.sender);
    withdrawalRequests[address(msg.sender)].field_0 = block.timestamp
    withdrawalRequests[address(msg.sender)].field_256 = balanceOf[address(msg.sender)]
}

function transfer(address arg1, uint256 arg2) {
    require withdrawalRequests[address(msg.sender)].field_0 <= 0
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require withdrawalRequests[address(arg1)].field_0 <= 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require withdrawalRequests[address(arg1)].field_0 <= 0
    require withdrawalRequests[address(arg2)].field_0 <= 0
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function quickWithdraw() payable {
    require withdrawalRequests[address(msg.sender)].field_0 <= 0
    require balanceOf[address(msg.sender)]
    if balanceOf[address(msg.sender)] / 100 != msg.value:
        emit IncorrectFee((balanceOf[address(msg.sender)] / 100), msg.sender);
        revert
    feePot += msg.value
    require balanceOf[address(msg.sender)]
    require balanceOf[address(msg.sender)] <= eth.balance(this.address)
    balanceOf[address(msg.sender)] = 0
    require totalSupply >= totalSupply - balanceOf[address(msg.sender)]
    totalSupply -= balanceOf[address(msg.sender)]
    emit Transfer(balanceOf[address(msg.sender)], msg.sender, 0);
    call msg.sender with:
       value balanceOf[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit WithdrawalDone(balanceOf[address(msg.sender)], 0, msg.sender);
    return 1
}

function withdrawalComplete() {
    require withdrawalRequests[address(msg.sender)].field_0
    if timeWait + withdrawalRequests[address(msg.sender)].field_0 > block.timestamp:
        emit WithdrawalPremature((withdrawalRequests[address(msg.sender)].field_0 + timeWait - block.timestamp), msg.sender);
        return 0
    if feePot <= 0:
        withdrawalRequests[address(msg.sender)].field_0 = 0
        withdrawalRequests[address(msg.sender)].field_256 = 0
        require balanceOf[address(msg.sender)]
        require balanceOf[address(msg.sender)] <= eth.balance(this.address)
        balanceOf[address(msg.sender)] = 0
        require totalSupply >= totalSupply - balanceOf[address(msg.sender)]
        totalSupply -= balanceOf[address(msg.sender)]
        emit Transfer(balanceOf[address(msg.sender)], msg.sender, 0);
        call msg.sender with:
           value balanceOf[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit WithdrawalDone(withdrawalRequests[address(msg.sender)].field_256, 0, msg.sender);
    else:
        require totalSupply
        withdrawalRequests[address(msg.sender)].field_0 = 0
        withdrawalRequests[address(msg.sender)].field_256 = 0
        if feePot * withdrawalRequests[address(msg.sender)].field_256 / totalSupply > 0:
            if feePot - (feePot * withdrawalRequests[address(msg.sender)].field_256 / totalSupply) <= feePot:
                feePot -= feePot * withdrawalRequests[address(msg.sender)].field_256 / totalSupply
            else:
                feePot = 0
        require balanceOf[address(msg.sender)]
        require balanceOf[address(msg.sender)] + (feePot * withdrawalRequests[address(msg.sender)].field_256 / totalSupply) <= eth.balance(this.address)
        balanceOf[address(msg.sender)] = 0
        require totalSupply >= totalSupply - balanceOf[address(msg.sender)]
        totalSupply -= balanceOf[address(msg.sender)]
        emit Transfer(balanceOf[address(msg.sender)], msg.sender, 0);
        call msg.sender with:
           value (feePot * withdrawalRequests[address(msg.sender)].field_256 / totalSupply) + balanceOf[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit WithdrawalDone(withdrawalRequests[address(msg.sender)].field_256, feePot * withdrawalRequests[address(msg.sender)].field_256 / totalSupply, msg.sender);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    require withdrawalRequests[address(msg.sender)].field_0 <= 0
    require withdrawalRequests[address(msg.sender)].field_0 <= 0
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    mem[ceil32(arg3.length) + 128] = Mask(32, 224, sha3('receiveApproval(address,uint256,', 'address,bytes)'))
    mem[ceil32(arg3.length) + 132] = msg.sender
    mem[ceil32(arg3.length) + 164] = arg2
    mem[ceil32(arg3.length) + 196] = this.address
    if not arg3.length:
        if not arg3.length % 32:
            call arg1 with:
               funct Mask(32, 224, sha3('receiveApproval(address,uint256,', 'address,bytes)')) >> 224
                 gas gas_remaining - 25710 wei
                args msg.sender, arg2, address(this.address), mem[ceil32(arg3.length) + 228 len arg3.length]
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + 228] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 260 len arg3.length % 32]
            call arg1 with:
               funct Mask(32, 224, sha3('receiveApproval(address,uint256,', 'address,bytes)')) >> 224
                 gas gas_remaining - 25710 wei
                args msg.sender, arg2, address(this.address), mem[ceil32(arg3.length) + 228 len floor32(arg3.length) + 32]
    else:
        mem[ceil32(arg3.length) + 228] = mem[128]
        mem[ceil32(arg3.length) + 260 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
        if not arg3.length % 32:
            call arg1 with:
               funct Mask(32, 224, sha3('receiveApproval(address,uint256,', 'address,bytes)')) >> 224
                 gas gas_remaining - 25710 wei
                args msg.sender, arg2, address(this.address), mem[ceil32(arg3.length) + 228 len arg3.length]
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + 228] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 260 len arg3.length % 32]
            call arg1 with:
               funct Mask(32, 224, sha3('receiveApproval(address,uint256,', 'address,bytes)')) >> 224
                 gas gas_remaining - 25710 wei
                args msg.sender, arg2, address(this.address), mem[128], mem[ceil32(arg3.length) + 260 len floor32(arg3.length)]
    require ext_call.success
    return 1
}



}

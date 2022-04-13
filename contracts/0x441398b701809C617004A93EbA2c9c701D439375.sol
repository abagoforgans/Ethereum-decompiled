contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint8 stor2;
uint256 stor8;
uint256 stor9;
uint256 stor10;

function _fallback() payable {
    stor0 = msg.sender
    stor1 = 0
    stor2 = 0
    stor8 = 0
    stor9 = 10000 * 10^18
    stor10 = 0
    require not msg.value
    return code.data[151 len 8806]
}



// =====================  Runtime code  =====================


const name = 'The Money Fight'

const decimals = 18

const symbol = 'MFT'

const LOSER_LOCK_TIME = (672 * 24 * 3600)


address owner;
uint256 stor1;
uint8 stor2;
mapping of struct totalPrediction;
mapping of struct stor4;
mapping of uint256 prediction;
mapping of uint256 balanceOf;
mapping of uint256 stor7;
uint256 totalContribution;
uint256 cap;
uint256 totalSupply;

function totalContribution() {
    return totalContribution
}

function totalSupply() {
    return totalSupply
}

function getPrediction(uint256 arg1, uint256 arg2) {
    require arg2 < prediction[arg1]
    return prediction[arg1][arg2][address(msg.sender)]
}

function cap() {
    return cap
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function getTotalPrediction(uint256 arg1, uint256 arg2) {
    return totalPrediction[arg1].field_512, totalPrediction[arg1][1][arg2].field_0
}

function purchasingAllowed() {
    return bool(stor2)
}

function enablePurchasing() {
    require msg.sender == owner
    stor2 = 1
}

function disablePurchasing() {
    require msg.sender == owner
    stor2 = 0
}

function drain(uint256 arg1) {
    require msg.sender == owner
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        if stor7[address(msg.sender)][address(arg1)]:
            return 0
    stor7[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    if not arg2:
        return 0
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function withdrawForeignTokens(address arg1) {
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
    return bool(ext_call.return_data[0])
}

function finishGame(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    totalPrediction[arg1].field_0 = 2
    stor4[arg1].field_0 = arg2
    stor4[arg1].field_256 = block.timestamp + (672 * 24 * 3600)
    stor4[arg1].field_512 = totalPrediction[arg1].field_512
    stor4[arg1].field_768 = totalPrediction[arg1][1][arg2].field_0
    emit gameFinished(arg1, arg2, totalPrediction[arg1].field_512, totalPrediction[arg1][1][arg2].field_0);
}

function _fallback() payable {
    require totalContribution + msg.value >= totalContribution
    require totalContribution + msg.value <= cap
    require stor2
    if msg.value:
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        totalContribution += msg.value
        totalSupply += 100 * msg.value
        balanceOf[address(msg.sender)] += 100 * msg.value
        emit Transfer((100 * msg.value), this.address, msg.sender);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    if not arg3:
        return 0
    if balanceOf[address(arg1)] > arg3:
        return 0
    if stor7[address(arg1)][address(msg.sender)] > arg3:
        return 0
    if balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    stor7[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function canBet(uint256 arg1) {
    require totalPrediction[arg1].field_0 <= 2
    if totalPrediction[arg1].field_0:
        if block.timestamp >= totalPrediction[arg1].field_1024:
            return (block.timestamp < totalPrediction[arg1].field_1024)
        return not totalPrediction[arg1].field_0
    if block.timestamp < totalPrediction[arg1].field_1024:
        return not totalPrediction[arg1].field_0
    totalPrediction[arg1].field_0 = 1
    if block.timestamp >= totalPrediction[arg1].field_1024:
        return (block.timestamp < totalPrediction[arg1].field_1024)
    else:
        return 0
}

function predictWinner(uint256 arg1, uint256 arg2, uint256 arg3) {
    if arg3 > 0:
        if balanceOf[address(msg.sender)] >= arg3:
            require totalPrediction[arg1].field_0 <= 2
            if totalPrediction[arg1].field_0:
                if block.timestamp < totalPrediction[arg1].field_1024:
                    if not totalPrediction[arg1].field_0:
                        balanceOf[address(msg.sender)] -= arg3
                        require arg2 < prediction[arg1]
                        prediction[arg1][arg2][address(msg.sender)] = arg3
                        totalPrediction[arg1][1][arg2].field_0 += arg3
                        totalPrediction[arg1].field_512 += arg3
                        emit betAdded(arg1, arg2, msg.sender, arg3);
            else:
                if block.timestamp >= totalPrediction[arg1].field_1024:
                    totalPrediction[arg1].field_0 = 1
                else:
                    if not totalPrediction[arg1].field_0:
                        balanceOf[address(msg.sender)] -= arg3
                        require arg2 < prediction[arg1]
                        prediction[arg1][arg2][address(msg.sender)] = arg3
                        totalPrediction[arg1][1][arg2].field_0 += arg3
                        totalPrediction[arg1].field_512 += arg3
                        emit betAdded(arg1, arg2, msg.sender, arg3);
}

function createGame(string arg1, uint256 arg2, uint256 arg3) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    require msg.sender == owner
    stor1++
    mem[64] = ceil32(arg1.length) + 256
    mem[ceil32(arg1.length) + 128] = 0
    mem[ceil32(arg1.length) + 160] = 0
    mem[ceil32(arg1.length) + 192] = 0
    mem[ceil32(arg1.length) + 224] = arg3
    mem[0] = stor1 + 1
    mem[32] = 3
    totalPrediction[stor1 + 1].field_0 = 0
    totalPrediction[stor1 + 1].field_256 = 0
    totalPrediction[stor1 + 1].field_512 = 0
    totalPrediction[stor1 + 1].field_768 = 0
    totalPrediction[stor1 + 1].field_1024 = arg3
    idx = 0
    while idx < arg2:
        mem[32] = 5
        prediction[stor1 + 1]++
        if not prediction[stor1 + 1] <= prediction[stor1 + 1] + 1:
            s = sha3(sha3(stor1 + 1, 5)) + prediction[stor1 + 1] + 1
            while sha3(sha3(stor1 + 1, 5)) + prediction[stor1 + 1] > s:
                s = s + 1
                continue 
        mem[0] = sha3(stor1 + 1, 5)
        mem[64] = mem[64] + 32
        idx = idx + 1
        continue 
    _21 = mem[64]
    mem[mem[64] + 32] = stor1 + 1
    mem[mem[64] + 64] = arg2
    mem[mem[64] + 96] = arg3
    mem[mem[64]] = 128
    mem[_21 + 128] = arg1.length
    mem[_21 + 160 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        emit gameStarted(string rg1, uint256 rg2, uint256 rg3, uint256 rg4):
                         mem[mem[64] len arg1.length + _21 + -mem[64] + 160],
    else:
        mem[floor32(arg1.length) + _21 + 160] = mem[floor32(arg1.length) + _21 + -(arg1.length % 32) + 192 len arg1.length % 32]
        emit gameStarted(string rg1, uint256 rg2, uint256 rg3, uint256 rg4):
                         mem[mem[64] len floor32(arg1.length) + _21 + -mem[64] + 192],
}

function redeem(uint256 arg1, uint256 arg2) {
    require totalPrediction[arg1].field_0 <= 2
    require totalPrediction[arg1].field_0 == 2
    require arg2 < prediction[arg1]
    if stor4[arg1].field_0 != arg2:
        if prediction[arg1][arg2][address(msg.sender)] > 0:
            if stor4[arg1].field_256 < block.timestamp:
                require arg2 < prediction[arg1]
                prediction[arg1][arg2][address(msg.sender)] = 0
                balanceOf[address(msg.sender)] += prediction[arg1][arg2][address(msg.sender)]
                emit Redeem(arg1, arg2, 0, msg.sender, prediction[arg1][arg2][address(msg.sender)]);
    else:
        if prediction[arg1][arg2][address(msg.sender)] > 0:
            if stor4[arg1].field_512:
                require stor4[arg1].field_512
                require stor4[arg1].field_512 * prediction[arg1][arg2][address(msg.sender)] / stor4[arg1].field_512 == prediction[arg1][arg2][address(msg.sender)]
            require stor4[arg1].field_768 > 0
            require stor4[arg1].field_768
            require stor4[arg1].field_512 * prediction[arg1][arg2][address(msg.sender)] == (stor4[arg1].field_768 * stor4[arg1].field_512 * prediction[arg1][arg2][address(msg.sender)] / stor4[arg1].field_768) + (stor4[arg1].field_512 * prediction[arg1][arg2][address(msg.sender)] % stor4[arg1].field_768)
            if stor4[arg1].field_512 * prediction[arg1][arg2][address(msg.sender)] / stor4[arg1].field_768 > 0:
                require arg2 < prediction[arg1]
                require arg2 < prediction[arg1]
                prediction[arg1][arg2][address(msg.sender)] = 0
                totalSupply = totalSupply + (stor4[arg1].field_512 * prediction[arg1][arg2][address(msg.sender)] / stor4[arg1].field_768) - prediction[arg1][arg2][address(msg.sender)]
                balanceOf[address(msg.sender)] += stor4[arg1].field_512 * prediction[arg1][arg2][address(msg.sender)] / stor4[arg1].field_768
                emit Redeem(arg1, arg2, 1, msg.sender, stor4[arg1].field_512 * prediction[arg1][arg2][address(msg.sender)] / stor4[arg1].field_768);
}



}

contract main {


// =======================  Init code  ======================


address stor0;
uint8 stor3;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
bool stor14; offset 255
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor20;
uint256 stor21;
uint256 stor22;
uint256 stor23;
mapping of uint256 stor24;
mapping of uint256 stor25;

function _fallback() payable {
    stor3 = 18
    stor5 = 10^18
    stor6 = 10000 * 10^18
    stor10 = 8760 * 24 * 3600
    stor11 = 39 * 10^6 * 10^18
    stor12 = 20
    stor13 = 175200 * 24 * 3600
    uint255(stor14.field_0) = 39 * 10^6 * 10^18 / 2
    bool(stor14.field_255) = 0
    stor15 = 168 * 24 * 3600
    stor16 = 0
    stor18 = 100000000000000 * 10^18
    stor21 = 6600 * stor6
    stor22 = 5
    stor23 = 8760 * 24 * 3600
    require not msg.value
    stor0 = msg.sender
    stor7 = block.timestamp
    stor17 = block.timestamp
    stor20 = stor21
    stor24[address(msg.sender)] = stor21
    stor25[address(msg.sender)] = 0
    return code.data[231 len 4239]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 tokenUnit;
uint256 wanUnit;
uint256 foundingTime;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 oneYear;
uint256 minerTotalSupply;
uint256 minerTotalYears;
uint256 minerTotalTime;
uint256 minerPreSupply;
uint256 minerPreTime;
uint256 minerTotalReward;
uint256 minerTimeOfLastProof;
uint64 stor18;
uint256 minerDifficulty;
uint256 minerCurrentChallenge;
uint256 optionTotalSupply;
uint256 optionInitialSupply;
uint256 optionTotalTimes;
uint256 optionExerciseSpan;
mapping of uint256 optionOf;
mapping of uint256 optionExerciseOf;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function minerPreTime() {
    return minerPreTime
}

function minerTotalYears() {
    return minerTotalYears
}

function optionTotalTimes() {
    return optionTotalTimes
}

function foundingTime() {
    return foundingTime
}

function wanUnit() {
    return wanUnit
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function minerCurrentChallenge() {
    return minerCurrentChallenge
}

function minerTotalReward() {
    return minerTotalReward
}

function minerPreSupply() {
    return minerPreSupply
}

function owner() {
    return owner
}

function optionTotalSupply() {
    return optionTotalSupply
}

function symbol() {
    return symbol[0 len symbol.length]
}

function optionExerciseSpan() {
    return optionExerciseSpan
}

function minerTimeOfLastProof() {
    return minerTimeOfLastProof
}

function minerTotalSupply() {
    return minerTotalSupply
}

function minerTotalTime() {
    return minerTotalTime
}

function optionOf(address arg1) {
    return optionOf[arg1]
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function tokenUnit() {
    return tokenUnit
}

function optionInitialSupply() {
    return optionInitialSupply
}

function oneYear() {
    return oneYear
}

function optionExerciseOf(address arg1) {
    return optionExerciseOf[arg1]
}

function minerDifficulty() {
    return uint256(minerDifficulty)
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    require ext_code.size(arg1)
    call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[msg.sender] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require balanceOf[address(arg1)] + balanceOf[msg.sender] == balanceOf[msg.sender] + balanceOf[address(arg1)]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    balanceOf[arg1] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    require balanceOf[address(arg2)] + balanceOf[arg1] == balanceOf[arg1] + balanceOf[address(arg2)]
    return 1
}

function optionExercise(uint256 arg1) {
    require optionExerciseSpan
    require optionTotalTimes
    if optionTotalTimes < (block.timestamp - foundingTime / optionExerciseSpan) + 1:
        require arg1 + optionExerciseOf[address(msg.sender)] <= optionOf[address(msg.sender)] * optionTotalTimes / optionTotalTimes
    else:
        require arg1 + optionExerciseOf[address(msg.sender)] <= optionOf[address(msg.sender)] + (block.timestamp - foundingTime / optionExerciseSpan * optionOf[address(msg.sender)]) / optionTotalTimes
    optionExerciseOf[address(msg.sender)] += arg1
    balanceOf[address(msg.sender)] += arg1
    totalSupply += arg1
    emit Transfer(arg1, 0, this.address);
    emit Transfer(arg1, this.address, msg.sender);
    emit OptionExercise(arg1, msg.sender);
}

function proofOfWork(uint256 arg1) {
    require minerTotalReward < minerTotalSupply
    require Mask(64, 192, sha3(arg1, minerCurrentChallenge)) >= Mask(64, 192, uint64(stor18))
    require block.timestamp - minerTimeOfLastProof >= 5
    if block.timestamp - foundingTime >= minerPreTime:
        require minerTotalTime
        balanceOf[address(msg.sender)] += (minerTotalSupply * block.timestamp) - (minerPreSupply * block.timestamp) - (minerTotalSupply * minerTimeOfLastProof) + (minerPreSupply * minerTimeOfLastProof) / minerTotalTime
        totalSupply += (minerTotalSupply * block.timestamp) - (minerPreSupply * block.timestamp) - (minerTotalSupply * minerTimeOfLastProof) + (minerPreSupply * minerTimeOfLastProof) / minerTotalTime
        minerTotalReward += (minerTotalSupply * block.timestamp) - (minerPreSupply * block.timestamp) - (minerTotalSupply * minerTimeOfLastProof) + (minerPreSupply * minerTimeOfLastProof) / minerTotalTime
        require block.timestamp - minerTimeOfLastProof
        uint256(minerDifficulty) = (600 * uint256(minerDifficulty) / block.timestamp - minerTimeOfLastProof) + 1
        minerTimeOfLastProof = block.timestamp
        minerCurrentChallenge = sha3(arg1, minerCurrentChallenge, block.hash(block.number - 1))
        emit Transfer(((minerTotalSupply * block.timestamp) - (minerPreSupply * block.timestamp) - (minerTotalSupply * minerTimeOfLastProof) + (minerPreSupply * minerTimeOfLastProof) / minerTotalTime), 0, this.address);
        emit Transfer(((minerTotalSupply * block.timestamp) - (minerPreSupply * block.timestamp) - (minerTotalSupply * minerTimeOfLastProof) + (minerPreSupply * minerTimeOfLastProof) / minerTotalTime), this.address, msg.sender);
    else:
        require minerPreTime
        balanceOf[address(msg.sender)] += (block.timestamp * minerPreSupply) - (minerTimeOfLastProof * minerPreSupply) / minerPreTime
        totalSupply += (block.timestamp * minerPreSupply) - (minerTimeOfLastProof * minerPreSupply) / minerPreTime
        minerTotalReward += (block.timestamp * minerPreSupply) - (minerTimeOfLastProof * minerPreSupply) / minerPreTime
        require block.timestamp - minerTimeOfLastProof
        uint256(minerDifficulty) = (600 * uint256(minerDifficulty) / block.timestamp - minerTimeOfLastProof) + 1
        minerTimeOfLastProof = block.timestamp
        minerCurrentChallenge = sha3(arg1, minerCurrentChallenge, block.hash(block.number - 1))
        emit Transfer(((block.timestamp * minerPreSupply) - (minerTimeOfLastProof * minerPreSupply) / minerPreTime), 0, this.address);
        emit Transfer(((block.timestamp * minerPreSupply) - (minerTimeOfLastProof * minerPreSupply) / minerPreTime), this.address, msg.sender);
}

function optionTransfer(address arg1, uint256 arg2, uint256 arg3) {
    require arg1
    require optionOf[address(msg.sender)] >= arg2
    require optionOf[address(arg1)] + arg2 > optionOf[address(arg1)]
    require optionExerciseOf[address(msg.sender)] >= arg3
    require optionExerciseOf[address(arg1)] + arg3 > optionExerciseOf[address(arg1)]
    require optionExerciseSpan
    if optionTotalTimes < (block.timestamp - foundingTime / optionExerciseSpan) + 1:
        if optionTotalTimes:
            require arg3 <= arg2 * optionTotalTimes / optionTotalTimes
            if optionExerciseSpan:
                if optionTotalTimes < (block.timestamp - foundingTime / optionExerciseSpan) + 1:
                    if optionTotalTimes:
                        require optionExerciseOf[address(msg.sender)] - arg3 <= (optionOf[address(msg.sender)] * optionTotalTimes) - (arg2 * optionTotalTimes) / optionTotalTimes
                        optionOf[msg.sender] -= arg2
                        optionOf[address(arg1)] += arg2
                        optionExerciseOf[msg.sender] -= arg3
                        optionExerciseOf[address(arg1)] += arg3
                        emit OptionTransfer(arg2, arg3, msg.sender, arg1);
                        if optionOf[address(arg1)] + optionOf[msg.sender] == optionOf[msg.sender] + optionOf[address(arg1)]:
                            if optionExerciseOf[address(arg1)] + optionExerciseOf[msg.sender] == optionExerciseOf[msg.sender] + optionExerciseOf[address(arg1)]:
                else:
                    if optionTotalTimes:
                        require optionExerciseOf[address(msg.sender)] - arg3 <= optionOf[address(msg.sender)] + (block.timestamp - foundingTime / optionExerciseSpan * optionOf[address(msg.sender)]) - arg2 - (block.timestamp - foundingTime / optionExerciseSpan * arg2) / optionTotalTimes
                        optionOf[msg.sender] -= arg2
                        optionOf[address(arg1)] += arg2
                        optionExerciseOf[msg.sender] -= arg3
                        optionExerciseOf[address(arg1)] += arg3
                        emit OptionTransfer(arg2, arg3, msg.sender, arg1);
                        if optionOf[address(arg1)] + optionOf[msg.sender] == optionOf[msg.sender] + optionOf[address(arg1)]:
                            if optionExerciseOf[address(arg1)] + optionExerciseOf[msg.sender] == optionExerciseOf[msg.sender] + optionExerciseOf[address(arg1)]:
    else:
        if optionTotalTimes:
            require arg3 <= arg2 + (block.timestamp - foundingTime / optionExerciseSpan * arg2) / optionTotalTimes
            if optionExerciseSpan:
                if optionTotalTimes < (block.timestamp - foundingTime / optionExerciseSpan) + 1:
                    if optionTotalTimes:
                        require optionExerciseOf[address(msg.sender)] - arg3 <= (optionOf[address(msg.sender)] * optionTotalTimes) - (arg2 * optionTotalTimes) / optionTotalTimes
                        optionOf[msg.sender] -= arg2
                        optionOf[address(arg1)] += arg2
                        optionExerciseOf[msg.sender] -= arg3
                        optionExerciseOf[address(arg1)] += arg3
                        emit OptionTransfer(arg2, arg3, msg.sender, arg1);
                        if optionOf[address(arg1)] + optionOf[msg.sender] == optionOf[msg.sender] + optionOf[address(arg1)]:
                            if optionExerciseOf[address(arg1)] + optionExerciseOf[msg.sender] == optionExerciseOf[msg.sender] + optionExerciseOf[address(arg1)]:
                else:
                    if optionTotalTimes:
                        require optionExerciseOf[address(msg.sender)] - arg3 <= optionOf[address(msg.sender)] + (block.timestamp - foundingTime / optionExerciseSpan * optionOf[address(msg.sender)]) - arg2 - (block.timestamp - foundingTime / optionExerciseSpan * arg2) / optionTotalTimes
                        optionOf[msg.sender] -= arg2
                        optionOf[address(arg1)] += arg2
                        optionExerciseOf[msg.sender] -= arg3
                        optionExerciseOf[address(arg1)] += arg3
                        emit OptionTransfer(arg2, arg3, msg.sender, arg1);
                        if optionOf[address(arg1)] + optionOf[msg.sender] == optionOf[msg.sender] + optionOf[address(arg1)]:
                            if optionExerciseOf[address(arg1)] + optionExerciseOf[msg.sender] == optionExerciseOf[msg.sender] + optionExerciseOf[address(arg1)]:
    revert
}



}

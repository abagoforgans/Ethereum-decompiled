contract main {




// =====================  Runtime code  =====================


const name = 'WorkIt Token'

const symbol = 'WIT'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 weiPerToken;
uint256 stor4;
uint256 stor5;
mapping of struct dataPerWeek;
mapping of struct commitments;
array of uint256 stor8;
uint256 stor9;
uint256 startDate;
address owner;

function startDate() {
    return startDate
}

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function commitments(address arg1, uint256 arg2) {
    return commitments[arg1][arg2].field_0, 
           commitments[arg1][arg2].field_256,
           commitments[arg1][arg2].field_768,
           commitments[arg1][arg2].field_1024,
           bool(commitments[arg1][arg2].field_1280)
}

function dataPerWeek(uint256 arg1) {
    return bool(dataPerWeek[arg1].field_0), 
           dataPerWeek[arg1].field_256,
           dataPerWeek[arg1].field_512,
           dataPerWeek[arg1].field_768,
           dataPerWeek[arg1].field_1024,
           dataPerWeek[arg1].field_1280,
           dataPerWeek[arg1].field_1536
}

function weiPerToken() {
    return weiPerToken
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function currentDay() {
    require stor4
    return (block.timestamp - startDate / stor4)
}

function currentWeek() {
    require stor4
    require stor5
    return (block.timestamp - startDate / stor4 / stor5)
}

function storeImageString(string arg1) {
    stor9++
    stor8[stor9 + 1][] = Array(len=arg1.length, data=arg1[all])
    return stor9
}

function buyTokens(uint256 arg1) payable {
    require msg.value >= arg1 * weiPerToken
    balanceOf[msg.sender] += arg1
    totalSupply += arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function currentDayOfWeek() {
    require stor4
    require stor5
    require stor4
    return ((block.timestamp - startDate / stor4) - (block.timestamp - startDate / stor4 / stor5 * stor5))
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    balanceOf[arg1] += arg2
    emit 0xabddf252: arg2, msg.sender, arg1
    return 1
}

function _fallback() payable {
    require weiPerToken
    require msg.value >= msg.value / weiPerToken * weiPerToken
    balanceOf[msg.sender] += msg.value / weiPerToken
    totalSupply += msg.value / weiPerToken
}

function withdraw(uint256 arg1) {
    require arg1 <= balanceOf[msg.sender]
    require arg1 * weiPerToken <= eth.balance(this.address)
    balanceOf[msg.sender] -= arg1
    totalSupply -= arg1
    call msg.sender with:
       value arg1 * weiPerToken wei
         gas 2300 * is_zero(value) wei
    return bool(ext_call.success)
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg3 <= balanceOf[address(arg1)]
    allowance[address(arg1)][msg.sender] -= arg3
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    emit 0xabddf252: arg3, arg1, arg2
    return 1
}

function initializeWeekData(uint256 arg1) {
    if not dataPerWeek[arg1].field_0:
        dataPerWeek[arg1].field_0 = 1
        dataPerWeek[arg1].field_1280 = 0
        dataPerWeek[arg1].field_256 = 0
        dataPerWeek[arg1].field_1536 = 0
        dataPerWeek[arg1].field_512 = 0
        dataPerWeek[arg1].field_768 = 0
        dataPerWeek[arg1].field_1024 = 0
}

function commitToWeek(uint256 arg1, uint256 arg2) {
    if arg1 > balanceOf[msg.sender]:
        emit Log(Array(len=44, data='You need to bet at least 10 toke', 'ns to commit'));
        revert
    if arg1 < 10:
        emit Log(Array(len=44, data='You need to bet at least 10 toke', 'ns to commit'));
        revert
    if not arg2:
        emit Log(Array(len=42, data='You cannot register for 0 days o', 'f activity'));
        revert
    if arg2 > stor5:
        emit Log(Array(len=49, data='You cannot register for more tha', 'n 7 days per week'));
        revert
    require stor4
    require stor5
    require stor4
    if arg2 > stor5 - (block.timestamp - startDate / stor4) + (block.timestamp - startDate / stor4 / stor5 * stor5):
        emit Log(Array(len=46, data='It is too late in the week for y', 'ou to register'));
        revert
    require stor4
    require stor5
    if commitments[msg.sender][block.timestamp - stor10 / stor4 / stor5].field_768 != 0:
        emit Log(Array(len=39, data='You have already committed to th', 'is week'));
        revert
    balanceOf[0] += arg1
    balanceOf[msg.sender] -= arg1
    emit 0xabddf252: arg1, msg.sender, 0
    require stor4
    require stor5
    if not dataPerWeek[block.timestamp - stor10 / stor4 / stor5].field_0:
        dataPerWeek[block.timestamp - stor10 / stor4 / stor5].field_0 = 1
        dataPerWeek[block.timestamp - stor10 / stor4 / stor5].field_1280 = 0
        dataPerWeek[block.timestamp - stor10 / stor4 / stor5].field_256 = 0
        dataPerWeek[block.timestamp - stor10 / stor4 / stor5].field_1536 = 0
        dataPerWeek[block.timestamp - stor10 / stor4 / stor5].field_512 = 0
        dataPerWeek[block.timestamp - stor10 / stor4 / stor5].field_768 = 0
        dataPerWeek[block.timestamp - stor10 / stor4 / stor5].field_1024 = 0
    require stor4
    require stor5
    dataPerWeek[block.timestamp - stor10 / stor4 / stor5].field_512++
    dataPerWeek[block.timestamp - stor10 / stor4 / stor5].field_1536 += arg1
    dataPerWeek[block.timestamp - stor10 / stor4 / stor5].field_768 += arg2
    commitments[msg.sender][block.timestamp - stor10 / stor4 / stor5].field_256 = arg2
    commitments[msg.sender][block.timestamp - stor10 / stor4 / stor5].field_0 = 0
    commitments[msg.sender][block.timestamp - stor10 / stor4 / stor5].field_768 = arg1
    commitments[msg.sender][block.timestamp - stor10 / stor4 / stor5].field_1024 = 0
    commitments[msg.sender][block.timestamp - stor10 / stor4 / stor5].field_1280 = 0
}

function postProof(string arg1) {
    require stor4
    require stor5
    require stor4
    require stor5
    require stor4
    if commitments[msg.sender][block.timestamp - stor10 / stor4 / stor5].field_0 > (block.timestamp - startDate / stor4) - (block.timestamp - startDate / stor4 / stor5 * stor5):
        emit Log(Array(len=41, data='You have already uploaded proof ', 'for today'));
        revert
    if not commitments[msg.sender][block.timestamp - stor10 / stor4 / stor5].field_768:
        emit Log(Array(len=39, data='You have not committed to this w', 'eek yet'));
        revert
    require stor4
    require stor5
    require stor4
    if commitments[msg.sender][block.timestamp - stor10 / stor4 / stor5][2][(block.timestamp - stor10 / stor4) - (block.timestamp - stor10 / stor4 / stor5 * stor5)].field_0:
        emit Log(Array(len=42, data='Proof has already been stored fo', 'r this day'));
        revert
    if commitments[msg.sender][block.timestamp - stor10 / stor4 / stor5].field_0 < commitments[msg.sender][block.timestamp - stor10 / stor4 / stor5].field_256:
        stor9++
        stor8[stor9 + 1][] = Array(len=arg1.length, data=arg1[all])
        require stor4
        require stor5
        require stor4
        commitments[msg.sender][block.timestamp - stor10 / stor4 / stor5][2][(block.timestamp - stor10 / stor4) - (block.timestamp - stor10 / stor4 / stor5 * stor5)].field_0 = stor9
        commitments[msg.sender][block.timestamp - stor10 / stor4 / stor5].field_0++
        require stor5
        if not dataPerWeek[block.timestamp - stor10 / stor4 / stor5].field_0:
            dataPerWeek[block.timestamp - stor10 / stor4 / stor5].field_0 = 1
            dataPerWeek[block.timestamp - stor10 / stor4 / stor5].field_1280 = 0
            dataPerWeek[block.timestamp - stor10 / stor4 / stor5].field_256 = 0
            dataPerWeek[block.timestamp - stor10 / stor4 / stor5].field_1536 = 0
            dataPerWeek[block.timestamp - stor10 / stor4 / stor5].field_512 = 0
            dataPerWeek[block.timestamp - stor10 / stor4 / stor5].field_768 = 0
            dataPerWeek[block.timestamp - stor10 / stor4 / stor5].field_1024 = 0
        require stor4
        require stor5
        dataPerWeek[block.timestamp - stor10 / stor4 / stor5].field_1024++
        require dataPerWeek[block.timestamp - stor10 / stor4 / stor5].field_768
        dataPerWeek[block.timestamp - stor10 / stor4 / stor5].field_1280 = dataPerWeek[block.timestamp - stor10 / stor4 / stor5].field_1536 + (dataPerWeek[block.timestamp - stor10 / stor4 / stor5].field_1024 * dataPerWeek[block.timestamp - stor10 / stor4 / stor5].field_1536) / dataPerWeek[block.timestamp - stor10 / stor4 / stor5].field_768
        if commitments[msg.sender][block.timestamp - stor10 / stor4 / stor5].field_0 >= commitments[msg.sender][block.timestamp - stor10 / stor4 / stor5].field_256:
            dataPerWeek[block.timestamp - stor10 / stor4 / stor5].field_256++
}

function payout() {
    require stor4
    require stor5
    require block.timestamp - startDate / stor4 / stor5 > 0
    require stor4
    require stor5
    s = 0
    s = (block.timestamp - startDate / stor4 / stor5) - 1
    while not commitments[msg.sender][(block.timestamp - stor10 / stor4 / stor5) - 1].field_1280:
        if commitments[msg.sender][(block.timestamp - stor10 / stor4 / stor5) - 1].field_256:
            if not dataPerWeek[s].field_0:
                dataPerWeek[s].field_0 = 1
                dataPerWeek[s].field_1280 = 0
                dataPerWeek[s].field_256 = 0
                dataPerWeek[s].field_1536 = 0
                dataPerWeek[s].field_512 = 0
                dataPerWeek[s].field_768 = 0
                dataPerWeek[s].field_1024 = 0
            require commitments[msg.sender][(block.timestamp - stor10 / stor4 / stor5) - 1].field_256
            if 0 == dataPerWeek[s].field_256:
                require dataPerWeek[s].field_512
                if dataPerWeek[s].field_1536 - dataPerWeek[s].field_1280 / dataPerWeek[s].field_512:
                    balanceOf[0] -= dataPerWeek[s].field_1536 - dataPerWeek[s].field_1280 / dataPerWeek[s].field_512
                    balanceOf[msg.sender] += dataPerWeek[s].field_1536 - dataPerWeek[s].field_1280 / dataPerWeek[s].field_512
                    mem[96] = dataPerWeek[s].field_1536 - dataPerWeek[s].field_1280 / dataPerWeek[s].field_512
                    emit 0xabddf252: (dataPerWeek[s].field_1536 - dataPerWeek[s].field_1280 / dataPerWeek[s].field_512), 0, msg.sender
                    commitments[msg.sender][(block.timestamp - stor10 / stor4 / stor5) - 1].field_1024 = dataPerWeek[s].field_1536 - dataPerWeek[s].field_1280 / dataPerWeek[s].field_512
            else:
                if commitments[msg.sender][(block.timestamp - stor10 / stor4 / stor5) - 1].field_0 != commitments[msg.sender][(block.timestamp - stor10 / stor4 / stor5) - 1].field_256:
                    if commitments[msg.sender][(block.timestamp - stor10 / stor4 / stor5) - 1].field_0 * commitments[msg.sender][(block.timestamp - stor10 / stor4 / stor5) - 1].field_768 / commitments[msg.sender][(block.timestamp - stor10 / stor4 / stor5) - 1].field_256:
                        balanceOf[0] -= commitments[msg.sender][(block.timestamp - stor10 / stor4 / stor5) - 1].field_0 * commitments[msg.sender][(block.timestamp - stor10 / stor4 / stor5) - 1].field_768 / commitments[msg.sender][(block.timestamp - stor10 / stor4 / stor5) - 1].field_256
                        balanceOf[msg.sender] += commitments[msg.sender][(block.timestamp - stor10 / stor4 / stor5) - 1].field_0 * commitments[msg.sender][(block.timestamp - stor10 / stor4 / stor5) - 1].field_768 / commitments[msg.sender][(block.timestamp - stor10 / stor4 / stor5) - 1].field_256
                        mem[96] = commitments[msg.sender][(block.timestamp - stor10 / stor4 / stor5) - 1].field_0 * commitments[msg.sender][(block.timestamp - stor10 / stor4 / stor5) - 1].field_768 / commitments[msg.sender][(block.timestamp - stor10 / stor4 / stor5) - 1].field_256
                        emit 0xabddf252: (commitments[msg.sender][(block.timestamp - stor10 / stor4 / stor5) - 1].field_0 * commitments[msg.sender][(block.timestamp - stor10 / stor4 / stor5) - 1].field_768 / commitments[msg.sender][(block.timestamp - stor10 / stor4 / stor5) - 1].field_256), 0, msg.sender
                        commitments[msg.sender][(block.timestamp - stor10 / stor4 / stor5) - 1].field_1024 = commitments[msg.sender][(block.timestamp - stor10 / stor4 / stor5) - 1].field_0 * commitments[msg.sender][(block.timestamp - stor10 / stor4 / stor5) - 1].field_768 / commitments[msg.sender][(block.timestamp - stor10 / stor4 / stor5) - 1].field_256
                else:
                    require dataPerWeek[s].field_256
                    if (commitments[msg.sender][(block.timestamp - stor10 / stor4 / stor5) - 1].field_0 * commitments[msg.sender][(block.timestamp - stor10 / stor4 / stor5) - 1].field_768 / commitments[msg.sender][(block.timestamp - stor10 / stor4 / stor5) - 1].field_256) + (dataPerWeek[s].field_1536 - dataPerWeek[s].field_1280 / dataPerWeek[s].field_256):
                        balanceOf[0] = balanceOf[0] - (commitments[msg.sender][(block.timestamp - stor10 / stor4 / stor5) - 1].field_0 * commitments[msg.sender][(block.timestamp - stor10 / stor4 / stor5) - 1].field_768 / commitments[msg.sender][(block.timestamp - stor10 / stor4 / stor5) - 1].field_256) - (dataPerWeek[s].field_1536 - dataPerWeek[s].field_1280 / dataPerWeek[s].field_256)
                        balanceOf[msg.sender] = (commitments[msg.sender][(block.timestamp - stor10 / stor4 / stor5) - 1].field_0 * commitments[msg.sender][(block.timestamp - stor10 / stor4 / stor5) - 1].field_768 / commitments[msg.sender][(block.timestamp - stor10 / stor4 / stor5) - 1].field_256) + (dataPerWeek[s].field_1536 - dataPerWeek[s].field_1280 / dataPerWeek[s].field_256) + balanceOf[msg.sender]
                        mem[96] = (commitments[msg.sender][(block.timestamp - stor10 / stor4 / stor5) - 1].field_0 * commitments[msg.sender][(block.timestamp - stor10 / stor4 / stor5) - 1].field_768 / commitments[msg.sender][(block.timestamp - stor10 / stor4 / stor5) - 1].field_256) + (dataPerWeek[s].field_1536 - dataPerWeek[s].field_1280 / dataPerWeek[s].field_256)
                        emit 0xabddf252: ((commitments[msg.sender][(block.timestamp - stor10 / stor4 / stor5) - 1].field_0 * commitments[msg.sender][(block.timestamp - stor10 / stor4 / stor5) - 1].field_768 / commitments[msg.sender][(block.timestamp - stor10 / stor4 / stor5) - 1].field_256) + (dataPerWeek[s].field_1536 - dataPerWeek[s].field_1280 / dataPerWeek[s].field_256)), 0, msg.sender
                        commitments[msg.sender][(block.timestamp - stor10 / stor4 / stor5) - 1].field_1024 = (commitments[msg.sender][(block.timestamp - stor10 / stor4 / stor5) - 1].field_0 * commitments[msg.sender][(block.timestamp - stor10 / stor4 / stor5) - 1].field_768 / commitments[msg.sender][(block.timestamp - stor10 / stor4 / stor5) - 1].field_256) + (dataPerWeek[s].field_1536 - dataPerWeek[s].field_1280 / dataPerWeek[s].field_256)
        commitments[msg.sender][(block.timestamp - stor10 / stor4 / stor5) - 1].field_1280 = 1
        if not s:
        mem[0] = s - 1
        mem[32] = sha3(msg.sender, 7)
        s = sha3(s - 1, sha3(msg.sender, 7))
        s = s - 1
        continue 
}



}

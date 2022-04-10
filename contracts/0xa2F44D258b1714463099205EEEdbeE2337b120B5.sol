contract main {


// =======================  Init code  ======================


address stor0;
uint8 stor8;
array of uint256 stor14;
array of uint256 stor15;
array of uint256 stor16;
uint8 stor17;

function _fallback() payable {
    stor8 = 0
    uint8(stor14.length) = 18
    stor14.length.field_8 = 'Token 0.1' / 256
    idx = 0
    while stor14.length + 31 / 32 > idx:
        stor14[idx].field_0 = 0
        idx = idx + 1
        continue 
    uint8(stor15.length) = 10
    stor15.length.field_8 = 'PROOF' / 256
    idx = 0
    while stor15.length + 31 / 32 > idx:
        stor15[idx].field_0 = 0
        idx = idx + 1
        continue 
    uint8(stor16.length) = 4
    stor16.length.field_8 = 'PF' / 256
    idx = 0
    while stor16.length + 31 / 32 > idx:
        stor16[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor17 = 0
    stor0 = msg.sender
    return code.data[479 len 11610]
}



// =====================  Runtime code  =====================


#
#  - finishTokensSale(uint256 arg1)
#
address owner;
uint256 totalSupply;
mapping of uint256 balanceOf;
uint256 etherPrice;
address crowdsaleOwner;
uint256 totalLimitUSD;
uint256 minimalSuccessUSD;
uint256 collectedUSD;
uint8 state;
uint256 crowdsaleStartTime;
uint256 crowdsaleFinishTime;
mapping of struct investors;
mapping of address investorsIter;
uint256 numberOfInvestors;
array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 allowed;
address migrationAgentAddress;
uint256 totalMigrated;
uint256 weiReqFund;
uint256 votingDeadline;
uint256 numberOfVotes;
uint256 yea;
uint256 nay;
mapping of struct votes;
mapping of address votesIter;
mapping of struct projects;
mapping of struct swypes;
mapping of struct videos;
uint256 stor31;
uint256 stor32;

function votingDeadline() {
    return votingDeadline
}

function investorsIter(uint256 arg1) {
    return investorsIter[arg1]
}

function name() {
    return name[0 len name.length]
}

function numberOfVotes() {
    return numberOfVotes
}

function minimalSuccessUSD() {
    return minimalSuccessUSD
}

function yea() {
    return yea
}

function totalSupply() {
    return totalSupply
}

function numberOfInvestors() {
    return numberOfInvestors
}

function collectedUSD() {
    return collectedUSD
}

function weiReqFund() {
    return weiReqFund
}

function decimals() {
    return decimals
}

function standard() {
    return standard[0 len standard.length]
}

function swypes(address arg1) {
    return uint16(swypes[arg1].field_0), swypes[arg1].field_256
}

function allowed(address arg1, address arg2) {
    return allowed[arg1][arg2]
}

function investors(address arg1) {
    return investors[arg1].field_0, investors[arg1].field_256
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function totalLimitUSD() {
    return totalLimitUSD
}

function migrationAgent() {
    return migrationAgentAddress
}

function projects(address arg1) {
    mem[320] = projects[arg1][1].field_0
    idx = 320
    s = 0
    while projects[arg1][1].length + 320 > idx + 32:
        mem[idx + 32] = projects[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return projects[arg1].field_0, 
           Array(len=projects[arg1][1].length, data=mem[320 len projects[arg1][1].length + (floor32(projects[arg1][1].length - 1) + -projects[arg1][1].length + 32 % 32)]),
           projects[arg1].field_512,
           projects[arg1].field_768,
           projects[arg1].field_1024,
           projects[arg1].field_1280
}

function crowdsaleOwner() {
    return crowdsaleOwner
}

function owner() {
    return owner
}

function totalMigrated() {
    return totalMigrated
}

function symbol() {
    return symbol[0 len symbol.length]
}

function crowdsaleFinishTime() {
    return crowdsaleFinishTime
}

function etherPrice() {
    return etherPrice
}

function videos(bytes32 arg1) {
    return uint16(videos[arg1].field_0), videos[arg1].field_256, videos[arg1].field_512, address(videos[arg1].field_768)
}

function state() {
    require state <= 5
    return state
}

function votes(address arg1) {
    return bool(uint8(votes[arg1].field_0)), bool(uint8(votes[arg1].field_8))
}

function allowance(address arg1, address arg2) {
    require state <= 5
    require state == 4
    return allowed[address(arg1)][address(arg2)]
}

function crowdsaleStartTime() {
    return crowdsaleStartTime
}

function nay() {
    return nay
}

function votesIter(uint256 arg1) {
    return votesIter[arg1]
}

function changeOwner(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
}

function setMigrationAgent(address arg1) {
    require owner == msg.sender
    require not migrationAgentAddress
    migrationAgentAddress = arg1
    state = 5
}

function setPrice(uint256 arg1) {
    require owner == msg.sender
    require arg1 >= 2
    stor32 = arg1 / 10
    if not arg1 / 10:
        stor32 = 1
    stor31 = arg1 - stor32
}

function approve(address arg1, uint256 arg2) {
    require state <= 5
    require state == 4
    allowed[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
}

function votingInfo() {
    require state <= 5
    if state != 4:
        require state <= 5
        require state == 5
    if votingDeadline > block.timestamp:
        return weiReqFund, votingDeadline - block.timestamp
    return weiReqFund, 0
}

function timeToFinishTokensSale() {
    require state <= 5
    if state != 1:
        require state <= 5
        require state == 3
    if block.timestamp <= crowdsaleFinishTime:
        return (crowdsaleFinishTime - block.timestamp)
    else:
        return 0
}

function swypeCode() {
    require state <= 5
    require state == 4
    uint16(swypes[address(msg.sender)].field_0) = uint16(sha3(msg.sender, block.hash(block.number - 1)))
    swypes[address(msg.sender)].field_256 = block.timestamp
    return uint16(sha3(msg.sender, block.hash(block.number - 1)))
}

function transfer(address arg1, uint256 arg2) {
    require state <= 5
    require state == 4
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function startVoting(uint256 arg1) {
    require state <= 5
    if state != 4:
        require state <= 5
        require state == 5
    require owner == msg.sender
    require not weiReqFund
    require arg1 > 0
    require arg1 <= eth.balance(this.address)
    weiReqFund = arg1
    votingDeadline = block.timestamp + (168 * 24 * 3600)
    yea = 0
    nay = 0
    emit VotingStarted(arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require state <= 5
    require state == 4
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require allowed[address(arg1)][address(msg.sender)] >= arg3
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    allowed[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
}

function migrate(uint256 arg1) {
    require state <= 5
    require state == 5
    require migrationAgentAddress
    require arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    totalMigrated += arg1
    require ext_code.size(migrationAgentAddress)
    call migrationAgentAddress.migrateFrom(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg1
    require ext_call.success
    emit Migrate(arg1, msg.sender, migrationAgentAddress);
}

function vote(bool arg1) {
    require balanceOf[address(msg.sender)]
    require state <= 5
    if state != 4:
        require state <= 5
        require state == 5
    require bool(uint8(votes[address(msg.sender)].field_8)) != 1
    require votingDeadline > block.timestamp
    numberOfVotes++
    votesIter[stor23] = msg.sender
    uint8(votes[address(msg.sender)].field_0) = uint8(arg1)
    Mask(248, 0, votes[address(msg.sender)].field_8) = 1
    Mask(240, 0, votes[address(msg.sender)].field_16) = Mask(240, 16, arg1) >> 16
    emit Voted(arg1, msg.sender);
    return numberOfVotes
}

function startTokensSale(address arg1, uint256 arg2) {
    require owner == msg.sender
    require state <= 5
    if state:
        require state <= 5
        require state == 2
    crowdsaleStartTime = block.timestamp
    crowdsaleOwner = arg1
    etherPrice = arg2
    numberOfInvestors = 0
    collectedUSD = 0
    require state <= 5
    if state:
        crowdsaleFinishTime = block.timestamp + (720 * 24 * 3600)
        state = 3
        totalLimitUSD = 5200000
        minimalSuccessUSD = 1000 * 3600
    else:
        crowdsaleFinishTime = block.timestamp + (336 * 24 * 3600)
        state = 1
        totalLimitUSD = 300000
        minimalSuccessUSD = 300000
    require state <= 5
    emit NewState(state);
}

function withdrawBack() {
    require state <= 5
    if not state:
        if investors[address(msg.sender)].field_256 <= 0:
        investors[address(msg.sender)].field_0 = 0
        investors[address(msg.sender)].field_256 = 0
        call msg.sender with:
           value investors[address(msg.sender)].field_256 wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
    else:
        if state <= 5:
            require state == 2
            if investors[address(msg.sender)].field_256 <= 0:
            investors[address(msg.sender)].field_0 = 0
            investors[address(msg.sender)].field_256 = 0
            call msg.sender with:
               value investors[address(msg.sender)].field_256 wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
    revert
}

function vote(address arg1, bool arg2) {
    require balanceOf[address(msg.sender)]
    require state <= 5
    if state != 4:
        require state <= 5
        require state == 5
    require projects[address(arg1)].field_0 > 0
    require bool(uint8(projects[address(arg1)][6][address(msg.sender)].field_8)) != 1
    require projects[address(arg1)].field_512 > block.timestamp
    projects[address(arg1)].field_768++
    address(projects[address(arg1)][7][projects[address(arg1)].field_768].field_0) = msg.sender
    uint8(projects[address(arg1)][6][address(msg.sender)].field_0) = uint8(arg2)
    Mask(248, 0, projects[address(arg1)][6][address(msg.sender)].field_8) = 1
    Mask(240, 0, projects[address(arg1)][6][address(msg.sender)].field_16) = Mask(240, 16, arg2) >> 16
    emit Voted(arg2, arg1, msg.sender);
    return projects[address(arg1)].field_768
}

function deployProject(uint256 arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    require balanceOf[address(msg.sender)]
    require state <= 5
    if state != 4:
        require state <= 5
        require state == 5
    require arg1 > 0
    require arg1 <= balanceOf[address(this.address)]
    require arg1 <= 1000 * balanceOf[address(msg.sender)]
    require not projects[address(msg.sender)].field_0
    projects[address(msg.sender)].field_0 = arg1
    projects[address(msg.sender)][1][].field_0 = Array(len=arg2.length, data=arg2[all])
    projects[address(msg.sender)].field_512 = block.timestamp + (168 * 24 * 3600)
    mem[ceil32(arg2.length) + 128] = arg1
    mem[ceil32(arg2.length) + 160] = 64
    mem[ceil32(arg2.length) + 192] = arg2.length
    if arg2.length:
        mem[ceil32(arg2.length) + 224] = mem[128]
        mem[ceil32(arg2.length) + 256 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
    emit Deployed(arg1, Array(len=arg2.length, data=mem[ceil32(arg2.length) + 224 len arg2.length]), msg.sender);
}

function setHash(uint16 arg1, bytes32 arg2) {
    require state <= 5
    require state == 4
    require swypes[address(msg.sender)].field_256
    require uint16(swypes[address(msg.sender)].field_0) == arg1
    require state <= 5
    require state == 4
    require balanceOf[address(msg.sender)] >= stor32
    require balanceOf[stor0] + stor32 >= balanceOf[stor0]
    balanceOf[address(msg.sender)] -= stor32
    balanceOf[stor0] += stor32
    emit Transfer(stor32, msg.sender, owner);
    require state <= 5
    require state == 4
    require balanceOf[address(msg.sender)] >= stor31
    require balanceOf[address(this.address)] + stor31 >= balanceOf[address(this.address)]
    balanceOf[address(msg.sender)] -= stor31
    balanceOf[this.address] += stor31
    emit Transfer(stor31, msg.sender, this.address);
    uint16(videos[arg2].field_0) = arg1
    videos[arg2].field_256 = swypes[address(msg.sender)].field_256
    videos[arg2].field_512 = block.timestamp
    address(videos[arg2].field_768) = msg.sender
    uint16(swypes[address(msg.sender)].field_0) = 0
    swypes[address(msg.sender)].field_256 = 0
}

function projectInfo(address arg1) {
    mem[96] = 0
    require state <= 5
    if state != 4:
        require state <= 5
        require state == 5
    mem[128] = projects[address(arg1)][1].length
    mem[160] = projects[address(arg1)][1].field_0
    idx = 160
    s = 0
    while projects[address(arg1)][1].length + 128 > idx:
        mem[idx + 32] = projects[address(arg1)][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[0] = arg1
    mem[32] = 28
    mem[ceil32(projects[address(arg1)][1].length) + 160] = projects[address(arg1)].field_0
    if projects[address(arg1)].field_512 > block.timestamp:
        mem[ceil32(projects[address(arg1)][1].length) + 224] = projects[address(arg1)].field_512 - block.timestamp
        mem[ceil32(projects[address(arg1)][1].length) + 192] = 96
        mem[ceil32(projects[address(arg1)][1].length) + 256] = projects[address(arg1)][1].length
        if projects[address(arg1)][1].length:
            mem[ceil32(projects[address(arg1)][1].length) + 288] = mem[160]
            mem[ceil32(projects[address(arg1)][1].length) + 320 len floor32(projects[address(arg1)][1].length - 1)] = mem[192 len floor32(projects[address(arg1)][1].length - 1)]
        return projects[address(arg1)].field_0, 
               Array(len=projects[address(arg1)][1].length, data=mem[ceil32(projects[address(arg1)][1].length) + 288 len projects[address(arg1)][1].length]),
               projects[address(arg1)].field_512 - block.timestamp
    mem[ceil32(projects[address(arg1)][1].length) + 224] = 0
    mem[ceil32(projects[address(arg1)][1].length) + 192] = 96
    mem[ceil32(projects[address(arg1)][1].length) + 256] = projects[address(arg1)][1].length
    if not projects[address(arg1)][1].length:
        if not projects[address(arg1)][1].length % 32:
            return projects[address(arg1)].field_0, 
                   96,
                   0,
                   projects[address(arg1)][1].length,
                   mem[ceil32(projects[address(arg1)][1].length) + 288 len projects[address(arg1)][1].length]
        mem[floor32(projects[address(arg1)][1].length) + ceil32(projects[address(arg1)][1].length) + 288] = mem[floor32(projects[address(arg1)][1].length) + ceil32(projects[address(arg1)][1].length) + -projects[address(arg1)][1].length % 32 + 320 len projects[address(arg1)][1].length % 32]
        return projects[address(arg1)].field_0, 
               96,
               0,
               projects[address(arg1)][1].length,
               mem[ceil32(projects[address(arg1)][1].length) + 288 len floor32(projects[address(arg1)][1].length) + 32]
    mem[ceil32(projects[address(arg1)][1].length) + 288] = mem[160]
    mem[ceil32(projects[address(arg1)][1].length) + 320 len floor32(projects[address(arg1)][1].length - 1)] = mem[192 len floor32(projects[address(arg1)][1].length - 1)]
    if not projects[address(arg1)][1].length % 32:
        return projects[address(arg1)].field_0, 
               96,
               0,
               projects[address(arg1)][1].length,
               mem[ceil32(projects[address(arg1)][1].length) + 288 len projects[address(arg1)][1].length]
    mem[floor32(projects[address(arg1)][1].length) + ceil32(projects[address(arg1)][1].length) + 288] = mem[floor32(projects[address(arg1)][1].length) + ceil32(projects[address(arg1)][1].length) + -projects[address(arg1)][1].length % 32 + 320 len projects[address(arg1)][1].length % 32]
    return projects[address(arg1)].field_0, 
           96,
           0,
           projects[address(arg1)][1].length,
           mem[160],
           mem[ceil32(projects[address(arg1)][1].length) + 320 len floor32(projects[address(arg1)][1].length)]
}

function finishVoting(uint256 arg1) {
    mem[64] = 160
    require state <= 5
    if state == 4:
        require block.timestamp >= votingDeadline
        s = 0
        s = 96
        s = 0
        idx = arg1
        while idx > 0:
            if numberOfVotes <= 0:
                weiReqFund = 0
                votingDeadline = 0
                numberOfVotes = 0
                if yea > nay:
                    if migrationAgentAddress:
                        call migrationAgentAddress with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                    else:
                        call owner with:
                           value weiReqFund wei
                             gas 2300 * is_zero(value) wei
                    require ext_call.success
                emit VotingFinished((yea > nay));
                return (yea > nay)
            numberOfVotes--
            mem[0] = votesIter[stor23 - 1]
            mem[32] = 26
            _82 = mem[64]
            mem[64] = mem[64] + 64
            mem[_82] = bool(uint8(votes[stor27[stor23 - 1]].field_0))
            mem[_82 + 32] = bool(uint8(votes[stor27[stor23 - 1]].field_8))
            if not uint8(votes[stor27[stor23 - 1]].field_0):
                nay += balanceOf[stor27[stor23 - 1]]
            else:
                yea += balanceOf[stor27[stor23 - 1]]
            uint16(votes[stor27[stor23 - 1]].field_0) = 0
            mem[0] = numberOfVotes
            mem[32] = 27
            votesIter[stor23] = 0
            s = balanceOf[stor27[stor23 - 1]]
            s = _82
            s = votesIter[stor23 - 1]
            idx = idx - 1
            continue 
    else:
        require state <= 5
        require state == 5
        require block.timestamp >= votingDeadline
        s = 0
        s = 96
        s = 0
        idx = arg1
        while idx > 0:
            if numberOfVotes <= 0:
                weiReqFund = 0
                votingDeadline = 0
                numberOfVotes = 0
                if yea > nay:
                    if migrationAgentAddress:
                        call migrationAgentAddress with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                    else:
                        call owner with:
                           value weiReqFund wei
                             gas 2300 * is_zero(value) wei
                    require ext_call.success
                emit VotingFinished((yea > nay));
                return (yea > nay)
            numberOfVotes--
            mem[0] = votesIter[stor23 - 1]
            mem[32] = 26
            _87 = mem[64]
            mem[64] = mem[64] + 64
            mem[_87] = bool(uint8(votes[stor27[stor23 - 1]].field_0))
            mem[_87 + 32] = bool(uint8(votes[stor27[stor23 - 1]].field_8))
            if not uint8(votes[stor27[stor23 - 1]].field_0):
                nay += balanceOf[stor27[stor23 - 1]]
            else:
                yea += balanceOf[stor27[stor23 - 1]]
            uint16(votes[stor27[stor23 - 1]].field_0) = 0
            mem[0] = numberOfVotes
            mem[32] = 27
            votesIter[stor23] = 0
            s = balanceOf[stor27[stor23 - 1]]
            s = _87
            s = votesIter[stor23 - 1]
            idx = idx - 1
            continue 
    if numberOfVotes > 0:
        return 0
    weiReqFund = 0
    votingDeadline = 0
    numberOfVotes = 0
    if yea > nay:
        if migrationAgentAddress:
            call migrationAgentAddress with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
        else:
            call owner with:
               value weiReqFund wei
                 gas 2300 * is_zero(value) wei
        require ext_call.success
    emit VotingFinished((yea > nay));
    return (yea > nay)
}

function finishVoting(address arg1, uint256 arg2) {
    mem[64] = 160
    require state <= 5
    if state == 4:
        require projects[address(arg1)].field_0 > 0
        require block.timestamp >= projects[address(arg1)].field_512
        require projects[address(arg1)].field_0 <= balanceOf[address(this.address)]
        s = 0
        s = 96
        s = 0
        idx = arg2
        while idx > 0:
            if projects[address(arg1)].field_768 > 0:
                projects[address(arg1)].field_768--
                mem[0] = address(projects[address(arg1)][7][projects[address(arg1)].field_768 - 1].field_0)
                mem[32] = sha3(address(arg1), 28) + 6
                _143 = mem[64]
                mem[64] = mem[64] + 64
                mem[_143] = bool(uint8(projects[address(arg1)][6][address(projects[address(arg1)][7][projects[address(arg1)].field_768 - 1].field_0)].field_0))
                mem[_143 + 32] = bool(uint8(projects[address(arg1)][6][address(projects[address(arg1)][7][projects[address(arg1)].field_768 - 1].field_0)].field_8))
                if not uint8(projects[address(arg1)][6][address(projects[address(arg1)][7][projects[address(arg1)].field_768 - 1].field_0)].field_0):
                    projects[address(arg1)].field_1280 += balanceOf[address(stor28[address(arg1)][7][stor28[address(arg1)].field_768 - 1].field_0)]
                else:
                    projects[address(arg1)].field_1024 += balanceOf[address(stor28[address(arg1)][7][stor28[address(arg1)].field_768 - 1].field_0)]
                address(projects[address(arg1)][7][projects[address(arg1)].field_768].field_0) = 0
                mem[0] = address(projects[address(arg1)][7][projects[address(arg1)].field_768 - 1].field_0)
                mem[32] = sha3(address(arg1), 28) + 6
                uint16(projects[address(arg1)][6][address(projects[address(arg1)][7][projects[address(arg1)].field_768 - 1].field_0)].field_0) = 0
                s = balanceOf[address(stor28[address(arg1)][7][stor28[address(arg1)].field_768 - 1].field_0)]
                s = _143
                s = address(projects[address(arg1)][7][projects[address(arg1)].field_768 - 1].field_0)
                idx = idx - 1
                continue 
            projects[address(arg1)].field_0 = 0
            projects[address(arg1)].field_256 = 0
            if 31 < projects[address(arg1)][1].length:
                idx = sha3(sha3(address(arg1), 28) + 1)
                while sha3(sha3(address(arg1), 28) + 1) + (projects[address(arg1)][1].length + 31 / 32) > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
            projects[address(arg1)].field_512 = 0
            projects[address(arg1)].field_768 = 0
            projects[address(arg1)].field_1024 = 0
            projects[address(arg1)].field_1280 = 0
            if projects[address(arg1)].field_1024 > projects[address(arg1)].field_1280:
                require balanceOf[address(arg1)] + projects[address(arg1)].field_0 >= balanceOf[address(arg1)]
                balanceOf[address(this.address)] -= projects[address(arg1)].field_0
                balanceOf[arg1] += projects[address(arg1)].field_0
                emit Transfer(projects[address(arg1)].field_0, this.address, arg1);
            emit VotingFinished((projects[address(arg1)].field_1024 > projects[address(arg1)].field_1280), arg1);
            return (projects[address(arg1)].field_1024 > projects[address(arg1)].field_1280)
    else:
        require state <= 5
        require state == 5
        require projects[address(arg1)].field_0 > 0
        require block.timestamp >= projects[address(arg1)].field_512
        require projects[address(arg1)].field_0 <= balanceOf[address(this.address)]
        s = 0
        s = 96
        s = 0
        idx = arg2
        while idx > 0:
            if projects[address(arg1)].field_768 > 0:
                projects[address(arg1)].field_768--
                mem[0] = address(projects[address(arg1)][7][projects[address(arg1)].field_768 - 1].field_0)
                mem[32] = sha3(address(arg1), 28) + 6
                _149 = mem[64]
                mem[64] = mem[64] + 64
                mem[_149] = bool(uint8(projects[address(arg1)][6][address(projects[address(arg1)][7][projects[address(arg1)].field_768 - 1].field_0)].field_0))
                mem[_149 + 32] = bool(uint8(projects[address(arg1)][6][address(projects[address(arg1)][7][projects[address(arg1)].field_768 - 1].field_0)].field_8))
                if not uint8(projects[address(arg1)][6][address(projects[address(arg1)][7][projects[address(arg1)].field_768 - 1].field_0)].field_0):
                    projects[address(arg1)].field_1280 += balanceOf[address(stor28[address(arg1)][7][stor28[address(arg1)].field_768 - 1].field_0)]
                else:
                    projects[address(arg1)].field_1024 += balanceOf[address(stor28[address(arg1)][7][stor28[address(arg1)].field_768 - 1].field_0)]
                address(projects[address(arg1)][7][projects[address(arg1)].field_768].field_0) = 0
                mem[0] = address(projects[address(arg1)][7][projects[address(arg1)].field_768 - 1].field_0)
                mem[32] = sha3(address(arg1), 28) + 6
                uint16(projects[address(arg1)][6][address(projects[address(arg1)][7][projects[address(arg1)].field_768 - 1].field_0)].field_0) = 0
                s = balanceOf[address(stor28[address(arg1)][7][stor28[address(arg1)].field_768 - 1].field_0)]
                s = _149
                s = address(projects[address(arg1)][7][projects[address(arg1)].field_768 - 1].field_0)
                idx = idx - 1
                continue 
            projects[address(arg1)].field_0 = 0
            projects[address(arg1)].field_256 = 0
            if 31 < projects[address(arg1)][1].length:
                idx = sha3(sha3(address(arg1), 28) + 1)
                while sha3(sha3(address(arg1), 28) + 1) + (projects[address(arg1)][1].length + 31 / 32) > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
            projects[address(arg1)].field_512 = 0
            projects[address(arg1)].field_768 = 0
            projects[address(arg1)].field_1024 = 0
            projects[address(arg1)].field_1280 = 0
            if projects[address(arg1)].field_1024 > projects[address(arg1)].field_1280:
                require balanceOf[address(arg1)] + projects[address(arg1)].field_0 >= balanceOf[address(arg1)]
                balanceOf[address(this.address)] -= projects[address(arg1)].field_0
                balanceOf[arg1] += projects[address(arg1)].field_0
                emit Transfer(projects[address(arg1)].field_0, this.address, arg1);
            emit VotingFinished((projects[address(arg1)].field_1024 > projects[address(arg1)].field_1280), arg1);
            return (projects[address(arg1)].field_1024 > projects[address(arg1)].field_1280)
    if projects[address(arg1)].field_768 > 0:
        return 0
    projects[address(arg1)].field_0 = 0
    projects[address(arg1)].field_256 = 0
    if 31 < projects[address(arg1)][1].length:
        idx = 0
        while projects[address(arg1)][1].length + 31 / 32 > idx:
            projects[address(arg1)][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    projects[address(arg1)].field_512 = 0
    projects[address(arg1)].field_768 = 0
    projects[address(arg1)].field_1024 = 0
    projects[address(arg1)].field_1280 = 0
    if projects[address(arg1)].field_1024 > projects[address(arg1)].field_1280:
        require balanceOf[address(arg1)] + projects[address(arg1)].field_0 >= balanceOf[address(arg1)]
        balanceOf[address(this.address)] -= projects[address(arg1)].field_0
        balanceOf[arg1] += projects[address(arg1)].field_0
        emit Transfer(projects[address(arg1)].field_0, this.address, arg1);
    emit VotingFinished((projects[address(arg1)].field_1024 > projects[address(arg1)].field_1280), arg1);
    return (projects[address(arg1)].field_1024 > projects[address(arg1)].field_1280)
}

function _fallback() payable {
    require state <= 5
    require state <= 5
    if state != 1:
        require state == 3
    if state == 1:
        if collectedUSD + (msg.value * etherPrice / 10^18) <= totalLimitUSD:
            collectedUSD += msg.value * etherPrice / 10^18
            require (125 * msg.value * etherPrice / 10^18) + balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]
            require 125 * msg.value * etherPrice / 10^18 > 0
            if not investors[address(msg.sender)].field_256:
                numberOfInvestors++
                investorsIter[stor13] = msg.sender
            investors[address(msg.sender)].field_0 += 125 * msg.value * etherPrice / 10^18
            investors[address(msg.sender)].field_256 += msg.value
            balanceOf[address(msg.sender)] += 125 * msg.value * etherPrice / 10^18
            totalSupply += 125 * msg.value * etherPrice / 10^18
        else:
            require etherPrice
            call msg.sender with:
               value msg.value - ((10^18 * totalLimitUSD) - (10^18 * collectedUSD) / etherPrice) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            collectedUSD = totalLimitUSD
            require (125 * totalLimitUSD) - (125 * collectedUSD) + balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]
            require (125 * totalLimitUSD) - (125 * collectedUSD) > 0
            if not investors[address(msg.sender)].field_256:
                numberOfInvestors++
                investorsIter[stor13] = msg.sender
            investors[address(msg.sender)].field_0 = (125 * totalLimitUSD) - (125 * collectedUSD) + investors[address(msg.sender)].field_0
            investors[address(msg.sender)].field_256 += (10^18 * totalLimitUSD) - (10^18 * collectedUSD) / etherPrice
            balanceOf[address(msg.sender)] = (125 * totalLimitUSD) - (125 * collectedUSD) + balanceOf[address(msg.sender)]
            totalSupply = (125 * totalLimitUSD) - (125 * collectedUSD) + totalSupply
    else:
        require state <= 5
        if state == 3:
            if block.timestamp < crowdsaleStartTime + (24 * 3600):
                if collectedUSD + (msg.value * etherPrice / 10^18) <= totalLimitUSD:
                    collectedUSD += msg.value * etherPrice / 10^18
                    require (115 * msg.value * etherPrice / 10^18) + balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]
                    require 115 * msg.value * etherPrice / 10^18 > 0
                    if not investors[address(msg.sender)].field_256:
                        numberOfInvestors++
                        investorsIter[stor13] = msg.sender
                    investors[address(msg.sender)].field_0 += 115 * msg.value * etherPrice / 10^18
                    investors[address(msg.sender)].field_256 += msg.value
                    balanceOf[address(msg.sender)] += 115 * msg.value * etherPrice / 10^18
                    totalSupply += 115 * msg.value * etherPrice / 10^18
                else:
                    require etherPrice
                    call msg.sender with:
                       value msg.value - ((10^18 * totalLimitUSD) - (10^18 * collectedUSD) / etherPrice) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    collectedUSD = totalLimitUSD
                    require (115 * totalLimitUSD) - (115 * collectedUSD) + balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]
                    require (115 * totalLimitUSD) - (115 * collectedUSD) > 0
                    if not investors[address(msg.sender)].field_256:
                        numberOfInvestors++
                        investorsIter[stor13] = msg.sender
                    investors[address(msg.sender)].field_0 = (115 * totalLimitUSD) - (115 * collectedUSD) + investors[address(msg.sender)].field_0
                    investors[address(msg.sender)].field_256 += (10^18 * totalLimitUSD) - (10^18 * collectedUSD) / etherPrice
                    balanceOf[address(msg.sender)] = (115 * totalLimitUSD) - (115 * collectedUSD) + balanceOf[address(msg.sender)]
                    totalSupply = (115 * totalLimitUSD) - (115 * collectedUSD) + totalSupply
            else:
                if block.timestamp >= crowdsaleStartTime + (168 * 24 * 3600):
                    if collectedUSD + (msg.value * etherPrice / 10^18) <= totalLimitUSD:
                        collectedUSD += msg.value * etherPrice / 10^18
                        require (100 * msg.value * etherPrice / 10^18) + balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]
                        require 100 * msg.value * etherPrice / 10^18 > 0
                        if not investors[address(msg.sender)].field_256:
                            numberOfInvestors++
                            investorsIter[stor13] = msg.sender
                        investors[address(msg.sender)].field_0 += 100 * msg.value * etherPrice / 10^18
                        investors[address(msg.sender)].field_256 += msg.value
                        balanceOf[address(msg.sender)] += 100 * msg.value * etherPrice / 10^18
                        totalSupply += 100 * msg.value * etherPrice / 10^18
                    else:
                        require etherPrice
                        call msg.sender with:
                           value msg.value - ((10^18 * totalLimitUSD) - (10^18 * collectedUSD) / etherPrice) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        collectedUSD = totalLimitUSD
                        require (100 * totalLimitUSD) - (100 * collectedUSD) + balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]
                        require (100 * totalLimitUSD) - (100 * collectedUSD) > 0
                        if not investors[address(msg.sender)].field_256:
                            numberOfInvestors++
                            investorsIter[stor13] = msg.sender
                        investors[address(msg.sender)].field_0 = (100 * totalLimitUSD) - (100 * collectedUSD) + investors[address(msg.sender)].field_0
                        investors[address(msg.sender)].field_256 += (10^18 * totalLimitUSD) - (10^18 * collectedUSD) / etherPrice
                        balanceOf[address(msg.sender)] = (100 * totalLimitUSD) - (100 * collectedUSD) + balanceOf[address(msg.sender)]
                        totalSupply = (100 * totalLimitUSD) - (100 * collectedUSD) + totalSupply
                else:
                    if collectedUSD + (msg.value * etherPrice / 10^18) <= totalLimitUSD:
                        collectedUSD += msg.value * etherPrice / 10^18
                        require (110 * msg.value * etherPrice / 10^18) + balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]
                        require 110 * msg.value * etherPrice / 10^18 > 0
                        if not investors[address(msg.sender)].field_256:
                            numberOfInvestors++
                            investorsIter[stor13] = msg.sender
                        investors[address(msg.sender)].field_0 += 110 * msg.value * etherPrice / 10^18
                        investors[address(msg.sender)].field_256 += msg.value
                        balanceOf[address(msg.sender)] += 110 * msg.value * etherPrice / 10^18
                        totalSupply += 110 * msg.value * etherPrice / 10^18
                    else:
                        require etherPrice
                        call msg.sender with:
                           value msg.value - ((10^18 * totalLimitUSD) - (10^18 * collectedUSD) / etherPrice) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        collectedUSD = totalLimitUSD
                        require (110 * totalLimitUSD) - (110 * collectedUSD) + balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]
                        require (110 * totalLimitUSD) - (110 * collectedUSD) > 0
                        if not investors[address(msg.sender)].field_256:
                            numberOfInvestors++
                            investorsIter[stor13] = msg.sender
                        investors[address(msg.sender)].field_0 = (110 * totalLimitUSD) - (110 * collectedUSD) + investors[address(msg.sender)].field_0
                        investors[address(msg.sender)].field_256 += (10^18 * totalLimitUSD) - (10^18 * collectedUSD) / etherPrice
                        balanceOf[address(msg.sender)] = (110 * totalLimitUSD) - (110 * collectedUSD) + balanceOf[address(msg.sender)]
                        totalSupply = (110 * totalLimitUSD) - (110 * collectedUSD) + totalSupply
}



}

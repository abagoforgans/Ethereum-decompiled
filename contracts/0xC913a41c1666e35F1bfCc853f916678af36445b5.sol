contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
mapping of uint256 stor3;
uint256 stor5;
uint256 stor6;

function _fallback() payable {
    stor2 = 0
    stor5 = 5 * 10^16
    stor6 = 1540
    require not msg.value
    stor0 = msg.sender
    require stor5 + stor3[stor0] >= stor3[stor0]
    require stor5 + stor3[stor0] >= stor5
    stor3[stor0] += stor5
    stor2 = 0
    return code.data[209 len 2573]
}



// =====================  Runtime code  =====================


const name = 'UC Coin'

const decimals = 8

const symbol = 'UCN'

const sub_b42fab71(?) = 1505707199

const sub_d6bc2cc1(?) = 1509681599


address owner;
address newOwner;
uint256 totalSupply;
mapping of uint256 balance;
uint256 MAX_SUPPLY;
uint256 UCCOIN_PER_ETHER;
uint256 tokens;
uint256 sub_e228158d;
address sub_8b4690fdAddress;
uint256 totalEthers;

function totalEthers() {
    return totalEthers
}

function totalSupply() {
    return totalSupply
}

function MAX_SUPPLY() {
    return MAX_SUPPLY
}

function balanceOf(address arg1) {
    return balance[address(arg1)]
}

function sub_8b4690fd(?) {
    return sub_8b4690fdAddress
}

function owner() {
    return owner
}

function tokens() {
    return tokens
}

function UCCOIN_PER_ETHER() {
    return UCCOIN_PER_ETHER
}

function newOwner() {
    return newOwner
}

function sub_e228158d(?) {
    return sub_e228158d
}

function getBalance(address arg1) {
    return balance[address(arg1)]
}

function transferOwnership(address arg1) {
    require owner != msg.sender
    newOwner = arg1
}

function acceptOwnership() {
    if newOwner == msg.sender:
        emit OwnershipTransferred(owner, newOwner);
        owner = newOwner
}

function getBonusRate() {
    if block.timestamp >= 1505707199:
        if block.timestamp < 1507003199:
            return 35
        if block.timestamp < 1507607999:
            return 25
        if block.timestamp < 1508212799:
            return 10
        if block.timestamp < 1508817599:
            return 5
        else:
            return 0
    else:
        return 0
}

function transfer(address arg1, uint256 arg2) {
    if balance[stor0] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    require arg2 <= balance[stor0]
    balance[stor0] -= arg2
    require arg2 + balance[arg1] >= balance[arg1]
    require arg2 + balance[arg1] >= arg2
    balance[address(arg1)] = arg2 + balance[arg1]
    emit Transfer(arg2, owner, arg1);
    return 1
}

function proxyPayment(address arg1) payable {
    require block.timestamp > 1505707199
    require block.timestamp < 1509681599
    require msg.value > 0
    require msg.value + totalEthers >= totalEthers
    require msg.value + totalEthers >= msg.value
    totalEthers += msg.value
    tokens = msg.value * UCCOIN_PER_ETHER / 10^10
    require msg.value * UCCOIN_PER_ETHER / 10^10 > 0
    if block.timestamp < 1505707199:
        sub_e228158d = 0
        require tokens >= tokens
        require tokens >= 0
        require balance[stor0] >= tokens
        require tokens + totalSupply >= totalSupply
        require tokens + totalSupply >= tokens
        totalSupply += tokens
        if balance[stor0] >= tokens:
            if tokens > 0:
                require tokens <= balance[stor0]
                balance[stor0] -= tokens
                require tokens + balance[arg1] >= balance[arg1]
                require tokens + balance[arg1] >= tokens
                balance[address(arg1)] = tokens + balance[arg1]
                emit Transfer(tokens, owner, arg1);
    else:
        if block.timestamp < 1507003199:
            sub_e228158d = 35 * tokens / 100
            require (35 * tokens / 100) + tokens >= tokens
            require (35 * tokens / 100) + tokens >= 35 * tokens / 100
            require balance[stor0] >= (35 * tokens / 100) + tokens
            require (35 * tokens / 100) + tokens + totalSupply >= totalSupply
            require totalSupply >= 0
            totalSupply = (35 * tokens / 100) + tokens + totalSupply
            if balance[stor0] >= (35 * tokens / 100) + tokens:
                if (35 * tokens / 100) + tokens > 0:
                    require (35 * tokens / 100) + tokens <= balance[stor0]
                    balance[stor0] = balance[stor0] - (35 * tokens / 100) - tokens
                    require (35 * tokens / 100) + tokens + balance[arg1] >= balance[arg1]
                    require balance[arg1] >= 0
                    balance[address(arg1)] = (35 * tokens / 100) + tokens + balance[arg1]
                    emit Transfer(((35 * tokens / 100) + tokens), owner, arg1);
        else:
            if block.timestamp < 1507607999:
                sub_e228158d = 25 * tokens / 100
                require (25 * tokens / 100) + tokens >= tokens
                require (25 * tokens / 100) + tokens >= 25 * tokens / 100
                require balance[stor0] >= (25 * tokens / 100) + tokens
                require (25 * tokens / 100) + tokens + totalSupply >= totalSupply
                require totalSupply >= 0
                totalSupply = (25 * tokens / 100) + tokens + totalSupply
                if balance[stor0] >= (25 * tokens / 100) + tokens:
                    if (25 * tokens / 100) + tokens > 0:
                        require (25 * tokens / 100) + tokens <= balance[stor0]
                        balance[stor0] = balance[stor0] - (25 * tokens / 100) - tokens
                        require (25 * tokens / 100) + tokens + balance[arg1] >= balance[arg1]
                        require balance[arg1] >= 0
                        balance[address(arg1)] = (25 * tokens / 100) + tokens + balance[arg1]
                        emit Transfer(((25 * tokens / 100) + tokens), owner, arg1);
            else:
                if block.timestamp < 1508212799:
                    sub_e228158d = 10 * tokens / 100
                    require (10 * tokens / 100) + tokens >= tokens
                    require (10 * tokens / 100) + tokens >= 10 * tokens / 100
                    require balance[stor0] >= (10 * tokens / 100) + tokens
                    require (10 * tokens / 100) + tokens + totalSupply >= totalSupply
                    require totalSupply >= 0
                    totalSupply = (10 * tokens / 100) + tokens + totalSupply
                    if balance[stor0] >= (10 * tokens / 100) + tokens:
                        if (10 * tokens / 100) + tokens > 0:
                            require (10 * tokens / 100) + tokens <= balance[stor0]
                            balance[stor0] = balance[stor0] - (10 * tokens / 100) - tokens
                            require (10 * tokens / 100) + tokens + balance[arg1] >= balance[arg1]
                            require balance[arg1] >= 0
                            balance[address(arg1)] = (10 * tokens / 100) + tokens + balance[arg1]
                            emit Transfer(((10 * tokens / 100) + tokens), owner, arg1);
                else:
                    if block.timestamp < 1508817599:
                        sub_e228158d = 5 * tokens / 100
                        require (5 * tokens / 100) + tokens >= tokens
                        require (5 * tokens / 100) + tokens >= 5 * tokens / 100
                        require balance[stor0] >= (5 * tokens / 100) + tokens
                        require (5 * tokens / 100) + tokens + totalSupply >= totalSupply
                        require totalSupply >= 0
                        totalSupply = (5 * tokens / 100) + tokens + totalSupply
                        if balance[stor0] >= (5 * tokens / 100) + tokens:
                            if (5 * tokens / 100) + tokens > 0:
                                require (5 * tokens / 100) + tokens <= balance[stor0]
                                balance[stor0] = balance[stor0] - (5 * tokens / 100) - tokens
                                require (5 * tokens / 100) + tokens + balance[arg1] >= balance[arg1]
                                require balance[arg1] >= 0
                                balance[address(arg1)] = (5 * tokens / 100) + tokens + balance[arg1]
                                emit Transfer(((5 * tokens / 100) + tokens), owner, arg1);
                    else:
                        sub_e228158d = 0
                        require tokens >= tokens
                        require tokens >= 0
                        require balance[stor0] >= tokens
                        require tokens + totalSupply >= totalSupply
                        require tokens + totalSupply >= tokens
                        totalSupply += tokens
                        if balance[stor0] >= tokens:
                            if tokens > 0:
                                require tokens <= balance[stor0]
                                balance[stor0] -= tokens
                                require tokens + balance[arg1] >= balance[arg1]
                                require tokens + balance[arg1] >= tokens
                                balance[address(arg1)] = tokens + balance[arg1]
                                emit Transfer(tokens, owner, arg1);
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require block.timestamp > 1505707199
    require block.timestamp < 1509681599
    require msg.value > 0
    require msg.value + totalEthers >= totalEthers
    require msg.value + totalEthers >= msg.value
    totalEthers += msg.value
    tokens = msg.value * UCCOIN_PER_ETHER / 10^10
    require msg.value * UCCOIN_PER_ETHER / 10^10 > 0
    if block.timestamp < 1505707199:
        sub_e228158d = 0
        require tokens >= tokens
        require tokens >= 0
        require balance[stor0] >= tokens
        require tokens + totalSupply >= totalSupply
        require tokens + totalSupply >= tokens
        totalSupply += tokens
        if balance[stor0] >= tokens:
            if tokens > 0:
                require tokens <= balance[stor0]
                balance[stor0] -= tokens
                require tokens + balance[msg.sender] >= balance[msg.sender]
                require tokens + balance[msg.sender] >= tokens
                balance[address(msg.sender)] = tokens + balance[msg.sender]
                emit Transfer(tokens, owner, msg.sender);
    else:
        if block.timestamp < 1507003199:
            sub_e228158d = 35 * tokens / 100
            require (35 * tokens / 100) + tokens >= tokens
            require (35 * tokens / 100) + tokens >= 35 * tokens / 100
            require balance[stor0] >= (35 * tokens / 100) + tokens
            require (35 * tokens / 100) + tokens + totalSupply >= totalSupply
            require totalSupply >= 0
            totalSupply = (35 * tokens / 100) + tokens + totalSupply
            if balance[stor0] >= (35 * tokens / 100) + tokens:
                if (35 * tokens / 100) + tokens > 0:
                    require (35 * tokens / 100) + tokens <= balance[stor0]
                    balance[stor0] = balance[stor0] - (35 * tokens / 100) - tokens
                    require (35 * tokens / 100) + tokens + balance[msg.sender] >= balance[msg.sender]
                    require balance[msg.sender] >= 0
                    balance[address(msg.sender)] = (35 * tokens / 100) + tokens + balance[msg.sender]
                    emit Transfer(((35 * tokens / 100) + tokens), owner, msg.sender);
        else:
            if block.timestamp < 1507607999:
                sub_e228158d = 25 * tokens / 100
                require (25 * tokens / 100) + tokens >= tokens
                require (25 * tokens / 100) + tokens >= 25 * tokens / 100
                require balance[stor0] >= (25 * tokens / 100) + tokens
                require (25 * tokens / 100) + tokens + totalSupply >= totalSupply
                require totalSupply >= 0
                totalSupply = (25 * tokens / 100) + tokens + totalSupply
                if balance[stor0] >= (25 * tokens / 100) + tokens:
                    if (25 * tokens / 100) + tokens > 0:
                        require (25 * tokens / 100) + tokens <= balance[stor0]
                        balance[stor0] = balance[stor0] - (25 * tokens / 100) - tokens
                        require (25 * tokens / 100) + tokens + balance[msg.sender] >= balance[msg.sender]
                        require balance[msg.sender] >= 0
                        balance[address(msg.sender)] = (25 * tokens / 100) + tokens + balance[msg.sender]
                        emit Transfer(((25 * tokens / 100) + tokens), owner, msg.sender);
            else:
                if block.timestamp < 1508212799:
                    sub_e228158d = 10 * tokens / 100
                    require (10 * tokens / 100) + tokens >= tokens
                    require (10 * tokens / 100) + tokens >= 10 * tokens / 100
                    require balance[stor0] >= (10 * tokens / 100) + tokens
                    require (10 * tokens / 100) + tokens + totalSupply >= totalSupply
                    require totalSupply >= 0
                    totalSupply = (10 * tokens / 100) + tokens + totalSupply
                    if balance[stor0] >= (10 * tokens / 100) + tokens:
                        if (10 * tokens / 100) + tokens > 0:
                            require (10 * tokens / 100) + tokens <= balance[stor0]
                            balance[stor0] = balance[stor0] - (10 * tokens / 100) - tokens
                            require (10 * tokens / 100) + tokens + balance[msg.sender] >= balance[msg.sender]
                            require balance[msg.sender] >= 0
                            balance[address(msg.sender)] = (10 * tokens / 100) + tokens + balance[msg.sender]
                            emit Transfer(((10 * tokens / 100) + tokens), owner, msg.sender);
                else:
                    if block.timestamp < 1508817599:
                        sub_e228158d = 5 * tokens / 100
                        require (5 * tokens / 100) + tokens >= tokens
                        require (5 * tokens / 100) + tokens >= 5 * tokens / 100
                        require balance[stor0] >= (5 * tokens / 100) + tokens
                        require (5 * tokens / 100) + tokens + totalSupply >= totalSupply
                        require totalSupply >= 0
                        totalSupply = (5 * tokens / 100) + tokens + totalSupply
                        if balance[stor0] >= (5 * tokens / 100) + tokens:
                            if (5 * tokens / 100) + tokens > 0:
                                require (5 * tokens / 100) + tokens <= balance[stor0]
                                balance[stor0] = balance[stor0] - (5 * tokens / 100) - tokens
                                require (5 * tokens / 100) + tokens + balance[msg.sender] >= balance[msg.sender]
                                require balance[msg.sender] >= 0
                                balance[address(msg.sender)] = (5 * tokens / 100) + tokens + balance[msg.sender]
                                emit Transfer(((5 * tokens / 100) + tokens), owner, msg.sender);
                    else:
                        sub_e228158d = 0
                        require tokens >= tokens
                        require tokens >= 0
                        require balance[stor0] >= tokens
                        require tokens + totalSupply >= totalSupply
                        require tokens + totalSupply >= tokens
                        totalSupply += tokens
                        if balance[stor0] >= tokens:
                            if tokens > 0:
                                require tokens <= balance[stor0]
                                balance[stor0] -= tokens
                                require tokens + balance[msg.sender] >= balance[msg.sender]
                                require tokens + balance[msg.sender] >= tokens
                                balance[address(msg.sender)] = tokens + balance[msg.sender]
                                emit Transfer(tokens, owner, msg.sender);
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}

contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 3345]




// =====================  Runtime code  =====================


const name = 'Decentralized Escrow Token'

const decimals = 18

const hasStarted = block.timestamp >= 417729 * 3600

const wallet = 0x51559efc1acc15bcafc7e0c2fb440848c136a46b

const symbol = 'DEST'

const ETH_MAX_LIMIT = 1500 * 10^18

const ETH_MIN_LIMIT = 500 * 10^18

const START_TIMESTAMP = (417729 * 3600)

const END_TIMESTAMP = (418560 * 24 * 3600)


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 ethCollected;
mapping of uint256 stor4;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function ethCollected() {
    return ethCollected
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function hasFinished() {
    if block.timestamp >= 418560 * 24 * 3600:
        return block.timestamp >= 418560 * 24 * 3600
    return ethCollected >= 1500 * 10^18
}

function tokensAreLiquid() {
    if ethCollected >= 500 * 10^18:
        if block.timestamp >= 418560 * 24 * 3600:
            return block.timestamp >= 418560 * 24 * 3600
    return ethCollected >= 1500 * 10^18
}

function withdraw() {
    require ethCollected >= 500 * 10^18
    call 0x51559efc1acc15bcafc7e0c2fb440848c136a46b with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function refund() {
    require ethCollected < 500 * 10^18
    require block.timestamp >= 418560 * 24 * 3600
    require balanceOf[address(msg.sender)] > 0
    totalSupply -= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] = 0
    stor4[address(msg.sender)] = 0
    call msg.sender with:
       value stor4[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function approve(address arg1, uint256 arg2) {
    if ethCollected < 500 * 10^18:
        require ethCollected >= 1500 * 10^18
    else:
        if block.timestamp < 418560 * 24 * 3600:
            require ethCollected >= 1500 * 10^18
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if ethCollected < 500 * 10^18:
        require ethCollected >= 1500 * 10^18
    else:
        if block.timestamp < 418560 * 24 * 3600:
            require ethCollected >= 1500 * 10^18
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function price(uint256 arg1) {
    if arg1 < 7 * 10^18:
        if arg1 < 3 * 10^18:
            if arg1 < 10^18:
                return 1000
            if arg1 < 2 * 10^18:
                return 1005
            return 1010
        if arg1 < 4 * 10^18:
            return 1015
        if arg1 < 5 * 10^18:
            return 1020
        return 1030
    if arg1 < 14 * 10^18:
        if arg1 >= 10 * 10^18:
            return 1080
        if arg1 < 25 * 10^14 * 3600:
            return 1040
        return 1050
    if arg1 >= 100 * 10^18:
        return 1200
    if arg1 < 20 * 10^18:
        return 1110
    return 1150
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if ethCollected < 500 * 10^18:
        require ethCollected >= 1500 * 10^18
    else:
        if block.timestamp < 418560 * 24 * 3600:
            require ethCollected >= 1500 * 10^18
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require block.timestamp >= 417729 * 3600
    require block.timestamp < 418560 * 24 * 3600
    require ethCollected < 1500 * 10^18
    require ethCollected + msg.value <= 1500 * 10^18
    ethCollected += msg.value
    stor4[address(msg.sender)] += msg.value
    if msg.value < 7 * 10^18:
        if msg.value < 3 * 10^18:
            if msg.value < 10^18:
                balanceOf[address(msg.sender)] += 1000 * msg.value
                totalSupply += 1000 * msg.value
                emit Transfer((1000 * msg.value), 0, msg.sender);
            else:
                if msg.value < 2 * 10^18:
                    balanceOf[address(msg.sender)] += 1005 * msg.value
                    totalSupply += 1005 * msg.value
                    emit Transfer((1005 * msg.value), 0, msg.sender);
                else:
                    balanceOf[address(msg.sender)] += 1010 * msg.value
                    totalSupply += 1010 * msg.value
                    emit Transfer((1010 * msg.value), 0, msg.sender);
        else:
            if msg.value < 4 * 10^18:
                balanceOf[address(msg.sender)] += 1015 * msg.value
                totalSupply += 1015 * msg.value
                emit Transfer((1015 * msg.value), 0, msg.sender);
            else:
                if msg.value < 5 * 10^18:
                    balanceOf[address(msg.sender)] += 1020 * msg.value
                    totalSupply += 1020 * msg.value
                    emit Transfer((1020 * msg.value), 0, msg.sender);
                else:
                    balanceOf[address(msg.sender)] += 1030 * msg.value
                    totalSupply += 1030 * msg.value
                    emit Transfer((1030 * msg.value), 0, msg.sender);
    else:
        if msg.value < 14 * 10^18:
            if msg.value >= 10 * 10^18:
                balanceOf[address(msg.sender)] += 1080 * msg.value
                totalSupply += 1080 * msg.value
                emit Transfer((1080 * msg.value), 0, msg.sender);
            else:
                if msg.value < 25 * 10^14 * 3600:
                    balanceOf[address(msg.sender)] += 1040 * msg.value
                    totalSupply += 1040 * msg.value
                    emit Transfer((1040 * msg.value), 0, msg.sender);
                else:
                    balanceOf[address(msg.sender)] += 1050 * msg.value
                    totalSupply += 1050 * msg.value
                    emit Transfer((1050 * msg.value), 0, msg.sender);
        else:
            if msg.value >= 100 * 10^18:
                balanceOf[address(msg.sender)] += 1200 * msg.value
                totalSupply += 1200 * msg.value
                emit Transfer((1200 * msg.value), 0, msg.sender);
            else:
                if msg.value < 20 * 10^18:
                    balanceOf[address(msg.sender)] += 1110 * msg.value
                    totalSupply += 1110 * msg.value
                    emit Transfer((1110 * msg.value), 0, msg.sender);
                else:
                    balanceOf[address(msg.sender)] += 1150 * msg.value
                    totalSupply += 1150 * msg.value
                    emit Transfer((1150 * msg.value), 0, msg.sender);
}



}

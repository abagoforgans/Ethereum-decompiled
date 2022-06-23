contract main {




// =====================  Runtime code  =====================


const softCap = 2500000 * 10^18

const hardCap = 10000000 * 10^18


address owner;
mapping of uint256 tokenBalance;
mapping of uint256 sub_b1c5c612;
uint256 tokenPrice;
uint256 tokenSupply;
uint256 start;
uint256 sub_a3db743c;
uint256 sub_f17629c5;
uint256 sub_e9573f45;
uint256 sub_5e7dc7c1;
uint8 softCapReached;

function softCapReached() {
    return bool(softCapReached)
}

function sub_5e7dc7c1(?) {
    return sub_5e7dc7c1
}

function tokenSupply() {
    return tokenSupply
}

function tokenPrice() {
    return tokenPrice
}

function owner() {
    return owner
}

function sub_a3db743c(?) {
    return sub_a3db743c
}

function sub_b1c5c612(?) {
    return sub_b1c5c612[arg1]
}

function start() {
    return start
}

function sub_e9573f45(?) {
    return sub_e9573f45
}

function tokenBalance(address arg1) {
    return tokenBalance[arg1]
}

function sub_f17629c5(?) {
    return sub_f17629c5
}

function sub_ff879ba4(?) {
    require softCapReached
    require tokenBalance[msg.sender] > 0
    tokenBalance[msg.sender] = 0
    tokenSupply -= tokenBalance[msg.sender]
    emit 0x78fd53b0: tokenBalance[msg.sender], block.timestamp, msg.sender
}

function transfer(address arg1) {
    require tokenBalance[msg.sender] > 0
    tokenBalance[msg.sender] = 0
    tokenBalance[arg1] += tokenBalance[msg.sender]
    emit 0x4811dc36: msg.sender, address(arg1), tokenBalance[msg.sender], block.timestamp
}

function withdraw() {
    require softCapReached
    require sub_b1c5c612[msg.sender] > 0
    sub_b1c5c612[msg.sender] = 0
    call msg.sender with:
       value sub_b1c5c612[msg.sender] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit OnWithdraw(sub_b1c5c612[msg.sender], block.timestamp, msg.sender);
}

function withdrawAmount(uint256 arg1) {
    require arg1 > 0
    require softCapReached
    require sub_b1c5c612[msg.sender] >= arg1
    sub_b1c5c612[msg.sender] -= arg1
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit OnWithdraw(arg1, block.timestamp, msg.sender);
}

function withdrawAmountTo(uint256 arg1, address arg2) {
    require arg1 > 0
    require softCapReached
    require sub_b1c5c612[msg.sender] >= arg1
    sub_b1c5c612[msg.sender] -= arg1
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x30f682d9: arg1, block.timestamp, msg.sender, arg2
}

function sub_187c5903(?) {
    require block.timestamp > start + sub_f17629c5
    require not softCapReached
    require tokenBalance[msg.sender] > 0
    tokenBalance[msg.sender] = 0
    tokenSupply -= tokenBalance[msg.sender]
    call msg.sender with:
       value tokenBalance[msg.sender] * tokenPrice / 10^18 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x874b10ce: tokenBalance[msg.sender], tokenBalance[msg.sender] * tokenPrice / 10^18, block.timestamp, msg.sender
}

function _fallback() payable {
    require tokenPrice
    require (10^18 * msg.value / tokenPrice) + tokenSupply <= 10000000 * 10^18
    if sub_a3db743c > 0:
        require block.timestamp < sub_a3db743c + sub_e9573f45
    tokenBalance[address(msg.sender)] += 10^18 * msg.value / tokenPrice
    tokenSupply += 10^18 * msg.value / tokenPrice
    if 2500000 * 10^18 <= (10^18 * msg.value / tokenPrice) + tokenSupply:
        softCapReached = 1
        sub_a3db743c = block.timestamp
    sub_b1c5c612[stor0] += 6 * msg.value / 100
    sub_b1c5c612[stor0] += 3 * msg.value / 100
    sub_b1c5c612[stor0] = msg.value - (6 * msg.value / 100) - (3 * msg.value / 100) + sub_b1c5c612[stor0]
    sub_5e7dc7c1 += msg.value
    emit 0x815ea3c1: address(msg.sender), msg.value, 10^18 * msg.value / tokenPrice, 0, 0, block.timestamp
}

function buy(address arg1, address arg2) payable {
    require msg.value > 0
    require tokenPrice
    require (10^18 * msg.value / tokenPrice) + tokenSupply <= 10000000 * 10^18
    if sub_a3db743c > 0:
        require block.timestamp < sub_a3db743c + sub_e9573f45
    tokenBalance[address(msg.sender)] += 10^18 * msg.value / tokenPrice
    tokenSupply += 10^18 * msg.value / tokenPrice
    if 2500000 * 10^18 <= (10^18 * msg.value / tokenPrice) + tokenSupply:
        softCapReached = 1
        sub_a3db743c = block.timestamp
    if not arg1:
        sub_b1c5c612[stor0] += 6 * msg.value / 100
        if not arg2:
            sub_b1c5c612[stor0] += 3 * msg.value / 100
        else:
            if 125 * 10^18 > tokenBalance[address(arg2)]:
                sub_b1c5c612[stor0] += 3 * msg.value / 100
            else:
                sub_b1c5c612[address(arg2)] += 3 * msg.value / 100
    else:
        if 125 * 10^18 > tokenBalance[address(arg1)]:
            sub_b1c5c612[stor0] += 6 * msg.value / 100
        else:
            sub_b1c5c612[address(arg1)] += 6 * msg.value / 100
        if not arg2:
            sub_b1c5c612[stor0] += 3 * msg.value / 100
        else:
            if 125 * 10^18 > tokenBalance[address(arg2)]:
                sub_b1c5c612[stor0] += 3 * msg.value / 100
            else:
                sub_b1c5c612[address(arg2)] += 3 * msg.value / 100
    sub_b1c5c612[stor0] = msg.value - (6 * msg.value / 100) - (3 * msg.value / 100) + sub_b1c5c612[stor0]
    sub_5e7dc7c1 += msg.value
    emit 0x815ea3c1: address(msg.sender), msg.value, 10^18 * msg.value / tokenPrice, address(arg1), arg2, block.timestamp
}



}

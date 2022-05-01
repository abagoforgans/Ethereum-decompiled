contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
mapping of uint256 stor2;
array of uint256 stor5;
array of uint256 stor6;
uint256 stor7;
uint256 stor8;
address stor9;

function _fallback() payable {
    stor7 = 10^13
    stor8 = 0
    stor9 = 0xd518b5724c6aee0c7f1b2eb1d89d62a2a7b1b58
    require not msg.value
    mem[96 len -10073] = code.data[10626 len -10073]
    mem[64] = -9977
    stor0 = msg.sender
    stor2[address(msg.sender)] = mem[96]
    stor1 = mem[96]
    stor5[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor6[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    return code.data[553 len 10073]
}



// =====================  Runtime code  =====================


const decimals = 8

const standard = 'ERC20 MineBlocks'

const minPrice = 10^13


address owner;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 stor3;
mapping of uint256 allowance;
array of uint256 name;
array of uint256 symbol;
uint256 buyPrice;
uint256 tokenReward;
address mineblocksAddr;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function tokenReward() {
    return tokenReward
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function buyPrice() {
    return buyPrice
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function mineblocksAddr() {
    return mineblocksAddr
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function withdraw(uint256 arg1) {
    require msg.sender == owner
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit LogWithdrawal(msg.sender, arg1);
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
    stor3[address(arg1)] = block.number
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    require msg.sender == owner
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    stor3[address(arg2)] = block.number
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function deposit() payable {
    require eth.balance(this.address) + msg.value >= eth.balance(this.address)
    require totalSupply
    tokenReward = eth.balance(this.address) / totalSupply
    emit LogDeposit(msg.sender, msg.value);
    if balanceOf[address(this.address)] > 25 * 10^10 * 3600:
        buyPrice = 15 * 10^14
    else:
        if balanceOf[address(this.address)] <= 8 * 10^14:
            if balanceOf[address(this.address)] <= 7 * 10^14:
                if balanceOf[address(this.address)] <= 6 * 10^14:
                    buyPrice = 4 * 10^15
                else:
                    if balanceOf[address(this.address)] > 7 * 10^14:
                        buyPrice = 4 * 10^15
                    else:
                        buyPrice = 3 * 10^15
            else:
                if balanceOf[address(this.address)] <= 8 * 10^14:
                    buyPrice = 25 * 10^14
                else:
                    if balanceOf[address(this.address)] <= 6 * 10^14:
                        buyPrice = 4 * 10^15
                    else:
                        if balanceOf[address(this.address)] > 7 * 10^14:
                            buyPrice = 4 * 10^15
                        else:
                            buyPrice = 3 * 10^15
        else:
            if balanceOf[address(this.address)] <= 25 * 10^10 * 3600:
                buyPrice = 2 * 10^15
            else:
                if balanceOf[address(this.address)] <= 7 * 10^14:
                    if balanceOf[address(this.address)] <= 6 * 10^14:
                        buyPrice = 4 * 10^15
                    else:
                        if balanceOf[address(this.address)] > 7 * 10^14:
                            buyPrice = 4 * 10^15
                        else:
                            buyPrice = 3 * 10^15
                else:
                    if balanceOf[address(this.address)] <= 8 * 10^14:
                        buyPrice = 25 * 10^14
                    else:
                        if balanceOf[address(this.address)] <= 6 * 10^14:
                            buyPrice = 4 * 10^15
                        else:
                            if balanceOf[address(this.address)] > 7 * 10^14:
                                buyPrice = 4 * 10^15
                            else:
                                buyPrice = 3 * 10^15
    return 1
}

function withdrawReward() {
    if block.number - stor3[address(msg.sender)] > 48 * 24 * 3600:
        stor3[address(msg.sender)] = block.number
        call msg.sender with:
           value tokenReward * balanceOf[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit LogWithdrawal(msg.sender, tokenReward * balanceOf[address(msg.sender)]);
    if balanceOf[address(this.address)] > 25 * 10^10 * 3600:
        buyPrice = 15 * 10^14
    else:
        if balanceOf[address(this.address)] <= 8 * 10^14:
            if balanceOf[address(this.address)] <= 7 * 10^14:
                if balanceOf[address(this.address)] <= 6 * 10^14:
                    buyPrice = 4 * 10^15
                else:
                    if balanceOf[address(this.address)] > 7 * 10^14:
                        buyPrice = 4 * 10^15
                    else:
                        buyPrice = 3 * 10^15
            else:
                if balanceOf[address(this.address)] <= 8 * 10^14:
                    buyPrice = 25 * 10^14
                else:
                    if balanceOf[address(this.address)] <= 6 * 10^14:
                        buyPrice = 4 * 10^15
                    else:
                        if balanceOf[address(this.address)] > 7 * 10^14:
                            buyPrice = 4 * 10^15
                        else:
                            buyPrice = 3 * 10^15
        else:
            if balanceOf[address(this.address)] <= 25 * 10^10 * 3600:
                buyPrice = 2 * 10^15
            else:
                if balanceOf[address(this.address)] <= 7 * 10^14:
                    if balanceOf[address(this.address)] <= 6 * 10^14:
                        buyPrice = 4 * 10^15
                    else:
                        if balanceOf[address(this.address)] > 7 * 10^14:
                            buyPrice = 4 * 10^15
                        else:
                            buyPrice = 3 * 10^15
                else:
                    if balanceOf[address(this.address)] <= 8 * 10^14:
                        buyPrice = 25 * 10^14
                    else:
                        if balanceOf[address(this.address)] <= 6 * 10^14:
                            buyPrice = 4 * 10^15
                        else:
                            if balanceOf[address(this.address)] > 7 * 10^14:
                                buyPrice = 4 * 10^15
                            else:
                                buyPrice = 3 * 10^15
}

function buy() payable {
    require eth.balance(msg.sender) >= msg.value
    require eth.balance(msg.sender) + msg.value >= eth.balance(msg.sender)
    require buyPrice
    require ext_code.size(this.address)
    call this.address.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, 100 * 10^6 * msg.value / buyPrice
    require ext_call.success
    call mineblocksAddr with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if balanceOf[address(this.address)] > 25 * 10^10 * 3600:
        buyPrice = 15 * 10^14
    else:
        if balanceOf[address(this.address)] <= 8 * 10^14:
            if balanceOf[address(this.address)] <= 7 * 10^14:
                if balanceOf[address(this.address)] <= 6 * 10^14:
                    buyPrice = 4 * 10^15
                else:
                    if balanceOf[address(this.address)] > 7 * 10^14:
                        buyPrice = 4 * 10^15
                    else:
                        buyPrice = 3 * 10^15
            else:
                if balanceOf[address(this.address)] <= 8 * 10^14:
                    buyPrice = 25 * 10^14
                else:
                    if balanceOf[address(this.address)] <= 6 * 10^14:
                        buyPrice = 4 * 10^15
                    else:
                        if balanceOf[address(this.address)] > 7 * 10^14:
                            buyPrice = 4 * 10^15
                        else:
                            buyPrice = 3 * 10^15
        else:
            if balanceOf[address(this.address)] <= 25 * 10^10 * 3600:
                buyPrice = 2 * 10^15
            else:
                if balanceOf[address(this.address)] <= 7 * 10^14:
                    if balanceOf[address(this.address)] <= 6 * 10^14:
                        buyPrice = 4 * 10^15
                    else:
                        if balanceOf[address(this.address)] > 7 * 10^14:
                            buyPrice = 4 * 10^15
                        else:
                            buyPrice = 3 * 10^15
                else:
                    if balanceOf[address(this.address)] <= 8 * 10^14:
                        buyPrice = 25 * 10^14
                    else:
                        if balanceOf[address(this.address)] <= 6 * 10^14:
                            buyPrice = 4 * 10^15
                        else:
                            if balanceOf[address(this.address)] > 7 * 10^14:
                                buyPrice = 4 * 10^15
                            else:
                                buyPrice = 3 * 10^15
}

function _fallback() payable {
    require eth.balance(msg.sender) >= msg.value
    require eth.balance(msg.sender) + msg.value >= eth.balance(msg.sender)
    require buyPrice
    require ext_code.size(this.address)
    call this.address.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, 100 * 10^6 * msg.value / buyPrice
    require ext_call.success
    call mineblocksAddr with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if balanceOf[address(this.address)] > 25 * 10^10 * 3600:
        buyPrice = 15 * 10^14
    else:
        if balanceOf[address(this.address)] <= 8 * 10^14:
            if balanceOf[address(this.address)] <= 7 * 10^14:
                if balanceOf[address(this.address)] <= 6 * 10^14:
                    buyPrice = 4 * 10^15
                else:
                    if balanceOf[address(this.address)] > 7 * 10^14:
                        buyPrice = 4 * 10^15
                    else:
                        buyPrice = 3 * 10^15
            else:
                if balanceOf[address(this.address)] <= 8 * 10^14:
                    buyPrice = 25 * 10^14
                else:
                    if balanceOf[address(this.address)] <= 6 * 10^14:
                        buyPrice = 4 * 10^15
                    else:
                        if balanceOf[address(this.address)] > 7 * 10^14:
                            buyPrice = 4 * 10^15
                        else:
                            buyPrice = 3 * 10^15
        else:
            if balanceOf[address(this.address)] <= 25 * 10^10 * 3600:
                buyPrice = 2 * 10^15
            else:
                if balanceOf[address(this.address)] <= 7 * 10^14:
                    if balanceOf[address(this.address)] <= 6 * 10^14:
                        buyPrice = 4 * 10^15
                    else:
                        if balanceOf[address(this.address)] > 7 * 10^14:
                            buyPrice = 4 * 10^15
                        else:
                            buyPrice = 3 * 10^15
                else:
                    if balanceOf[address(this.address)] <= 8 * 10^14:
                        buyPrice = 25 * 10^14
                    else:
                        if balanceOf[address(this.address)] <= 6 * 10^14:
                            buyPrice = 4 * 10^15
                        else:
                            if balanceOf[address(this.address)] > 7 * 10^14:
                                buyPrice = 4 * 10^15
                            else:
                                buyPrice = 3 * 10^15
}



}

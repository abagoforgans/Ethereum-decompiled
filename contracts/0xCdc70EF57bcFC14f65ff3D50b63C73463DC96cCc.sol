contract main {




// =====================  Runtime code  =====================


array of uint256 name;
uint256 decimals;
array of uint256 symbol;
uint256 maxSupply;
uint256 sub_9be9e0f7;
uint256 sub_a6be02cb;
address contract_owner;
address coldwalletAddress;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor12;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return maxSupply
}

function coldwallet() {
    return coldwalletAddress
}

function decimals() {
    return decimals
}

function contract_owner() {
    return contract_owner
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_9be9e0f7(?) {
    return sub_9be9e0f7
}

function sub_a6be02cb(?) {
    return sub_a6be02cb
}

function maxSupply() {
    return maxSupply
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function freezeAccount(address arg1) {
    require msg.sender == contract_owner
    stor12[address(arg1)] = 1
}

function unfreezeAccount(address arg1) {
    require msg.sender == contract_owner
    stor12[address(arg1)] = 0
}

function sub_112ff304(?) {
    require msg.sender == contract_owner
    require balanceOf[stor7] + sub_9be9e0f7 >= balanceOf[stor7]
    balanceOf[stor7] += sub_9be9e0f7
    sub_9be9e0f7 = 0
}

function sub_9dfe15c0(?) {
    require msg.sender == contract_owner
    require balanceOf[stor7] + sub_a6be02cb >= balanceOf[stor7]
    balanceOf[stor7] += sub_a6be02cb
    sub_a6be02cb = 0
}

function approve(address arg1, uint256 arg2) {
    require not stor12[address(msg.sender)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function withdraw() {
    require msg.sender == contract_owner
    call coldwalletAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    if allowance[address(arg1)][address(msg.sender)] < -1:
        allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor12[address(msg.sender)]
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
    return 1
}

function _fallback() payable {
    if msg.value == 200 * 10^18:
        require sub_a6be02cb >= 40 * 10^6 * 10^decimals
        if balanceOf[stor7] + (40 * 10^6 * 10^decimals) >= balanceOf[stor7]:
            balanceOf[stor7] += 40 * 10^6 * 10^decimals
            if 40 * 10^6 * 10^decimals <= sub_a6be02cb:
                sub_a6be02cb += -40 * 10^6 * 10^decimals
                require not stor12[stor7]
                require msg.sender
                require balanceOf[stor7] >= 40 * 10^6 * 10^decimals
                require balanceOf[address(msg.sender)] + (40 * 10^6 * 10^decimals) >= balanceOf[address(msg.sender)]
                if 40 * 10^6 * 10^decimals <= balanceOf[stor7]:
                    balanceOf[stor7] += -40 * 10^6 * 10^decimals
                    if balanceOf[address(msg.sender)] + (40 * 10^6 * 10^decimals) >= balanceOf[address(msg.sender)]:
                        balanceOf[address(msg.sender)] += 40 * 10^6 * 10^decimals
                        emit Transfer((40 * 10^6 * 10^decimals), contract_owner, msg.sender);
                        if balanceOf[stor7] + balanceOf[address(msg.sender)] == balanceOf[stor7] + balanceOf[address(msg.sender)]:
    else:
        require msg.value == 5 * 10^18
        if 200 * 10^18 != msg.value:
            require sub_9be9e0f7 >= 300000 * 10^decimals
            if balanceOf[stor7] + (300000 * 10^decimals) >= balanceOf[stor7]:
                balanceOf[stor7] += 300000 * 10^decimals
                if 300000 * 10^decimals <= sub_9be9e0f7:
                    sub_9be9e0f7 += -300000 * 10^decimals
                    require not stor12[stor7]
                    require msg.sender
                    require balanceOf[stor7] >= 300000 * 10^decimals
                    require balanceOf[address(msg.sender)] + (300000 * 10^decimals) >= balanceOf[address(msg.sender)]
                    if 300000 * 10^decimals <= balanceOf[stor7]:
                        balanceOf[stor7] += -300000 * 10^decimals
                        if balanceOf[address(msg.sender)] + (300000 * 10^decimals) >= balanceOf[address(msg.sender)]:
                            balanceOf[address(msg.sender)] += 300000 * 10^decimals
                            emit Transfer((300000 * 10^decimals), contract_owner, msg.sender);
                            if balanceOf[stor7] + balanceOf[address(msg.sender)] == balanceOf[stor7] + balanceOf[address(msg.sender)]:
        else:
            require sub_a6be02cb >= 40 * 10^6 * 10^decimals
            if balanceOf[stor7] + (40 * 10^6 * 10^decimals) >= balanceOf[stor7]:
                balanceOf[stor7] += 40 * 10^6 * 10^decimals
                if 40 * 10^6 * 10^decimals <= sub_a6be02cb:
                    sub_a6be02cb += -40 * 10^6 * 10^decimals
                    require not stor12[stor7]
                    require msg.sender
                    require balanceOf[stor7] >= 40 * 10^6 * 10^decimals
                    require balanceOf[address(msg.sender)] + (40 * 10^6 * 10^decimals) >= balanceOf[address(msg.sender)]
                    if 40 * 10^6 * 10^decimals <= balanceOf[stor7]:
                        balanceOf[stor7] += -40 * 10^6 * 10^decimals
                        if balanceOf[address(msg.sender)] + (40 * 10^6 * 10^decimals) >= balanceOf[address(msg.sender)]:
                            balanceOf[address(msg.sender)] += 40 * 10^6 * 10^decimals
                            emit Transfer((40 * 10^6 * 10^decimals), contract_owner, msg.sender);
                            if balanceOf[stor7] + balanceOf[address(msg.sender)] == balanceOf[stor7] + balanceOf[address(msg.sender)]:
    revert
}



}

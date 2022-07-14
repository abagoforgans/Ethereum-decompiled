contract main {




// =====================  Runtime code  =====================


const name = 'NLCToken'

const decimals = 18

const symbol = 'NLC'

const INITIAL_SUPPLY = 500000000 * 10^18


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
address sub_58308fbfAddress;
uint256 weiRaised;
uint256 rate;
mapping of uint256 sub_4428c240;
mapping of uint256 sub_2330162b;

function totalSupply() {
    return totalSupply
}

function sub_2330162b(?) {
    return sub_2330162b[address(arg1)]
}

function rate() {
    return rate
}

function weiRaised() {
    return weiRaised
}

function sub_4428c240(?) {
    return sub_4428c240[arg1]
}

function sub_58308fbf(?) {
    return sub_58308fbfAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function investmentOf(address arg1) {
    return sub_4428c240[address(arg1)]
}

function sub_9ff456ce(?) {
    return sub_2330162b[arg1]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
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
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_15b8daf6(?) payable {
    require arg1
    require msg.value
    require msg.value >= 5 * 10^17
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require sub_4428c240[address(arg1)] + msg.value >= sub_4428c240[address(arg1)]
    sub_4428c240[address(arg1)] += msg.value
    call sub_58308fbfAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Investment(msg.value, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require msg.sender
    require msg.value
    require msg.value >= 5 * 10^17
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require sub_4428c240[address(msg.sender)] + msg.value >= sub_4428c240[address(msg.sender)]
    sub_4428c240[address(msg.sender)] += msg.value
    call sub_58308fbfAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Investment(msg.value, msg.sender);
}

function sub_b787aef7(?) {
    require msg.sender == sub_58308fbfAddress
    require sub_2330162b[address(arg1)]
    require arg1
    require sub_2330162b[address(arg1)] <= balanceOf[address(msg.sender)]
    require sub_2330162b[address(arg1)] <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= sub_2330162b[address(arg1)]
    require balanceOf[address(arg1)] + sub_2330162b[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += sub_2330162b[address(arg1)]
    emit Transfer(sub_2330162b[address(arg1)], msg.sender, arg1);
    require sub_2330162b[address(arg1)] <= sub_2330162b[address(arg1)]
    sub_2330162b[address(arg1)] = 0
    emit 0x266414f1: sub_2330162b[address(arg1)], arg1
}

function sub_2e00ce4b(?) {
    require sub_4428c240[address(msg.sender)]
    if not arg1:
        require arg1 <= sub_4428c240[address(msg.sender)]
        sub_4428c240[address(msg.sender)] -= arg1
        require sub_2330162b[address(msg.sender)] >= sub_2330162b[address(msg.sender)]
        emit 0x4d747e6f: 0, msg.sender
    else:
        require arg1
        require arg1 * rate / arg1 == rate
        require arg1 <= sub_4428c240[address(msg.sender)]
        sub_4428c240[address(msg.sender)] -= arg1
        require sub_2330162b[address(msg.sender)] + (arg1 * rate / 10^18) >= sub_2330162b[address(msg.sender)]
        sub_2330162b[address(msg.sender)] += arg1 * rate / 10^18
        emit 0x4d747e6f: (arg1 * rate / 10^18), msg.sender
}



}

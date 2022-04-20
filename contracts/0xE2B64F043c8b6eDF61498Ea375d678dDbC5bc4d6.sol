contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[60 len 1955]
}



// =====================  Runtime code  =====================


address adminAddress;
address beneficiaryAddress;
uint256 fundingGoal;
uint256 amountRaised;
uint256 deadline;
uint256 price;
uint256 sub_0645a30a;
address tokenRewardAddress;
array of struct funders;

function sub_0645a30a(?) {
    return sub_0645a30a
}

function deadline() {
    return deadline
}

function beneficiary() {
    return beneficiaryAddress
}

function tokenReward() {
    return tokenRewardAddress
}

function fundingGoal() {
    return fundingGoal
}

function amountRaised() {
    return amountRaised
}

function price() {
    return price
}

function funders(uint256 arg1) {
    require arg1 < funders.length
    return funders[arg1].field_0, funders[arg1].field_256
}

function admin() {
    return adminAddress
}

function checkGoalReached() {
    if amountRaised < fundingGoal:
        if deadline > block.number:
            return 'Not reached yet'
        idx = 0
        while idx < funders.length:
            call funders[idx].field_0 with:
               value funders[idx].field_256 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require idx < funders.length
            funders[idx].field_0 = 0
            mem[0] = 8
            funders[idx].field_256 = 0
            idx = idx + 1
            continue 
    else:
        call beneficiaryAddress with:
           value amountRaised wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    selfdestruct(beneficiaryAddress)
}

function sub_3a1bcf91(?) {
    if adminAddress != msg.sender:
        return 'not authorized'
    sub_0645a30a = arg1
    return 'factor is set'
}

function _fallback() payable {
    amountRaised += msg.value
    require price
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0x79c65068 with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value / price * sub_0645a30a
    require ext_call.success
}

function sub_2b474522(?) {
    if adminAddress != msg.sender:
        return 'not authorized'
    if beneficiaryAddress > 0:
        if fundingGoal > 0:
            if deadline > 0:
                if adminAddress == msg.sender:
                    return 'campaign cannot be changed'
                return 'not authorized'
    beneficiaryAddress = arg1
    fundingGoal = arg2
    deadline = (24 * 3600 * arg3) + block.timestamp
    price = arg4
    sub_0645a30a = arg6
    tokenRewardAddress = arg5
    return 'campaign is set'
}



}

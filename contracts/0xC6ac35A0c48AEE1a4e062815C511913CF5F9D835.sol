contract main {


// =======================  Init code  ======================


address stor0;
address stor3;
uint8 stor5;
address stor5; offset 8
uint256 stor6;
uint256 stor7;

function _fallback() payable {
    uint8(stor5.field_0) = 0
    stor6 = 0
    stor7 = 3333333000
    require not msg.value
    stor0 = msg.sender
    stor3 = code.data[3205 len 20]
    address(stor5.field_8) = code.data[3173 len 20]
    return code.data[303 len 2858]
}



// =====================  Runtime code  =====================


const saleCap = 3 * 10^14


address stor0;
mapping of uint256 contributions;
array of address contributors;
address stor3;
uint256 totalContributions;
uint8 stor5;
address tokenRewardAddress; offset 8
uint256 tokensSold;
uint256 sub_bb070dd6;

function totalContributions() {
    return totalContributions
}

function contributors(uint256 arg1) {
    require arg1 < contributors.length
    return address(contributors[arg1])
}

function contributions(address arg1) {
    return contributions[arg1]
}

function tokensSold() {
    return tokensSold
}

function tokenReward() {
    return tokenRewardAddress
}

function getNumberOfContributors() {
    return contributors.length
}

function saleEnded() {
    return bool(stor5)
}

function sub_bb070dd6(?) {
    return sub_bb070dd6
}

function withdraw() {
    require msg.sender == stor0
    call stor3 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function endSale() {
    require msg.sender == stor0
    if -tokensSold + 3 * 10^14 > 0:
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args stor3, -tokensSold + 3 * 10^14
        require ext_call.success
    stor5 = 1
}

function _fallback() payable {
    require not stor5
    require sub_bb070dd6
    require msg.value / sub_bb070dd6 > 0
    if tokensSold + (msg.value / sub_bb070dd6) < 3 * 10^14:
        contributions[address(msg.sender)] += msg.value
        totalContributions += msg.value
        idx = 0
        s = 0
        while idx < contributors.length:
            mem[0] = 2
            if address(contributors[idx]) != msg.sender:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = 1
            continue 
        if not s:
            contributors.length++
            if not contributors.length <= contributors.length + 1:
                idx = contributors.length + 1
                while contributors.length > idx:
                    uint256(contributors[idx]) = 0
                    idx = idx + 1
                    continue 
            address(contributors[contributors.length]) = msg.sender
        tokensSold += msg.value / sub_bb070dd6
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, msg.value / sub_bb070dd6
        require ext_call.success
    else:
        call msg.sender with:
           value msg.value - (3 * 10^14 * sub_bb070dd6) + (tokensSold * sub_bb070dd6) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        contributions[address(msg.sender)] = contributions[address(msg.sender)] + (3 * 10^14 * sub_bb070dd6) - (tokensSold * sub_bb070dd6)
        totalContributions = totalContributions + (3 * 10^14 * sub_bb070dd6) - (tokensSold * sub_bb070dd6)
        idx = 0
        s = 0
        while idx < contributors.length:
            mem[0] = 2
            if address(contributors[idx]) != msg.sender:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = 1
            continue 
        if not s:
            contributors.length++
            if not contributors.length <= contributors.length + 1:
                idx = contributors.length + 1
                while contributors.length > idx:
                    uint256(contributors[idx]) = 0
                    idx = idx + 1
                    continue 
            address(contributors[contributors.length]) = msg.sender
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, -tokensSold + 3 * 10^14
        require ext_call.success
        tokensSold = 3 * 10^14
        stor5 = 1
}



}

contract main {


// =======================  Init code  ======================


address stor0;
uint8 stor4;
address stor7;

function _fallback() payable {
    stor4 = 0
    require not msg.value
    stor0 = msg.sender
    stor7 = code.data[3865 len 20]
    return code.data[218 len 3635]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint256 contributions;
array of address contributors;
uint256 totalContributions;
uint8 stor4;
array of address sub_84bb0d08;
array of address winners;
address tokenRewardAddress;

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

function tokenReward() {
    return tokenRewardAddress
}

function sub_84bb0d08(?) {
    require arg1 < sub_84bb0d08.length
    return address(sub_84bb0d08[arg1])
}

function getNumberOfContributors() {
    return contributors.length
}

function owner() {
    return owner
}

function saleEnded() {
    return bool(stor4)
}

function winners(uint256 arg1) {
    require arg1 < winners.length
    return address(winners[arg1])
}

function endSale() {
    require msg.sender == owner
    stor4 = 1
}

function withdraw() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function _fallback() payable {
    require msg.value >= 10^17
    require not stor4
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
}

function sub_4d8ced30(?) {
    require msg.sender == owner
    idx = 0
    s = 0
    while idx < sub_84bb0d08.length:
        mem[0] = 5
        if arg1 != address(sub_84bb0d08[idx]):
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    idx = 0
    t = 0
    while idx < winners.length:
        mem[0] = 6
        if arg1 != address(winners[idx]):
            idx = idx + 1
            t = t
            continue 
        idx = idx + 1
        t = 1
        continue 
    require not s
    require not t
    sub_84bb0d08.length++
    if not sub_84bb0d08.length <= sub_84bb0d08.length + 1:
        idx = sub_84bb0d08.length + 1
        while sub_84bb0d08.length > idx:
            uint256(sub_84bb0d08[idx]) = 0
            idx = idx + 1
            continue 
    address(sub_84bb0d08[sub_84bb0d08.length]) = arg1
    call arg1 with:
       value contributions[address(arg1)] - 100000 wei
         gas 2300 * is_zero(value) wei
}

function sub_2c05e1c5(?) {
    require msg.sender == owner
    idx = 0
    s = 0
    while idx < sub_84bb0d08.length:
        mem[0] = 5
        if arg1 != address(sub_84bb0d08[idx]):
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    idx = 0
    t = 0
    while idx < winners.length:
        mem[0] = 6
        if arg1 != address(winners[idx]):
            idx = idx + 1
            t = t
            continue 
        idx = idx + 1
        t = 1
        continue 
    require not s
    require not t
    winners.length++
    if not winners.length <= winners.length + 1:
        idx = winners.length + 1
        while winners.length > idx:
            uint256(winners[idx]) = 0
            idx = idx + 1
            continue 
    address(winners[winners.length]) = arg1
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0x79c65068 with:
         gas gas_remaining - 710 wei
        args address(arg1), 1
    require ext_call.success
}



}

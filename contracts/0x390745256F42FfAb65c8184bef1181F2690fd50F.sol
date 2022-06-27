contract main {




// =====================  Runtime code  =====================


#
#  - invest(uint256 arg1, address arg2)
#  - sub_c1528efd(?)
#
address owner;
address shareAddress;
address sub_40efb4cbAddress;
uint256 sub_bd3f04a5;
uint256 sub_21774a3f;
uint256 minInvest;
uint256 maxInvest;
uint256 sub_7cfd2964;
uint256 sub_22be4e68;
uint256 sub_df75d236;
address sub_c9b4766dAddress;
uint256 sub_45a568fa;
uint256 sub_310fac01;
uint256 sub_e5bf5b00;
uint256 sub_51deff2b;
uint256 sub_29a3f34d;
mapping of address investor;
mapping of uint256 sub_ea7ea677;
mapping of address sub_7a2d2bf9;
mapping of uint256 invested;
mapping of uint256 sub_c0e8886c;
mapping of uint256 sub_5653c65b;
mapping of uint256 sub_f490df26;
mapping of uint256 sub_a8b39170;
mapping of address stor24;
mapping of uint256 sub_b7487f56;
mapping of uint256 sub_54236d5a;
mapping of uint8 stor28;
mapping of uint256 sub_268c01cf;
mapping of address sub_98b30942;
mapping of uint256 bonus;
mapping of uint256 tokens;
mapping of uint256 stor268410926047052135080861818971047754440680521448581590092824429374103484427;

function getInvestorAddress(uint256 arg1) {
    return investor[arg1]
}

function sub_21774a3f(?) {
    return sub_21774a3f
}

function sub_22be4e68(?) {
    return sub_22be4e68
}

function sub_268c01cf(?) {
    return sub_268c01cf[address(arg1)][arg2]
}

function sub_29a3f34d(?) {
    return sub_29a3f34d
}

function getInvested(address arg1) {
    return invested[address(arg1)]
}

function sub_310fac01(?) {
    return sub_310fac01
}

function maxInvest() {
    return maxInvest
}

function getBonus(address arg1) {
    return bonus[address(arg1)]
}

function sub_40efb4cb(?) {
    return sub_40efb4cbAddress
}

function sub_45a568fa(?) {
    return sub_45a568fa
}

function tokens(address arg1, address arg2) {
    return tokens[arg1][arg2]
}

function sub_51deff2b(?) {
    return sub_51deff2b
}

function sub_54236d5a(?) {
    return sub_54236d5a[address(arg1)][arg2]
}

function sub_5653c65b(?) {
    return sub_5653c65b[address(arg1)]
}

function minInvest() {
    return minInvest
}

function sub_7a2d2bf9(?) {
    return sub_7a2d2bf9[arg1]
}

function sub_7cfd2964(?) {
    return sub_7cfd2964
}

function owner() {
    return owner
}

function sub_98b30942(?) {
    return sub_98b30942[address(arg1)][arg2]
}

function sub_a8b39170(?) {
    return sub_a8b39170[address(arg1)]
}

function share() {
    return shareAddress
}

function sub_b7487f56(?) {
    return sub_b7487f56[address(arg1)][arg2]
}

function sub_bd3f04a5(?) {
    return sub_bd3f04a5
}

function getLastGame(address arg1) {
    return bool(stor28[address(arg1)])
}

function sub_c0e8886c(?) {
    return sub_c0e8886c[address(arg1)]
}

function sub_c9b4766d(?) {
    return sub_c9b4766dAddress
}

function sub_df75d236(?) {
    return sub_df75d236
}

function sub_e5bf5b00(?) {
    return sub_e5bf5b00
}

function sub_ea7ea677(?) {
    return sub_ea7ea677[address(arg1)]
}

function sub_f490df26(?) {
    return sub_f490df26[address(arg1)]
}

function balanceOf(address arg1, address arg2) {
    return tokens[address(arg1)][address(arg2)]
}

function sub_fea4a7b4(?) {
    if owner != msg.sender:
    if arg1 != 1:
    selfdestruct(owner)
}

function _fallback() payable {
  stop
}

function sub_fd80d5e2(?) {
    if msg.sender == owner:
        if arg1:
            shareAddress = arg1
}

function sub_44d14d0d(?) {
    if msg.sender == owner:
        if arg1 > 0:
            sub_51deff2b = arg1
}

function sub_b009f341(?) {
    if msg.sender == owner:
        if arg1 > 0:
            sub_310fac01 = arg1
}

function sub_bee491e0(?) {
    if msg.sender == owner:
        if arg1 > 0:
            sub_e5bf5b00 = arg1
}

function sub_e5911b7b(?) {
    if msg.sender == owner:
        if arg1 > 0:
            sub_29a3f34d = arg1
}

function sub_6a41141e(?) {
    if msg.sender == owner:
        if arg1:
            sub_40efb4cbAddress = arg1
}

function sub_717a24ba(?) {
    if msg.sender == owner:
        if arg1:
            sub_c9b4766dAddress = arg1
}

function changeMinInvest(uint256 arg1) {
    if msg.sender == owner:
        if arg1 > 0:
            minInvest = arg1
}

function changeMaxInvest(uint256 arg1) {
    if msg.sender == owner:
        if arg1 > 0:
            maxInvest = arg1
}

function sub_5d9cfc33(?) {
    if owner != msg.sender:
        require msg.sender == sub_40efb4cbAddress
    require arg1 > 100 * 10^18
    sub_df75d236 = arg1
}

function deposit() payable {
    require msg.value + stor97EA[msg.sender] >= stor97EA[msg.sender]
    require msg.value + stor97EA[msg.sender] >= msg.value
    stor97EA[msg.sender] += msg.value
    emit Deposit(0, msg.sender, msg.value, msg.value + stor97EA[msg.sender]);
}

function sub_97c9daf5(?) {
    idx = 0
    s = arg1
    while idx < arg2:
        mem[0] = address(s)
        mem[32] = 24
        if stor24[address(s)]:
            idx = idx + 1
            s = stor24[address(s)]
            continue 
        return stor24[address(s)]
    return address(arg1 + (160 * arg2))
}

function withdraw(uint256 arg1) {
    require arg1 <= stor97EA[msg.sender]
    require arg1 <= stor97EA[msg.sender]
    stor97EA[msg.sender] -= arg1
    call msg.sender with:
       value arg1 wei
         gas gas_remaining wei
    require ext_call.success
    emit Withdraw(0, msg.sender, arg1, stor97EA[msg.sender]);
}

function sendToken(address arg1, uint256 arg2, address arg3) {
    require arg1
    if arg2 > tokens[address(arg1)][msg.sender]:
        require msg.sender == owner
    else:
        if owner != msg.sender:
            require arg2 <= tokens[address(arg1)][msg.sender]
            tokens[address(arg1)][msg.sender] -= arg2
    require arg2 + tokens[address(arg1)][address(arg3)] >= tokens[address(arg1)][address(arg3)]
    require arg2 + tokens[address(arg1)][address(arg3)] >= arg2
    tokens[address(arg1)][address(arg3)] += arg2
}

function withdrawToken(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= tokens[address(arg1)][msg.sender]
    require arg2 <= tokens[address(arg1)][msg.sender]
    tokens[address(arg1)][msg.sender] -= arg2
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit Withdraw(address(arg1), msg.sender, arg2, tokens[address(arg1)][msg.sender]);
}

function depositToken(address arg1, uint256 arg2) {
    require arg1
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg2 + tokens[address(arg1)][msg.sender] >= tokens[address(arg1)][msg.sender]
    require arg2 + tokens[address(arg1)][msg.sender] >= arg2
    tokens[address(arg1)][msg.sender] += arg2
    emit Deposit(address(arg1), msg.sender, arg2, arg2 + tokens[address(arg1)][msg.sender]);
}

function sub_67679360(?) {
    require sub_29a3f34d
    require 90 * sub_29a3f34d
    if block.number - sub_a8b39170[address(arg1)] / 90 * sub_29a3f34d > 100:
        return (Mask(156, 100, (block.number * 18 * invested[address(arg1)] / 1000) - (sub_f490df26[address(arg1)] * 18 * invested[address(arg1)] / 1000) / sub_29a3f34d) >> 100)
    if block.number - sub_a8b39170[address(arg1)] / 90 * sub_29a3f34d < 0:
        return ((block.number * 18 * invested[address(arg1)] / 1000) - (sub_f490df26[address(arg1)] * 18 * invested[address(arg1)] / 1000) / sub_29a3f34d)
    require 2^(block.number - sub_a8b39170[address(arg1)] / 90 * sub_29a3f34d)
    return ((block.number * 18 * invested[address(arg1)] / 1000) - (sub_f490df26[address(arg1)] * 18 * invested[address(arg1)] / 1000) / sub_29a3f34d / 2^(block.number - sub_a8b39170[address(arg1)] / 90 * sub_29a3f34d))
}

function sub_7e719916(?) payable {
    require sub_c9b4766dAddress == arg1
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg2 + sub_22be4e68 >= sub_22be4e68
    require arg2 + sub_22be4e68 >= arg2
    sub_22be4e68 += arg2
    require arg2 + sub_c0e8886c[msg.sender] >= sub_c0e8886c[msg.sender]
    require arg2 + sub_c0e8886c[msg.sender] >= arg2
    sub_c0e8886c[msg.sender] += arg2
    require sub_df75d236
    require (arg2 / sub_df75d236) + sub_5653c65b[msg.sender] >= sub_5653c65b[msg.sender]
    require (arg2 / sub_df75d236) + sub_5653c65b[msg.sender] >= arg2 / sub_df75d236
    sub_5653c65b[msg.sender] += arg2 / sub_df75d236
}

function sub_a5a9c1ed(?) {
    if arg2 + invested[address(arg1)] <= sub_268c01cf[address(arg1)][0] + maxInvest:
        if arg2 + invested[address(arg1)] <= 10 * sub_5653c65b[address(arg1)]:
            return 0
        if 0 > arg2 + invested[address(arg1)] - (10 * sub_5653c65b[address(arg1)]):
            return 0
    else:
        if arg2 + invested[address(arg1)] <= 10 * sub_5653c65b[address(arg1)]:
            if arg2 + invested[address(arg1)] - maxInvest - sub_268c01cf[address(arg1)][0] > 0:
                return (arg2 + invested[address(arg1)] - maxInvest - sub_268c01cf[address(arg1)][0])
            else:
                return 0
        if -maxInvest - sub_268c01cf[address(arg1)][0] > -10 * sub_5653c65b[address(arg1)]:
            return (arg2 + invested[address(arg1)] - maxInvest - sub_268c01cf[address(arg1)][0])
    return (arg2 + invested[address(arg1)] - (10 * sub_5653c65b[address(arg1)]))
}

function getIncome(address arg1) {
    require sub_29a3f34d
    require 90 * sub_29a3f34d
    if block.number - sub_a8b39170[address(arg1)] / 90 * sub_29a3f34d > 100:
        return (bonus[address(arg1)] + sub_268c01cf[address(arg1)][0] + (Mask(156, 100, (block.number * 18 * invested[address(arg1)] / 1000) - (sub_f490df26[address(arg1)] * 18 * invested[address(arg1)] / 1000) / sub_29a3f34d) >> 100))
    if block.number - sub_a8b39170[address(arg1)] / 90 * sub_29a3f34d < 0:
        return (bonus[address(arg1)] + sub_268c01cf[address(arg1)][0] + ((block.number * 18 * invested[address(arg1)] / 1000) - (sub_f490df26[address(arg1)] * 18 * invested[address(arg1)] / 1000) / sub_29a3f34d))
    require 2^(block.number - sub_a8b39170[address(arg1)] / 90 * sub_29a3f34d)
    return (bonus[address(arg1)] + sub_268c01cf[address(arg1)][0] + ((block.number * 18 * invested[address(arg1)] / 1000) - (sub_f490df26[address(arg1)] * 18 * invested[address(arg1)] / 1000) / sub_29a3f34d / 2^(block.number - sub_a8b39170[address(arg1)] / 90 * sub_29a3f34d)))
}

function sub_a70cd966(?) {
    if owner != msg.sender:
        require msg.sender == sub_40efb4cbAddress
    require sub_22be4e68 > 2 * sub_bd3f04a5 * sub_df75d236
    idx = 0
    s = 0
    t = 0
    while idx <= sub_7cfd2964:
        if 2 * invested[stor16[idx]] <= bonus[stor16[idx]]:
            invested[stor16[idx]] = 0
            sub_c0e8886c[stor16[idx]] = 0
            sub_5653c65b[stor16[idx]] = 0
            bonus[stor16[idx]] = 0
            sub_268c01cf[stor16[idx]][0] = 0
            mem[0] = investor[idx]
            sub_f490df26[stor16[idx]] = block.number
            mem[32] = 23
            sub_a8b39170[stor16[idx]] = block.number
            idx = idx + 1
            s = s
            t = investor[idx]
            continue 
        require (2 * invested[stor16[idx]] * sub_df75d236) - (bonus[stor16[idx]] * sub_df75d236) + tokens[stor10][stor16[idx]] >= tokens[stor10][stor16[idx]]
        require tokens[stor10][stor16[idx]] >= 0
        tokens[stor10][stor16[idx]] = (2 * invested[stor16[idx]] * sub_df75d236) - (bonus[stor16[idx]] * sub_df75d236) + tokens[stor10][stor16[idx]]
        invested[stor16[idx]] = 0
        sub_c0e8886c[stor16[idx]] = 0
        sub_5653c65b[stor16[idx]] = 0
        bonus[stor16[idx]] = 0
        sub_268c01cf[stor16[idx]][0] = 0
        mem[0] = investor[idx]
        sub_f490df26[stor16[idx]] = block.number
        mem[32] = 23
        sub_a8b39170[stor16[idx]] = block.number
        idx = idx + 1
        s = (2 * invested[stor16[idx]] * sub_df75d236) - (bonus[stor16[idx]] * sub_df75d236)
        t = investor[idx]
        continue 
    sub_bd3f04a5 = 0
    sub_45a568fa = 1
    sub_22be4e68 = 0
}



}

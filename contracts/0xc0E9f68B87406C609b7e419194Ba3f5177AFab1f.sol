contract main {




// =====================  Runtime code  =====================


#
#  - sub_ac8b9040(?)
#
const name = 'SIR11'

const decimals = 18

const symbol = 'SIR11'


uint256 totalSupply;
address owner;
address adminAddress;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint256 nodesCount;
array of struct stor6;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 etherPrice;
uint256 sub_b514211b;
uint8 sub_7ce46155;

function totalSupply() {
    return totalSupply
}

function getNodesCount() {
    return nodesCount[msg.sender]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function sub_7ce46155(?) {
    return bool(sub_7ce46155)
}

function owner() {
    return owner
}

function sub_b514211b(?) {
    return sub_b514211b
}

function getEtherPrice() {
    return etherPrice
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function setAdmin(address arg1) {
    require msg.sender == owner
    adminAddress = arg1
}

function sub_e6125773(?) {
    if adminAddress != msg.sender:
        require msg.sender == owner
    return stor9
}

function sub_1e411f2a(?) {
    if adminAddress != msg.sender:
        require msg.sender == owner
    return stor12
}

function sub_a9b78589(?) {
    if adminAddress != msg.sender:
        require msg.sender == owner
    return stor10
}

function getTotalShares() {
    if adminAddress != msg.sender:
        require msg.sender == owner
    return stor11
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function enableInvestment() {
    if adminAddress != msg.sender:
        require msg.sender == owner
    if bool(sub_7ce46155) != 1:
        sub_7ce46155 = 1
    else:
        sub_7ce46155 = 0
}

function setEtherPrice(uint256 arg1) {
    if adminAddress != msg.sender:
        require msg.sender == owner
    etherPrice = arg1
    require etherPrice
    sub_b514211b = 500 * 10^18 / etherPrice
}

function sub_d394c788(?) {
    if adminAddress != msg.sender:
        require msg.sender == owner
    else:
        if owner != msg.sender:
            if adminAddress != msg.sender:
                return 0
    return 1
}

function sub_d7da3662(?) payable {
    if adminAddress != msg.sender:
        require msg.sender == owner
    require 0 < stor9
    call arg1 with:
       value stor9 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor9 = 0
}

function sub_56bab09f(?) payable {
    if adminAddress != msg.sender:
        require msg.sender == owner
    require 0 < stor10
    call arg1 with:
       value stor10 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor10 = 0
}

function transfer(address arg1, uint256 arg2) {
    if arg2 > balanceOf[msg.sender]:
        return 0
    if arg2 <= 0:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    balanceOf[msg.sender] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if arg3 > balanceOf[address(arg1)]:
        return 0
    if arg3 > allowance[address(arg1)][msg.sender]:
        return 0
    if arg3 <= 0:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][msg.sender] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_3c03e68d(?) {
    if adminAddress != msg.sender:
        require msg.sender == owner
    if not stor6[address(arg1)][arg2].field_2048:
        stor6[address(arg1)][arg2].field_2048 = 1
        stor11--
        stor6[address(arg1)][arg2].field_2560 = stor12
    else:
        stor6[address(arg1)][arg2].field_2048 = 0
        stor11++
        require stor6[address(arg1)][arg2].field_2560 <= stor12
        require stor12 - stor6[address(arg1)][arg2].field_2560 + stor6[address(arg1)][arg2].field_2304 >= stor6[address(arg1)][arg2].field_2304
        stor6[address(arg1)][arg2].field_2304 = stor12 - stor6[address(arg1)][arg2].field_2560 + stor6[address(arg1)][arg2].field_2304
}

function sub_b04b6145(?) {
    if not stor6[msg.sender][arg1].field_2048:
        if stor6[msg.sender][arg1].field_1280 <= stor12:
            if stor6[msg.sender][arg1].field_1536 <= stor12 - stor6[msg.sender][arg1].field_1280:
                if stor6[msg.sender][arg1].field_2304 <= stor12 - stor6[msg.sender][arg1].field_1280 - stor6[msg.sender][arg1].field_1536:
                    return stor6[msg.sender][arg1].field_0, 
                           stor6[msg.sender][arg1].field_512,
                           stor12 - stor6[msg.sender][arg1].field_1280 - stor6[msg.sender][arg1].field_1536 - stor6[msg.sender][arg1].field_2304,
                           stor6[msg.sender][arg1].field_1536,
                           stor6[msg.sender][arg1].field_1792
    else:
        if stor6[msg.sender][arg1].field_1280 <= stor6[msg.sender][arg1].field_2560:
            if stor6[msg.sender][arg1].field_1536 <= stor6[msg.sender][arg1].field_2560 - stor6[msg.sender][arg1].field_1280:
                if stor6[msg.sender][arg1].field_2304 <= stor6[msg.sender][arg1].field_2560 - stor6[msg.sender][arg1].field_1280 - stor6[msg.sender][arg1].field_1536:
                    return stor6[msg.sender][arg1].field_0, 
                           stor6[msg.sender][arg1].field_512,
                           stor6[msg.sender][arg1].field_2560 - stor6[msg.sender][arg1].field_1280 - stor6[msg.sender][arg1].field_1536 - stor6[msg.sender][arg1].field_2304,
                           stor6[msg.sender][arg1].field_1536,
                           stor6[msg.sender][arg1].field_1792
    revert
}

function sub_d20deac6(?) {
    if adminAddress != msg.sender:
        require msg.sender == owner
    if not stor6[address(arg1)][arg2].field_2048:
        require stor6[address(arg1)][arg2].field_1280 <= stor12
        require stor6[address(arg1)][arg2].field_1536 <= stor12 - stor6[address(arg1)][arg2].field_1280
        require stor6[address(arg1)][arg2].field_2304 <= stor12 - stor6[address(arg1)][arg2].field_1280 - stor6[address(arg1)][arg2].field_1536
        require stor6[address(arg1)][arg2].field_1792 + stor6[address(arg1)][arg2].field_1536 >= stor6[address(arg1)][arg2].field_1536
        mem[128] = stor6[address(arg1)][arg2][3].field_0
        idx = 128
        s = 0
        while stor6[address(arg1)][arg2][3].length + 96 > idx:
            mem[idx + 32] = stor6[address(arg1)][arg2][s + 3].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor6[address(arg1)][arg2][3].length, data=mem[128 len stor6[address(arg1)][arg2][3].length]), 
               stor6[address(arg1)][arg2].field_256,
               stor6[address(arg1)][arg2].field_0,
               bool(stor6[address(arg1)][arg2].field_2048),
               stor12 - stor6[address(arg1)][arg2].field_1280 - stor6[address(arg1)][arg2].field_1536 - stor6[address(arg1)][arg2].field_2304,
               stor6[address(arg1)][arg2].field_1792 + stor6[address(arg1)][arg2].field_1536
    require stor6[address(arg1)][arg2].field_1280 <= stor6[address(arg1)][arg2].field_2560
    require stor6[address(arg1)][arg2].field_1536 <= stor6[address(arg1)][arg2].field_2560 - stor6[address(arg1)][arg2].field_1280
    require stor6[address(arg1)][arg2].field_2304 <= stor6[address(arg1)][arg2].field_2560 - stor6[address(arg1)][arg2].field_1280 - stor6[address(arg1)][arg2].field_1536
    require stor6[address(arg1)][arg2].field_1792 + stor6[address(arg1)][arg2].field_1536 >= stor6[address(arg1)][arg2].field_1536
    mem[128] = stor6[address(arg1)][arg2][3].field_0
    idx = 128
    s = 0
    while stor6[address(arg1)][arg2][3].length + 96 > idx:
        mem[idx + 32] = stor6[address(arg1)][arg2][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor6[address(arg1)][arg2][3].length, data=mem[128 len stor6[address(arg1)][arg2][3].length]), 
           stor6[address(arg1)][arg2].field_256,
           stor6[address(arg1)][arg2].field_0,
           bool(stor6[address(arg1)][arg2].field_2048),
           stor6[address(arg1)][arg2].field_2560 - stor6[address(arg1)][arg2].field_1280 - stor6[address(arg1)][arg2].field_1536 - stor6[address(arg1)][arg2].field_2304,
           stor6[address(arg1)][arg2].field_1792 + stor6[address(arg1)][arg2].field_1536
}

function withdraw(uint256 arg1) payable {
    if not stor6[msg.sender][arg1].field_2048:
        require stor6[msg.sender][arg1].field_1280 <= stor12
        require stor6[msg.sender][arg1].field_1536 <= stor12 - stor6[msg.sender][arg1].field_1280
        require stor6[msg.sender][arg1].field_2304 <= stor12 - stor6[msg.sender][arg1].field_1280 - stor6[msg.sender][arg1].field_1536
        require stor12 - stor6[msg.sender][arg1].field_1280 - stor6[msg.sender][arg1].field_1536 - stor6[msg.sender][arg1].field_2304 + stor6[msg.sender][arg1].field_512 >= stor6[msg.sender][arg1].field_512
        require stor12 - stor6[msg.sender][arg1].field_1280 - stor6[msg.sender][arg1].field_1536 - stor6[msg.sender][arg1].field_2304 + stor6[msg.sender][arg1].field_512 > 0
        if nodesCount[msg.sender] > 0:
            call msg.sender with:
               value stor12 - stor6[msg.sender][arg1].field_1280 - stor6[msg.sender][arg1].field_1536 - stor6[msg.sender][arg1].field_2304 + stor6[msg.sender][arg1].field_512 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if stor6[msg.sender][arg1].field_512 > 0:
                stor6[msg.sender][arg1].field_1792 = stor6[msg.sender][arg1].field_512
            stor6[msg.sender][arg1].field_512 = 0
            require stor12 - stor6[msg.sender][arg1].field_1280 - stor6[msg.sender][arg1].field_2304 >= stor6[msg.sender][arg1].field_1536
            stor6[msg.sender][arg1].field_1536 = stor12 - stor6[msg.sender][arg1].field_1280 - stor6[msg.sender][arg1].field_2304
    else:
        require stor6[msg.sender][arg1].field_1280 <= stor6[msg.sender][arg1].field_2560
        require stor6[msg.sender][arg1].field_1536 <= stor6[msg.sender][arg1].field_2560 - stor6[msg.sender][arg1].field_1280
        require stor6[msg.sender][arg1].field_2304 <= stor6[msg.sender][arg1].field_2560 - stor6[msg.sender][arg1].field_1280 - stor6[msg.sender][arg1].field_1536
        require stor6[msg.sender][arg1].field_2560 - stor6[msg.sender][arg1].field_1280 - stor6[msg.sender][arg1].field_1536 - stor6[msg.sender][arg1].field_2304 + stor6[msg.sender][arg1].field_512 >= stor6[msg.sender][arg1].field_512
        require stor6[msg.sender][arg1].field_2560 - stor6[msg.sender][arg1].field_1280 - stor6[msg.sender][arg1].field_1536 - stor6[msg.sender][arg1].field_2304 + stor6[msg.sender][arg1].field_512 > 0
        if nodesCount[msg.sender] > 0:
            call msg.sender with:
               value stor6[msg.sender][arg1].field_2560 - stor6[msg.sender][arg1].field_1280 - stor6[msg.sender][arg1].field_1536 - stor6[msg.sender][arg1].field_2304 + stor6[msg.sender][arg1].field_512 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if stor6[msg.sender][arg1].field_512 > 0:
                stor6[msg.sender][arg1].field_1792 = stor6[msg.sender][arg1].field_512
            stor6[msg.sender][arg1].field_512 = 0
            require stor6[msg.sender][arg1].field_2560 - stor6[msg.sender][arg1].field_1280 - stor6[msg.sender][arg1].field_2304 >= stor6[msg.sender][arg1].field_1536
            stor6[msg.sender][arg1].field_1536 = stor6[msg.sender][arg1].field_2560 - stor6[msg.sender][arg1].field_1280 - stor6[msg.sender][arg1].field_2304
}

function getNode(uint256 arg1) {
    mem[32] = sha3(msg.sender, 6)
    mem[96] = stor6[msg.sender][arg1][3].length
    mem[128] = stor6[msg.sender][arg1][3].field_0
    idx = 128
    s = 0
    while stor6[msg.sender][arg1][3].length + 96 > idx:
        mem[idx + 32] = stor6[msg.sender][arg1][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor6[msg.sender][arg1][3].length) + ceil32(stor6[msg.sender][arg1][4].length) + 160
    mem[ceil32(stor6[msg.sender][arg1][3].length) + 128] = stor6[msg.sender][arg1][4].length
    mem[0] = sha3(arg1, sha3(msg.sender, 6)) + 4
    mem[ceil32(stor6[msg.sender][arg1][3].length) + 160] = stor6[msg.sender][arg1][4].field_0
    idx = ceil32(stor6[msg.sender][arg1][3].length) + 160
    s = 0
    while ceil32(stor6[msg.sender][arg1][3].length) + stor6[msg.sender][arg1][4].length + 128 > idx:
        mem[idx + 32] = stor6[msg.sender][arg1][s + 4].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor6[msg.sender][arg1][3].length) + ceil32(stor6[msg.sender][arg1][4].length) + 224] = stor6[msg.sender][arg1].field_256
    mem[ceil32(stor6[msg.sender][arg1][3].length) + ceil32(stor6[msg.sender][arg1][4].length) + 160] = 96
    mem[ceil32(stor6[msg.sender][arg1][3].length) + ceil32(stor6[msg.sender][arg1][4].length) + 256] = stor6[msg.sender][arg1][3].length
    mem[ceil32(stor6[msg.sender][arg1][3].length) + ceil32(stor6[msg.sender][arg1][4].length) + 288 len ceil32(stor6[msg.sender][arg1][3].length)] = mem[128 len ceil32(stor6[msg.sender][arg1][3].length)]
    mem[ceil32(stor6[msg.sender][arg1][3].length) + ceil32(stor6[msg.sender][arg1][4].length) + 192] = stor6[msg.sender][arg1][3].length + 128
    mem[stor6[msg.sender][arg1][3].length + ceil32(stor6[msg.sender][arg1][3].length) + ceil32(stor6[msg.sender][arg1][4].length) + 288] = stor6[msg.sender][arg1][4].length
    mem[stor6[msg.sender][arg1][3].length + ceil32(stor6[msg.sender][arg1][3].length) + ceil32(stor6[msg.sender][arg1][4].length) + 320 len ceil32(stor6[msg.sender][arg1][4].length)] = mem[ceil32(stor6[msg.sender][arg1][3].length) + 160 len ceil32(stor6[msg.sender][arg1][4].length)]
    if not stor6[msg.sender][arg1][4].length % 32:
        return Array(len=stor6[msg.sender][arg1][3].length, data=mem[128 len ceil32(stor6[msg.sender][arg1][3].length)], mem[(2 * ceil32(stor6[msg.sender][arg1][3].length)) + ceil32(stor6[msg.sender][arg1][4].length) + 288 len stor6[msg.sender][arg1][4].length + stor6[msg.sender][arg1][3].length + -ceil32(stor6[msg.sender][arg1][3].length) + 32]), 
               stor6[msg.sender][arg1][3].length + 128,
               stor6[msg.sender][arg1].field_256
    mem[floor32(stor6[msg.sender][arg1][4].length) + stor6[msg.sender][arg1][3].length + ceil32(stor6[msg.sender][arg1][3].length) + ceil32(stor6[msg.sender][arg1][4].length) + 320] = mem[floor32(stor6[msg.sender][arg1][4].length) + stor6[msg.sender][arg1][3].length + ceil32(stor6[msg.sender][arg1][3].length) + ceil32(stor6[msg.sender][arg1][4].length) + -stor6[msg.sender][arg1][4].length % 32 + 352 len stor6[msg.sender][arg1][4].length % 32]
    return Array(len=stor6[msg.sender][arg1][3].length, data=mem[128 len ceil32(stor6[msg.sender][arg1][3].length)], mem[(2 * ceil32(stor6[msg.sender][arg1][3].length)) + ceil32(stor6[msg.sender][arg1][4].length) + 288 len floor32(stor6[msg.sender][arg1][4].length) + stor6[msg.sender][arg1][3].length + -ceil32(stor6[msg.sender][arg1][3].length) + 64]), 
           stor6[msg.sender][arg1][3].length + 128,
           stor6[msg.sender][arg1].field_256
}



}

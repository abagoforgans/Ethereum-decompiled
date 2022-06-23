contract main {




// =====================  Runtime code  =====================


const sub_09bd7aaf(?) = 30921875 * 10^18

const sub_0d15c957(?) = 247375000 * 10^18

const sub_229763ad(?) = 371062500 * 10^18

const sub_30ad7be0(?) = 247375000 * 10^18

const sub_604ee15d(?) = (34560 * 24 * 3600)

const sub_6321105c(?) = 50

const sub_655266a8(?) = 889500000 * 10^18

const sub_89731539(?) = 197900000 * 10^18

const sub_8e96f84c(?) = 296850000 * 10^18

const sub_9bdfa937(?) = 123687500 * 10^18

const sub_a79e8420(?) = 4

const sub_c439326f(?) = (720 * 24 * 3600)

const sub_c626a1e9(?) = 4947500 * 10^18

const sub_d3250295(?) = 247375000 * 10^18

const sub_d35c6cbe(?) = 100000000 * 10^18

const maxSupply = 2473750000 * 10^18

const sub_e991ff76(?) = 1

const sub_f10b4205(?) = (2160 * 24 * 3600)


address sub_a3e05c18Address;
address sub_b672edfeAddress;
address sub_af9f47c0Address;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 sub_e405c462;
uint256 sub_66462781;
uint256 sub_3f3cfaca;
uint256 sub_8a4428f4;
uint256 sub_f84d8dc4;
uint256 sub_440c7e28;
uint256 sub_7f6087a1;
uint256 sub_2037f1f8;
uint256 sub_2b268faf;
uint256 sub_b6ab61a7;
mapping of uint256 balances;
mapping of uint256 approvals;
mapping of uint256 sub_c1190225;
mapping of uint256 sub_c9d671c3;
mapping of uint256 sub_d02fb9bd;
uint8 tokenLock;
uint8 saleTime; offset 8
uint256 stor21; offset 8
uint256 endSaleTime;

function name() {
    return name[0 len name.length]
}

function saleTime() {
    return bool(saleTime)
}

function totalSupply() {
    return sub_e405c462
}

function sub_2037f1f8(?) {
    return sub_2037f1f8
}

function balances(address arg1) {
    require calldata.size - 4 >= 32
    return balances[arg1]
}

function sub_2b268faf(?) {
    return sub_2b268faf
}

function decimals() {
    return decimals
}

function sub_3f3cfaca(?) {
    return sub_3f3cfaca
}

function sub_440c7e28(?) {
    return sub_440c7e28
}

function endSaleTime() {
    return endSaleTime
}

function sub_66462781(?) {
    return sub_66462781
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balances[address(arg1)]
}

function sub_7f6087a1(?) {
    return sub_7f6087a1
}

function sub_8a4428f4(?) {
    return sub_8a4428f4
}

function symbol() {
    return symbol[0 len symbol.length]
}

function approvals(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return approvals[arg1][arg2]
}

function sub_a3e05c18(?) {
    return sub_a3e05c18Address
}

function sub_af9f47c0(?) {
    return sub_af9f47c0Address
}

function sub_b672edfe(?) {
    return sub_b672edfeAddress
}

function sub_b6ab61a7(?) {
    return sub_b6ab61a7
}

function sub_c1190225(?) {
    require calldata.size - 4 >= 32
    return sub_c1190225[arg1]
}

function sub_c9d671c3(?) {
    require calldata.size - 4 >= 32
    return sub_c9d671c3[arg1]
}

function sub_d02fb9bd(?) {
    require calldata.size - 4 >= 32
    return sub_d02fb9bd[arg1]
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return approvals[address(arg1)][address(arg2)]
}

function sub_e405c462(?) {
    return sub_e405c462
}

function tokenLock() {
    return bool(tokenLock)
}

function sub_f84d8dc4(?) {
    return sub_f84d8dc4
}

function close() {
    require msg.sender == sub_a3e05c18Address
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function setTokenLock() {
    require msg.sender == sub_af9f47c0Address
    require not tokenLock
    tokenLock = 1
}

function setTokenUnlock() {
    require msg.sender == sub_af9f47c0Address
    require bool(tokenLock) == 1
    require not saleTime
    tokenLock = 0
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if tokenLock:
        require msg.sender == sub_af9f47c0Address
    require balances[address(msg.sender)] >= arg2
    approvals[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_2d8c5811(?) {
    require calldata.size - 4 >= 32
    require msg.sender == sub_a3e05c18Address
    require arg1 != sub_a3e05c18Address
    require arg1 != sub_b672edfeAddress
    require arg1 != sub_af9f47c0Address
    require arg1
    sub_b672edfeAddress = arg1
    emit 0x844a4a07: sub_b672edfeAddress, arg1
}

function sub_a07bbbfe(?) {
    require calldata.size - 4 >= 32
    require msg.sender == sub_a3e05c18Address
    require arg1 != sub_a3e05c18Address
    require arg1 != sub_b672edfeAddress
    require arg1 != sub_af9f47c0Address
    require arg1
    sub_a3e05c18Address = arg1
    emit 0xfb59157e: sub_a3e05c18Address, arg1
}

function sub_f40c2918(?) {
    require calldata.size - 4 >= 32
    require msg.sender == sub_a3e05c18Address
    require arg1 != sub_a3e05c18Address
    require arg1 != sub_b672edfeAddress
    require arg1 != sub_af9f47c0Address
    require arg1
    sub_af9f47c0Address = arg1
    emit 0xde74b34b: sub_af9f47c0Address, arg1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if tokenLock:
        require msg.sender == sub_af9f47c0Address
    require balances[address(msg.sender)] >= arg2
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function burnToken(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == sub_af9f47c0Address
    require balances[address(msg.sender)] >= 10^18 * arg1
    require 10^18 * arg1 <= balances[address(msg.sender)]
    balances[address(msg.sender)] += -1 * 10^18 * arg1
    require sub_b6ab61a7 + (10^18 * arg1) >= sub_b6ab61a7
    sub_b6ab61a7 += 10^18 * arg1
    require 10^18 * arg1 <= sub_e405c462
    sub_e405c462 += -1 * 10^18 * arg1
    emit Burn((10^18 * arg1), msg.sender);
}

function sub_1df28026(?) {
    require calldata.size - 4 >= 64
    require msg.sender == sub_b672edfeAddress
    require sub_f84d8dc4 + (10^18 * arg2) >= sub_f84d8dc4
    require 197900000 * 10^18 >= sub_f84d8dc4 + (10^18 * arg2)
    require balances[address(arg1)] + (10^18 * arg2) >= balances[address(arg1)]
    balances[address(arg1)] += 10^18 * arg2
    require sub_e405c462 + (10^18 * arg2) >= sub_e405c462
    sub_e405c462 += 10^18 * arg2
    require sub_f84d8dc4 + (10^18 * arg2) >= sub_f84d8dc4
    sub_f84d8dc4 += 10^18 * arg2
    emit 0xc57ecc63: (10^18 * arg2), arg1
}

function sub_3a1d1003(?) {
    require calldata.size - 4 >= 64
    require msg.sender == sub_b672edfeAddress
    require sub_8a4428f4 + (10^18 * arg2) >= sub_8a4428f4
    require 371062500 * 10^18 >= sub_8a4428f4 + (10^18 * arg2)
    require balances[address(arg1)] + (10^18 * arg2) >= balances[address(arg1)]
    balances[address(arg1)] += 10^18 * arg2
    require sub_e405c462 + (10^18 * arg2) >= sub_e405c462
    sub_e405c462 += 10^18 * arg2
    require sub_8a4428f4 + (10^18 * arg2) >= sub_8a4428f4
    sub_8a4428f4 += 10^18 * arg2
    emit 0x7d43a439: (10^18 * arg2), arg1
}

function sub_43252ada(?) {
    require calldata.size - 4 >= 64
    require msg.sender == sub_b672edfeAddress
    require sub_66462781 + (10^18 * arg2) >= sub_66462781
    require 889500000 * 10^18 >= sub_66462781 + (10^18 * arg2)
    require balances[address(arg1)] + (10^18 * arg2) >= balances[address(arg1)]
    balances[address(arg1)] += 10^18 * arg2
    require sub_e405c462 + (10^18 * arg2) >= sub_e405c462
    sub_e405c462 += 10^18 * arg2
    require sub_66462781 + (10^18 * arg2) >= sub_66462781
    sub_66462781 += 10^18 * arg2
    emit 0xaf2c3679: (10^18 * arg2), arg1
}

function sub_994b3b29(?) {
    require calldata.size - 4 >= 64
    require msg.sender == sub_b672edfeAddress
    require sub_2037f1f8 + (10^18 * arg2) >= sub_2037f1f8
    require 296850000 * 10^18 >= sub_2037f1f8 + (10^18 * arg2)
    require balances[address(arg1)] + (10^18 * arg2) >= balances[address(arg1)]
    balances[address(arg1)] += 10^18 * arg2
    require sub_e405c462 + (10^18 * arg2) >= sub_e405c462
    sub_e405c462 += 10^18 * arg2
    require sub_2037f1f8 + (10^18 * arg2) >= sub_2037f1f8
    sub_2037f1f8 += 10^18 * arg2
    emit 0x25025863: (10^18 * arg2), arg1
}

function sub_ec6976c3(?) {
    require calldata.size - 4 >= 64
    require msg.sender == sub_b672edfeAddress
    require sub_3f3cfaca + (10^18 * arg2) >= sub_3f3cfaca
    require 100000000 * 10^18 >= sub_3f3cfaca + (10^18 * arg2)
    require balances[address(arg1)] + (10^18 * arg2) >= balances[address(arg1)]
    balances[address(arg1)] += 10^18 * arg2
    require sub_e405c462 + (10^18 * arg2) >= sub_e405c462
    sub_e405c462 += 10^18 * arg2
    require sub_3f3cfaca + (10^18 * arg2) >= sub_3f3cfaca
    sub_3f3cfaca += 10^18 * arg2
    emit 0xd43d3969: (10^18 * arg2), arg1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if tokenLock:
        require msg.sender == sub_af9f47c0Address
    require balances[address(arg1)] >= arg3
    require approvals[address(arg1)][address(msg.sender)] >= arg3
    require arg3 <= approvals[address(arg1)][address(msg.sender)]
    approvals[address(arg1)][address(msg.sender)] -= arg3
    require arg3 <= balances[address(arg1)]
    balances[address(arg1)] -= arg3
    require balances[address(arg2)] + arg3 >= balances[address(arg2)]
    balances[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_9740ee55(?) {
    require calldata.size - 4 >= 64
    require msg.sender == sub_b672edfeAddress
    require not saleTime
    require 4 >= arg2
    require endSaleTime + (2160 * 24 * 3600 * arg2) < block.timestamp
    require sub_c9d671c3[arg2] > 0
    require sub_2b268faf + sub_c9d671c3[arg2] >= sub_2b268faf
    require 123687500 * 10^18 >= sub_2b268faf + sub_c9d671c3[arg2]
    require balances[address(arg1)] + sub_c9d671c3[arg2] >= balances[address(arg1)]
    balances[address(arg1)] += sub_c9d671c3[arg2]
    sub_c9d671c3[arg2] = 0
    require sub_e405c462 + sub_c9d671c3[arg2] >= sub_e405c462
    sub_e405c462 += sub_c9d671c3[arg2]
    require sub_2b268faf + sub_c9d671c3[arg2] >= sub_2b268faf
    sub_2b268faf += sub_c9d671c3[arg2]
    emit 0x474f57c1: sub_c9d671c3[arg2], arg1
}

function sub_c0af35cc(?) {
    require calldata.size - 4 >= 64
    require msg.sender == sub_b672edfeAddress
    require not saleTime
    require 50 >= arg2
    require endSaleTime + (720 * 24 * 3600 * arg2) < block.timestamp
    require sub_c1190225[arg2] > 0
    require sub_440c7e28 + sub_c1190225[arg2] >= sub_440c7e28
    require 247375000 * 10^18 >= sub_440c7e28 + sub_c1190225[arg2]
    require balances[address(arg1)] + sub_c1190225[arg2] >= balances[address(arg1)]
    balances[address(arg1)] += sub_c1190225[arg2]
    sub_c1190225[arg2] = 0
    require sub_e405c462 + sub_c1190225[arg2] >= sub_e405c462
    sub_e405c462 += sub_c1190225[arg2]
    require sub_440c7e28 + sub_c1190225[arg2] >= sub_440c7e28
    sub_440c7e28 += sub_c1190225[arg2]
    emit 0xeee1f309: sub_c1190225[arg2], arg1
}

function sub_e4a7d374(?) {
    require calldata.size - 4 >= 64
    require msg.sender == sub_b672edfeAddress
    require not saleTime
    require 1 >= arg2
    require endSaleTime + (34560 * 24 * 3600 * arg2) < block.timestamp
    require sub_d02fb9bd[arg2] > 0
    require sub_7f6087a1 + sub_d02fb9bd[arg2] >= sub_7f6087a1
    require 247375000 * 10^18 >= sub_7f6087a1 + sub_d02fb9bd[arg2]
    require balances[address(arg1)] + sub_d02fb9bd[arg2] >= balances[address(arg1)]
    balances[address(arg1)] += sub_d02fb9bd[arg2]
    sub_d02fb9bd[arg2] = 0
    require sub_e405c462 + sub_d02fb9bd[arg2] >= sub_e405c462
    sub_e405c462 += sub_d02fb9bd[arg2]
    require sub_7f6087a1 + sub_d02fb9bd[arg2] >= sub_7f6087a1
    sub_7f6087a1 += sub_d02fb9bd[arg2]
    emit 0x45a7cf89: sub_d02fb9bd[arg2], arg1
}

function withdrawTokens(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require msg.sender == sub_af9f47c0Address
    if arg3:
        require arg3
        require arg3 * 10^arg2 / arg3 == 10^arg2
    if not arg1:
        call msg.sender with:
           value arg3 * 10^arg2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg3 * 10^arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit Transfer((arg3 * 10^arg2), 0, msg.sender);
}

function endSale() {
    require msg.sender == sub_af9f47c0Address
    require bool(saleTime) == 1
    stor21 = 0
    endSaleTime = block.timestamp
    idx = 1
    while idx <= 50:
        require sub_c1190225[idx] + 4947500 * 10^18 >= sub_c1190225[idx]
        mem[0] = idx
        mem[32] = 18
        sub_c1190225[idx] += 4947500 * 10^18
        idx = idx + 1
        continue 
    idx = 1
    while idx <= 4:
        require sub_c9d671c3[idx] + 30921875 * 10^18 >= sub_c9d671c3[idx]
        mem[0] = idx
        mem[32] = 19
        sub_c9d671c3[idx] += 30921875 * 10^18
        idx = idx + 1
        continue 
    idx = 1
    while idx <= 1:
        require sub_d02fb9bd[idx] + 247375000 * 10^18 >= sub_d02fb9bd[idx]
        mem[0] = idx
        mem[32] = 20
        sub_d02fb9bd[idx] += 247375000 * 10^18
        idx = idx + 1
        continue 
}



}

contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
array of uint256 symbol;
array of uint256 name;
uint8 decimals;
uint256 stor5;
uint256 reserveCap;
uint256 sub_e7604936;
uint256 tokensSold;
uint256 tokensDistributed;
uint256 tokensPerEth;
uint256 sub_8ab05249;
address fundsWalletAddress;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function tokensDistributed() {
    return tokensDistributed
}

function fundsWallet() {
    return fundsWalletAddress
}

function reserveCap() {
    return reserveCap
}

function decimals() {
    return decimals
}

function tokensSold() {
    return tokensSold
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function sub_8ab05249(?) {
    return sub_8ab05249
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function tokensPerEth() {
    return tokensPerEth
}

function newOwner() {
    return newOwner
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function sub_e7604936(?) {
    return sub_e7604936
}

function totalSupply() {
    require balanceOf[0] <= stor5
    return (stor5 - balanceOf[0])
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    newOwner = arg1
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_1fd0151e(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    reserveCap = arg1 * 10^decimals
    require arg1 * 10^decimals <= balanceOf[stor0]
    sub_e7604936 = balanceOf[stor0] - (arg1 * 10^decimals)
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit 0xfeddf252: arg2, msg.sender, arg1
    return 1
}

function sub_4c84b16f(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require 10^decimals * arg1 <= balanceOf[stor0]
    require 10^decimals * arg1 <= reserveCap
    reserveCap += -1 * 10^decimals * arg1
    require (10^decimals * arg1) + sub_e7604936 >= sub_e7604936
    sub_e7604936 += 10^decimals * arg1
}

function sub_036cfbdb(?) {
    require calldata.size - 4 >= 32
    if not arg1:
        if stor5:
            require not 0 / stor5
            return 0
        else:
            return 0
    require 100 * arg1 / arg1 == 100
    if not stor5:
        return 0
    require 100 * arg1 * stor5 / stor5 == 100 * arg1
    return (100 * arg1 * stor5 / 10000)
}

function transferAnyERC20Token(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit 0xfeddf252: arg3, arg1, arg2
    return 1
}

function sub_ee6ac693(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if not arg1:
        if stor5:
            require not 0 / stor5
        reserveCap = 0
        require 0 <= balanceOf[stor0]
        sub_e7604936 = balanceOf[stor0]
    else:
        require 100 * arg1 / arg1 == 100
        if not stor5:
            reserveCap = 0
            require 0 <= balanceOf[stor0]
            sub_e7604936 = balanceOf[stor0]
        else:
            require 100 * arg1 * stor5 / stor5 == 100 * arg1
            reserveCap = 100 * arg1 * stor5 / 10000
            require 100 * arg1 * stor5 / 10000 <= balanceOf[stor0]
            sub_e7604936 = balanceOf[stor0] - (100 * arg1 * stor5 / 10000)
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    allowance[msg.sender][address(arg1)] = arg2
    mem[ceil32(arg3.length) + 128] = arg2
    emit Approval(address arg1, address arg2, uint256 arg3):
                  Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0),
                  mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)],
                  msg.sender,
                  arg1,
    require ext_code.size(arg1)
    call arg1 with:
         gas gas_remaining wei
        args msg.sender, arg2, this.address, Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 0, 1
}

function sub_2a08c7ab(?) payable {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    if balanceOf[stor0] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Token distribution fail due to insufficient selling token.'
    if arg2 > sub_e7604936:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Token distribution fail due to insufficient selling token.'
    require arg2 * 10^decimals <= balanceOf[stor0]
    balanceOf[stor0] += -1 * arg2 * 10^decimals
    require (arg2 * 10^decimals) + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = (arg2 * 10^decimals) + balanceOf[arg1]
    emit 0xfeddf252: (arg2 * 10^decimals), owner, arg1
    require arg2 * 10^decimals <= sub_e7604936
    sub_e7604936 += -1 * arg2 * 10^decimals
    require (arg2 * 10^decimals) + tokensDistributed >= tokensDistributed
    tokensDistributed += arg2 * 10^decimals
    return 1
}

function _fallback() payable {
    if balanceOf[stor0] < reserveCap:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Token balance reaches reserve capacity, no more tokens will be given out.'
    sub_8ab05249 += msg.value
    require msg.value * tokensPerEth <= balanceOf[stor12]
    require msg.value * tokensPerEth <= balanceOf[stor12]
    balanceOf[stor12] += -1 * msg.value * tokensPerEth
    require (msg.value * tokensPerEth) + balanceOf[msg.sender] >= balanceOf[msg.sender]
    balanceOf[msg.sender] += msg.value * tokensPerEth
    emit 0xfeddf252: (msg.value * tokensPerEth), fundsWalletAddress, msg.sender
    call fundsWalletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require msg.value * tokensPerEth <= sub_e7604936
    sub_e7604936 += -1 * msg.value * tokensPerEth
    require (msg.value * tokensPerEth) + tokensSold >= tokensSold
    tokensSold += msg.value * tokensPerEth
}



}

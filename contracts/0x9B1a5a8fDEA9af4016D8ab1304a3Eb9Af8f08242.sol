contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor3;
uint8 stor6;
address stor6;
address stor6; offset 8
address stor7;

function _fallback() payable {
    uint8(stor6.field_0) = 0
    require not msg.value
    stor7 = code.data[6421 len 20]
    address(stor6.field_8) = msg.sender
    stor3[address(stor6.field_0)] = 1000000 * 10^18
    stor0 = 1514678399
    return code.data[339 len 6070]
}



// =====================  Runtime code  =====================


const name = 'Santa'

const decimals = 18

const initialSupply = 1000000 * 10^18

const tokenExchangeRate = 310

const standard = 'ERC20'

const tokensForBonus = 200000 * 10^18

const tokensForIco = 600000 * 10^18

const symbol = 'SANTA'

const startAirdropTime = (420576 * 24 * 3600)

const start = (420480 * 24 * 3600)

const end = 1514678399


uint256 startTransferTime;
uint256 tokensSold;
uint8 stor2;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 amountRaised;
uint8 stor6;
address stor6;
address santaFundWalletAddress; offset 8
address stor7;

function tokensSold() {
    return tokensSold
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function burned() {
    return bool(stor2)
}

function amountRaised() {
    return amountRaised
}

function startTransferTime() {
    return startTransferTime
}

function santaFundWallet() {
    return santaFundWalletAddress
}

function crowdsaleClosed() {
    return bool(uint8(stor6.field_0))
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require block.timestamp >= startTransferTime
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 >= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function markCrowdsaleEnding() {
    require block.timestamp > 1514678399
    require block.timestamp > startTransferTime
    require not stor2
    require 200000 * 10^18 <= balanceOf[address(stor6.field_0)]
    require balanceOf[address(stor6.field_0)] - 200000 * 10^18 <= 600000 * 10^18
    tokensSold = -balanceOf[address(stor6.field_0)] + 800000 * 10^18
    balanceOf[address(stor6.field_0)] = 200000 * 10^18
    stor2 = 1
    emit Burn((balanceOf[address(stor6.field_0)] - 200000 * 10^18));
    uint8(stor6.field_0) = 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if block.timestamp < startTransferTime:
        require arg1 == santaFundWalletAddress
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require balanceOf[address(arg2)] + arg3 >= arg3
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    if msg.value:
        require msg.value
        require 310 * msg.value / msg.value == 310
    require 310 * msg.value >= 10 * 10^18
    require not uint8(stor6.field_0)
    require block.timestamp >= 420480 * 24 * 3600
    require block.timestamp <= 1514678399
    require tokensSold + (310 * msg.value) >= tokensSold
    require tokensSold + (310 * msg.value) >= 310 * msg.value
    require tokensSold + (310 * msg.value) <= 600000 * 10^18
    call stor7 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require 310 * msg.value <= balanceOf[address(stor6.field_0)]
    balanceOf[address(stor6.field_0)] += -310 * msg.value
    require balanceOf[address(msg.sender)] + (310 * msg.value) >= balanceOf[address(msg.sender)]
    require balanceOf[address(msg.sender)] + (310 * msg.value) >= 310 * msg.value
    balanceOf[address(msg.sender)] += 310 * msg.value
    emit Transfer((310 * msg.value), santaFundWalletAddress, msg.sender);
    require amountRaised + msg.value >= amountRaised
    require amountRaised + msg.value >= msg.value
    amountRaised += msg.value
    tokensSold += 310 * msg.value
    emit FundTransfer(address(msg.sender), msg.value, 1, amountRaised);
}

function sendGifts(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == santaFundWalletAddress
    require block.timestamp >= 420576 * 24 * 3600
    require tokensSold
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 3
        if balanceOf[mem[(32 * idx) + 140 len 20]] <= 0:
            s = s
            idx = idx + 1
            continue 
        require idx < arg1.length
        _63 = sha3(mem[(32 * idx) + 140 len 20], 3)
        if not balanceOf[mem[(32 * idx) + 140 len 20]]:
            require idx < arg1.length
            _65 = mem[(32 * idx) + 128]
            if block.timestamp < startTransferTime:
                require santaFundWalletAddress == santaFundWalletAddress
            require balanceOf[mem[(32 * idx) + 140 len 20]] * 200000 * 10^18 / tokensSold <= allowance[address(stor6.field_0)][address(msg.sender)]
            require balanceOf[mem[(32 * idx) + 140 len 20]] * 200000 * 10^18 / tokensSold <= balanceOf[address(stor6.field_0)]
            balanceOf[address(stor6.field_0)] += -1 * balanceOf[mem[(32 * idx) + 140 len 20]] * 200000 * 10^18 / tokensSold
            require balanceOf[address(mem[(32 * idx) + 128])] + (balanceOf[mem[(32 * idx) + 140 len 20]] * 200000 * 10^18 / tokensSold) >= balanceOf[address(mem[(32 * idx) + 128])]
            require balanceOf[address(mem[(32 * idx) + 128])] + (balanceOf[mem[(32 * idx) + 140 len 20]] * 200000 * 10^18 / tokensSold) >= balanceOf[mem[(32 * idx) + 140 len 20]] * 200000 * 10^18 / tokensSold
            balanceOf[address(mem[(32 * idx) + 128])] += balanceOf[mem[(32 * idx) + 140 len 20]] * 200000 * 10^18 / tokensSold
            require balanceOf[mem[(32 * idx) + 140 len 20]] * 200000 * 10^18 / tokensSold <= allowance[address(stor6.field_0)][address(msg.sender)]
            mem[0] = msg.sender
            mem[32] = sha3(address(stor6.field_0), 4)
            allowance[address(stor6.field_0)][address(msg.sender)] += -1 * balanceOf[mem[(32 * idx) + 140 len 20]] * 200000 * 10^18 / tokensSold
            mem[(32 * arg1.length) + 128] = balanceOf[mem[(32 * idx) + 140 len 20]] * 200000 * 10^18 / tokensSold
            emit Transfer((stor[_63] * 200000 * 10^18 / tokensSold), santaFundWalletAddress, address(_65));
        else:
            require balanceOf[mem[(32 * idx) + 140 len 20]]
            require balanceOf[mem[(32 * idx) + 140 len 20]] * 200000 * 10^18 / tokensSold / balanceOf[mem[(32 * idx) + 140 len 20]] == 200000 * 10^18 / tokensSold
            require idx < arg1.length
            _69 = mem[(32 * idx) + 128]
            if block.timestamp < startTransferTime:
                require santaFundWalletAddress == santaFundWalletAddress
            require balanceOf[mem[(32 * idx) + 140 len 20]] * 200000 * 10^18 / tokensSold <= allowance[address(stor6.field_0)][address(msg.sender)]
            require balanceOf[mem[(32 * idx) + 140 len 20]] * 200000 * 10^18 / tokensSold <= balanceOf[address(stor6.field_0)]
            balanceOf[address(stor6.field_0)] += -1 * balanceOf[mem[(32 * idx) + 140 len 20]] * 200000 * 10^18 / tokensSold
            require balanceOf[address(mem[(32 * idx) + 128])] + (balanceOf[mem[(32 * idx) + 140 len 20]] * 200000 * 10^18 / tokensSold) >= balanceOf[address(mem[(32 * idx) + 128])]
            require balanceOf[address(mem[(32 * idx) + 128])] + (balanceOf[mem[(32 * idx) + 140 len 20]] * 200000 * 10^18 / tokensSold) >= balanceOf[mem[(32 * idx) + 140 len 20]] * 200000 * 10^18 / tokensSold
            balanceOf[address(mem[(32 * idx) + 128])] += balanceOf[mem[(32 * idx) + 140 len 20]] * 200000 * 10^18 / tokensSold
            require balanceOf[mem[(32 * idx) + 140 len 20]] * 200000 * 10^18 / tokensSold <= allowance[address(stor6.field_0)][address(msg.sender)]
            mem[0] = msg.sender
            mem[32] = sha3(address(stor6.field_0), 4)
            allowance[address(stor6.field_0)][address(msg.sender)] += -1 * balanceOf[mem[(32 * idx) + 140 len 20]] * 200000 * 10^18 / tokensSold
            mem[(32 * arg1.length) + 128] = balanceOf[mem[(32 * idx) + 140 len 20]] * 200000 * 10^18 / tokensSold
            emit Transfer((stor[_63] * 200000 * 10^18 / tokensSold), santaFundWalletAddress, address(_69));
        s = stor[_63] * 200000 * 10^18 / tokensSold
        idx = idx + 1
        continue 
    return 1
}



}

contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
address stor4;
mapping of uint256 stor5;

function _fallback() {
    stor4 = msg.sender
    stor2 = 50000
    stor0 = block.timestamp
    stor1 = block.timestamp + (24 * 3600)
    stor3 = 0
    stor5[stor4] = 50000
    return code.data[237 len 2772]
}



// =====================  Runtime code  =====================


const name = 'Halloween Limited Edition Token'

const decimals = 0

const ether_per_token = 35 * 10^14

const symbol = 'HALW'

const token_swap_supply = 40000

const token_airdrop_cnt_max = 1000

const token_airdrop_amount_each = 10

const TOKEN_SWAP_DURATION_HOURS = 24


uint256 time_of_token_swap_start;
uint256 time_of_token_swap_end;
uint256 totalSupply;
uint256 airdrop_cnt;
address stor4;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor7;

function airdrop_cnt() {
    return airdrop_cnt
}

function totalSupply() {
    return totalSupply
}

function time_of_token_swap_start() {
    return time_of_token_swap_start
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function time_of_token_swap_end() {
    return time_of_token_swap_end
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if arg2 <= 0:
        return 0
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function withdrawForeignTokens(address arg1) {
    require stor4 == msg.sender
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args stor4, ext_call.return_data[0]
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if arg3 <= 0:
        return 0
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require block.timestamp <= time_of_token_swap_end
    if not msg.value:
        if airdrop_cnt < 1000:
            if not stor7[address(msg.sender)]:
                airdrop_cnt++
                stor7[address(msg.sender)] = 1
                require 10 <= balanceOf[stor4]
                balanceOf[stor4] -= 10
                require balanceOf[msg.sender] + 10 >= balanceOf[msg.sender]
                require balanceOf[msg.sender] + 10 >= 10
                balanceOf[address(msg.sender)] = balanceOf[msg.sender] + 10
                emit Transfer(10, this.address, msg.sender);
    else:
        require msg.value / 35 * 10^14 > 0
        require msg.value / 35 * 10^14 <= balanceOf[stor4]
        if msg.value / 35 * 10^14:
            require msg.value / 35 * 10^14
            require 35 * 10^14 * msg.value / 35 * 10^14 / msg.value / 35 * 10^14 == 35 * 10^14
        require 35 * 10^14 * msg.value / 35 * 10^14 <= msg.value
        call stor4 with:
           value 35 * 10^14 * msg.value / 35 * 10^14 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        call msg.sender with:
           value msg.value - (35 * 10^14 * msg.value / 35 * 10^14) wei
             gas 2300 * is_zero(value) wei
        require msg.value / 35 * 10^14 <= balanceOf[stor4]
        balanceOf[stor4] -= msg.value / 35 * 10^14
        require (msg.value / 35 * 10^14) + balanceOf[msg.sender] >= balanceOf[msg.sender]
        require (msg.value / 35 * 10^14) + balanceOf[msg.sender] >= msg.value / 35 * 10^14
        balanceOf[address(msg.sender)] = (msg.value / 35 * 10^14) + balanceOf[msg.sender]
        emit Transfer((msg.value / 35 * 10^14), this.address, msg.sender);
}



}

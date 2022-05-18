contract main {


// =======================  Init code  ======================


mapping of uint256 stor1;

function _fallback() {
    stor1[address(msg.sender)] = 100 * 10^6
    return code.data[105 len 3506]
}



// =====================  Runtime code  =====================


const name = 'BaftaCoin'

const decimals = 3

const multisig = 0xd2e242ed7acbe22a3876a69cf9b537a27eeb9f89

const symbol = 'BFTC'

const getPrice = 500

const INITIAL_SUPPLY = 100 * 10^6

const PRICE = 500


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
}

function createTokens(address arg1) payable {
    require msg.value
    if 10^18 * msg.value:
        require 10^18 * msg.value
        require 500 * 10^18 * msg.value / 10^18 * msg.value == 500
    require 500 * 10^18 * msg.value == (1000000000000000000 * 10^18 * 500 * 10^18 * msg.value / 1000000000000000000 * 10^18) + (500 * 10^18 * msg.value % 1000000000000000000 * 10^18)
    require totalSupply + (500 * 10^18 * msg.value / 1000000000000000000 * 10^18) >= totalSupply
    totalSupply = totalSupply + (500 * 10^18 * msg.value / 1000000000000000000 * 10^18) + 100 * 10^6
    require balanceOf[address(arg1)] + (500 * 10^18 * msg.value / 1000000000000000000 * 10^18) >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += 500 * 10^18 * msg.value / 1000000000000000000 * 10^18
    call 0xd2e242ed7acbe22a3876a69cf9b537a27eeb9f89 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require msg.value
    if 10^18 * msg.value:
        require 10^18 * msg.value
        require 500 * 10^18 * msg.value / 10^18 * msg.value == 500
    require 500 * 10^18 * msg.value == (1000000000000000000 * 10^18 * 500 * 10^18 * msg.value / 1000000000000000000 * 10^18) + (500 * 10^18 * msg.value % 1000000000000000000 * 10^18)
    require totalSupply + (500 * 10^18 * msg.value / 1000000000000000000 * 10^18) >= totalSupply
    totalSupply = totalSupply + (500 * 10^18 * msg.value / 1000000000000000000 * 10^18) + 100 * 10^6
    require balanceOf[address(msg.sender)] + (500 * 10^18 * msg.value / 1000000000000000000 * 10^18) >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += 500 * 10^18 * msg.value / 1000000000000000000 * 10^18
    call 0xd2e242ed7acbe22a3876a69cf9b537a27eeb9f89 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}

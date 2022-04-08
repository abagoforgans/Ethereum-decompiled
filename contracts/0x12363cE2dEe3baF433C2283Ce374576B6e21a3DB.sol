contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 3567]




// =====================  Runtime code  =====================


const name = 'CROSSSNAKES'

const decimals = 3

const multisig = 0xa29e1c21219a69a53ee32e0c982376dce7f260

const symbol = 'CSK'

const getPrice = 500

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
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
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
    require calldata.size >= 100
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
    require msg.value
    require 500 * msg.value / msg.value == 500
    require totalSupply + (500 * msg.value) >= totalSupply
    totalSupply += 500 * msg.value
    require balanceOf[address(arg1)] + (500 * msg.value) >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += 500 * msg.value
    call 0x00a29e1c21219a69a53ee32e0c982376dce7f260 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require msg.value
    require msg.value
    require 500 * msg.value / msg.value == 500
    require totalSupply + (500 * msg.value) >= totalSupply
    totalSupply += 500 * msg.value
    require balanceOf[address(msg.sender)] + (500 * msg.value) >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += 500 * msg.value
    call 0x00a29e1c21219a69a53ee32e0c982376dce7f260 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}

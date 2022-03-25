contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 937]




// =====================  Runtime code  =====================


const name = Array(len=18, data=mem[224])

const decimals = 18

const symbol = Array(len=3, data=mem[224])

const transfer(address arg1, uint256 arg2) = 0

const tokenCreationRate = 1000


uint256 totalSupply;
mapping of uint256 balanceOf;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function kill() {
    require totalSupply <= 0
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert 
}

function create() payable {
    require msg.value
    totalSupply += 1000 * msg.value
    balanceOf[address(msg.sender)] += 1000 * msg.value
    emit Transfer((1000 * msg.value), 0, msg.sender);
}

function refund() {
    require balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] = 0
    totalSupply -= balanceOf[address(msg.sender)]
    emit Refund((balanceOf[address(msg.sender)] / 1000), msg.sender);
    emit Transfer(balanceOf[address(msg.sender)], msg.sender, 0);
    call msg.sender with:
       value balanceOf[address(msg.sender)] / 1000 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}

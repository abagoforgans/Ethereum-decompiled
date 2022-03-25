contract main {


// =======================  Init code  ======================


address stor1;
uint256 stor2;
uint256 stor3;

function _fallback() payable {
    stor1 = code.data[1451 len 20]
    stor2 = code.data[1471 len 32]
    stor3 = code.data[1503 len 32]
    return code.data[90 len 1349]
}



// =====================  Runtime code  =====================


const name = Array(len=18, data=mem[224])

const decimals = 18

const symbol = Array(len=3, data=mem[224])

const tokenCreationRate = 1000


uint256 totalSupply;
address stor1;
uint256 startMark;
uint256 endMark;
mapping of uint256 balanceOf;

function totalSupply() {
    return totalSupply
}

function endMark() {
    return endMark
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function startMark() {
    return startMark
}

function kill() {
    require stor1 == msg.sender
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert 
}

function fund() payable {
    require msg.value
    totalSupply += 1000 * msg.value
    balanceOf[address(msg.sender)] += 1000 * msg.value
    emit Transfer((1000 * msg.value), 0, msg.sender);
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function privilegedTransfer(address arg1, address arg2, uint256 arg3) {
    require stor1 == msg.sender
    if balanceOf[address(arg1)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function refund() {
    require balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] = 0
    totalSupply -= balanceOf[address(msg.sender)]
    emit Refund((balanceOf[address(msg.sender)] / 1000), msg.sender);
    call msg.sender with:
       value balanceOf[address(msg.sender)] / 1000 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}

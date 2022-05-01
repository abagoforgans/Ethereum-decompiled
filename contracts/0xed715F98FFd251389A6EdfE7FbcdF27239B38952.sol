contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
mapping of uint256 stor2;

function _fallback() {
    stor1 = 6871947673600
    stor2[address(msg.sender)] = 6871947673600
    stor0 = msg.sender
    return code.data[85 len 1764]
}



// =====================  Runtime code  =====================


const name = 'Letoken'

const decimals = 2

const symbol = 'LET'


address owner;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint8 sellTypeOf;
mapping of uint256 sellTotalOf;
mapping of uint256 sellPriceOf;

function totalSupply() {
    return totalSupply
}

function sellPriceOf(address arg1) {
    return sellPriceOf[arg1]
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function sellTypeOf(address arg1) {
    return sellTypeOf[arg1]
}

function sellTotalOf(address arg1) {
    return sellTotalOf[arg1]
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function setSellInfo(uint8 arg1, uint256 arg2, uint256 arg3) {
    require arg3 > 0
    require arg2 > 0
    if arg2 <= sellTotalOf[address(msg.sender)]:
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + sellTotalOf[address(msg.sender)] - arg2
    else:
        require balanceOf[address(msg.sender)] >= arg2 - sellTotalOf[address(msg.sender)]
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + sellTotalOf[address(msg.sender)]
    sellTotalOf[address(msg.sender)] = arg2
    sellPriceOf[address(msg.sender)] = arg3
    sellTypeOf[address(msg.sender)] = arg1
    return balanceOf[address(msg.sender)]
}

function buy(address arg1) payable {
    require sellPriceOf[address(arg1)]
    if not sellTypeOf[address(arg1)]:
        require msg.value / sellPriceOf[address(arg1)] == sellTotalOf[address(arg1)]
    else:
        require sellTotalOf[address(arg1)] >= msg.value / sellPriceOf[address(arg1)]
    balanceOf[address(msg.sender)] += msg.value / sellPriceOf[address(arg1)]
    sellTotalOf[address(arg1)] -= msg.value / sellPriceOf[address(arg1)]
    emit Transfer((msg.value / sellPriceOf[address(arg1)]), arg1, msg.sender);
    call arg1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return (msg.value / sellPriceOf[address(arg1)])
}



}

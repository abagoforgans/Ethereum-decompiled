contract main {




// =====================  Runtime code  =====================


const name = 'Kappi Token'

const initialPrice = 4 * 10^13

const decimals = 18

const symbol = 'KAPP'

const hardCap = 2000000000 * 10^18


uint256 totalSupply;
uint256 stor1;
uint256 saleStart;
uint256 sub_0bbd3511;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function sub_0bbd3511(?) {
    return sub_0bbd3511
}

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function saleStart() {
    return saleStart
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burnUnsold() {
    require block.timestamp > sub_0bbd3511
    totalSupply -= balanceOf[address(this.address)]
    balanceOf[address(this.address)] = 0
    emit Burned(address(this.address), balanceOf[address(this.address)]);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require block.timestamp > saleStart
    require block.timestamp < sub_0bbd3511
    require msg.value >= 10^18
    require stor1 < 2000000000 * 10^18
    stor1 += 10^18 * msg.value / 4 * 10^13
    if balanceOf[address(this.address)] >= 10^18 * msg.value / 4 * 10^13:
        if 10^18 * msg.value / 4 * 10^13 > 0:
            balanceOf[address(msg.sender)] += 10^18 * msg.value / 4 * 10^13
            balanceOf[address(this.address)] -= 10^18 * msg.value / 4 * 10^13
            emit Transfer((10^18 * msg.value / 4 * 10^13), this.address, msg.sender);
    call 0x65aae2a7dd8f03dc80eead4be797255bc5804351 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}

contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint8 stor2;
uint256 stor5;
uint256 stor6;

function _fallback() payable {
    stor0 = msg.sender
    stor1 = 161
    stor2 = 1
    stor5 = 0
    stor6 = 0
    require not msg.value
    return code.data[83 len 2552]
}



// =====================  Runtime code  =====================


const name = 'JoyCoin'

const decimals = 18

const symbol = 'JOY'


address stor0;
uint256 stor1;
uint8 stor2;
mapping of uint256 balanceOf;
mapping of uint256 stor4;
uint256 totalContribution;
uint256 totalSupply;

function totalContribution() {
    return totalContribution
}

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function purchasingAllowed() {
    return bool(stor2)
}

function enablePurchasing() {
    require stor0 == msg.sender
    stor2 = 1
}

function disablePurchasing() {
    require stor0 == msg.sender
    stor2 = 0
}

function getStats() {
    return totalContribution, totalSupply, bool(stor2)
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        if stor4[address(msg.sender)][address(arg1)]:
            return 0
    stor4[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    if not arg2:
        return 0
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function _fallback() payable {
    require stor2
    if msg.value:
        call stor0 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        totalContribution += msg.value
        totalSupply += msg.value * stor1
        balanceOf[address(msg.sender)] += msg.value * stor1
        emit Transfer((msg.value * stor1), this.address, msg.sender);
}

function withdrawForeignTokens(address arg1) {
    require stor0 == msg.sender
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args stor0, ext_call.return_data[0]
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    if not arg3:
        return 0
    require balanceOf[address(arg1)] <= arg3
    require stor4[address(arg1)][address(msg.sender)] <= arg3
    require balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    balanceOf[arg1] -= arg3
    stor4[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
